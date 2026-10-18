"""Exact original 16-spinor BFSS Fierz and full Gauss-square regression.
Run: python3 BFSS_FULL_SPINOR_GAUSS_SQUARE_POLARIZED_CERTIFICATE_0_1_0.py
Requires NumPy; all tests are exact int64 (no full 2**24 Fock matrix).
"""
from itertools import combinations
import numpy as np
P={'I':np.eye(2,dtype=np.int64),
   'X':np.array([[0,1],[1,0]],dtype=np.int64),
   'Y':np.array([[0,1],[-1,0]],dtype=np.int64),
   'Z':np.diag(np.array([1,-1],dtype=np.int64))}
words=['IIIX','IIIZ','ZZYY','XZYY','YXXY','YXZY','IYIY','YZIY','IXYY']
G=[]
for word in words:
    a=np.ones((1,1),dtype=np.int64)
    for char in word:a=np.kron(a,P[char])
    G.append((-1)**(word.count('Y')//2)*a)
G=np.stack(G)
I=np.eye(16,dtype=np.int64)
Z=np.zeros((16,16),dtype=np.int64)
assert all(np.array_equal(G[i].T,G[i]) for i in range(9))
assert all(np.array_equal(G[i]@G[j]+G[j]@G[i],2*I if i==j else Z)
           for i in range(9) for j in range(9))
G2=np.array([[G[i]@G[j] if i!=j else Z for j in range(9)] for i in range(9)])
def eps(a,b,c):
    if len({a,b,c})!=3:return 0
    return 1 if (a,b,c) in ((0,1,2),(1,2,0),(2,0,1)) else -1
basis=list(np.eye(16,dtype=np.int64))
spins=basis+[basis[a]+basis[b] for a,b in combinations(range(16),2)]
assert len(spins)==136
count=0
for w in spins:
    wg=np.einsum('a,iar->ir',w,G)
    wb=np.einsum('a,ijar->ijr',w,G2)
    ww=int(w@w)
    assert np.array_equal(wg@wg.T,ww*np.eye(9,dtype=np.int64))
    for p in range(9):
        M=wg.T@wb[:,p,:]
        rhs=ww*G[p]-int(w@G[p]@w)*I
        assert np.array_equal(M+M.T,rhs),('Fierz',tuple(w),p)
        count+=256
assert count==313344
print('PASS: all 313344 exact Fierz matrix entries, 136 polarizing spinors')
cases=0
for seed in range(4):
    x=np.random.default_rng(seed).integers(-3,4,size=(3,9),dtype=np.int64)
    choices=[basis[0],basis[7],basis[15],basis[0]+basis[15],
             np.random.default_rng(seed+10).integers(-2,3,size=16)]
    for w in choices:
        ww=int(w@w)
        wg=np.einsum('r,irs->is',w,G)
        wb=np.einsum('r,ijrs->ijs',w,G2)
        v=np.einsum('r,irs,s->i',w,G,w)
        W=np.zeros((3,16),dtype=np.int64)
        D=np.zeros((3,9,3,16),dtype=np.int64)
        for a in range(3):
            for j,k in combinations(range(9),2):
                y=sum(eps(a,b,c)*int(x[b,j])*int(x[c,k])
                      for b in range(3) for c in range(3))
                W[a]+=y*wb[j,k]
            for b in range(3):
                for c in range(3):
                    if eps(b,a,c):
                        D[a,:,b,:]+=eps(b,a,c)*np.einsum('p,ips->is',x[c],wb)
        V=sum(sum((int(x[a,j])*int(x[b,k])-int(x[a,k])*int(x[b,j]))**2
              for j,k in combinations(range(9),2))
              for a,b in combinations(range(3),2))
        assert int(np.sum(W*W))==ww*V
        for a in range(3):
            for i in range(9):
                lhs=-int(wg[i]@W[a])
                rhs=sum(int(v[p])*int(x[c,p])*eps(c,a,b)*int(x[b,i])
                        for c in range(3) for b in range(3) for p in range(9))
                assert lhs==rhs,('orbital',seed,a,i)
        for a,b in combinations(range(3),2):
            lhs=-wg.T@D[a,:,b,:]+D[b,:,a,:].T@wg
            rhs=sum(eps(c,a,b)*int(x[c,p])*(ww*G[p]-int(v[p])*I)
                    for c in range(3) for p in range(9))
            assert np.array_equal(lhs,rhs),('fermionic',seed,a,b)
        cases+=1
assert cases==20
print('PASS: 20 direct original scalar/derivative/fermion coefficient cases')
print('FULL CORE: Q(w)^2=|w|^2 H0+sum_c,p (w^T gamma_p w)x_p^c G_c')
print('PHYSICAL CORE: Q(w)^2=|w|^2 H0; no Spin(9) transitivity needed')
print('SCOPE: see paired memo for operator closure and form-domain implications')
