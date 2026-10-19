# S1V17 second gate — exact first-causal conditional simplification failure

**Research date:** October 19, 2026 PDT.  
**Second isolated strict gate:** [#39267648356 — RED](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39267648356), job `118110649363`.  
**Gate 2 original source blob:** `b85f396115326b5b323bbc92e0daa40b89645dea`.  
**Verdict:** `UNQUALIFIED__ONE_OFF_DIAGONAL_IF_REWRITE_STILL_OPEN__EXACT_PAIR_TRANSPORT_FIXED`.

The S1V16 prerequisite and all earlier source Spin48 steps recompiled cleanly. The previous S1V17 issue with the equivalence's `((symm i).1,(symm i).2)` product η-expansion is **resolved** by explicit `change` followed by `Equiv.apply_symm_apply`. Compiler now reports only **one** first-causal Lean error:

```
S1V17QuarterFlipLiteralCoordinateAndInvolutionProbe.lean:53:4: error: unsolved goals
case pos
h : p.2 = 2
hz' : sourceBlockColorAxis p.1 p.2 (sourceBlockColorLabel α A) = 0
⊢ v (sourceBlockColorLabel p.1 2) = 0 ∨
  sourceBlockColorAxis p.1 2 (sourceBlockColorLabel α A) = 0
```

The offending tactic `simp [h,hz']` simplifies the vector index `p.2` to `2` **before** it rewrites the previously established zero-coordinate value with its expression involving `p.2`. This is an elaboration/rewrite-order issue, not a mathematical counterexample or a need for extra assumptions. The exact zero-coordinate fact follows from the qualified S1V5 `sourceBlockColorAxis_other`.

**Surgical repair:** preserve `hz'` but simplify only the if-expression by `if_pos h` / `if_neg h` before applying `hz'`, using:

```lean
by_cases h : p.2 = (2 : Fin 3)
· simp only [if_pos h, hz', smul_zero]
· simp only [if_neg h, Pi.neg_apply, hz', neg_zero, smul_zero]
```

This preserves all theorem statements and the original normalization, with repaired Git blob `ceac341fe05fbe4d54c45a7c12120c03eb646157`. The deliberately scoped [Gate #39268703293](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39268703293) is checking that exact repair. Qualify S1V17 only if the workflow completes green with all three fresh axiom reports and no `sorryAx`.

The first red [#39266677938](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39266677938) and its two original first-causal errors remain in `audits/OPENAI_MATH_BFSS_SU2_S1V17_EXACT_COORDINATE_INVOLUTION_FIRST_GATE_RED_2026_10_19.md`. Staged S1V18 real matrix comparison is **uncompiled**. No original G1A/S1J imported typed equality, all-parameter SU2 lift or Fock-module equivalence has been established. Only isolated branch files were modified.
