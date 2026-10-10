# BFSS physical-domain D3A — exact kinetic gauge contraction launch 0.1.0

**Date:** 2026-10-09 Pacific (2026-10-10 UTC); `UNCOMPILED_PROSPECTIVE`. **Primary objective:** discharge the *actual mathematical D3 kinetic-coordinate contraction*, not a surrogate general covariance assumption.

## Exact source and prior proof authority

Source OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean 4.34.1. Gate #171 original full graph; #170 source charge identity; #174 cache creation+reuse; Physical Domain Bridge #2 source invariant-core restricted graph equality. All accepted original proof source files are immutable, with full-chain cache-key and read-only source baseline checks. The D1 source has a separate exact Gate #2 provenance freeze at `8db5b4909152b837b4e338b60f761083c6cf9c9f`.

## D3A scope

Construct a generic real finite-dimensional orthonormal-contraction theorem with fully explicit `OrthonormalBasis`, orthogonal `LinearIsometryEquiv`, real-linear source-like coefficient symbol `K` and Fréchet derivative `D`. The key is the exact finite completeness identity `∑_i ⟪b_j,U b_i⟫·⟪U b_i,b_k⟫=δ_{jk}` from `OrthonormalBasis.sum_inner_mul_inner`. The object type is additive real module valued: no SU2, fermion, gamma or physical axiom is hidden in the abstract step.

The first public theorem, `sourceKineticSkewContraction_basisInvariant`, instantiates with original pinned `M.kineticSkewLinear α`, `fderiv ℝ f x`, and *literal* `G.boson g`, so it is not merely an unrelated generic identity. The second theorem, `sourceContractedKinetic_gaugeCovariant`, applies source `G.invariantCore_fderiv` and `G.kineticSkewLinear_covariant` to prove the true kinetic contraction transforms with the genuine fermion gauge action for **every** `G.invariantCore` smooth section.

All theorems are **uncompiled** until the dedicated pinned `BFSS SU2 Physical Domain Bridge` gate succeeds with exactly two public reports depending only on `propext`, `Classical.choice`, `Quot.sound`, and zero `sorryAx`. D1 must also recompile unchanged and pass its five axiom checks; new steps must use existing qualified proof cache on same branch. No new source pin, no main merge, no upstream PR, no original Color Gate modifications.

## Remaining scientific boundary after D3A

D3A alone establishes only kinetic covariance, *not* `coreToL2 (M.charge α f.val) ∈ G.physicalSpace`. D3B must combine with the source `deformedPotentialMultiplier_covariant`, the original source `M.deformedCoreCharge_apply`, original/deformed equality from G4-K9D, and pointwise-to-L2 physical membership on `G.invariantCore`. The primary manuscript's concrete fermion gauge lift identification and gauge-invariant smooth-core L² density (D2) remain distinct open questions.

D3A is only a source-discharged step toward proving physical-sector charge preservation, not a new eigenstate, mass gap, all-N result or experimental statement. No framework/empirical adjudication change. If red, only source-type/Lean-elaboration repair within these exact fixed propositions; never strengthen assumptions to make it compile.
