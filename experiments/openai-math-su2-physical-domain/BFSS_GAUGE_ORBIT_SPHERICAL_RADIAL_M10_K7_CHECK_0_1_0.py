"""Exact BFSS SU2 gauge-averaged radial confinement and Fock sector checks.

Pure Python stdlib. The spherical inequality is proved analytically in the
companion memo and is not replaced by numerical samples.
"""
from fractions import Fraction as F
from itertools import combinations, product
from math import sqrt
a=F(12,25); eps=F(1,2)-a; m=10
assert eps==F(1,50)
CBsq=F(512,3)
assert a*(m+9)**2==F(4332,25)>CBsq
assert F(1,2)*(m+8)**2<CBsq
assert m+6==16
c=38*sqrt(3)/5-16*sqrt(2/3)
assert c>0
mus=[
(6,0,0,0),(5,1,1,0),(F(9,2),F(3,2),F(3,2),F(3,2)),
(F(9,2),F(1,2),F(1,2),F(1,2)),
(4,2,2,0),(4,2,0,0),(4,1,1,1),(4,0,0,0),
(F(7,2),F(5,2),F(3,2),F(1,2)),
(F(7,2),F(3,2),F(3,2),F(1,2)),
(F(7,2),F(3,2),F(1,2),F(1,2)),
(3,3,3,0),(3,3,1,0),(3,2,2,1),(3,2,1,1),
(3,1,1,0),(3,1,0,0),
(F(5,2),F(5,2),F(3,2),F(1,2)),
(F(5,2),F(3,2),F(3,2),F(3,2)),
(F(5,2),F(3,2),F(3,2),F(1,2)),
(F(5,2),F(3,2),F(1,2),F(1,2)),
(F(5,2),F(1,2),F(1,2),F(1,2)),
(2,2,2,0),(2,2,1,1),(2,2,0,0),(2,1,1,1),(2,0,0,0),
(F(3,2),F(3,2),F(3,2),F(3,2)),
(F(3,2),F(3,2),F(1,2),F(1,2)),
(F(3,2),F(1,2),F(1,2),F(1,2)),
(1,1,1,0),(0,0,0,0)]
assert len(set(mus))==32 and max(mu[1] for mu in mus)==3
rho=(F(7,2),F(5,2),F(3,2),F(1,2))
def dim(lam):
    y=[F(lam[i])+rho[i] for i in range(4)]
    d=F(1)
    for i in range(4): d*=y[i]/rho[i]
    for i,j in combinations(range(4),2):
        d*=(y[i]**2-y[j]**2)/(rho[i]**2-rho[j]**2)
    assert d.denominator==1
    return int(d)
rows=[]
for mu in mus:
    k=next(k for k in range(40) if mu[1]+2*k>16)
    lam=tuple(mu[i]+(2*k if i<2 else 0) for i in range(4))
    rows.append((k,dim(lam),mu,lam))
assert all(mu[1]+12<=16 for mu in mus)
assert min((r for r in rows if r[0]==7))==(7,13066868100,(3,3,1,0),(17,17,1,0))
assert min(rows,key=lambda r:r[1])==(8,4567885399,(2,2,0,0),(18,18,0,0))
assert dim((38,38,0,0))==7252446280716
def neighbors(lam):
    return sorted(tuple(F(lam[i])+F(s[i],2) for i in range(4))
        for s in product((-1,1),repeat=4)
        if F(lam[0])+F(s[0],2)>=F(lam[1])+F(s[1],2)>=
           F(lam[2])+F(s[2],2)>=F(lam[3])+F(s[3],2)>=0)
for lam,expected in [((17,17,1,0),6),((18,18,0,0),3)]:
    near=neighbors(lam)
    assert len(near)==expected
    assert all(w[1]>16 for w in near)
    assert sum(dim(w) for w in near)==16*dim(lam)
print("PASS exact sufficient radial coefficient",c)
print("PASS m=10, a=12/25; m<=9 insufficient in decoupled sharp bounds")
print("PASS first permitted P exponent k=7, physical type (17,17,1,0)")
print("PASS smaller representation k=8, physical type (18,18,0,0)")
print("PASS original 32 Fock highest types and possible one-step superpartners")
print("NOTE source group/slice/closed-domain Lean certification remains open")
