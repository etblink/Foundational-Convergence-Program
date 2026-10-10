# BFSS SU2 physical-domain — Gate #25 D2B5 accepted; D2B6 source full-L² gauge action launch 0.1.0

**Pacific date:** 2026-10-09. **GitHub Actions UTC:** 2026-10-10.
**Accepted:** `D2B5_SOURCE_COMPLEX_LINEAR_HAAR_IDEMPOTENCE_AND_GENUINE_L2_BOSON_ISOMETRY`.
**Prospective/uncompiled:** `D2B6_GENUINE_FULL_L2_FERMION_AND_COMBINED_GAUGE_ACTION_BOUND`.
**Open:** bounded full-Hilbert Haar *averaging*, its identification with physical projection, density `G.coreNormClosure = G.physicalSpace`, Hamiltonian/spectra.

## 1. Exact Gate #25 compiler evidence

[BFSS SU2 Physical Domain Bridge #25](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38024361691), run `38024361691`, job `114131915736`, **SUCCESS** on original source commit `29e5f8cf7c5b238f3f91a971e725ed1cb569f293`, D2B5 source blob `e75cecf6c926dea8876de2a2aa9abaf820c85ed6`. Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean v4.34.1.

All exact upstream source/dependency caches, original-source prerequisite module `OAI.RVM.SmoothCompactFamily`, and frozen accepted source D1/D3A/D3B/D2A/D2B1/D2B2/D2B3/D2B3J/D2B4 compilations/axiom guards passed again.

**All five D2B5 theorem reports compiled without sorryAx, each with only `[propext, Classical.choice, Quot.sound]`:**
1. `sourceHaarAverageCore_add`: actual SU2 Haar core average is additive on the original `SmoothCore 2`.
2. `sourceHaarAverageCore_smul`: true source Haar average commutes with complex scalar multiplication.
3. `sourceHaarAverageCore_linear_apply`: genuine original-source Haar averaging is a complex `LinearMap` on `SmoothCore 2`, not an assumed (L^2) bounded operator.
4. `sourceHaarAverageCore_idempotent`: the TRUE source core average is idempotent, using the D2B4 exact invariant-core membership and fixedness.
5. `sourceBosonPullback_norm`: the original source bosonic pullback `G.bosonPullback g` preserves the full original `FullL2 2` norm for all genuine SU2 transformations.

At Gate #24, `FunLike.add_apply` and `FunLike.smul_apply` were **invalid pinned Mathlib names**; replacing them with correctly supported `add_apply` and `smul_apply` in exactly the two proof steps succeeded. No physics/source assumptions, original gauge data, Haar measure, accepted predecessor, source mathlib or pin were changed.

## 2. Scientific interpretation

For true original `M : AlgebraData 2` and `G : M.GaugeData`, the map `P_s(f) := sourceHaarAverageCore M G f` on original `SmoothCore 2` is now proved to be complex-linear and idempotent, fixes every `G.invariantCore` element and maps all original test functions into the ACTUAL invariant smooth core. Thus its algebraic range is exactly the original invariant smooth core.

Its boundedness when input/output norms are measured by the **source `coreToL2` embedding** remains **unproved**, so the operator must **NOT** be described as an established full-(L^2) orthogonal projection. In particular algebraic idempotence alone proves no Hilbert-space norm estimate or density result.

The pinned BFSS source `OAI.MathematicalPhysics.BFSS.GaugeCore.lean` defines the actual `G.bosonPullback`, `G.fiberAction`, `G.physicalSpace`; original `OAI.MathematicalPhysics.BFSS.Core.lean` defines the actual `FullL2`, `SmoothCore`, `coreToL2`, and proves density of the unprojected `coreToL2` in full `FullL2`. The relevant pinned Mathlib `Lp.compMeasurePreservingₗᵢ` produces exactly the source bosonic isometric pullback, and `ContinuousLinearMap.norm_compLp_le` controls the true fermion isometric fiber action.

## 3. D2B6 next rigorous test

New prospective leaf:
`experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B6SourceFullL2GaugeActionProbe.lean`

Five intended standard-axiom-guarded Lean propositions:
1. `sourceFermionFiberAction_norm_le`: norm nonexpansiveness of the **original** `G.fiberAction g` on original `FullL2 2`.
2. `sourceFermionFiberAction_continuous`: genuine `G.fiberAction g` is continuous for each fixed (g).
3. `sourceFullGaugePair_norm_le`: true joint action `G.fiberAction g (G.bosonPullback g⁻¹ v)` is nonexpansive on the exact source full Hilbert space, using D2B5 boson norm preservation.
4. `sourceFullGaugePairCLM_apply`: package that same action as an actual `FullL2 2 →L[ℂ] FullL2 2`, using the true original `G.bosonPullback` and `G.fiberAction` maps rather than a stand-in.
5. `sourceFullGaugePairCLM_norm_le_one`: operator norm of that exact source complex-linear gauge transformation is at most one.

**All five are UNCOMPILED until the next exact pinned dedicated CI passes, including explicit axiom reports with at most `propext`, `Classical.choice`, `Quot.sound`, and zero sorryAx/errors**. The workflow freezes D1 through D2B5 relative to exact accepted Gate #25 source SHA `29e5f8cf7c5b238f3f91a971e725ed1cb569f293`. No accepted source mathematical file is edited; only new D2B6 leaf is permitted.

Even if D2B6 passes, no theorem has established that the `GaugeGroup 2 → FullL2 2` orbit map (g\mapsto U_gv) is continuous/strongly measurable for every (v), or that its genuine Haar Bochner integral exists, equals the source `coreToL2` averaging on test functions, and is contractive/idempotent/fixes the original `G.physicalSpace`. The path to invariant-core density remains:
- establish true (L^2)-gauge orbit norm bound and strong continuity;
- construct bounded full-Hilbert SU2 Haar projection, show compatibility with the actual source smooth-core average, and fixed points exactly `G.physicalSpace`;
- combine the source's `coreToL2_dense` and source physical-space closedness to prove **both inclusions** `G.coreNormClosure = G.physicalSpace` without assuming density.

Do not conflate mathematical proof steps with BFSS energy spectra, physical low-energy states, Hamiltonian self-adjointness or experimental evidence. No main merge or upstream PR.
