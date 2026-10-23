# FCP BFSS — M4F7 A2 Gate #1: literal closed-graph Set equality conversion recursion (strict red)

**Verified:** October 22, 2026 PDT / October 23 UTC. **Disposition:** `M4F7_A2_GATE1_LEAN_RECURSION_AT_EXPLICIT_TOPOLOGICAL_CLOSURE_COE__ZERO_QUALIFIED_SUPPORTING_CERTIFICATES__301_PRINCIPAL_ROOTS_UNCHANGED`.

## Immutable original evidence

[GitHub Actions run #39906130902](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39906130902), job `120258397527`, triggered by `b6a1d4f31b034fde78f9dc33031d78999b66bee5`, independently inspected the original full workflow and Lean compiler log. Job and workflow both completed/failure.

All earlier steps succeeded: immutable original BFSS source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact research source SHA pins, comment-aware hole checker, qualified M4F5/C1/A1/B1/C2/C3/C4/V1 cache restoration and import closure. The new A2 source-only preflight also passed. **Lean fresh compilation ran**, rather than a failed CI wrapper.

Frozen candidate `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentClosedGraphAliasA2.lean`, Git blob `87c3804ed5602bc2e3365489d556bb8314138780`.

The *first and only original Lean error*:

```
FCPM4F7IndependentClosedGraphAliasA2.lean:66:8:
  error: maximum recursion depth has been reached
```

At line 66, the exact proof was:

```lean
  unfold independentRestrictedClosedGraph
  exact Submodule.topologicalClosure_coe _
```

The generic Mathlib `Submodule.topologicalClosure_coe` is an **actual theorem proved by `rfl`** in the pinned `Mathlib/Topology/Algebra/Module/Basic.lean`. This gate nonetheless failed because the **concrete BFSS-specialized equality goal/conversion** forces elaboration of an enormous range/product/submodule/closure. The abstract theorem being true does not guarantee a particular specialization compiles.

Axiom reports:
- `FCP.M4F7IndependentClosedGraphAliasA2.independentRestrictedClosedGraph`: only `propext, Classical.choice, Quot.sound`; elaborated cleanly.
- `FCP.M4F7IndependentClosedGraphAliasA2.independentRestrictedClosedGraph_set_eq_literal`: `sorryAx` fallout; **NOT accepted**.
- `FCP.M4F7IndependentClosedGraphAliasA2.independentRestrictedClosedGraph_isClosed`: only `propext, Classical.choice, Quot.sound`; compiled cleanly, **but the overall strict gate is red, so not yet qualified/reusable via saved cache**.

Compiler time `25.29s`, maximum resident set `7129076 KB`. No new qualified A2 cache save. **The running accepted principal theorem count remains 301**, no A2 certificates qualified through the whole workflow. No mathematical counterexample to graph closure or actual independent operator closedness was found.

## Procedural interpretation and bounded next experiment

A2 provides sharper evidence than V2 Gate #1:
- **J-free named independent closed graph definition** compiles.
- **Named graph closedness** compiles, based on original actual BFSS source and pinned Mathlib.
- **Only the specialization of the literal Set equality at its concrete large expression** triggers recursion.

The initial V2 Gate #1 also had unrelated unused `hColor,hGamma,hJ` arguments to its J-free operator definition; these should not be perpetuated. J is a witness in theorems, not part of defining an independently constructed closed charge graph.

One justified next *bounded* test is to change only the A2 Set-equality proof from `unfold; exact Submodule.topologicalClosure_coe _` to `rfl`, preserving **byte-for-byte the actual equality theorem's entire header**, independent CAR/Hermitian inputs, and the already-compiling named closedness theorem. This is not a change of scientific object or result: the pinned Mathlib theorem states the generic equality is definitional. A direct `rfl` can sometimes avoid elaborating its complex instantiation. Unlike repeated `exact/simpa` on a 17-slot graph, this tests specifically the definitional-conversion architecture exposed by the log. It remains a **hypothesis**, not an accepted Lean proof.

**Stop policy:** after a second direct-conversion red, STOP this concrete equality approach; instead isolate the abstract named-submodule theorem and work at a typed membership/opaque-graph interface, with no `maxRecDepth` increases or weakening of axioms. Do not automatically repeat CI. Strict acceptance still requires one correct cache, full workflow green, zero `sorryAx`, exact axiom-report names and original source pins.

No canonical main merge, PR #25 merge, original math edit or spectral/Hamiltonian claim.
