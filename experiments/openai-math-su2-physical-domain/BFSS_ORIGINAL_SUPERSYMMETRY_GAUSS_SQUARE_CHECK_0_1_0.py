"""BFSS original-48-Majorana SUSY square / Gauss-source exact regression.
Requires NumPy. Integer arithmetic only; NO 2**24 Fock construction or Lean.
The companion audit contains the derivation, including operator domains.
"""
import numpy as np
from itertools import combinations

P={'I':np.eye(2,dtype=np.int64),
   'X':np.array([[0,1],[1,0]],dtype=np.int64),
   'Y':np.array([[0,1],[-1,0]],dtype=np.int64),
   'Z':np.diag(np.array([1,-1],dtype=np.int64))}
words=['IIIX','IIIZ','ZZYY','XZYY','YXXY','YXZY','IYIY','YZIY','IXYY']
G=[]
for word in words:
    a=np.ones((1,1),dtype=np.int64)
    for c in word:a=np.kron(a,P[c])
    G.append((-1)**(word.count('Y')//2)*a)
G=np.stack(G)
I=np.eye(16,dtype=np.int64)
zero=np.zeros((16,16),dtype=np.int64)
for i in range(9):
    assert np.array_equal(G[i].T,G[i])
    for j in range(9):
        assert np.array_equal(G[i]@G[j]+G[j]@G[i],2*I if i==j else zero)

def eps(a,b,c):
    if len({a,b,c})!=3:return 0
    return 1 if (a,b,c) in ((0,1,2),(1,2,0),(2,0,1)) else -1

count=0
for alpha in range(16):
    frame=G[:,alpha,:]
    assert np.array_equal(frame@frame.T,np.eye(9,dtype=np.int64))
    for p in range(9):
        biv=np.array([G[i]@G[p] if i!=p else zero for i in range(9)])
        mat=frame.T@biv[:,alpha,:]
        assert np.array_equal(mat+mat.T,G[p]-G[p,alpha,alpha]*I)
        count+=256
assert count==36864
print('PASS: 36,864 exact gamma Fierz-contraction entries; 16 Dirac frames')

pairs=list(combinations(range(9),2))
for seed in range(8):
    x=np.random.default_rng(seed).integers(-3,4,size=(3,9),dtype=np.int64)
    for a in range(3):
        y={(j,k):sum(eps(a,b,c)*int(x[b,j])*int(x[c,k])
                     for b in range(3) for c in range(3)) for j,k in pairs}
        M=sum((v*G[j]@G[k] for (j,k),v in y.items()),zero.copy())
        assert np.array_equal(M@M,-sum(v*v for v in y.values())*I)
    for alpha in range(16):
        W=np.zeros((3,16),dtype=np.int64)
        for a in range(3):
            for j,k in pairs:
                y=sum(eps(a,b,c)*int(x[b,j])*int(x[c,k])
                      for b in range(3) for c in range(3))
                W[a]+=y*(G[j]@G[k])[alpha,:]
        for a in range(3):
            for i in range(9):
                actual=int(G[i,alpha,:]@W[a])
                expected=-sum(eps(a,b,c)*int(x[b,i])*int(x[c,k])
                              *int(G[k,alpha,alpha])
                              for b in range(3) for c in range(3)
                              for k in range(9))
                assert actual==expected
print('PASS: decomposable SU2 2-forms; gauge-orbit derivative coefficients')
print('CHECKED NORMALIZATION: Q_alpha^2-H0 = sum_(t,p) gamma_p[alpha,alpha]*x_p^t*Gauss_t')
print('Gauss_t=-i[-sum_(a,b,i) f_tab*x_i^b*d_(ia)')
print('           + 1/2 sum_(a,b,r) f_tab*theta_r^a*theta_r^b]')
print('f_tab=sqrt(2)*epsilon_tab. This script supports, but does not alone prove,')
print('the full gauge-domain operator and supersymmetry conclusions.')
