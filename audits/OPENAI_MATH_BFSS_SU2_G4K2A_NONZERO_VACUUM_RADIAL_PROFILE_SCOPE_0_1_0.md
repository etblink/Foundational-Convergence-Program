# BFSS SU(2) G4-K2A — exact nonzero SU2 vacuum and radial Gauss-equivariant profile 0.1.0

**Date:** 2026-10-08
**Status:** `UNCOMPILED_CANDIDATE`
**Accepted predecessors:** G4-J full exact SU(2) `pairedGaugeData` Gate #127; G4-K1 closed physical Hilbert subspace and invariant core properties Gate #128.

## Narrow scientific question

Can we identify a concrete nonzero **fermionic** SU(2) singlet under the actual 48-theta gauge action, and a family of candidate **boson/fermion pointwise fields** satisfying the exact Gauss equivariance relation?

Prove explicitly in Lean:

- `fermionVacuum ≠ 0` using the genuine Fock algebra unit and the already certified G4-B linear equivalence (no new vacuum hypothesis).
- `fermionGaugeUnitaryHom g fermionVacuum = fermionVacuum` with G4-B source-proved vacuum preservation, transported into G4-E's literal unitary action.
- `‖bosonGauge g x‖ = ‖x‖` using G2-A's verified isometric gauge action.
- For every radial scalar coefficient `φ : ℝ → ℂ`, `radialVacuumProfile φ x := φ ‖x‖ • fermionVacuum` obeys
  `radialVacuumProfile φ (pairedGaugeData.boson g x) = pairedGaugeData.fermion g (radialVacuumProfile φ x)`.
- If `φ 0 = 1`, the profile is nonzero at the origin.

## Strict open obligations

**Do not** promote pointwise nonzero to nonzero `FullL2 2`: singleton sets have measure zero. Nor does an arbitrary radial profile automatically belong to `L²`. The next phase needs a concrete continuous nonzero compactly supported radial scalar profile, proof of integrability, proof `toLp ≠ 0` by continuity and full support of Euclidean volume, and proof of membership in the exact `pairedGaugeData.physicalSpace` using its pinned `GaugeData.bosonPullback` and `fiberAction`.

These hypotheses preserve the actual pinned `Fermion 2` and `Boson 2` types. They do not assume uniqueness, physical spectral results, energy eigenstates or BFSS model truth.

Require standard-only axiom report `[propext, Classical.choice, Quot.sound]`, no `sorry`/`admit`, frozen Lean 4.34.1/OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`/Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, research branch only. Submit new source+workflow atomically; stop without inspecting resulting Actions gate until owner reports color.
