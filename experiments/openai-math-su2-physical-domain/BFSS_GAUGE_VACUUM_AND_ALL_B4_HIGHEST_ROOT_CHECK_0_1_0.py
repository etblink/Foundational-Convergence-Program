"""BFSS SU(2) original Majorana gauge vacuum and Spin(9) high-weight algebra.

Requires numpy, sympy. All comparisons integer or exact symbolic.
Not a full 2**24 Fock calculation, Lean certificate or spectral theorem.
"""
from itertools import combinations
import numpy as np
import sympy as sp

Z2=np.diag(np.array([1,-1],dtype=np.int64))
C2=np.array([[0,1],[0,0]],dtype=np.int64)
I2=np.eye(2,dtype=np.int64)
C=[]
for a in range(3):
    factors=[Z2 if j<a else C2 if j==a else I2 for j in range(3)]
    C.append(np.kron(np.kron(*factors[:2]),factors[2]))
I=np.eye(8,dtype=np.int64)
O=np.zeros((8,8),dtype=np.int64)
vac=I[:,0]
for a in range(3):
    assert np.array_equal(C[a]@vac,np.zeros(8,dtype=np.int64))
    for b in range(3):
        assert np.array_equal(C[a]@C[b]+C[b]@C[a],O)
        assert np.array_equal(C[a]@C[b].T+C[b].T@C[a], I if a==b else O)
for a,b in combinations(range(3),2):
    K=C[a].T@C[b]-C[b].T@C[a]
    assert np.array_equal(K.T,-K)
    assert np.array_equal(K@vac,np.zeros(8,dtype=np.int64))
    for d in range(3):
        comm=K@C[d]-C[d]@K
        expected=-C[b] if d==a else C[a] if d==b else O
        assert np.array_equal(comm,expected)
print("PASS: one color triplet CAR; all 3 gauge-Lie generators preserve the vacuum")

# Isotropic weight basis of the 9-dimensional complex vector space:
# p_i=(e_{2i-1}+i e_{2i})/sqrt(2), m_i=conjugate(p_i), z=e_9.
# Pairing <p_i,m_j>=delta_ij and <z,z>=1.
metric=sp.zeros(9)
for i in range(4): metric[i,4+i]=metric[4+i,i]=1
metric[8,8]=1
p=sp.eye(9)[:,0]
q=sp.eye(9)[:,1]
roots=[]
for i,j in combinations(range(4),2):
    E=sp.zeros(9);E[i,j]=1;E[4+j,4+i]=-1
    roots.append((f"eps{i+1}-eps{j+1}",E))
    E=sp.zeros(9);E[i,4+j]=1;E[j,4+i]=-1
    roots.append((f"eps{i+1}+eps{j+1}",E))
for i in range(4):
    E=sp.zeros(9);E[i,8]=1;E[8,4+i]=-1
    roots.append((f"eps{i+1}",E))
assert len(roots)==16
for name,E in roots:
    assert E.T*metric+metric*E==sp.zeros(9),name
    ep,eq=E*p,E*q
    assert ep*q.T+p*eq.T-eq*p.T-q*ep.T==sp.zeros(9),name
for i in range(4):
    H=sp.zeros(9);H[i,i]=1;H[4+i,4+i]=-1
    assert H.T*metric+metric*H==sp.zeros(9)
    assert H*p==int(i==0)*p
    assert H*q==int(i==1)*q
print("PASS: all 16 B4 positive roots kill p1 wedge p2; Cartan weight (1,1,0,0)")

z=sp.symbols("z0:3")
h=sp.symbols("h0:3")
poly=sp.expand(sum((z[a]*h[b]-z[b]*h[a])**2
                   for a,b in combinations(range(3),2)))
gram=sum(v*v for v in z)*sum(v*v for v in h)-sum(z[a]*h[a] for a in range(3))**2
assert sp.expand(poly-gram)==0
for a,b in combinations(range(3),2):
    deriv=z[a]*sp.diff(poly,z[b])-z[b]*sp.diff(poly,z[a])
    deriv+=h[a]*sp.diff(poly,h[b])-h[b]*sp.diff(poly,h[a])
    assert sp.expand(deriv)==0
for name,E in roots:
    ep,eq=E*p,E*q
    dpoly=sum((ep[0]*z[a]+ep[1]*h[a])*sp.diff(poly,z[a])
            +(eq[0]*z[a]+eq[1]*h[a])*sp.diff(poly,h[a])
            for a in range(3))
    assert sp.expand(dpoly)==0,name
assert sp.expand(sum(z[a]*sp.diff(poly,z[a]) for a in range(3))-2*poly)==0
assert sp.expand(sum(h[a]*sp.diff(poly,h[a]) for a in range(3))-2*poly)==0
t=sp.symbols("t",positive=True)
assert sp.expand(poly.subs({z[0]:t,z[1]:0,z[2]:0,h[0]:0,h[1]:t,h[2]:0})-t**4)==0
print("PASS: P gauge invariant; all 16 positive root annihilators; weight (2,2,0,0); P(ray)=t^4")

# Previously derived source admissible constants C_B=8sqrt(6), M<=6.
C_B=8*sp.sqrt(6)
m=50
k=29
assert sp.simplify(sp.Rational(59,3)**2-C_B**2)==sp.Rational(25,9)
assert sp.Rational(m+9,3)-C_B>0
assert 2*k>m+6
assert 2*(k-1)<=m+6
print("PASS: k=29 uniform choice produces lambda_2=58+mu_2>56 for every dominant mu")
print("SCOPE: algebra/weight proof and conditional sector construction; no Lean or spectral certification")
