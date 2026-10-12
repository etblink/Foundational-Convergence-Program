"""Exact characters of the Spin(9) pullback of Cl_16, no numeric approximation.

Checks 256 Clifford spinor weights, chiral (44+84)/128 decomposition,
vanishing graded Cartan moments below degree eight and first nonzero 8th.
Uses only Python standard library; not a Lean proof or eigenvalue solver.
"""
from collections import Counter
from fractions import Fraction
from itertools import combinations, product
from math import factorial

DIM=4
ZERO=(0,)*DIM

def add(a,b): return tuple(x+y for x,y in zip(a,b))
def unit(i,k=1): return tuple(k if j==i else 0 for j in range(DIM))

# All weights use 1/4 of an orthonormal Spin(9) torus coordinate unit.
vec=[ZERO]+[unit(i,s*4) for i in range(DIM) for s in (-1,1)]
spin=[tuple(s*2 for s in signs) for signs in product((-1,1),repeat=DIM)]
assert (len(vec),len(spin))==(9,16)

sym=Counter(add(vec[i],vec[j]) for i in range(9) for j in range(i,9))
sym[ZERO]-=1
three=Counter(add(add(vec[i],vec[j]),vec[k]) for i,j,k in combinations(range(9),3))
Wbos=sym+three
Wferm=Counter(add(a,b) for a in vec for b in spin)-Counter(spin)
assert (sum(sym.values()),sum(three.values()),sum(Wbos.values()),sum(Wferm.values()))==(44,84,128,128)

# A real Spin(9) 16-spinor has eight distinct positive/negative torus weight pairs.
# Choose the eight with first coordinate +1/2 (represented here at scale two).
# The Spin(16) spin module uses independent sign choices +/- mu/2.
mu=[(1,*rest) for rest in product((-1,1),repeat=3)]
assert len(mu)==8
Wchiral={0:Counter(),1:Counter()}
for choices in product((-1,1), repeat=8):
    weight=tuple(sum(choices[j]*mu[j][i] for j in range(8)) for i in range(4))
    parity=sum(x<0 for x in choices)%2
    Wchiral[parity][weight]+=1
assert (sum(Wchiral[0].values()),sum(Wchiral[1].values()))==(128,128)
assert Wchiral[0]==Wbos
assert Wchiral[1]==Wferm
print('PASS: chiral Cl16 Spin(9) chars exactly 44+84 and 128; total 256 weights')
print('PASS: bosonic 44 (symmetric traceless tensor), 84 (three-form)')
print('PASS: fermionic 128 (gamma-traceless vector-spinor)')

# Chiral difference = product_mu (e^(mu(H)/2)-e^(-mu(H)/2)).
# This character has an order-eight zero, so the graded moments vanish <8.
H=(1,2,4,8)
mu_eval=[Fraction(sum(a*b for a,b in zip(w,H)),2) for w in mu]
product_mu=Fraction(1)
for value in mu_eval: product_mu*=value
assert product_mu!=0
for power in range(9):
    graded=sum((1 if parity==0 else -1)*multiplicity*
               Fraction(sum(a*b for a,b in zip(weight,H)),4)**power
               for parity in (0,1) for weight,multiplicity in Wchiral[parity].items())
    want=Fraction(0) if power<8 else factorial(8)*product_mu
    assert graded==want,(power,graded,want)
print('PASS: Cartan supertraces Str(H^n)=0 for n=0,...,7')
print('PASS: first nonzero Str(H^8)=',factorial(8)*product_mu)
print('LOGICAL RESULT: if a positive-energy Spin(9) eigenspace contains a singlet,')
print('  its Cl16 multiplicity space must contain one of 44,84,128,')
print('  hence total complex eigenspace dimension >= 256*44 =',256*44)
print('SCOPE: representation calculation; applies to original BFSS only if')
print('  the physical superalgebra and Spin(9) covariance are established.')
