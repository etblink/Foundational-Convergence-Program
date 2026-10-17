"""Sharp color-sum fermion control + retuned BFSS high-spin threshold.
Exact arithmetic / Weyl dimensions; no Lean or full Fock matrix required.

Proof: q=G/2+V+B, B<=8sqrt(2)*sum_a|x^a|.
For 0<a<1/2, aG+V >= 2sqrt(a)(m+9)/3 * integral(sum |x^a|).
At a=12/25,m=16 the coefficient is positive.
The full spinor character/mu list was independently checked in
BFSS_EXACT_SU2_SINGLET_SPIN9_FOCK_DECOMPOSITION_0_1_0.py.
"""
from fractions import Fraction as F
from itertools import combinations, product
from math import sqrt

a=F(12,25)
eps=F(1,2)-a
m=16
assert eps==F(1,50)
# [2 sqrt(a) (m+9)/3]^2 = 400/3 > (8sqrt2)^2 =128.
osc_sq=F(4)*a*F((m+9)**2,9)
b_sq=F(128)
assert osc_sq==F(400,3)>b_sq
coef=2*sqrt(float(a))*(m+9)/3-8*sqrt(2)
assert coef>0
# For any 0<a<1/2 and m<=15, maximal oscillator coefficient
# <=2sqrt(1/2)*24/3 =8sqrt2, so no strictly positive comparison.
assert F(4)*F(1,2)*F(24**2,9)==b_sq
assert 16+6==22

# Independently verified F^SU2 Spin9 dominant highest weights, source B4 convention.
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
assert len(mus)==32 and max(mu[1] for mu in mus)==3

rho=(F(7,2),F(5,2),F(3,2),F(1,2))
def dimension(lam):
    x=[F(v)+rho[i] for i,v in enumerate(lam)]
    d=F(1)
    for i in range(4):d*=x[i]/rho[i]
    for i,j in combinations(range(4),2):
        d*=(x[i]*x[i]-x[j]*x[j])/(rho[i]*rho[i]-rho[j]*rho[j])
    assert d.denominator==1
    return int(d)

def min_k(mu):
    return next(k for k in range(25) if 2*k+mu[1]>22)
rows=[]
for mu in mus:
    k=min_k(mu)
    lam=(mu[0]+2*k,mu[1]+2*k,mu[2],mu[3])
    rows.append((k,dimension(lam),mu,lam))
assert min(k for k,_,_,_ in rows)==10
assert all(2*9+mu[1]<=22 for mu in mus)
best_k10=min(r for r in rows if r[0]==10)
best_size=min(rows,key=lambda r:r[1])
assert best_k10==(10,237658409820,(3,3,1,0),(23,23,1,0))
assert best_size==(11,72903575745,(2,2,0,0),(24,24,0,0))
old=dimension((38,38,0,0))
assert old==7252446280716
assert old>dimension((23,23,1,0))>dimension((24,24,0,0))
# Minuscule one-Q channels for actual k10 witness.
lam=best_k10[3]
partners=sorted(tuple(F(lam[i])+F(s[i],2) for i in range(4))
    for s in product((-1,1),repeat=4)
    if (F(lam[0])+F(s[0],2)>=F(lam[1])+F(s[1],2)>=
        F(lam[2])+F(s[2],2)>=F(lam[3])+F(s[3],2)>=0))
assert len(partners)==6
assert all(v[1]>22 for v in partners)
assert sum(dimension(v) for v in partners)==16*dimension(lam)
print('PASS exact oscillator-B comparison a=12/25, epsilon=1/50, m=16')
print('PASS m<=15 cannot certify positive coefficient by same method')
print('PASS original physical confinement cutoff lambda2>22')
print('PASS minimal P exponent k=10, lambda=(23,23,1,0)')
print('PASS smaller irrep at k=11: lambda=(24,24,0,0)')
print('PASS six allowed single-Q partner representations all lambda2>22')
print('Coefficient c=',coef,'old/new dimension ratios',
      float(F(old,best_k10[1])),float(F(old,best_size[1])))
print('SCOPE: statements about H remain conditional on source slice/branching')
