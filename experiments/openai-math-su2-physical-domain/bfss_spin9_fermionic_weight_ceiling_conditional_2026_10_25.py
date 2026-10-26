#!/usr/bin/env python3
"""Finite coefficient check supporting a CONDITIONAL analytic K=Spin(8) bound.

Pinned manuscript: etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a,
relative SU2 BFSS TeX source lines 327-410 and 559-613.

Under the source's *intended but not yet fully formally qualified* global
Spin(9) lift to Spin(48), the 48 real Majorana label representation is
three copies of the real 16-dimensional Spin(9) spinor. On K=Spin(8),
each real spinor's complex torus weights are all 16 sign patterns
(+/- 1/2, +/- 1/2, +/- 1/2, +/- 1/2), one each. Three copies yield
48 weights grouped into 24 opposite pairs.

For the complex 2^24-dimensional Clifford/Fock spin representation,
each Cartan mode contributes +/- (1/2) of the corresponding vector
weight. The epsilon_1 support bound is
  max mu_1 = (1/2) * sum_{24 modes} abs(w_mode,1) = 6.
This does not need enumeration of 2^24 Fock weights. It is a statement
*conditional on identifying the actual physical Spin(9) action with this
standard Clifford spin lift and its torus normalization*, not a
verified original Lean theorem or an unconditional Hamiltonian result.
"""
from fractions import Fraction
from itertools import product


def main():
    half = Fraction(1, 2)
    weights16 = [tuple(half * sign for sign in s)
                 for s in product((-1, 1), repeat=4)]
    assert len(weights16) == 16 and len(set(weights16)) == 16
    real48 = weights16 * 3
    assert len(real48) == 48
    assert all(tuple(-a for a in w) in real48 for w in real48)
    assert sum(w[0] == half for w in real48) == 24
    assert sum(w[0] == -half for w in real48) == 24
    # Choose one from each opposite pair by positive first coordinate;
    # every pair has a nonzero first coordinate in the Spin(9) spinor.
    representative_modes = [w for w in real48 if w[0] > 0]
    assert len(representative_modes) == 24
    bound = half * sum(abs(w[0]) for w in representative_modes)
    assert bound == Fraction(6)
    print("K=Spin(8) vector-label weights: 48 (three copies of 16)")
    print("Opposite torus weight pairs / complex Clifford modes: 24")
    print("Conditional upper bound on all Fock K-weight epsilon_1 coordinates:", bound)
    print("BOUNDARY: this does not qualify the physical source global Spin(9) lift")


if __name__ == "__main__":
    main()
