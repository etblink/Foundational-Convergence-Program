"""Exact Spin(9) x SU(2) singlet character of the original 48-Majorana Fock module.

Run: python3 BFSS_EXACT_SU2_SINGLET_SPIN9_FOCK_DECOMPOSITION_0_1_0.py
Pure Python stdlib; exact integers/Fractions; NO 2**24-by-2**24 Fock matrices.
This checks representations, not the full source BFSS positive-spectrum theorem.
"""
from collections import Counter, defaultdict
from fractions import Fraction as F
from itertools import product, permutations, combinations

# Spin(9) torus weights have units of 1/4 in each coordinate; gauge SU2
# exponents use fundamental torus variable z (adjoint weights -2,0,+2).
positive_spinor=[(1,*s) for s in product((-1,1),repeat=3)]
# Each Spin(9) spinor-positive weight has THREE original CAR color modes.
# Exterior degrees 0,1,2,3 of the color 3: SU2 chars 1,3,3,1.
# Clifford weight shifts are (-3,-1,+1,+3)*omega/2.
block=[(-3,0),(-1,-2),(-1,0),(-1,2),
       (1,-2),(1,0),(1,2),(3,0)]
allweights={(0,0,0,0,0):1}
for omega in positive_spinor:
    new=defaultdict(int)
    for (a,b,c,d,z),count in allweights.items():
        for scale,charge in block:
            new[(a+scale*omega[0],b+scale*omega[1],
                 c+scale*omega[2],d+scale*omega[3],z+charge)]+=count
    allweights=new
assert sum(allweights.values())==2**24

# Project onto SU2 singlets: coefficient of z^0 minus that of z^2.
c0=Counter();c2=Counter();fullSpin=Counter()
for (a,b,c,d,q),count in allweights.items():
    wt=(a,b,c,d)
    fullSpin[wt]+=count
    if q==0:c0[wt]+=count
    elif q==2:c2[wt]+=count
singlet=c0.copy();singlet.subtract(c2)
assert min(singlet.values())>=0
singlet={w:n for w,n in singlet.items() if n}
assert sum(singlet.values())==366080

# Independent SU2-only invariant-dimension calculation.
# At each of the eight modes: exterior algebra of gauge 3 has char
# 2(1+chi_3)=4+2 z^2+2 z^-2.
gauge={0:1}
for _ in range(8):
    n=defaultdict(int)
    for q,count in gauge.items():
        for d,c in [(-2,2),(0,4),(2,2)]:n[q+d]+=c*count
    gauge=n
assert gauge[0]-gauge[2]==366080
assert sum(gauge.values())==2**24

# Independent Spin9-only reconstruction from 24 Clifford sign pairs.
spinOnly={(0,0,0,0):1}
for omega in positive_spinor:
    for color in range(3):
        n=defaultdict(int)
        for wt,count in spinOnly.items():
            for s in (-1,1):
                n[tuple(wt[i]+s*omega[i] for i in range(4))]+=count
        spinOnly=n
assert fullSpin==spinOnly
assert len(fullSpin)==6649

# B4 signed-permutation Weyl anti-symmetrizer and highest multiplicities.
rho=(14,10,6,2)  # rho_B4=(7/2,5/2,3/2,1/2), times 4
def parity(p):
    return (-1)**sum(p[i]>p[j] for i in range(4)
                     for j in range(i+1,4))
weyl=[(tuple(s[i]*rho[p[i]] for i in range(4)),
       parity(p)*s[0]*s[1]*s[2]*s[3])
      for p in permutations(range(4)) for s in product((-1,1),repeat=4)]
assert len(weyl)==384
irreps={}
for mu in singlet:
    if not mu[0]>=mu[1]>=mu[2]>=mu[3]>=0:continue
    y=tuple(mu[i]+rho[i] for i in range(4))
    mult=sum(sgn*singlet.get(tuple(y[i]-w[i] for i in range(4)),0)
             for w,sgn in weyl)
    assert mult>=0
    if mult:irreps[mu]=mult

rhoF=tuple(F(r,4) for r in rho)
def dimension(mu):
    y=tuple(F(mu[i],4)+rhoF[i] for i in range(4))
    ans=F(1)
    for i in range(4):ans*=y[i]/rhoF[i]
    for i,j in combinations(range(4),2):
        ans*=(y[i]**2-y[j]**2)/(rhoF[i]**2-rhoF[j]**2)
    assert ans.denominator==1
    return int(ans)

assert len(irreps)==32
assert sum(irreps.values())==35
assert sum(n*dimension(mu) for mu,n in irreps.items())==366080
assert irreps[(8,8,0,0)]==1        # mu=(2,2,0,0)
assert irreps[(24,0,0,0)]==1       # mu=(6,0,0,0)
assert irreps[(0,0,0,0)]==1        # Spin9 scalar in F^SU2
assert max(mu[1] for mu in irreps)==12   # max mu_2=3

def mink(mu):
    return min(k for k in range(40) if 2*k+F(mu[1],4)>37)
assert min(map(mink,irreps))==18
assert sum(mink(mu)==18 for mu in irreps)==19
assert sum(mink(mu)==19 for mu in irreps)==13
opt=min((mink(mu),dimension((mu[0]+8*mink(mu),
                             mu[1]+8*mink(mu),mu[2],mu[3])),mu)
        for mu in irreps)
assert opt==(18,7252446280716,(8,8,0,0))
oldDim=dimension((176,152,0,0)) # old lambda=(44,38,0,0)
newDim=dimension((152,152,0,0)) # new lambda=(38,38,0,0)
assert oldDim==107060263101792 and newDim==7252446280716

print('PASS Fock dimension 2^24=',2**24,'Spin9 torus weights',len(fullSpin))
print('PASS SU2 singlets=',sum(singlet.values()),'independent Haar/invariant check')
print('PASS 32 distinct Spin9 irreps, 35 copies; exact reconstructed dim 366080')
print('PASS max fermionic mu2=3; min P exponent k=18, impossible k=17')
print('PASS k18 mu=(2,2,0,0) -> lambda=(38,38,0,0)')
print('PASS old/new Spin9 dimensions',oldDim,newDim,'factor',F(oldDim,newDim))
print('ALL SPIN9 SU2-SINGLET IRREPS (highest weight, multiplicity, dimension):')
for mu,n in sorted(irreps.items(),reverse=True):
    print(tuple(F(q,4) for q in mu),n,dimension(mu))
print('SCOPE: P construction and spectrum remain dependent on pinned source hypotheses')
