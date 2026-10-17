"""BFSS source-first, FALSIFIABLE finite Spin(9) and branching checks.

Uses the explicit real symmetric Cl(9) words already registered in
audits/external/OPENAI_MATH_FAMILY270B_REAL_SYMMETRIC_GAMMA_CHECK_2026_10_07.py
and the coefficient conventions of the October 5 2026 pinned manuscript.

NOT a proof of the global Spin(9)->Spin(48) Clifford lift, 48-Majorana
unitarity, supercharge operator equality, closed form, or spectrum.
Independent checks of finite coefficients and sampled highest weights only.

Run: python3 BFSS_SPIN9_FINITE_COVARIANCE_AND_BRANCHING_CHECK_0_1_0.py
Requires NumPy. Branching arithmetic uses only exact fractions.
"""
from fractions import Fraction as Q
from itertools import combinations, permutations, product

import numpy as np


def original_real_gammas():
    p = {
        "I": np.eye(2, dtype=np.int64),
        "X": np.array([[0, 1], [1, 0]], dtype=np.int64),
        "Y": np.array([[0, 1], [-1, 0]], dtype=np.int64),
        "Z": np.diag(np.array([1, -1], dtype=np.int64)),
    }
    words = ["IIIX", "IIIZ", "ZZYY", "XZYY", "YXXY",
             "YXZY", "IYIY", "YZIY", "IXYY"]
    out = []
    for word in words:
        t = np.ones((1, 1), dtype=np.int64)
        for letter in word:
            t = np.kron(t, p[letter])
        out.append(((-1) ** (word.count("Y") // 2)) * t)
    gammas = np.stack(out)
    ident = np.eye(16, dtype=np.int64)
    zero = np.zeros((16, 16), dtype=np.int64)
    for i in range(9):
        assert np.array_equal(gammas[i].T, gammas[i])
        for j in range(9):
            assert np.array_equal(
                gammas[i] @ gammas[j] + gammas[j] @ gammas[i],
                2 * ident if i == j else zero,
            )
    return gammas.astype(float)


def finite_spin9_coefficient_check():
    gamma = original_real_gammas()
    biv = 0.5 * (
        np.einsum("iab,jbc->ijac", gamma, gamma, optimize=True)
        - np.einsum("jab,ibc->ijac", gamma, gamma, optimize=True)
    )
    errors = [0., 0., 0., 0.]
    cases = 0
    for i, j in combinations(range(9), 2):
        a = gamma[i] @ gamma[j]
        for angle in (0.2, -1.1):
            c, s = np.cos(angle), np.sin(angle)
            r = np.eye(9)
            r[i, i] = r[j, j] = c
            r[i, j], r[j, i] = -s, s
            # S = exp(-angle * gamma_i gamma_j / 2)
            spin = np.cos(angle / 2) * np.eye(16) - np.sin(angle / 2) * a
            assert np.max(np.abs(spin.T @ spin - np.eye(16))) < 1.e-12
            gamma_left = np.einsum("ab,ibc,dc->iad", spin, gamma, spin, optimize=True)
            gamma_right = np.einsum("ji,jab->iab", r, gamma, optimize=True)
            kinetic_left = np.einsum("pi,iab,db->pad", r, gamma, spin, optimize=True)
            kinetic_right = np.einsum("ab,pbd->pad", spin.T, gamma, optimize=True)
            cubic_left = np.einsum("pi,qj,ijab,db->pqad", r, r, biv, spin, optimize=True)
            cubic_right = np.einsum("ab,pqbd->pqad", spin.T, biv, optimize=True)
            for k, (left, right) in enumerate((
                (gamma_left, gamma_right),
                (kinetic_left, kinetic_right),
                (cubic_left, cubic_right),
            )):
                errors[k] = max(errors[k], float(np.max(np.abs(left - right))))
            # Gauge labels act as O(3) ⊗ I(16); spatial spinor
            # labels as I(3) ⊗ S. The 48-generator actions commute.
            o = np.array([[0., -1., 0.], [1., 0., 0.], [0., 0., 1.]])
            gs = np.kron(o, np.eye(16))
            ss = np.kron(np.eye(3), spin)
            errors[3] = max(errors[3], float(np.max(np.abs(gs @ ss - ss @ gs))))
            cases += 1
    # At 2π, the vector returns to the identity but the spinor is -I:
    # this distinguishes Spin(9) from SO(9), not an error.
    a = gamma[0] @ gamma[1]
    spin_2pi = np.cos(np.pi) * np.eye(16) - np.sin(np.pi) * a
    assert np.max(np.abs(spin_2pi + np.eye(16))) < 1.e-12
    assert all(x < 1.e-11 for x in errors), errors
    return cases, errors


def weyl_dim_B4(weight):
    rho = [Q(7, 2), Q(5, 2), Q(3, 2), Q(1, 2)]
    a = [weight[i] + rho[i] for i in range(4)]
    out = Q(1)
    for i in range(4):
        out *= a[i] / rho[i]
    for i, j in combinations(range(4), 2):
        out *= (a[i] ** 2 - a[j] ** 2) / (rho[i] ** 2 - rho[j] ** 2)
    assert out.denominator == 1
    return int(out)


def weyl_dim_D4(weight):
    rho = [Q(3), Q(2), Q(1), Q(0)]
    a = [weight[i] + rho[i] for i in range(4)]
    out = Q(1)
    for i, j in combinations(range(4), 2):
        out *= (a[i] ** 2 - a[j] ** 2) / (rho[i] ** 2 - rho[j] ** 2)
    assert out.denominator == 1
    return int(out)


def det_indicator(weight_B, weight_D):
    L = [weight_B[i] + 3 - i for i in range(4)]
    t = [weight_D[i] + 3 - i for i in range(4)]
    indicator = [[int(abs(ti) <= Lj) for Lj in L] for ti in t]
    out = 0
    for p in permutations(range(4)):
        inv = sum(p[i] > p[j] for i, j in combinations(range(4), 2))
        out += (-1 if inv % 2 else 1) * int(
            np.prod([indicator[i][p[i]] for i in range(4)])
        )
    return out


def interlacing(weight_B, weight_D):
    b, d = weight_B, weight_D
    return b[0] >= d[0] >= b[1] >= d[1] >= b[2] >= d[2] >= b[3] >= abs(d[3])


def finite_B4_D4_branching_check():
    # Both integral and half-integral, including ν4=0 and ±ν4.
    inputs = [
        (0, 0, 0, 0), (1, 0, 0, 0), (1, 1, 0, 0),
        (2, 0, 0, 0), (2, 1, 0, 0), (2, 2, 1, 0),
        (3, 2, 1, 1), (3, 3, 2, 1),
        (.5, .5, .5, .5), (1.5, .5, .5, .5),
        (1.5, 1.5, .5, .5), (2.5, 1.5, .5, .5),
    ]
    rows = []
    for case in inputs:
        b = tuple(Q(x).limit_denominator() for x in case)
        lattice = [Q(k, 2) for k in range(-int(2*b[0]), int(2*b[0])+1, 2)]
        dimension_sum = 0
        constituents = 0
        for d in product(lattice, repeat=4):
            if not (d[0] >= d[1] >= d[2] >= abs(d[3])):
                continue
            multiplicity = det_indicator(b, d)
            assert multiplicity == int(interlacing(b, d)), (b, d, multiplicity)
            if multiplicity:
                assert d[0] >= b[1], (b, d)  # Main manuscript inequality.
                dimension_sum += multiplicity * weyl_dim_D4(d)
                constituents += 1
        assert dimension_sum == weyl_dim_B4(b), (b, dimension_sum)
        rows.append((case, dimension_sum, constituents))
    return rows


def main():
    cases, errors = finite_spin9_coefficient_check()
    print(f"spin9_plane_angles={cases}; max_errors={errors}")
    rows = finite_B4_D4_branching_check()
    for case, dim, count in rows:
        print(f"B4={case}; dimension={dim}; D4_constituents={count}; PASS")
    print("PASS finite coefficients, Spin9 sign, gauge-label commutation, B4/D4 examples")
    print("NOT CHECKED: 48-Majorana unitary lift, global core/domain, closed form, spectral theorem")


if __name__ == "__main__":
    main()
