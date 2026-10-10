# BFSS SU2 G4-K10A — exact closed joint-charge graph crosswalk launch 0.1.0

**Date:** 2026-10-09 Pacific. **Status:** `UNCOMPILED_CANDIDATE`. **Kind:** specific original source graph-domain mathematics; no claimed spectral transfer.

## Why this mathematical step is justified

Gate #170 qualified `sourceUnconditionalCoreCharge_equal` at exact commit `1fbd0db2af96914d20b8750bfbbeb3af6770a491`, run [38011995220](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38011995220), job `114093842738`, source blob `0695420e4e1d6fbe8accdc4aee9df6dd2d52d1ca`. Four new axiom reports were exactly `[propext, Classical.choice, Quot.sound]`. Gate #170 acceptance audit commit `bae8e50ea33cb7c9d4bc9d3147f9902597e5b12c`.

Read at pinned OpenAI Math commit `adc7f1241b42e322a6451854ab7e4b4c146bf78a`:
- `BFSS/Core.lean`: `M.charge`, `M.chargeVector`, `M.fullCoreGraph := LinearMap.range (coreToL2.prod M.chargeVector)`, `M.fullClosedGraph := M.fullCoreGraph.topologicalClosure`, with uniqueness of the closed-graph output.
- `BFSS/ClosedProfiles.lean`: `M.deformedChargeMap`, `M.deformedChargeVector h m`, `M.deformedCoreGraph h m := LinearMap.range (coreToL2.prod (M.deformedChargeVector h m))`, `M.deformedClosedGraph h m := (M.deformedCoreGraph h m).topologicalClosure`, and vertical triviality of the deformed closed graph.
- No new domain assumption is necessary to compare these **particular defined graph closures**. The same source smooth-core map at 1,0 has the same graph and thus the same closure; the equality should be checked by Lean rather than taken on trust.

## Five prospective Lean declarations

1. `sourceChargeMap_equal`: original `deformedChargeMap 1 0 α = charge α` as source `SmoothCore N →ₗ[ℂ] SmoothCore N`.
2. `sourceChargeVector_equal`: source `deformedChargeVector 1 0 = chargeVector` in the full Hilbert charge-vector codomain.
3. `sourceCoreGraph_equal`: source original/deformed dense smooth joint graphs equal as submodules of `FullL2 N × (SpinIndex → FullL2 N)`.
4. `sourceClosedJointChargeGraph_equal`: source-defined topological closures of those two graphs equal, with no extra analytic assumption.
5. `sourceClosedJointChargeDomain_iff`: their projected `FullL2 N` joint closed-charge domains agree; the y output is already uniquely determined by the source vertical-triviality theorems.

All five must compile under Lean `4.34.1`, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, pinned original OpenAI Math commit, with exactly `[propext, Classical.choice, Quot.sound]` dependencies and no `sorryAx`. The previously accepted G4-K8E3 through G4-K9D proof source modules are frozen and checked independently. No changes to actual physical data/charge definitions, imports outside the pinned environment, or proof assumptions.

## Critical limits / stopping rule

This proves a structural consequence about the same original *joint closed charge graph*, should the pin-qualified compiler accept it. It does NOT show equivalence of graph closures with the particular gauge-restricted closed quadratic form chosen in the registered October 2026 BFSS manuscript, nor identify all self-adjoint Hamiltonian realizations. No global spectrum, resolvent compactness, positive eigenvalues, mass gap, all-N discrete spectrum, M-theory validity or experiment follows.

After G4-K10A, stop and make a separate read-only paper-to-source closed-form/operator/domain audit. Only initiate a distinct analytic proof program if it resolves an explicit mathematical discrepancy with the manuscript, not solely to continue the Lean gate series.

FCP registered sources `SRC-FCP24-NONPERT-BFSS-1997`, `SRC-OPENAI-MATH-F270B-BFSS-2026`, `FCP24-STRING-002`, the accepted T6 independent source adjudication and K1–K10 controls remain unchanged. No main merge or upstream PR.
