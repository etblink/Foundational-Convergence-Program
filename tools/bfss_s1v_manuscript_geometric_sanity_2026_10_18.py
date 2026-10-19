#!/usr/bin/env python3
"""Deterministic falsification probes for S1V 48-real plane geometry and
manuscript SU(2)-color-invariant polynomial/potential identities.
These numerical checks are NOT Lean kernel proofs or spectral verification.
No network, CI, GitHub or external dependencies are used.
"""
import cmath
import math
import random

R = random.Random(20261018)
TOL = 2e-8

def dot(a,b):
    return sum(x*y for x,y in zip(a,b))
def norm2(v):
    return dot(v,v)
def add(a,b):
    return [x+y for x,y in zip(a,b)]
def scale(t,a):
    return [t*x for x in a]
def sub(a,b):
    return [x-y for x,y in zip(a,b)]
def near(x,y):
    return abs(x-y)<=TOL * (1+max(abs(x),abs(y)))
def vector(n):
    return [R.uniform(-1,1) for _ in range(n)]
def unit(v):
    return scale(1/math.sqrt(norm2(v)),v)
def potential(x):
    return sum(norm2(x[a])*norm2(x[b])-dot(x[a],x[b])**2
               for a in range(3) for b in range(a+1,3))
def polynomial(x):
    z=[v[0]+1j*v[1] for v in x]
    e=[v[2]+1j*v[3] for v in x]
    p=sum((z[a]*e[b]-z[b]*e[a])**2 for a in range(3) for b in range(a+1,3))
    ident=sum(zz*zz for zz in z)*sum(ee*ee for ee in e)-sum(zz*ee for zz,ee in zip(z,e))**2
    return p,ident

def transform(x):
    # A real color SO(3) element; product of two right-handed plane rotations.
    c,s=math.cos(.37),math.sin(.37)
    u,v=math.cos(-.62),math.sin(-.62)
    o=((c*u,-s,c*v),(s*u,c,s*v),(-v,0.,u))
    return [[sum(o[a][b]*x[b][i] for b in range(3)) for i in range(9)] for a in range(3)]

def main():
    for _ in range(128):
        a=unit(vector(48))
        b0=vector(48)
        b=unit(sub(b0,scale(dot(a,b0),a)))
        v=vector(48)
        x,y=dot(a,v),dot(b,v)
        rem=sub(sub(v,scale(x,a)),scale(y,b))
        flip=add(add(scale(-x,a),scale(-y,b)),rem)
        twice=sub(sub(flip,scale(2*dot(a,flip),a)),scale(2*dot(b,flip),b))
        assert near(dot(a,b),0.)
        assert near(dot(a,rem),0.) and near(dot(b,rem),0.)
        assert all(near(q,w) for q,w in zip(v,add(add(scale(x,a),scale(y,b)),rem)))
        assert near(norm2(flip),norm2(v))
        assert all(near(q,w) for q,w in zip(v,twice))

        fields=[vector(9) for _ in range(3)]
        rotated=transform(fields)
        assert near(potential(fields),potential(rotated))
        p,ident=polynomial(fields)
        pp,identp=polynomial(rotated)
        assert near(p,ident) and near(pp,identp) and near(p,pp)
        assert potential(fields)>=-TOL

        u=vector(9)
        r=math.sqrt(norm2(u))
        unit_u=scale(1/r,u)
        s0,s1=R.uniform(-2,2),R.uniform(-2,2)
        z0=vector(9)
        z1=vector(9)
        z0=sub(z0,scale(dot(z0,unit_u),unit_u))
        z1=sub(z1,scale(dot(z1,unit_u),unit_u))
        xs=[u,add(scale(s0,unit_u),z0),add(scale(s1,unit_u),z1)]
        assert potential(xs)+TOL >= norm2(u)*(norm2(z0)+norm2(z1))

    t=1.7
    example=[[t]+[0.]*8,[0.,0.,t]+[0.]*6,[0.]*9]
    p,_=polynomial(example)
    assert near(p,t**4)
    print('PASS: 128 fixed-seed checks each of source-plane decomposition, orthogonality,')
    print('      half-turn norm/involution, color SO(3) quartic potential invariance,')
    print('      manuscript complex polynomial identity/invariance, and slice lower bound.')
    print('PASS: nonzero highest-weight polynomial test-ray value P=t^4 at t=1.7.')
    print('SCOPE: numerical sanity checks only; NO Lean, no Clifford Spin lift or spectral proof.')

if __name__=='__main__':
    main()
