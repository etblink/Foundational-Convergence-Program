# BFSS M4F8 DD Gate #1 — strict red: Set/Submodule membership rewrite interface

**Date:** October 23, 2026 PDT. **Disposition:** `RED__FIRST_ROOT_LEAN_REWRITE_SET_SUBMODULE_COERCION_MISMATCH__SECOND_DEPENDENT_SORRYAX__0_ACCEPTED__PRINCIPAL_308_HELD`.

## Original evidence
- [Actions run #40038574315](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40038574315) `completed/failure`, job `120703971768`, immutable trigger HEAD `a095c85f2f745c45a0a765ec3e33a2bcb4103c1b`.
- Original DD candidate `experiments/openai-math-su2-physical-domain/FCPM4F8IndependentE2ConditionalPhysicalDomainDenseDD.lean`, Git blob `228fdb75031544ba4fffd47c6a0f062587012473`.
- Upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, strict source/candidate pins all passed. The accepted DB cache `bfss-fcp-m4f8-db-conditional-physical-core-9b548e8-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored; all required E2/E3/DA/DB `.olean` files were present.
- Fresh strict Lean error **line 68**, first root `independentE2_smoothInvariantCore_input_mem_actual_domain`:
```text
Tactic `rewrite` failed: Did not find an occurrence of the pattern
↑(independentPhysicalInputCutCoreGraph ...)
in the target expression
(x, y) ∈ independentPhysicalInputCutCoreGraph ...
```
- Source theorem E3 `independentPhysicalInputCutCoreGraph_eq_literalRestrictedRange` has type equality of `Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))`, while DD goal presents `Submodule` membership. The `rw` tactic cannot locate the hidden `Submodule`→`Set` coercion syntactically; its absence does not mean membership is mathematically false.
- First and downstream second roots report `sorryAx` due failed elaboration, so **0/2 accepted**. No DD cache saved. Original resources `DD_RESOURCE_TIME 12.57 CPU 106% MAX_RSS_KB 7027192`.
- Original artifact [#12537509020](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40038574315/artifacts/12537509020), digest `8d582d6893520f1d56a25b8d6a440cc915c364c81d8212fc2170b1cd97375f05`.

## Targeted proof repair, no mathematical change

Instead of rewriting `Set` equality into a term whose visible type is `Submodule` membership, apply the **pointwise right-to-left membership equivalence** given by the accepted E3 `Set.ext_iff` theorem directly:
```lean
    apply (Set.ext_iff.mp
      (FCP.M4F7IndependentLiteralRestrictedGraphBridgeE3.independentPhysicalInputCutCoreGraph_eq_literalRestrictedRange
        color gamma theta hCAR hHermitian) (x, y)).2
    exact ⟨f, rfl⟩
```
The use of the genuine E3 theorem and original independent E2 graph is unchanged; DD's density hypothesis remains explicitly conditional on original Haar source physical-core closure. No source-defined operator, domain, color/gamma hypothesis, physical space, or proposed theorem statement is changed.

Gate #2 must freshly compile and certify **both exact DD declarations**, without `sorryAx`, using permitted axioms and a newly saved qualified cache. Red Gate #1 remains recorded regardless of outcome. Principal accepted roots remain **308**. Canonical `main`, draft PR #25, and original `etblink/math` unchanged.
