"""Exact source 48-Majorana Fock torus-weight character and Spin(9) witnesses.

Pure Python standard library. The Fock module has 2**24 states but only a
small number of distinct torus weights. Character enumeration is independent
of Lean. Gauge invariance is proved analytically using one-dimensionality
of the top weight and connected semisimplicity of SU(2).
"""
from collections import Counter
from itertools import combinations,product
from fractions import Fraction as F

# Positive torus half of real Spin(9) spinor: (1,+/-1,+/-1,+/-1)/2.
# Spin(48) Fock weights: +/- half of these across THREE SU(2) colors.
# Integer quadruples below represent weights with scale factor FOUR.
modes=[(1,*ss) for ss in product((-1,1),repeat=3) for color in range(3)]
assert len(modes)==24
mult=Counter({(0,0,0,0):1})
for mu in modes:
    new=Counter()
    for w,n in mult.items():
        new[tuple(w[i]+mu[i] for i in range(4))]+=n
        new[tuple(w[i]-mu[i] for i in range(4))]+=n
    mult=new
assert sum(mult.values())==2**24
assert max(w[0] for w in mult)==24
assert [(w,n) for w,n in mult.items() if w[0]==24]==[((24,0,0,0),1)]
assert mult[(-24,0,0,0)]==1
print('PASS: original 2^24 Fock states; unique highest torus weight (6,0,0,0)')
print('Distinct torus weights:',len(mult))
print('PROOF: gauge SU(2) fixes unique top line; positive roots annihilate it')

RHO=(F(7,2),F(5,2),F(3,2),F(1,2))
def dim(lam):
    lam=tuple(map(F,lam))
    assert lam[0]>=lam[1]>=lam[2]>=lam[3]>=0
    v=[lam[i]+RHO[i] for i in range(4)]
    out=F(1)
    for i in range(4):out*=v[i]/RHO[i]
    for i,j in combinations(range(4),2):
        out*=(v[i]**2-v[j]**2)/(RHO[i]**2-RHO[j]**2)
    assert out.denominator==1
    return int(out)

mu=(6,0,0,0)
lam=(44,38,0,0)
assert tuple(mu[i]+(38 if i<2 else 0) for i in range(4))==lam
assert dim(mu)==2508
partners=sorted(tuple(F(lam[i])+F(ss[i],2) for i in range(4))
                for ss in product((-1,1),repeat=4)
                if (F(lam[0])+F(ss[0],2)>=F(lam[1])+F(ss[1],2)>=
                    F(lam[2])+F(ss[2],2)>=F(lam[3])+F(ss[3],2)>=0))
assert len(partners)==4
assert all(v[1]>37 for v in partners)
assert 16*dim(lam)==sum(dim(v) for v in partners)
print('PASS: gauge-singlet Spin9 irrep mu=(6,0,0,0), dimension',dim(mu))
print('PASS: physical k=19 lambda=(44,38,0,0), dimension',dim(lam))
for v in partners:
    print('Allowed partner:',tuple(map(str,v)),'dimension',dim(v))
print('PASS: four one-step candidate types, dimensions complete')
print('NOT PROVED: each candidate occurs as an actual Q image')
