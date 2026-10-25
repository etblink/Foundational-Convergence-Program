#!/usr/bin/env python3
"""Finite B4->D4 Weyl-coefficient / interlacing falsification diagnostic.

Source: etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a
preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-
October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex,
lines 439-517 (lemma lem:branching).

Tests only the source's explicit 4x4 prefix-indicator determinant,
its parity-lattice rule, and the standard orthogonal interlacing
inequalities for small integral/half-integral weights. It does NOT
compute actual Spin group representations/branching characters and
is NOT a Lean proof of branching, Spin(9) global action, positive
eigenvalues, or a mass gap.
"""

from collections import Counter
from fractions import Fraction
from itertools import permutations


def B4_dominant(cap, parity):
    q = [Fraction(i, 1) + Fraction(parity, 2) for i in range(cap + 1)]
    return [(a, b, c, d)
            for a in q for b in q if b <= a
            for c in q if c <= b for d in q if d <= c]


def D4_dominant(cap, parity):
    q = [Fraction(i, 1) + Fraction(parity, 2) for i in range(cap + 1)]
    signed_q = q + [-d for d in q if d > 0]
    return [(a, b, c, d)
            for a in q for b in q if b <= a
            for c in q if c <= b for d in signed_q if abs(d) <= c]


def determinant_4x4(a):
    ans = 0
    for sigma in permutations(range(4)):
        inversions = sum(sigma[i] > sigma[j] for i in range(4)
                         for j in range(i + 1, 4))
        term = (-1) ** inversions
        for i in range(4):
            term *= a[i][sigma[i]]
        ans += term
    return ans


def source_coefficient(lam, nu):
    # In the source, mismatched integral/half-integral lattices
    # have zero coefficient before evaluating the 4x4 determinant.
    if (lam[0] - nu[0]).denominator != 1:
        return 0
    L = [lam[j] + 3 - j for j in range(4)]
    t = [nu[i] + 3 - i for i in range(4)]
    return determinant_4x4(
        [[int(abs(t[i]) <= L[j]) for j in range(4)] for i in range(4)]
    )


def classical_interlacing(lam, nu):
    # B4->D4 (including both fourth-coordinate signs).
    return (lam[0] >= nu[0] >= lam[1] >= nu[1]
            >= lam[2] >= nu[2] >= lam[3] >= abs(nu[3]))


def main():
    cap = 3
    counters = Counter()
    for p in (0, 1):
        bs = B4_dominant(cap, p)
        ds = D4_dominant(cap + 1, p)
        print(f"parity={p}: B4={len(bs)}, D4={len(ds)}")
        for lam in bs:
            for nu in ds:
                got = source_coefficient(lam, nu)
                expected = int(classical_interlacing(lam, nu))
                assert got == expected, (lam, nu, got, expected)
                assert got in (0, 1), (lam, nu, got)
                assert (not got) or nu[0] >= lam[1]
                counters[(p, "matched_pairs")] += 1
                counters[(p, "nonzero")] += int(got != 0)
                counters[(p, "signed_fourth")] += int(nu[3] < 0)
        # Also test cross-lattice coefficients are zero, without
        # claiming this independently proves the Weyl character fact.
        for lam in bs:
            for nu in D4_dominant(cap + 1, 1 - p):
                assert source_coefficient(lam, nu) == 0
                counters[(p, "cross_lattice_zero")] += 1

    for p in (0, 1):
        print(f"parity={p}: matching tested={counters[p, 'matched_pairs']}, "
              f"nonzero={counters[p, 'nonzero']}, "
              f"negative_nu4_cases={counters[p, 'signed_fourth']}, "
              f"cross_lattice_zero={counters[p, 'cross_lattice_zero']}")
    print("BFSS_S3_FINITE_PREFIX_DETERMINANT_FALSIFICATION_NO_COUNTEREXAMPLE")
    print("NOT_A_FORMAL_PROOF_OR_ACTUAL_REPRESENTATION_BRANCHING_CERTIFICATE")


if __name__ == "__main__":
    main()
