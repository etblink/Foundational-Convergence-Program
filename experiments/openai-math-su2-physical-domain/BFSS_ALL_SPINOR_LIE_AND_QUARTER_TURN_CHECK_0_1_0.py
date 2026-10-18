"""Exact source-gamma tests of the full SU(2) BFSS rotation coefficient interfaces.

Reproduce: python3 BFSS_ALL_SPINOR_LIE_AND_QUARTER_TURN_CHECK_0_1_0.py
Dependency: NumPy. Entire arithmetic is integer, without floating point.

NOT a Lean/kernel proof, a 2**24 Fock matrix, or a spectrum calculation.
The analytical memo supplies the standard spin-cover and operator-domain steps.
"""
from itertools import combinations, product
import numpy as np

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
G = np.stack(G)
I = np.eye(16, dtype=np.int64)
Z = np.zeros((16, 16), dtype=np.int64)
for i in range(9):
    assert np.array_equal(G[i].T, G[i])
    for j in range(9):
        assert np.array_equal(G[i] @ G[j] + G[j] @ G[i],
                              2 * I if i == j else Z)
# Gamma bivectors are anti-symmetric in spatial indices, including p=q.
B = {(p, q): G[p] @ G[q] if p != q else Z
     for p in range(9) for q in range(9)}
kin_lie = cub_lie = kin_90 = cub_90 = 0
for r, s in combinations(range(9), 2):
    # Spatial t-derivative at 0: R_ri=-delta_is; R_si=delta_ir.
    J = np.zeros((9, 9), dtype=np.int64)
    J[r, s], J[s, r] = -1, 1
    T = G[r] @ G[s]
    assert np.array_equal(T.T, -T)
    assert np.array_equal(T @ T, -I)
    # Spatial right angle, S=(I-T)/sqrt(2); S^T=(I+T)/sqrt(2).
    R = np.eye(9, dtype=np.int64)
    R[r, r] = R[s, s] = 0
    R[r, s], R[s, r] = -1, 1
    plus = I + T
    for p in range(9):
        # 2 sum_i J_pi gamma_i = [T,gamma_p].
        dkin = sum((J[p, i] * G[i] for i in range(9)), Z.copy())
        assert np.array_equal(2 * dkin, T @ G[p] - G[p] @ T)
        kin_lie += 1
        rightkin = sum((R[p, i] * G[i] for i in range(9)), Z.copy())
        assert np.array_equal(rightkin @ plus, plus @ G[p])
        kin_90 += 1
        for q in range(9):
            # Differentiated source cubic bivector (for all ordered p,q):
            # 2 sum_i (J_pi gamma_iq + J_qi gamma_pi) = [T,gamma_pq].
            dcub = sum((J[p, i] * B[i, q] + J[q, i] * B[p, i]
                        for i in range(9)), Z.copy())
            assert np.array_equal(2 * dcub,
                                  T @ B[p, q] - B[p, q] @ T)
            cub_lie += 1
            rightcub = sum((R[p, i] * R[q, j] * B[i, j]
                            for i in range(9) for j in range(9)),
                           Z.copy())
            assert np.array_equal(rightcub @ plus, plus @ B[p, q])
            cub_90 += 1
assert (kin_lie, cub_lie, kin_90, cub_90) == (324, 2916, 324, 2916)
print("PASS: 36 Lie planes: kinetic", kin_lie, "cubic", cub_lie)
print("PASS: 36 exact quarter turns: kinetic", kin_90, "cubic", cub_90)

def eps(a, b, c):
    if len({a, b, c}) < 3:
        return 0
    return 1 if (a, b, c) in ((0, 1, 2), (1, 2, 0), (2, 0, 1)) else -1

color = 0
for r, s in combinations(range(3), 2):
    O = np.eye(3, dtype=np.int64)
    O[r, r] = O[s, s] = 0
    O[r, s], O[s, r] = -1, 1
    for d, e, f in product(range(3), repeat=3):
        transformed = sum(
            O[d, a] * O[e, b] * O[f, c] * eps(a, b, c)
            for a, b, c in product(range(3), repeat=3)
        )
        assert transformed == eps(d, e, f)
        color += 1
assert color == 81
print("PASS: epsilon color tensor at 3 exact SO(3) quarter turns,", color, "identities")
print("NOT CHECKED: full Fock matrices; global lifting or domain theorem by machine; spectrum")
