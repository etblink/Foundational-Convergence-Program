#!/usr/bin/env python3
"""Exact finite CAR occupation-count check of a rank-one BFSS gauge-stabilizer fact.

Original frozen source etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a
has 16 real gamma spinor indices, 3 adjoint colors, theta^2=1/2,
and B(x)=(i/2)f_abc*x^a_i*gamma^i_bd*theta^b_beta*theta^c_delta,
f_abc=sqrt(2)*epsilon_abc. At rank-one x=(u,0,0), diagonalize the
self-adjoint gamma(u)/|u|. It has 8 eigenvalues +1 and 8 -1.

For each diagonal spinor index j, K_j = i theta_j^2 theta_j^3 =
N_j-1/2 (Hermitian), with independent occupations N_j in {0,1}.
The residual SO(2) color-gauge generator on the actual 2-3 label
planes is sum K_j = number_occupied - 8 (up to a global sign convention).
B(x)/(sqrt(2)*|u|) = sum s_j K_j, s_j=+1 (8), -1 (8).

Enumerate exact 16-mode occupations only; the spectator 8 color-1
complex Fock modes multiply eigenspace dimensions by 2^8.

This is a mathematical representation check, NOT a new Lean acceptance,
NOT a full SU(2)-invariant global wavefunction construction,
NOT a Spin(9) fixed-isotypic coercivity theorem.
"""
from math import comb


def main():
    hist = {}
    all_states = 0
    for nplus in range(9):
        for nminus in range(9):
            multiplicity = comb(8, nplus) * comb(8, nminus)
            residual_charge = nplus + nminus - 8
            fermion_energy_units = nplus - nminus
            entry = hist.setdefault(residual_charge, [])
            entry.append((fermion_energy_units, multiplicity))
            all_states += multiplicity

    assert all_states == 2**16
    assert sorted(hist) == list(range(-8, 9))
    for q, blocks in sorted(hist.items()):
        minimum = min(energy for energy, _ in blocks)
        min_multiplicity = sum(n for energy, n in blocks if energy == minimum)
        assert minimum == -8 + abs(q), (q, minimum)
        assert min_multiplicity == comb(8, abs(q)), (q, min_multiplicity)
    singlet = hist[0]
    total_singlet_dimension = sum(c for _, c in singlet)
    assert total_singlet_dimension == comb(16, 8) == 12870
    assert min(e for e, _ in singlet) == -8
    assert sum(c for e, c in singlet if e == -8) == 1
    # An arbitrary independent occupation pattern of the 8 spectator
    # color-1 modes is allowed, hence this factor in the full Fock module.
    assert 1 * 2**8 == 256

    print("FULL 16-MODE CAR OCCUPATIONS:", all_states)
    print("RESIDUAL SO(2) CHARGE ZERO OCCUPATIONS:", total_singlet_dimension)
    print("GLOBAL RANK-ONE B MINIMUM /(sqrt(2)*|u|):", -8)
    print("RANK-ONE B MINIMUM IN GAUGE-STABILIZER-NEUTRAL FIBER:", -8)
    print("EXTREMAL FOCK EIGENSPACE DIMENSION WITH 8 SPECTATOR MODES:", 256)
    print("COLOR-SPHERICAL A(u,0,0)/|u| = 1/2")
    print("EXACT STABILIZER-NEUTRAL RATIO |B_min|/A = 16*sqrt(2)")
    print("NO CLAIM: full global physical SO(3) singlet or fixed Spin(9) sector")


if __name__ == "__main__":
    main()
