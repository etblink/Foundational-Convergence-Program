# FCP BFSS M4F7 A2 — Gate #2 independent red; direct concrete closure equality attempts STOP

**Verified:** October 22, 2026 PDT / October 23 UTC. **Disposition:** `A2_GATE2_RFL_RECURSION_RED__STOP_DIRECT_CONCRETE_SET_EQUALITY_TACTIC_CYCLE__301_PRINCIPAL_ROOTS_UNCHANGED`.

## Primary source evidence

[GitHub Actions #39907200856](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39907200856), job `120261768615`, source/workflow commit `dc427180564ce6b96bae9e4b58255ddb755ff978`, **completed/failure**, independently checked against original full Actions and Lean compiler output.

- Exact original BFSS `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; qualified M4F5/C1/A1/B1/C2/C3/C4/V1 cache restored and source/import closure checks passed. Exact A2Rfl source hash and one proof-body-only modification preflight passed.
- Candidate `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentClosedGraphAliasA2Rfl.lean`, Git blob `0b716a515998b70467c56ac22e162a33a7e4e537`.
- Fresh `lake env lean -DwarningAsError=true` ran, first error at line 66: `FCPM4F7IndependentClosedGraphAliasA2Rfl.lean:66:2: error: maximum recursion depth has been reached`. The offending proof is **`rfl`** of the original fully literal independent closed graph equality to `closure (LinearMap.range ... : Set _)`.
- The J-free `independentRestrictedClosedGraph` def axiom report contained exactly `propext, Classical.choice, Quot.sound`, as did the standalone named `independentRestrictedClosedGraph_isClosed` theorem. The exact *Set alias* `independentRestrictedClosedGraph_set_eq_literal` reported **`sorryAx`**. The full strict gate failed and saved **no new qualified A2 cache**. Fresh compiler resource: `29.06s`, max RSS `7097452 KB`.
- Gate #1 [Actions #39906130902](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39906130902) failed on the **same exact equality** under `unfold independentRestrictedClosedGraph; exact Submodule.topologicalClosure_coe _`, at line 66. It took `25.29s` with `7129076 KB` maximum RSS and likewise saved no cache.

## Scientific conclusion of two actual red gates

The equality is a standard mathematical consequence of Mathlib's native submodule closure and underlying set coercion. The pinned Mathlib `Submodule.topologicalClosure_coe` itself is `rfl`. Both **different concrete proof constructions** recursed when checked *against the fully instantiated BFSS `Lp`/core/charge/`Submodule` expression*. This is a proof-engineering opacity and definitional-conversion obstacle; **not** evidence for a mathematical counterexample.

The J-free independent closed graph is successfully defined and independently shown closed by the Lean compiler, but its supporting closedness theorem is NOT yet a qualified accepted artifact because the whole A2 gate was red.

**Stop rule is now binding:** Do **not** launch Gate #3 as `simpa`, `change`, `rw`, `exact`, another `rfl`, or any fresh permutation of the same concrete Set equality. Do not raise `maxRecDepth` or expand BFSS definitions. This route is paused, not counted as solved.

## Revised mathematical proof strategy

- Build a **separate generic opaque-submodule certificate**, without importing or elaborating any original BFSS `Lp`, `theta`, gauge core, charge columns, or physical-space data. The pinned Mathlib `Submodule.toLinearPMap_graph_eq` theorem proves `G.toLinearPMap.graph=G` from vertical uniqueness `∀p∈G, p.1=0 → p.2=0`; `LinearPMap.IsClosed` then follows from named `IsClosed (G : Set(X×Y))`. The generic theorem can also specialize to `S.topologicalClosure` abstractly, converting `S.topologicalClosure` membership into `closure(S:Set)` **with abstract S**, not the giant BFSS source instance.
- Prove and qualify these generic interfaces independently under exact strict axioms with a reusable cache. They are supporting mathematics only: **0 new principal roots**.
- Only then test a single concrete specialization to the literal independent raw restricted graph `S`, actual accepted V1 vertical theorem and genuine J-free graph; if the concrete interface still causes recursion, retain exact first error and change *the named input bridge*, not the generic topology or axioms. Remove unused `hColor,hGamma,hJ` parameters from the *operator definition*; preserve them where required to prove vertical uniqueness/graph equality/closedness.
- A closed independent `LinearPMap` and exact graph identity are NOT yet accepted. Physical-domain density, physical output invariance, Hamiltonian/domain equivalence, spectral comparison and mass gap remain separate scientific obligations.

Accepted principal total stays **301**. Canonical main, PR #25, pinned original mathematics and all prior negative results remain unchanged.
