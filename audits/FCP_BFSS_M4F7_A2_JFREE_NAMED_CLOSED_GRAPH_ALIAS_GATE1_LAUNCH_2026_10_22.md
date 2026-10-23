# FCP BFSS — M4F7 A2 J-free named independent closed-graph alias: one strict supporting gate

**Local date:** October 22, 2026 PDT; GitHub CI October 23 UTC. **Status:** new A2 Gate #1 in progress; no theorem yet accepted. **Principal ledger remains 301.**

## Why not rerun failing V2

Original [V2 #39904538148](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39904538148), job `120253338468`, is independently verified **red in Lean** with first error `FCPM4F7IndependentClosedChargeOperatorV2.lean:83:54: maximum recursion depth has been reached` when converting actual named independent submodule membership into literal set-level `closure (range...)`. Line 148 repeated huge expression at `isClosed_topologicalClosure`. The closed charge definition also produced unused `hColor,hGamma,hJ` linter errors because these representation-witness proofs do not belong in the J-free partial-operator definition. Both graph and partial operator definitions printed only permitted axioms; both principal proofs had `sorryAx` fallout. **0 V2 principal roots accepted** and no cache saved. Full first-error preservation: [V2 Gate #1 forensic audit](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s1v52-global-lift-scoping-20261019/audits/FCP_BFSS_M4F7_V2_GATE1_RECURSION_AND_UNUSED_WITNESS_RED_2026_10_22.md).

Pursuant to M4F6 A1/B1/C2 and M4F7 V1 source C1 named-lemma lessons, independently consulted **pinned Mathlib** `leanprover-community/mathlib4@d13f23b723b8a846827a245b89c10fc7d3f11612`, file `Mathlib/Topology/Algebra/Module/Basic.lean`, which literally defines:
- `Submodule.topologicalClosure_coe (s)`: `(s.topologicalClosure : Set _) = closure (s : Set _)`, proved `rfl`;
- `Submodule.isClosed_topologicalClosure (s)`: closedness of this same set, by `isClosed_closure`.

These are the exact native mathematical bridges for the V2 recursion points and should be named, qualified separately, and imported as opaque exact theorem interfaces.

## Literal A2 source and strict gate

Candidate `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentClosedGraphAliasA2.lean`, Git blob `87c3804ed5602bc2e3365489d556bb8314138780`. The candidate defines the actual **J-free** independent restricted closed graph:
`independentRestrictedClosedGraph color gamma theta hCAR hHermitian`, literally `(range ((independentCoreToL2.comp invariantCore.subtype).prod (independentChargeVector.comp invariantCore.subtype))).topologicalClosure`, under unchanged original CAR/Hermitian source hypotheses. Its two narrowly scoped supporting certificates:
1. `independentRestrictedClosedGraph_set_eq_literal`: named submodule coerced to `Set` equals literal `closure (LinearMap.range... : Set _)`, proved by unfolding the named definition and `Submodule.topologicalClosure_coe`;
2. `independentRestrictedClosedGraph_isClosed`: `IsClosed (independentRestrictedClosedGraph... : Set _)`, proved via `Submodule.isClosed_topologicalClosure`.

No `J` or physical-space transport appears in those definitions or lemmas; they preserve actual independent smooth core and sixteen charges. Neither theorem asserts the graph has trivial vertical fiber or is an operator graph. They are **supporting aliases, not principal root credits**.

Isolated self-path-only [A2 Strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39906130902), source/workflow commit [`b6a1d4f31b034fde78f9dc33031d78999b66bee5`](https://github.com/etblink/Foundational-Convergence-Program/commit/b6a1d4f31b034fde78f9dc33031d78999b66bee5), restores the accepted V1 cache and frozen original BFSS `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, and prior compiled source chain. Source SHA/comments and original CAR check, exactly one J-free definition and two supporting theorems; strict fresh 105s `lake env lean -DwarningAsError=true`, exactly three full axiom reports restricted to `propext, Classical.choice, Quot.sound`, no `sorryAx` or unexpected warnings/errors, new qualified A2 cache saved only after entire workflow success, full diagnostics uploaded on either result. All YAML run block/path indentation was statically inspected before launch; no competing V2 CI.

**Stop rule:** If A2 fails, independently inspect the actual first compiler error, classify alias type/conversion before attempting another similar tactic; preserve the failure. If A2 passes, import its exact accepted names into V2 and reconstruct the genuine independent `LinearPMap` **without** `J,hColor,hGamma,hJ` arguments on the definition; retain those witnesses in the theorem statements that use accepted V1 vertical uniqueness. Prove operator graph equality from an abstract named submodule interface and closedness from the A2 certificate. Accept V2 principal results **only after a separate full strict gate**, not by inference from A2.

**Scientific ceiling:** No claim of physical-Hilbert-space domain density, physical output, closed-operator equivalence, Hamiltonian equality, spectrum or BFSS mass gap from A2. Canonical `main`, PR #25 and original mathematics untouched.
