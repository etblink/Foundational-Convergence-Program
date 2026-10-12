"""Exact B4->D4 high-sector branching stress test for pinned BFSS SU(2).

Requires only Python stdlib. Exercises 4 large B4 weights (integral and
spinorial), exact Weyl dimensions and the source-relevant n<=50 exclusion.
The general branching rule is an external theorem (Goodman-Wallach 8.1.3),
not proved by this finite test. This is not a Lean or spectral certificate.
"""
from fractions import Fraction as F
from itertools import combinations

def dimB4(w):
    rho = [F(7, 2), F(5, 2), F(3, 2), F(1, 2)]
    a = [w[i] + rho[i] for i in range(4)]
    out = F(1)
    for i in range(4):
        out *= a[i] / rho[i]
    for i, j in combinations(range(4), 2):
        out *= (a[i]**2-a[j]**2)/(rho[i]**2-rho[j]**2)
    assert out.denominator == 1
    return int(out)

def dimD4(w):
    rho = [F(3), F(2), F(1), F(0)]
    a = [w[i] + rho[i] for i in range(4)]
    out = F(1)
    for i, j in combinations(range(4), 2):
        out *= (a[i]**2-a[j]**2)/(rho[i]**2-rho[j]**2)
    assert out.denominator == 1
    return int(out)

def interval(high, low):
    assert high >= low and (high-low).denominator == 1
    return [high-F(j) for j in range(int(high-low)+1)]

def constituents(lam):
    for n1 in interval(lam[0], lam[1]):
        for n2 in interval(lam[1], lam[2]):
            for n3 in interval(lam[2], lam[3]):
                for n4 in interval(lam[3],-lam[3]):
                    if n3 >= abs(n4):
                        yield (n1,n2,n3,n4)

weights = [
    (F(58),F(58),F(0),F(0)),
    (F(117,2),F(117,2),F(1,2),F(1,2)),
    (F(60),F(59),F(1),F(0)),
    (F(59),F(58),F(2),F(1)),
]
for lam in weights:
    reps=list(constituents(lam))
    d=sum(dimD4(nu) for nu in reps)
    assert d==dimB4(lam)
    assert min(nu[0] for nu in reps)==lam[1]
    assert all(nu[0]>F(56) for nu in reps)
    # The oscillator tensor F at n<=50 has first weight at most n+6<=56.
    assert not any(nu[0]<=F(n+6) for nu in reps for n in range(51))
    print("PASS",tuple(map(str,lam)),"K-types",len(reps),
          "B4 dimension",d,"D4 sum",d,"min nu1",lam[1])
print("PASS: all four high-weight examples exclude n<=50; "
      "finite diagnostic, not proof of general branching or physical realization")
