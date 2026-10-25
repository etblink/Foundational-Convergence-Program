# FCP BFSS — nontrivial Spin(9) center on genuine SU(2)-singlet Fock states

**Date:** 2026-10-25. **Classification:** independent original-source algebraic deduction / falsification checkpoint. **Not** a Lean-accepted theorem, construction of the global Spin(9) lift, proof of closed-form symmetry, or evidence for positive spectral existence.

## Immutable basis and exact source hypotheses

- Original mathematics: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`.
- Original manuscript: `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`, blob `12c5fffb5f90b48856f60fb0e93c18e2490c5f1b`.
- Relevant source passages: lines 77–117 (48 Majoranas, color adjoint, gauge action); 327–375 (Spin(9) spinor-label action and proposed Fock implementation); 695–726 (literal 24-mode CAR annihilation line and trivial gauge character).
- The 16 real spinor labels in each of three SU(2) adjoint color copies and the normalization `{theta,theta}=delta` are unchanged. The source's `c_j^a=(theta_(2j-1)^a+i theta_(2j)^a)/sqrt(2)` obeys the 24-mode CAR.

## Explicit odd-degree gauge-singlet witness

The manuscript proves the common annihilation kernel `K = intersection_(j,a) ker(c_j^a)` is a nonzero one-dimensional line. Choose a unit vector `v0 in K`. The genuine SU(2) gauge implementation preserves that line, and its character must be trivial because SU(2) has no nontrivial continuous characters. Thus `v0` is a gauge singlet.

For any fixed `j in {1,...,8}`, define

```text
w_j = (c_j^1)^* (c_j^2)^* (c_j^3)^* v0 .
```

The CAR show `||w_j|| = ||v0|| = 1` (three distinct unoccupied modes). For a gauge transformation `h`, conjugation of the three creation operators is by the real 3x3 adjoint matrix `O_h`. Their ordered product acting on the vacuum transforms by `det(O_h)=+1`, since repeated creation operators anticommute and square to zero. Therefore `V_h w_j=w_j`: **the actual 24-mode Fock gauge-invariant sector contains a nonzero odd-occupation vector**. It also contains the even-occupation vector `v0`.

This is an exterior-power/CAR identity, not an appeal to an unspecified SU(2)-singlet character decomposition.

## Genuine Spin(9) center, conditional on the global source lift

Let `z=-1 in Spin(9)`. For the genuine real 16-dimensional spinor representation, `S_z=-I_16`, whereas its bosonic vector projection satisfies `R_z=I_9`. For any Fock unitary `U_z` implementing the exact source label covariance claimed in manuscript Lemma `rotations`,

```text
U_z c_j^a U_z^{-1} = -c_j^a
U_z (c_j^a)^* U_z^{-1} = -(c_j^a)^* .
```

The common annihilation line is invariant, so `U_z v0=sigma v0` with `|sigma|=1`. Since `z^2=1` and `U` is asserted to be a genuine group representation, `sigma in {+1,-1}`. Applying the triple-creation identity gives `U_z w_j=-sigma w_j`.

Let `f(x)` be any nonzero smooth compactly supported radial gauge-invariant function on `R^27`. Both `f(x)v0` and `f(x)w_j` belong to the exact original physical smooth core, because the fermions are gauge singlets and the scalar is invariant under the full spatial/color orthogonal actions. The center fixes the bosonic argument, so the source proposed physical action `D_z` has opposite eigenvalues on these two nonzero core vectors. Thus `D_z != I` on the full original physical Hilbert space.

**Falsification:** any proposal for the complete original physical action which factors `Spin(9) -> SO(9)` and hence sets `D_z=I` is inconsistent with the original 48-Majorana CAR, actual SU(2) gauge action, and nonzero odd singlet witness, *provided* the claimed global Spin(9) lift/group law exists. A spatial SO(9) action alone is not the full physical fermionic representation.

Both Spin(9) central characters occur on gauge-physical vectors. Under standard Spin(9) highest-weight conventions this requires both SO(9)-descending integral-weight and genuinely spinorial half-integral-weight types in a **complete** original physical representation decomposition. Which fermionic parity sector corresponds to which central sign depends on the as-yet-unqualified calibration `sigma`; this note **does not assert** `U_z=(-1)^N` rather than its negative.

## Strict epistemic ceiling / next proof seams

1. The algebraic witness does not construct a continuous `Spin(9)->Spin(48)` homomorphism or prove its equality with a **particular** original Hilbert-space lift. It uses the manuscript's stated covariance and genuine group property conditionally.
2. This witness does not settle cubic supercharge covariance, gauge/core commutation of the full global lift, closed form-norm continuity, isotypic projection core, physical slices, `B4->D4` branching, coercivity, compactness, or nonzero positive point spectrum.
3. A future kernel gate should first identify the literal source Fock vacuum and `w_j`, prove their gauge invariance with the actual `pairedGaugeData` action, and then compare the central source Fock Spin(48) element against the true global Spin(9) lift. Do not reuse the unrelated SU(2)-center parity computation as if it were the Spin(9)-center calibration.
4. The manuscript uses `Spin(9)`, not `SO(9)`; therefore the above finding is an interface constraint and falsifier of a tempting incorrect shortcut, **not a counterexample to the manuscript as written**. The manuscript still requires independent proof of the global lift and its physical covariance.

**Acceptance ledger impact:** zero new strict Lean roots, zero spectral existence claims. No change to original `etblink/math`, canonical FCP `main`, or PR #25. The prior R4D central-sign note remains historically valid; this checkpoint adds a concrete physical gauge-singlet witness.
