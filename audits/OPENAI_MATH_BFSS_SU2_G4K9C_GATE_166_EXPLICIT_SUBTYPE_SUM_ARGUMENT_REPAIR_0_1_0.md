# BFSS SU2 G4-K9C — Gate #166 exact subtype-sum rewrite diagnosis and repair 0.1.0

**Date:** 2026-10-09 (America/Los_Angeles). **Classification:** `ELABORATOR_REPAIR_ONLY`; `UNCOMPILED` until the next pin-qualified gate. **Failed gate:** [BFSS SU2 Concrete Color Gate #166](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38009947614), run `38009947614`, job `114087384259`, tested exact source commit `6fb59f1229089365c50624b0f3f18997bd3e504f`, tree `a9e2442ab94bebb91afefc8fef067864151c0344`, source blob `25cf7276a8a57f63375ed43f9936b2bb46e880d7`.

## Exact error and impact

The earlier line-70 nested `simp` recursion is fixed: the new nested `Finset.sum_congr` proof compiled. The sole new error is Lean source line **86** in `symmetricZeroDiagonal_halfDoubleSum_eq_upper`. The automated rewrite `rw [Finset.sum_subtype_eq_sum_filter]` could not find the lemma pattern `∑ x ∈ Finset.subtype ?p ?s, ?f ↑x` in `∑ p ∈ Finset.subtype (fun ij => ij.1 < ij.2) univ, F (↑p).1 (↑p).2`. This is higher-order elaboration/inference on a dependent binder, not a physics identity or contradictory mathematical premise.

The source-specific theorems `sourceOrderedCoefficient_symmetric` and `sourceOrderedCoefficient_diagonal_zero` both compiled in #166 with no `sorryAx`; the three dependent theorems inherit the generic theorem's `sorryAx` and are **not accepted**.

## Bounded repair

Replace ONLY the failed subtype-sum proof tactic sequence with an application of the existing pinned Mathlib theorem with the **explicit typed summand function**
```
(fun ij : SpaceIndex × SpaceIndex => F ij.1 ij.2)
```
and explicitly specified `s := Finset.univ` and `p := fun ij => ij.1 < ij.2`. Normalize `Finset.subtype_univ`, `Finset.sum_filter`, `Finset.sum_univ`, and `Fintype.sum_prod_type` by controlled `simpa only`. This is the existing mathlib theorem about subtype sums, not any new axiom, assumed source fact, arbitrary depth increase, or redefinition of the BFSS color/gamma coefficient. All five theorem signatures and all accepted earlier K8E3, K8E4, K9A, K9B sources remain unchanged.

## Scientific scope and acceptance gate

The substantive mathematical claim remains the equality of the original half-weighted ordered-pair coefficient with the source upper-triangular coefficient, which is a necessary ingredient of the unconditional source potential-multiplier equality. **Gate #166 is RED, not a proof.** The next compiler run must show success and five new axiom prints exactly `[propext, Classical.choice, Quot.sound]`. The currently accepted FCP source registers and Family-270B BFSS spectral adjudication do not change; no Hamiltonian domain, spectral gap, or empirical conclusion is supported. No main merge, upstream PR or external effects.

Do not inspect the follow-on run until owner reports the color.
