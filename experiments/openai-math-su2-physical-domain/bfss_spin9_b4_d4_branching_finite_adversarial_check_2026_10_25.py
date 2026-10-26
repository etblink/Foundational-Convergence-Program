#!/usr/bin/env python3
"""Finite, source-scoped *adversarial* check, NOT a formal B4->D4 proof.

Pinned primary TeX: etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a
preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/
build/positive-eigenvalues-relative-su2-bfss.tex, source lines 439-517.

Cross-checks the SOURCE character-coefficient determinant against the CLASSICAL
orthogonal interlacing criterion for bounded dominant integral and half-integral
weights, including both signs of D4's fourth weight coordinate. These are two
independent finite mathematical descriptions; testing their agreement does not
establish the source's universal character-coefficient derivation, the Spin(9)
action on BFSS physical L2, fermionic bound M, oscillator reduction, or spectrum.
"""
from fractions import Fraction
from itertools import permutations

PERMS = tuple(permutations(range(4)))


def det4(rows):
    ans = 0
    for perm in PERMS:
        inversions = sum(
            perm[i] > perm[j] for i in range(4) for j in range(i + 1, 4)
        )
        term = -1 if inversions % 2 else 1
        for i, j in enumerate(perm):
            term *= rows[i][j]
        ans += term
    return ans


def dominant_b4_weights(parity):
    values = range(parity, 9, 2)  # 2*lambda_j: 0,2,4,6,8 or 1,3,5,7
    for a in values:
        for b in values:
            for c in values:
                for d in values:
                    if a >= b >= c >= d:
                        yield tuple(Fraction(x, 2) for x in (a, b, c, d))


def dominant_d4_weights(parity, twice_nu1_max):
    for a in range(parity, twice_nu1_max + 1, 2):
        for b in range(parity, a + 1, 2):
            for c in range(parity, b + 1, 2):
                for d in range(-c, c + 1, 2):
                    yield tuple(Fraction(x, 2) for x in (a, b, c, d))


def classical_interlacing(lam, nu):
    return (
        lam[0] >= nu[0] >= lam[1] >= nu[1]
        >= lam[2] >= nu[2] >= lam[3] >= abs(nu[3])
    )


def source_character_coefficient(lam, nu):
    L = [lam[j] + 3 - j for j in range(4)]
    t = [nu[i] + (3 - i) for i in range(4)]
    # The source determinant formula is valid on the matching weight lattice.
    rows = [[int(abs(t_i) <= L_j) for L_j in L] for t_i in t]
    return det4(rows)


def main():
    totals = {"integral": [0, 0], "half-integral": [0, 0]}
    for parity, label in ((0, "integral"), (1, "half-integral")):
        for lam in dominant_b4_weights(parity):
            # Test past the classical branching ceiling nu_1 <= lambda_1.
            for nu in dominant_d4_weights(parity, int(2 * lam[0]) + 6):
                observed = source_character_coefficient(lam, nu)
                expected = int(classical_interlacing(lam, nu))
                assert observed == expected, (label, lam, nu, observed, expected)
                assert observed in (0, 1), (label, lam, nu, observed)
                if observed:
                    assert nu[0] >= lam[1], (label, lam, nu)
                totals[label][0] += 1
                totals[label][1] += int(bool(observed))
    assert totals == {"integral": [28050, 690], "half-integral": [11550, 300]}, totals
    for label, (tested, nonzero) in totals.items():
        print(f"{label}: tested={tested}, nonzero={nonzero}, mismatches=0")
    print("BOUNDARY: FINITE FALSIFICATION ONLY; NOT A FORMAL SOURCE OR SPECTRAL PROOF")


if __name__ == "__main__":
    main()
