"""Exact, source-bounded SU(2) BFSS form and color-polynomial checks.

python3 BFSS_FORM_AND_HIGH_WEIGHT_EXACT_CHECK_0_1_0.py
Requires NumPy and SymPy; only exact integer/symbolic comparisons.
NOT a Lean proof, a global Spin(9) action, or a spectral theorem.
"""
from itertools import combinations
import numpy as np
import sympy as sp

def gammas():
    P = {"I": np.eye(2, dtype=np.int64),
         "X": np.array([[0,1],[1,0]], dtype=np.int64),
         "Y": np.array([[0,1],[-1,0]], dtype=np.int64),
         "Z": np.diag(np.array([1,-1], dtype=np.int64))}
    words = ["IIIX","IIIZ","ZZYY","XZYY","YXXY","YXZY","IYIY","YZIY","IXYY"]
    G = []
    for word in words:
        v = np.ones((1,1), dtype=np.int64)
        for w in word: v = np.kron(v,P[w])
        G.append((-1)**(word.count("Y")//2)*v)
    G = np.stack(G)
    I = np.eye(16, dtype=np.int64)
    Z = np.zeros((16,16), dtype=np.int64)
    for i in range(9):
        assert np.array_equal(G[i],G[i].T)
        for j in range(9):
            assert np.array_equal(G[i]@G[j]+G[j]@G[i],
                                  2*I if i == j else Z)
    return G

def eps(a,b,c):
    if len({a,b,c}) != 3: return 0
    return 1 if (a,b,c) in ((0,1,2),(1,2,0),(2,0,1)) else -1

def check_form():
    G = gammas()
    pairs = list(combinations(range(9),2))
    biv = {(j,k):G[j]@G[k] for j,k in pairs}
    for i in range(9):
        for j in range(9):
            assert np.trace(G[i].T@G[j]) == (16 if i==j else 0)
        for pair in pairs:
            assert np.trace(G[i].T@biv[pair]) == 0
    for pair in pairs:
        for other in pairs:
            assert np.trace(biv[pair].T@biv[other]) == (16 if pair==other else 0)

    # Source y_jk^c=sqrt(2)*eps(c,b,d)*x_j^b*x_k^d.
    # Compare coefficients of literal, UNREORDERED theta_beta^a theta_delta^c
    # in the cross derivative and the proposed B, divided by i*sqrt(2)
    # and multiplied by 16. Each coefficient is linear in x, so 27
    # coordinate basis inputs give an EXHAUSTIVE check, not random samples.
    count=0
    for p in range(9):
        for b in range(3):
            for a in range(3):
                for c in range(3):
                    lhs=np.zeros((16,16),dtype=np.int64)
                    for j,k in pairs:
                        if k==p: lhs-=eps(c,a,b)*(G[j]@biv[j,k])
                        if j==p: lhs-=eps(c,b,a)*(G[k]@biv[j,k])
                    rhs=8*eps(b,a,c)*G[p]
                    assert np.array_equal(lhs,rhs), (p,b,a,c)
                    count+=256
    assert count==62208
    print("PASS: Cl(9), kinetic/bivector trace identities, no first-order term")
    print(f"PASS: ordered-theta fermionic cross coefficient, {count} integer entries, residual 0")

def check_polynomial():
    z=sp.symbols("z0:3"); h=sp.symbols("h0:3")
    p=sp.expand(sum((z[a]*h[b]-z[b]*h[a])**2 for a,b in combinations(range(3),2)))
    gram=sum(v*v for v in z)*sum(v*v for v in h)-sum(z[a]*h[a] for a in range(3))**2
    assert sp.expand(p-gram)==0
    for a,b in combinations(range(3),2):
        derivative=z[a]*sp.diff(p,z[b])-z[b]*sp.diff(p,z[a])
        derivative+=h[a]*sp.diff(p,h[b])-h[b]*sp.diff(p,h[a])
        assert sp.expand(derivative)==0, (a,b)
    t=sp.symbols("t",positive=True)
    assert sp.expand(p.subs({z[0]:t,z[1]:0,z[2]:0,
                              h[0]:0,h[1]:t,h[2]:0})-t**4)==0
    print("PASS: complex-bilinear Gram determinant; three color Lie generators; P=t^4 ray")
    print("NOT TESTED: full Spin(9) lift, common-core domain, form closure, spectral result")

if __name__=="__main__":
    check_form()
    check_polynomial()
