# FCP BFSS — C5A raw independent graph range witness strict Gate #1: red on witness equality normalization

**Date:** October 23, 2026. **Disposition:** `C5A_GATE1_PINNED_SOURCE_CACHE_AND_A1_ALIAS_REWRITE_PASS__WITNESS_RFL_RECURSION_RED__NO_ROOT_ACCEPTED__PRINCIPAL_302_UNCHANGED`.

## Immutable original evidence

[GitHub Actions run #39921615306](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39921615306), job `120307939817`, original workflow commit `293ad33e1fea7a9c2bff9dccaccbc0773f1099b7`, **completed/failure**. The original job log, steps and fresh Lean compiler output were independently inspected.

- Original BFSS `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` source/toolchain verification all passed.
- Qualified M4F5–C4/V1 imported ancestor `.olean` caches, independent source A1 literal alias certificate, and exact source preflight all passed.
- Exact concrete candidate `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentRawGraphRangeWitnessC5A.lean`, frozen Git blob `0aa2c2481e56673d2ba8cc104d85481d44c30784`.
- Fresh `lake env lean -DwarningAsError=true` reached the only theorem `FCP.M4F7IndependentRawGraphRangeWitnessC5A.independentRestrictedRawGraph_le_fullRawGraph`.
- Original first and only Lean compiler error:
```text
FCPM4F7IndependentRawGraphRangeWitnessC5A.lean:55:18:
error: maximum recursion depth has been reached
```
at:
```lean
  intro p hp
  rcases hp with ⟨w, rfl⟩
  rw [FCP.M4F6IndependentLiteralAliasBoundary.independentFullCoreGraph_eq_actualRange
    color gamma theta]
  exact ⟨(w : _), rfl⟩
```

The range witness extraction and named original-source A1 rewrite were accepted, but applying `rfl` to equate *concrete* composed independent core and charge map products with the unrestricted product on `(w : _)` required deeper normalization than Lean's recursion budget. This is a **localized definitional-equality/normalization failure**, not C5's earlier generic closed-range `whnf` heartbeat timeout or B5's failed C2 set equality. It does **not** establish a counterexample.

Axiom report for C5A included `sorryAx`. Fresh compiler resource `DIAG_RESOURCE_TIME 18.61 CPU 99% MAX_RSS_KB 7108712`; no qualified C5A `.olean` cache saved, **zero** new supporting/principal roots. Principal accepted ledger stays **302**.

## Proof-engineering consequence and strict stop

The direct witness route did eliminate the previous `exact` application of the entire generic closure theorem: the only failure now occurs at one equality of product map applications. **Do not increase maxRecDepth, maxHeartbeats, or reopen A2/C2 literal concrete set equalities.** The next legitimate proof boundary is the *outer linear map structural laws*, `LinearMap.prod_apply` and `LinearMap.comp_apply`, which compute product/comp applications **without unfolding** `independentChargeVector`, `independentCoreToL2` or any concrete BFSS gamma/color/fermion representation.

One strictly bounded candidate could replace the single `exact ⟨(w : _), rfl⟩` with an explicit same witness and a proof via `simp only [LinearMap.prod_apply, LinearMap.comp_apply]` on the resulting graph-point equality. The statement, source hypotheses and preceding A1 rewrite would be byte-identical; source and strict exact one-root axiom gate are still required for any acceptance. If *that* still incurs a deep BFSS concrete equality, stop the concrete simp/rfl permutation family and move to a separately qualified generic map-equality theorem with opaque maps and an explicit source-syntactic cut. The generic range and closure lemmas already accepted are never promoted retroactively into a concrete BFSS proof.

C5A even if green is only a **supporting raw inclusion**, not the full closed operator or a new principal root. A3 named restricted graph membership and actual closed `LinearPMap`, physical Hilbert density, output invariance, Hamiltonian/domain, spectral questions and mass gap remain separate.

Canonical main, unmerged PR #25, original BFSS frozen mathematics and **302 principal roots** unchanged. Preserve red-gate evidence.
