# FCP BFSS — C5A Structural Gate #2: exact function-product normal form exposed, unclosed goal

**Date:** October 23, 2026. **Disposition:** `M4F7_C5A_STRUCTURAL_GATE2_PINNED_SOURCES_ALL_PASS__FUNCTION_PROD_NORMAL_FORM_REMAINS_AND_COMP_APPLY_UNUSED__ZERO_ROOTS__PRINCIPAL_302_UNCHANGED`.

## Strict independently verified original CI

[Actions #39922791084](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39922791084), job `120311794261`, workflow HEAD `a9a3d44db8f3f95758d0326618774d5d86c3df33`, completed/failure. Original entire compiler log inspected.

- Genuine BFSS immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, pinned Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; all source SHA and no-hole checks, imported A1/ancestor compiled cache restorations and preflight passed.
- Source `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentRawGraphRangeWitnessC5AStructural.lean`, Git blob `d5fb24f20b0143ff5614697cfff7ad89177f10b1`, has exact unchanged C5A theorem proposition and leading witness/rewrite proof from Gate #1. The only Lean change in final witness proof was `refine ⟨(w : _), ?_⟩; simp only [LinearMap.prod_apply, LinearMap.comp_apply]`.

Original decisive Lean errors:
```text
FCPM4F7IndependentRawGraphRangeWitnessC5AStructural.lean:51:52:
  error: unsolved goals

⊢ Function.prod ⇑independentCoreToL2
      ⇑(independentChargeVector color gamma theta) ↑w =
    Function.prod
      ⇑(independentCoreToL2 ∘ₗ (independentInvariantCore theta hCAR hHermitian).subtype)
      ⇑(independentChargeVector color gamma theta ∘ₗ
          (independentInvariantCore theta hCAR hHermitian).subtype) w

FCPM4F7IndependentRawGraphRangeWitnessC5AStructural.lean:57:35:
  error: This simp argument is unused:
    LinearMap.comp_apply
```

The key is that **the goal is exposed as `Function.prod` rather than `LinearMap.prod`**. `LinearMap.prod_apply` cannot rewrite `Function.prod`; until the function product is evaluated, the `LinearMap.comp_apply` redexes are hidden inside the two component functions. Thus the linter says `comp_apply` unused. This is an identifiable missing *outer function constructor* rewrite, not Gate #1's `rfl` deep BFSS recursion error. Fresh Lean compilation 11.75s, max RSS `6993424 KB`, axiom report `sorryAx`, no qualified cache. **Principal root tally 302.**

## Stop condition and one mathematically controlled target

Previous C5A Gate #1 demanded raw `rfl` and hit maximum recursion depth on concrete BFSS charge-product equality. Gate #2 removed that but failed to simplify the visible `Function.prod` constructor. Further unprincipled `rfl/simpa/change`, recursion/heartbeats increases or revived A2/C2 giant equality are **STOPPED**.

There is nevertheless a *specific evidence-driven rewrite not attempted at Gate #2*: the pinned Lean/Mathlib `Function.prod_apply` theorem states that the product of functions applied to an argument is the pair of their applications. It is a structural constructor law and does **not** unfold either BFSS component map. In precisely the printed residual goal, the minimal source-preserving next hypothesis is `simp only [Function.prod_apply, LinearMap.comp_apply]`, rather than repeating `LinearMap.prod_apply` (which was for a different syntactic constructor). In the first phase it should expose two component applications, after which `LinearMap.comp_apply` can operate on the actual composed linear maps. This is a *different and source-justified constructor cut*, not permission for an endless tactic variant sequence. One strictly isolated path-pinned attempt is justified; if the kernel still forces deep BFSS comparison, halt the C5A family and design a separate exact function equality/opaque-map interface instead. No theorem acceptance without a complete all-green strict axioms and saved cache.

Even a qualified C5A raw inclusion is a supporting certificate, **not** a principal new BFSS operator theorem. Full J-free physical input-restricted closed `LinearPMap`, its exact graph/domain, output physical invariance, Hamiltonian and spectral comparison remain open. Original math, canonical main, draft PR #25, root ledger unchanged.
