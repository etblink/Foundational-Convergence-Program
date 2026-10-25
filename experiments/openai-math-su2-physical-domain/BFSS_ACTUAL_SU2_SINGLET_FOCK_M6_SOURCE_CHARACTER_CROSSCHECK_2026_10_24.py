#!/usr/bin/env python3
"""Independent exact-integer SU(2)-singlet/Spin(9)-weight first-axis check.

Primary mathematical source:
 etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a
 preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-
 October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex
 source lem:rotations (lines 327-410), lem:oscillator (560-613).

Physical conventions: 16 real Spin(9) spinor labels x 3 color adjoint
labels = 48 real Majoranas, 24 creation modes, fermionic Fock dimension
2^24. In a fixed Cartan chamber choose eight positive representatives
omega_s=(eps1+s2 eps2+s3 eps3+s4 eps4)/2, (s2,s3,s4) in +/-1.
Each omega_s corresponds to THREE adjoint-color creation modes, whose
SU(2) characters are: degree k=0,3 -> trivial, k=1,2 -> adjoint 3
with color torus weights z^(-2),z^0,z^2.
Clifford spin vacuum weight contributes -(3/2)*omega_s.
Thus the first Spin(9) coordinate per block is (k-3/2)/2;
using 4x this coordinate, the block exponent is 2k-3.
All eight blocks have the same first-coordinate character. Ordinary
SU(2) singlet multiplicity in a finite character = [z^0]-[z^2].

This *tests the character-derived weight ceiling under the stated lift*.
It does not independently construct the genuine Spin(9) and SU(2)
actions on the pinned original Fock Hilbert space, nor prove any
closed-form invariance, oscillator fiber exclusion or BFSS eigenvalues.
No Lean proof or new accepted theorem root.
"""

from collections import defaultdict


def exact_character():
    # (four_times_first_spin9_weight, SU2_torus_exponent, coefficient).
    # k=0 and k=3: exterior powers Lambda^0, Lambda^3 of color 3.
    block = [(-3, 0, 1), (3, 0, 1)]
    # k=1 and k=2: Lambda^1(3), Lambda^2(3), both SU2 adjoint.
    block.extend((w, z, 1) for w in (-1, 1) for z in (-2, 0, 2))

    # Eight positive representatives of the real 16-label spinor;
    # each already bundles its three SU2 adjoint-color modes.
    coefficients = {(0, 0): 1}
    for block_number in range(8):
        new = defaultdict(int)
        for (w, z), multiplicity in coefficients.items():
            for dw, dz, c in block:
                new[w + dw, z + dz] += multiplicity * c
        coefficients = dict(new)
        assert sum(coefficients.values()) == 8 ** (block_number + 1)

    singlet = {
        w: coefficients.get((w, 0), 0) - coefficients.get((w, 2), 0)
        for w in range(-24, 25)
    }
    assert all(n >= 0 for n in singlet.values())
    assert sum(coefficients.values()) == 2 ** 24 == 16777216
    assert sum(singlet.values()) == 366080
    assert singlet[24] == singlet[-24] == 1
    assert max(w for w, n in singlet.items() if n) == 24
    assert min(w for w, n in singlet.items() if n) == -24
    assert all(w % 2 == 0 for w, n in singlet.items() if n)

    # A uniform bound on ANY fermionic torus weight is M=6.
    # For the proposed P^6 * gauge-singlet fermion highest type
    # lambda=(15,15,1,0), levels n <= 8 satisfy n+6<=14<lambda_2=15.
    # This checks arithmetic only, not an actual physical fiber projector.
    assert all(15 > n + 6 for n in range(9))
    return coefficients, singlet


def main():
    total, singlet = exact_character()
    print("PASS original full Fock dimension", sum(total.values()))
    print("PASS original gauge SU2-singlet dimension", sum(singlet.values()))
    print("PASS extreme actual gauge-singlet first weights ±6, multiplicity 1")
    print("PASS character-level M=6 first Spin9-coordinate ceiling")
    print("PASS conditional lambda2=15 low oscillator n<=8 exclusion arithmetic")
    print("NOT_CERTIFIED: global Spin9 lift, physical fiber, source closed form, eigenvalues, Lean")


if __name__ == "__main__":
    main()
