# BFSS SU2 Physical Domain — Gate #23 accepted / D2B5 linear projection and genuine L2 isometry launch 0.1.0

**Pacific date:** 2026-10-09. **Actions UTC:** 2026-10-10.
**QUALIFIED:** `D2B4__TRUE_SOURCE_BUNDLED_HAAR_AVERAGE_IN_ORIGINAL_INVARIANTCORE_AND_FIXEDNESS`.
**PROSPECTIVE / UNCOMPILED:** `D2B5__TRUE_SOURCE_COMPLEX_LINEAR_IDEMPOTENT_HAAR_OPERATOR_AND_GAUGE_BOSON_PULLBACK_L2_NORM`.
**OPEN:** full Hilbert-space averaging contraction/projection, density `G.coreNormClosure = G.physicalSpace`, physical spectra.

## 1. Exact Gate #23 evidence

[BFSS SU2 Physical Domain Bridge #23](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38023587620), run `38023587620`, source tested commit `41c45a2ad0e47e1c30699b494045c665c51ed298`, job `114129599213`, successful conclusion. Pinned Lean v4.34.1, original `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The accepted warm proof caches, all frozen original D1/D3A/D3B/D2A/D2B1/D2B2/D2B3/D2B3J recompilations and exact axiom-report guards passed. Original `OAI.RVM.SmoothCompactFamily` source compiled unchanged.

D2B4 source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B4SourceSmoothInvariantCoreProbe.lean` compiled all FIVE exactly named theorem reports with at most `[propext, Classical.choice, Quot.sound]` and NO `sorryAx`:
1. `sourceHaarAverageCore_apply` authentic `SmoothCore 2` bundle agrees pointwise with true source Haar integral.
2. `sourceHaarAverageCore_equivariant` original source boson/fermion covariance.
3. `sourceHaarAverageCore_mem_physicalSpace` original `coreToL2` maps the bundled integral into the exact intersection of source gauge-action Lp kernels.
4. `sourceHaarAverageCore_mem_invariantCore` membership in the *actual* `G.physicalSpace.comap coreToL2`.
5. `sourceHaarAverageCore_fixed` averaging acts identically on each already physically invariant source test function.

Gate #22's final lemma failed because generic `ext x` descended to a PiLp fiber coordinate. Gate #23's repaired proof deliberately used **`TestFunction.ext`**, keeping the full Fermion 2-valued equality and reusing the exact prior source `sourceHaarAverageRaw_fixed` identity. This is proof-level, not a new physics hypothesis.

## 2. New D2B5 mathematical step

We inspect pinned BFSS original-source definitions:
- `SmoothCore 2` is exactly `TestFunction ⊤ (Fermion 2) ⊤`.
- `G.bosonPullback g` is `Lp.compMeasurePreservingₗ ℂ (G.boson g) (G.boson g).measurePreserving` on the actual `FullL2 2`.
- The pinned Mathlib module `Mathlib/MeasureTheory/Function/LpSpace/Basic.lean` defines `Lp.compMeasurePreservingₗᵢ` as the **same** source composition map packaged in a bona fide linear isometry; its norm map theorem should establish exact norm preservation of `G.bosonPullback g` on the full original Hilbert space. (The exact Lean change-of-types must still compile.)
- Exact source D2B1 `sourceHaarIntegrand_integrable` establishes each actual Bochner Haar integrand is integrable; original source fermion gauge actions are complex-linear isometries. The pinned `integral_add` and `integral_smul` lemmas can therefore give complex linearity of the **authentic** bundled average, with no substituted map, new axiom or artificial physical representation.

The new leaf `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B5SourceProjectionAlgebraProbe.lean` tests FIVE public theorem reports:
1. `sourceHaarAverageCore_add`: additive genuine Haar operator on original bundled source test functions;
2. `sourceHaarAverageCore_smul`: actual complex scalar linearity on original source test functions;
3. `sourceHaarAverageCore_linear_apply`: the source average packaged as a complex `LinearMap` acting on original `SmoothCore 2`, with no asserted boundedness on L²;
4. `sourceHaarAverageCore_idempotent`: a real idempotent source-smooth averaging projection, from proven D2B4 invariant-core membership plus D2B4 fixedness;
5. `sourceBosonPullback_norm`: exact source bosonic pullback action is isometric on original full `FullL2 2`.

**All FIVE new claims are PROSPECTIVE and UNCOMPILED; no one should treat them as accepted unless the new exact pinned compiler gate prints all five permitted standard-axiom reports with no sorryAx or errors.**

The existing dedicated workflow now freezes every accepted D1–D2B4 source file relative to exactly Gate #23 commit `41c45a2ad0e47e1c30699b494045c665c51ed298`, copies the new leaf, recompiles D2B4 into importable `.olean` and typechecks D2B5.

## 3. Why this is necessary but not density

The intended core averaging map `P : SmoothCore 2 →ₗ[ℂ] SmoothCore 2` is not a bounded operator on L² merely because it is linear and idempotent as a test-function map. The actual source physical-space equality
`G.coreNormClosure = G.physicalSpace`
requires proof that full-Hilbert-space averaging is nonexpansive or at least bounded and fixes every source-defined physical vector, followed by the source's true full-space `coreToL2_dense` approximation argument. In particular, the source `G.fiberAction g`, the other half of the actual gauge action, needs an analogous norm/isometry bridge and a proof of **strong continuity and Bochner integrability** for the family of gauge transforms if we define a full L²-valued Haar projection.

A green D2B5 gate would prove an honest source-smooth complex-linear idempotent and one original Hilbert action isometry. It would not automatically establish norm contraction of the average, identification of the projection with the source physical-space projector, or invariant-smooth-core L² density.

No new source assumption, qualified predecessor modification, changed toolchain pin, main merge, upstream PR, physical Hamiltonian/spectrum conclusion or declaration of completed D2B.
