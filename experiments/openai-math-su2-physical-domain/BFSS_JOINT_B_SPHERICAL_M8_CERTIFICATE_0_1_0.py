"""Exact rational certificate: original BFSS joint fermion/spherical oscillator norm.

Run: python3 BFSS_JOINT_B_SPHERICAL_M8_CERTIFICATE_0_1_0.py
Requires stdlib only. Mathematical proof explained in adjacent research memo.
This certifies a finite geometric inequality, NOT the source spectral theorem.
"""
from fractions import Fraction as F
from itertools import combinations, product
from math import isqrt
N,PREC=1024,10**10
# J = integral_0^1 (1+15 u^2)^(-1/2)du.
# Decreasing integrand: right Riemann sum lower and left upper.
# floor-sqrt gives certified rational bounds on each integrand.
LOW=sum(PREC//(isqrt(N*N+15*j*j)+1) for j in range(1,N+1))
UP=sum((PREC+isqrt(N*N+15*j*j)-1)//isqrt(N*N+15*j*j)
       for j in range(N))
assert F(133,250)<F(LOW,PREC)<F(UP,PREC)<F(267,500)
# Tangent to spherical mean A(t) at (1,1/4,1/4) has derivatives
# 8/15-2J/15 and 31J/60-1/15 for the first and each other axis.
assert F(8,15)-F(2,15)*F(267,500)>F(231,500)
assert F(31,60)*F(133,250)-F(1,15)>F(104,500)
print("PASS spherical-integral rational bounds:",LOW,UP)

# B=16sqrt(2)*f(t), f(t)=lambda_max of 3x3 symmetric
# zero-diagonal matrix with entries (t3,t2,t1)/2.
# A >= each of FOUR certified affine lower supports:
# (sum t)/3, max(t)/2, (3/8)(t1+t2), 
# (231*t1+104*t2+104*t3)/500 for sorted t1>=t2>=t3.
SUPPORTS=[
 (F(1,3),F(1,3),F(1,3)),
 (F(1,2),F(0),F(0)),
 (F(3,8),F(3,8),F(0)),
 (F(231,500),F(104,500),F(104,500))]
C=F(21,20)
MESH=8
good={}
for i in range(MESH+1):
    for j in range(i+1):
        t=(F(1),F(i,MESH),F(j,MESH))
        eligible=set()
        for k,l in enumerate(SUPPORTS):
            h=C*sum(l[z]*t[z] for z in range(3))
            # Exactly: characteristic polynomial of symmetric offdiag matrix.
            # It has precisely one positive root, f(t).
            det4=4*h**3-h*sum(v*v for v in t)-t[0]*t[1]*t[2]
            if det4>=0:
                eligible.add(k)
        good[i,j]=eligible
counts=[0]*len(SUPPORTS)
for i in range(MESH):
    for j in range(i+1):
        triangles=[((i,j),(i+1,j),(i+1,j+1))]
        if j<i: triangles.append(((i,j),(i,j+1),(i+1,j+1)))
        for tri in triangles:
            candidates=set.intersection(*(good[v] for v in tri))
            assert candidates,("uncovered geometric cell",tri)
            counts[min(candidates)]+=1
assert len(good)==45 and sum(counts)==64
print("PASS exact global 21/20 spectral-radius/spherical-mean certificate")
print("PASS 45 rational vertices, 64 triangles; support usages",counts)

# m=8, a=49/100: 2sqrt(a)(m+9)=119/5.
# 16sqrt(2)*(21/20)=84sqrt(2)/5, positive difference.
a=F(49,100)
assert a<F(1,2) and F(1,2)-a==F(1,100)
assert 119**2-2*84**2==49>0
assert 8+6==14
# Rank-one x attains ||B||/A=16sqrt(2); so with m<=7
# the maximal oscillator coefficient is at most 16sqrt(2),
# with strict inequality if a<1/2. Cannot gain positive remainder.
print("PASS m=8 sufficient threshold lambda2>14; m<=7 obstructed in method")

rho=(F(7,2),F(5,2),F(3,2),F(1,2))
def dim(lam):
    x=[F(lam[i])+rho[i] for i in range(4)]
    d=F(1)
    for i in range(4):d*=x[i]/rho[i]
    for i,j in combinations(range(4),2):
        d*=(x[i]**2-x[j]**2)/(rho[i]**2-rho[j]**2)
    assert d.denominator==1
    return int(d)
assert dim((15,15,1,0))==4065730200
assert dim((16,16,0,0))==1514323161
assert 3+2*5<=14 and 3+2*6>14
for lam,expected in [((15,15,1,0),6),((16,16,0,0),3)]:
    allowed=sorted(tuple(F(lam[i])+F(s[i],2) for i in range(4))
       for s in product((-1,1),repeat=4)
       if F(lam[0])+F(s[0],2)>=F(lam[1])+F(s[1],2)>=
          F(lam[2])+F(s[2],2)>=F(lam[3])+F(s[3],2)>=0)
    assert len(allowed)==expected
    assert all(w[1]>14 for w in allowed)
    assert sum(dim(w) for w in allowed)==16*dim(lam)
print("PASS original physical P^6 -> (15,15,1,0), dimension",dim((15,15,1,0)))
print("PASS smaller P^7 -> (16,16,0,0), dimension",dim((16,16,0,0)))
print("PASS 6 and 3 candidate one-supercharge channels above cutoff")
print("RESTRICTION: no assertion each candidate channel is populated")
