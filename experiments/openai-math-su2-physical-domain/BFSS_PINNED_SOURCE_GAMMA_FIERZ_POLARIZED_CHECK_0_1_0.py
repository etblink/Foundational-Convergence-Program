"""Fail-closed exact ORIGINAL SOURCE gamma certificate for BFSS.

Run: python3 experiments/openai-math-su2-physical-domain/
       BFSS_PINNED_SOURCE_GAMMA_FIERZ_POLARIZED_CHECK_0_1_0.py

The gamma entries are PARSED from the exact committed SU2RealGammaProbe.lean,
not substituted from an equivalent gamma-word representation.
No new Lean axioms, no 2^24 Fock matrix, no numerical tolerances.
"""
from pathlib import Path
from hashlib import sha1
from itertools import combinations
from re import findall

SRC = Path(__file__).resolve().parents[1] / "openai-math-su2-concrete-potential"
FILES = {
    "SU2RealGammaProbe.lean":"5ec0fcb039fb5c1367f72b2bd0f8c05fcd936587",
    "SU2BFSSFullAlgebraDataProbe.lean":"fe3e0b21bb60d74b54c9faf7c066db9b02939405",
    "SU2BFSSG1APairedThetaProbe.lean":"4f8fbf05a35c1d625746931b7ff0361b7ffc2ec4",
}
def read_exact(name, expected):
    raw=(SRC/name).read_bytes()
    gitsha=sha1(b"blob "+str(len(raw)).encode()+b"\0"+raw).hexdigest()
    if gitsha != expected:
        raise AssertionError(f"FAIL-CLOSED source blob {name}: {gitsha} != {expected}")
    return raw.decode("utf-8")

source={name:read_exact(name,gitsha) for name,gitsha in FILES.items()}
assert "gamma := FCP.BFSSGamma9.gamma" in source["SU2BFSSFullAlgebraDataProbe.lean"]
assert "gamma := concreteAlgebraData.gamma" in source["SU2BFSSG1APairedThetaProbe.lean"]
s=source["SU2RealGammaProbe.lean"]
def parse_block(start,end):
    a=s.index(start);b=s.index(end,a+len(start))
    mat=[None]*9
    for idx,vals in findall(r"\|\s*(\d+)\s*=>\s*!\[([\s\S]*?)\]",s[a:b]):
        row=tuple(int(v) for v in findall(r"-?\d+",vals))
        assert len(row)==16 and mat[int(idx)] is None
        mat[int(idx)]=row
    assert all(row is not None for row in mat)
    return mat
perm=parse_block("private def perm","/-- The exact ±1 coefficient")
sign=parse_block("private def sign","/-- The nine integer signed-permutation")
assert all(sorted(row)==list(range(16)) for row in perm)
assert all(set(row)<= {-1,1} for row in sign)

# Source integer gamma_i rows are each a single +/-1 permutation entry.
G=[[[sign[i][r] if perm[i][r]==c else 0 for c in range(16)]
    for r in range(16)] for i in range(9)]
assert all(G[i][r][c]==G[i][c][r]
           for i in range(9) for r in range(16) for c in range(16))
clifford=0
for i in range(9):
    for j in range(9):
        for r in range(16):
            for c in range(16):
                ij=(sign[i][r]*sign[j][perm[i][r]]
                    if perm[j][perm[i][r]]==c else 0)
                ji=(sign[j][r]*sign[i][perm[j][r]]
                    if perm[i][perm[j][r]]==c else 0)
                assert ij+ji==(2 if i==j and r==c else 0)
                clifford+=1
assert clifford==20736

# Precompute gammaTwo_ij=(gamma_i*gamma_j-gamma_j*gamma_i)/2;
# Clifford relations make it gamma_i gamma_j for i!=j, zero otherwise.
G2=[[[[(sign[i][r]*sign[j][perm[i][r]]
         if i!=j and perm[j][perm[i][r]]==c else 0)
         for c in range(16)] for r in range(16)]
         for j in range(9)] for i in range(9)]

cases=[(a,) for a in range(16)]+list(combinations(range(16),2))
assert len(cases)==136
count=0
for support in cases:
    ww=len(support)
    U=[[sum(G[i][a][r] for a in support) for r in range(16)]
       for i in range(9)]
    for p in range(9):
        V=[[sum(G2[i][p][a][r] for a in support) for r in range(16)]
           for i in range(9)]
        wp=sum(G[p][a][b] for a in support for b in support)
        for r in range(16):
            for t in range(16):
                lhs=sum(U[i][r]*V[i][t]+U[i][t]*V[i][r] for i in range(9))
                rhs=ww*G[p][r][t]-(wp if r==t else 0)
                assert lhs==rhs,("Fierz",support,p,r,t,lhs,rhs)
                count+=1
assert count==313344
print("PASS source blobs",FILES)
print("PASS 20736 exact real-gamma Clifford entries; source private signed permutations")
print("PASS 313344 exact generalized Fierz entries across 136 polarizing spinors")
print("PASS pairedAlgebraData.gamma -> concreteAlgebraData.gamma -> FCP.BFSSGamma9.gamma")
print("MATHEMATICAL EXTENSION: quadratic polarization proves arbitrary real w")
print("NOT PROVED BY THIS SCRIPT: Lean kernel theorem or full original CAR operator identity")
