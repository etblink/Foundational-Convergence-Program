# S1V52L1B Gate #3 — RED; finite cardinality simplification and source-axis simp recursion

**Disposition:** `L1B_GATE3_RED__FINITE_SUM_CARD_GOAL_OPEN__AXIS_SIMPA_RECURSION__THREE_SORRYAX_ROOTS__ISOLATE_COORDINATE_BRIDGE`.

## Exact CI evidence

- [GitHub Actions run #39405590743](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39405590743), job `118570602997`: **completed failure**; branch checkout `0d879bc5562a075dfa2ed4d95b8ceafe8f0043c9`.
- Source path `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L1BOriginalSourceTwoCoordinateNormProbe.lean`, exact checked Git blob `f747fecb749a03be8f62ebcc84e53c5da19daf91`.
- Immutable BFSS source pin `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, genuine source BFSS Core pin passed.
- Restored L1A accepted cache `bfss-s1v52l1a-original48-isolated-abstract-norm-z-factor-v1-adc7f124-lean4341-d13f23b-Linux-X64`; qualified dependency checks passed. No L1B qualified cache saved.
- **First error** `...lean:64:19: error: unsolved goals` in the final finite sum of the pure original 48-label dot-product theorem; the remaining goal was exactly `↑{x | x = i}.card * (c * c) = c * c`. This is caused by simplification of a nested if-then-else inside `Finset.sum_ite` leaving a filter/cardinality rather than the expected singleton sum. It is a local finite-sum calculation defect, not an issue with source quadratic evaluation.
- **Second error** `...lean:107:2: error: maximum recursion depth has been reached`, at `simpa only [sourceBlockColorAxis] using hcoordinate`. Expanding even just the original axis definition under the actual source quadratic still triggers expensive implicit 48-vector definitional reduction.
- The `#print axioms` reports for all three roots (`source48Dot_two_coordinate_norm`, `source48Quadratic_two_coordinate_norm`, `sourceZPlane_firstVector_unit`) each contain **`sorryAx`**; **zero roots accepted**. The second theorem is contaminated by the first proof defect; independently successful quadratic transport is not yet established by this gate.
- There are unused-simp-argument warnings at original lines 46, 49–50, 65, which do not explain the gate failure but support tightening proof tactics.

## Strategy, negative knowledge, strict qualification

Split out an independent **L1C** module containing exactly two roots: (1) pure original-index `dotProduct` identity and (2) source quadratic identity proved by **accepted** `source48Quadratic_eq_dot`, with no original `sourceBlockColorAxis` specialization. Replace the nested if sum with two separate singleton-support summands:
```lean
  ∑ k, ((if k = i then c*c else 0) + (if k = j then s*s else 0))
```
and conclude with `Finset.sum_add_distrib` followed by `simp`. This avoids relying on the particular `Finset.sum_ite`/filter-cardinality reduction that failed at line 64. Verify in a separate source-pinned strict gate and preserve any new red result.

**Do not immediately return to the failing `simpa only [sourceBlockColorAxis]` or source-level `change`, which failed in L1 and L1B already.** After independent L1C acceptance, consider proving original block-axis norm using a direct dot-product projection/predicate-equality interface with named S1V5/S1V6 facts, or prove a general coordinate-transport lemma independent of the heavy source quadratic normalizer. No unproved axioms, sorry, source-model substitution, implied Spin membership, or unconditional promotion from red files.

Cumulative accepted S1V52 roots still **51** (including independent L1A Gate1). Genuine source Z-plane unit-vector norm, L2 actual `lipschitzGroup`, global `spinGroup`, 16-block hom and exact gauge action/continuity remain OPEN. No changes to main, etblink/math upstream or draft PR #25.
