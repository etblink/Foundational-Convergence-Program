# BFSS SU2 physical-domain D2B3J Gate #21 acceptance and D2B4 true invariant-core bridge 0.1.0

**Date:** 2026-10-09 Pacific (GitHub Actions timestamps Oct 10 UTC).
**Qualified:** `GATE_21_D2B3J__TRUE_SOURCE_UNCONDITIONAL_HAAR_C_INFINITY_ACCEPTED`.
**Prospective:** `D2B4__BUNDLE_IN_ORIGINAL_SMOOTHCORE_AND_SOURCE_PHYSICAL_CORE_MEMBERSHIP` — **UNCOMPILED**.
**Unresolved:** source Haar L² contraction/density, exact `G.coreNormClosure = G.physicalSpace`, graph/operator domains and BFSS spectra.

## 1. Exact Gate #21 compiler evidence

[BFSS SU2 Physical Domain Bridge Gate #21](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38022872152) run `38022872152`, job `114127423346`, SUCCESS on commit `5fc0144cb2983967a71733b7ca4fcacf432a3a9d`, D2B3J blob `6f6d0616626b7172fc631aca16c27cece81fc22f`.

The pinned original-source OpenAI Math commit `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean v4.34.1, exact dependency and qualified G4-K10A object caches, all frozen D1/D3A/D3B/D2A/D2B1/D2B2/D2B3 source-checks, recompilations and axiom checks passed; the pinned existing `OAI.RVM.SmoothCompactFamily` integration module compiled.

**All five D2B3J public theorems compiled, with exactly [propext, Classical.choice, Quot.sound] and NO sorryAx:**
1. `sourceBosonOperator_continuous`: the **actual inverted source boson SU2 isometry representation** varies continuously in real CLM operator norm.
2. `sourceFermionOperator_continuous`: the **actual complex fermion SU2 isometry representation restricted to real scalars** varies continuously in real CLM operator norm.
3. `sourceHaarIntegrand_smoothFamily`: the exact original integrand forms an `OAI.RVM.SmoothCompactFamily`; this is UNCONDITIONAL.
4. `sourceHaarAllJets_jointContinuous`: the previously explicitly open all-derivative joint-continuity statement is now UNCONDITIONALLY PROVED at every natural derivative order.
5. `sourceHaarAverageRaw_contDiff`: the original Haar average of any exact `SmoothCore 2` is `ContDiff ℝ ∞`, with no `hJets` assumption.

Mathematically, this completes the **unconditional smoothness** of the true source Haar average, not the physical Hilbert-space density result. It resolves the substantive joint-derivative problem using the standard operator-parameter argument instead of enumerating exponentially many Fermion 2 coordinates or postulating a projection theorem. `sourceHaarAverageRaw_hasCompactSupport` was independently qualified at Gate #14, and `sourceHaarAverageRaw_equivariant` at Gate #9.

## 2. Next source-defined mathematical obstacle

The pinned original BFSS source `OAI.MathematicalPhysics.BFSS.Core.lean` defines:
```lean
abbrev SmoothCore (N : ℕ) :=
  TestFunction (⊤ : TopologicalSpace.Opens (Boson N)) (Fermion N) ⊤
```
This is a BUNDLED source-defined test function requiring exactly (a) smoothness, (b) compact support and (c) support inside the full open domain. D2B4 first builds the ACTUAL `sourceHaarAverageCore : SmoothCore 2` with the already accepted proofs, not a surrogate abstract function or a changed test-function type.

The source `OAI.MathematicalPhysics.BFSS.GaugeCore.lean` defines
```lean
G.physicalSpace := ⨅ g : GaugeGroup 2, LinearMap.ker (G.bosonPullback g - G.fiberAction g)
G.invariantCore := G.physicalSpace.comap coreToL2
```
Thus D2B1's pointwise equivariance, while necessary, does not by itself discharge membership. D2B4 tests a proof in the ACTUAL source definitions by showing `G.bosonPullback g (coreToL2 a) = G.fiberAction g (coreToL2 a)` for all source SU2 g, using the exact `coreToL2_ae`, `Lp.coeFn_compMeasurePreserving`, `ContinuousLinearMap.coeFn_compLp`, and the source pointwise equivariance. These L² identifications are the exact reverse direction of the source's proven `GaugeData.invariantCore_equivariant` lemma, with no reverse equivalence assumed.

The D2B4 candidate also tests that Haar averaging fixes an already physically invariant source `SmoothCore` section, by combining the D2B1 fixed-point theorem with `TestFunction.ext`.

These are **prospective proof claims** until the D2B4 dedicated pinned CI passes the five exact public theorem reports, no sorryAx. The new exact candidate leaf is `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B4SourceSmoothInvariantCoreProbe.lean`.

## 3. Proof acceptance, scope, and negative knowledge

New workflow freezes every accepted D1–D2B3J source relative to exact Gate #21 SHA `5fc0144cb2983967a71733b7ca4fcacf432a3a9d`; recompiles D2B3J into an importable `.olean` with its existing exact 5-report whitelist. It copies and compiles only NEW D2B4 leaf, requiring five explicitly named reports and at most `propext/Classical.choice/Quot.sound` axioms.

If Gate #22 succeeds, it qualifies only the new source-domain `SmoothCore` bundle, its SU2 equivariance, L² physical-space membership, invariant-core membership, and fixedness on invariant-core functions. **It does not itself prove that this averaging map extends boundedly to the full original Hilbert space or that the smooth invariant core is L² dense.** Those require (i) the genuine source L² nonexpansive/projection bound; (ii) approximation of arbitrary physical L² sections by exact source test functions using the source full-space dense `coreToL2_dense`; and (iii) proof that averaging fixes physical vectors and converges to the target, without inventing a Hilbert representation or ignoring a.e. equality issues.

No original BFSS, upstream Mathlib, cache pins, qualified predecessor, main, or paper Hamiltonian/spectral-theorem changes. The goal remains discovering correct mathematical properties of the genuine source objects, not achieving green gates by strengthening hypotheses.
