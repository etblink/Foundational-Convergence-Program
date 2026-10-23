# FCP BFSS M4F7 E3 Gate #1 — named native membership rewrite failed; zero new roots

**Date:** October 23, 2026 (PDT). **Disposition:** `E3_GATE1_COERCED_SET_MEM_REWRITE_MISMATCH_RED__0_PRINCIPAL_ACCEPTED__304_CUMULATIVE`.

## Immutable evidence

[Actions run #39986546509](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39986546509), job `120527096090`, completed/failure. Source/workflow commit `dab42a53cefcb04997077c2f472dc765f19e2278`. Source `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentLiteralRestrictedGraphBridgeE3.lean`, Git blob `98e43acd2a27d2d875ec3c8221a4dc81968985c5`. Strict gate workflow blob `ed5e395e1cce2800de324531efee186083d38791`.

Pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact Git source checks and absence of holes passed. Qualified E2 and C2 strict caches independently restored, all expected imported `.olean` checks passed. Original fresh Lean exited **1** after **13.16 s**, peak RSS **7,007,672 KB**. Original output/artifacts preserved: GitHub artifact **12515329200**, digest `sha256:76d2e5dc4f880b6c71f11140383683bcdd7f4a711db75798a404024933903506`.

First causal compiler error at **line 96, column 6**, in the actual source-level set equality proof:
```text
Tactic `rewrite` failed: Did not find an occurrence of the pattern
  p ∈ M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutCoreGraph ...
in the target expression
  p ∈ ↑(M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutCoreGraph ...) ↔
    p ∈ ↑((independentCoreToL2 ∘ₗ ...).prod ...).range
```
The accepted typed membership theorem is written as `p ∈ S`, but the `Set.ext` goal exposes `p ∈ ↑S`; the `rw` engine does not locate the expected literal pattern at its working transparency. The generic `abstract_native_input_cut_mem_iff` and specialized `independentPhysicalInputCutCoreGraph_mem_iff` compiled cleanly with only `propext`, `Classical.choice`, `Quot.sound`. Both dependent declarations printed `sorryAx`; no principal source-graph equivalence, qualified E3 `.olean`, or cache was accepted. **Cumulative 304 unchanged.**

## One architecturally limited Gate #2 correction

Replace the failing `rw [independentPhysicalInputCutCoreGraph_mem_iff ...]` under `Set.ext` with **direct theorem composition**, not another concrete coercion unfolding:
```lean
  apply Set.ext
  intro p
  exact (independentPhysicalInputCutCoreGraph_mem_iff
    color gamma theta hCAR hHermitian p).trans
    ((Set.ext_iff.mp
      (FCP.M4F6IndependentGraphInputCut.independentCoreGraph_eq_physicalInputCut
        color gamma theta hCAR hHermitian) p).symm)
```
The first accepted E3 gate theorem is already a fully typed iff; the previously qualified M4F6 C2 theorem is already an exact **Set equality**. `Set.ext_iff.mp` gives the needed pointwise membership iff on the literal original restricted range; the displayed comprehension is definitionally the physical-input predicate. This avoids `rw` over the concrete submodule-to-set coercion. Preserve the exact theorem proposition and other two proofs; change only the first failed tactic block. If a concrete definitional comparison still recurses, stop and preserve that fact rather than raising `maxRecDepth`, substituting a source-transported graph or changing the intended theorem.

**Science ceiling:** even a future E3 green proves only equivalence of E2's closed graph with the literal independent restricted smooth-graph closure. Source physical-domain density, all sixteen physical outputs, source operator graph/domain equivalence, Hamiltonian and spectral equivalence remain separate. Canonical main, original mathematics and PR #25 are unchanged. Strict root count is **304**.
