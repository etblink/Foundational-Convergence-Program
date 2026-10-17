"""Lean-facing exact rank-one completeness certificate for pinned BFSS gamma.

Run from an FCP checkout:
    python3 experiments/openai-math-su2-physical-domain/BFSS_SOURCE_RANK_ONE_COMPLETENESS_CHECK_0_1_0.py

Reads the ORIGINAL accepted Lean signed-permutation gamma source, not a
replacement gamma system. Fails closed on unexpected Git blob changes.
Exact integer test for 136 polarizing spinors (16 e_i + 120 e_i+e_j).
"""
from hashlib import sha1
from itertools import combinations
from pathlib import Path
import re

SOURCE = Path(__file__).resolve().parents[1] / "openai-math-su2-concrete-potential"
PINS = {
    "SU2RealGammaProbe.lean": "5ec0fcb039fb5c1367f72b2bd0f8c05fcd936587",
    "SU2BFSSFullAlgebraDataProbe.lean": "fe3e0b21bb60d74b54c9faf7c066db9b02939405",
    "SU2BFSSG1APairedThetaProbe.lean": "4f8fbf05a35c1d625746931b7ff0361b7ffc2ec4",
}
def read_pinned(name, sha):
    raw = (SOURCE / name).read_bytes()
    actual = sha1(b"blob " + str(len(raw)).encode() + b"\x00" + raw).hexdigest()
    assert actual == sha, (name, actual, sha)
    return raw.decode("utf-8")

src = {name: read_pinned(name, sha) for name, sha in PINS.items()}
assert "gamma := FCP.BFSSGamma9.gamma" in src["SU2BFSSFullAlgebraDataProbe.lean"]
assert "gamma := concreteAlgebraData.gamma" in src["SU2BFSSG1APairedThetaProbe.lean"]
source = src["SU2RealGammaProbe.lean"]
def sparse_rows(begin, finish):
    a = source.index(begin)
    b = source.index(finish, a + len(begin))
    result = [None] * 9
    for i, vals in re.findall(r"\|\s*(\d+)\s*=>\s*!\[([\s\S]*?)\]", source[a:b]):
        v = tuple(map(int, re.findall(r"-?\d+", vals)))
        assert len(v) == 16 and result[int(i)] is None
        result[int(i)] = v
    assert all(row is not None for row in result)
    return result

perm = sparse_rows("private def perm", "/-- The exact ±1")
sign = sparse_rows("private def sign", "/-- The nine integer")
assert all(sorted(row) == list(range(16)) for row in perm)
assert all(set(row) <= {-1, 1} for row in sign)
gamma = [
    [[sign[i][a] if perm[i][a] == b else 0 for b in range(16)]
     for a in range(16)] for i in range(9)
]
assert all(gamma[i][a][b] == gamma[i][b][a]
           for i in range(9) for a in range(16) for b in range(16))

# For R=w*w^T, T=sum_i gamma_i*R*gamma_i, u_p=w^T*gamma_p*w:
#              2(T-R) = (w^T w)I - sum_p u_p gamma_p.
# This is the single source-specific finite identity from which the
# generalized gammaTwo Fierz identity follows via the Clifford relations.
supports = [(a,) for a in range(16)] + list(combinations(range(16), 2))
assert len(supports) == 136
entries = 0
for support in supports:
    w = [int(a in support) for a in range(16)]
    norm = len(support)
    cols = [[sum(gamma[i][r][a] for a in support)
             for r in range(16)] for i in range(9)]
    u = [sum(gamma[p][a][b] for a in support for b in support)
         for p in range(9)]
    for r in range(16):
        for s in range(16):
            left = 2 * (sum(cols[i][r] * cols[i][s] for i in range(9))
                        - w[r] * w[s])
            right = (norm if r == s else 0) - sum(
                u[p] * gamma[p][r][s] for p in range(9))
            assert left == right, (support, r, s, left, right)
            entries += 1
assert entries == 34816
print("SOURCE PINS VERIFIED:", PINS)
print("EXACT PASS: 136 polarizing vectors, 34816 rank-one matrix entries")
print("QUADRATIC POLARIZATION: theorem holds for all real 16-spinors")
print("FORMAL PROOF REMAINING: finite rank-one lemma in Lean; generic gamma algebra")
print("NOT CLAIMED: Lean kernel compilation, CAR/Gauss bridge, BFSS spectrum")
