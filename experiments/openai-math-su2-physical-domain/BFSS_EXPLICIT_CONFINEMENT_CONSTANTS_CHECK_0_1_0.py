"""BFSS SU(2): exact Clifford-plane and quantitative-bound regression checks.

Requires NumPy and SymPy. All tested equalities use integer / symbolic arithmetic.
Spin(48) weight lifting and Majorana norm estimates require the accompanying
analytical proof: this script does NOT simulate a 2**24-dimensional Fock space
or certify the pinned manuscript's global spectral theorem.
"""
from itertools import combinations
import numpy as np
import sympy as sp

P = {
    "I": np.eye(2, dtype=np.int64),
    "X": np.array([[0, 1], [1, 0]], dtype=np.int64),
    "Y": np.array([[0, 1], [-1, 0]], dtype=np.int64),
    "Z": np.diag(np.array([1, -1], dtype=np.int64)),
}
WORDS = ["IIIX", "IIIZ", "ZZYY", "XZYY", "YXXY",
         "YXZY", "IYIY", "YZIY", "IXYY"]
G = []
for word in WORDS:
    g = np.ones((1, 1), dtype=np.int64)
    for letter in word:
        g = np.kron(g, P[letter])
    G.append((-1) ** (word.count("Y") // 2) * g)
I = np.eye(16, dtype=np.int64)
for i, j in combinations(range(9), 2):
    J = G[i] @ G[j]
    assert np.array_equal(J.T, -J)
    assert np.array_equal(J @ J, -I)
    assert np.trace(J) == 0
print("PASS: all 36 source Clifford rotation-plane generators; 8 planes per 16-spinor copy")
print("ANALYTIC STEP: 3 colors x 8 planes x 1/4 Fock weight/plane => M <= 6")

C = 8 * sp.sqrt(6)
c50 = sp.Rational(59, 3) - C
assert sp.simplify(sp.Rational(59, 3)**2 - C**2) == sp.Rational(25, 9)
assert c50 > 0
A = sp.Rational((27 - 2)**2, 16)
K = 3 * (A / 4)**sp.Rational(1, 3)
assert sp.simplify(K - sp.Rational(15, 4) * 5**sp.Rational(1, 3)) == 0
assert sp.simplify(A/(2*A)**sp.Rational(2,3)+(2*A)**sp.Rational(1,3)-K)==0
print("PASS: m=50; 59/3 - 8sqrt(6) =",float(c50))
print("PASS: 27D Hardy coefficient",float(K),
      "and conditional inf-spectrum m50 bound",float(K*c50**sp.Rational(2,3)))
for lam in [sp.Rational(113, 2), sp.Integer(57), sp.Integer(60), sp.Integer(100)]:
    m = sp.ceiling(lam - 6) - 1
    assert lam > m + 6 and m >= 50
    assert sp.Rational(m+9, 3) - C > 0
    print("PASS: lambda_2 =",lam,"m =",m)
print("SCOPE: finite checks and scalar exact arithmetic only; full closed-form theorem remains open")
