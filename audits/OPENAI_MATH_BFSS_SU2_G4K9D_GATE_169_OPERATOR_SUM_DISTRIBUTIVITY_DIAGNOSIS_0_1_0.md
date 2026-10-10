# BFSS SU2 G4-K9D — Gate #169 exact operator-sum normalization repair 0.1.0

**Date:** 2026-10-09 (America/Los_Angeles). **Status:** `REPAIR_REQUIRED__ONE_UNSOLVED_OPERATOR_SUM_GOAL`; repair remains **UNCOMPILED**.

## Exact failed compiler evidence

[BFSS SU2 Concrete Color Gate #169](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38011510956), run `38011510956`, job `114092340052`, tested source commit `0034e057108352b92abfe541c406ef07eff3dc98`, tree `6b8e249dfef01a21a6e0a1f2850f11a8ff29ee32`, leaf blob `2b75455102e134e31a6f9dac1558bbdb31765f27`.

Pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`; pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Accepted source chain G4-K8E3, G4-K8E4, G4-K9A, G4-K9B, G4-K9C all recompiled; cache restored.

One compiler error at **G4-K9D source line 165**. The goal, after original coefficient expansion and ordered-index reindexing, is exactly:
```lean
∑ β, ∑ A, (∑ i, ∑ j, ∑ B, ∑ C, complexCoefficient i j B C β A) • M.theta β A
 =
∑ β, ∑ A, ∑ i, ∑ j, ∑ B, ∑ C,
  complexCoefficient i j B C β A • M.theta β A
```
`simp only [Finset.sum_smul]` did not close the goal and reported an unused argument. The genuine `sourcePotentialCoefficientExpanded` theorem was proved with only `[propext, Classical.choice, Quot.sound]`; the generic six-index sum helper and the original source `bracketMultiplier` reindexing were elaborated successfully. Unfinished `sourcePotentialMultipliers_equal`, `sourceUnconditionalCoreCharge_equal`, `sourceUnconditionalCoreForm_equal` acquired `sorryAx`; **none** is accepted.

## Bounded source-preserving repair

Mathlib `Mathlib/Algebra/Module/BigOperators.lean` defines `Finset.sum_smul` for genuine modules over the original source scalar field. The new tactic explicitly reduces to each fixed source `β,A` pair, then folds the RHS nested sums of scalar multiples using `simp only [← Finset.sum_smul]`. This changes **one tactic only**, not the five-index coefficient, mathematical statement, source imports, model or physics. No new assumption, surrogate representation, axiom or compiler bound is introduced.

This proof proposal is still uncompiled. The next gate must succeed on the exact resulting commit and print just `propext`, `Classical.choice`, `Quot.sound` for all public new claims, without `sorryAx`. If the simplifier does not match, use the resulting focused diagnostic and prove an explicit `Finset.sum_smul` sequence; do not infer the physical claim merely from Grok's independent derivation.

The FCP `SRC-FCP24-NONPERT-BFSS-1997`, `SRC-OPENAI-MATH-F270B-BFSS-2026`, `FCP24-STRING-002` and T6 independent source adjudication remain unchanged. Success would at most establish original source potential multiplier/core charge/core form equality, **not** closed self-adjoint operator domain equivalence, a global spectral gap or empirical Matrix-theory validation. No main merge or upstream PR. Do not inspect next gate until owner reports its result.
