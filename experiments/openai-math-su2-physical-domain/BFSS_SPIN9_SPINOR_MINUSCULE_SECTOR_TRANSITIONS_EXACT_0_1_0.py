"""Exact Spin(9) B4 spinor minuscule tensor branching checks.

Requires only Python stdlib. Finite checks of the classical minuscule rule
and sharp-BFSS high-spin cutoff; NOT the original superalgebra or spectrum.
"""
from fractions import Fraction as F
from itertools import combinations, product

HALF=F(1,2)
RHO=(F(7,2),F(5,2),F(3,2),F(1,2))
def b4_dim(lam):
    lam=tuple(F(x) for x in lam)
    assert lam[0]>=lam[1]>=lam[2]>=lam[3]>=0
    r=[lam[i]+RHO[i] for i in range(4)]
    d=F(1)
    for i in range(4):d*=r[i]/RHO[i]
    for i,j in combinations(range(4),2):
        d*=(r[i]**2-r[j]**2)/(RHO[i]**2-RHO[j]**2)
    assert d.denominator==1
    return int(d)

def spinor_partners(lam):
    lam=tuple(F(x) for x in lam)
    assert lam[0]>=lam[1]>=lam[2]>=lam[3]>=0
    return sorted({tuple(lam[i]+s[i]*HALF for i in range(4))
                   for s in product((-1,1),repeat=4)
                   if (lam[0]+s[0]*HALF>=lam[1]+s[1]*HALF>=
                       lam[2]+s[2]*HALF>=lam[3]+s[3]*HALF>=0)})

CASES=[(38,38,0,0),(39,38,1,0),
       (F(77,2),F(77,2),F(1,2),F(1,2)),
       (40,39,20,12),(1,0,0,0),(0,0,0,0),
       (HALF,HALF,HALF,HALF)]
for lam in CASES:
    partners=spinor_partners(lam)
    lhs=16*b4_dim(lam)
    rhs=sum(b4_dim(nu) for nu in partners)
    assert lhs==rhs,(lam,lhs,rhs)
    assert len(partners)<=16
    assert all(abs(nu[1]-F(lam[1]))==HALF for nu in partners)
    assert all((nu[0]-F(lam[0])).denominator==2 for nu in partners)
    if F(lam[1])>=38:
        assert all(nu[1]>37 for nu in partners)
    print('PASS lambda',tuple(map(str,lam)),'destinations',len(partners),
          '16dim',lhs,'sum_dims',rhs)

lam=(38,38,0,0)  # illustrative ONLY; not assumed physically realized
p=spinor_partners(lam)
assert p==[(F(75,2),F(75,2),HALF,HALF),
           (F(77,2),F(75,2),HALF,HALF),
           (F(77,2),F(77,2),HALF,HALF)]
assert [b4_dim(v) for v in p]==[25267412020032,57717519827968,33054208643456]
assert min(v[1] for v in p)==F(75,2)
print('PASS: three illustrative destinations; exact all-dimension accounting')
print('ACTUAL k=19 physical type: lambda=mu+(38,38,0,0), mu unknown')
print('SCOPE: does not assert all candidate destinations are populated by Q')
