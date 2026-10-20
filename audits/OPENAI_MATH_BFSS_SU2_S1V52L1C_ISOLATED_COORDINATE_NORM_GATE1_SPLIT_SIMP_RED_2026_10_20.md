# S1V52L1C Gate #1 — RED: coordinate-support split `simp` leaves an equality implication

**Disposition:** `L1C_GATE1_RED__PINNED_SOURCE_AND_L1A_CACHE_VERIFIED__HSPLIT_IF_SIMPLIFICATION_OPEN_GOAL__DEPENDENT_DOT_AND_QUADRATIC_ROOTS_SORRYAX__NO_ACCEPTANCE`

## Exact evidence

- GitHub Actions [run #39406626194](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39406626194), job `118574012229`: **completed FAILURE**, checkout commit `077d1b3ce02e51784767d252426636a0bf3a85b8`, branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- Candidate file `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L1CIsolatedSource48CoordinateNormProbe.lean`, exact pinned Git blob `1e7507c0a4f1e8b10e1059e86d7d439992dc4b2e`. Immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original BFSS Core hash, Mathlib pin `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean 4.34.1 passed source/toolchain preflight. Qualified S1V52L1A source cache restored and all source Olean dependencies validated.
- **Only Lean error:** `...L1CIsolatedSource48CoordinateNormProbe.lean:56:4: error: unsolved goals`. At `hsplit`, on branch `by_cases hi : k = i; · subst k; simp [hij.symm]`, Lean left `⊢ i = j → s = 0`. This is an erroneous unresolved simplification obligation resulting from rewriting a nested conditional after substituting the coordinate `k`. The mathematical `i ≠ j` is available and was never weakened.
- Root `FCP.BFSSS1V52L1C.source48Dot_two_coordinate_norm` printed `[propext, sorryAx, Classical.choice, Quot.sound]`; root `FCP.BFSSS1V52L1C.source48Quadratic_two_coordinate_norm` also reported `sorryAx` through its dependency. **Neither root accepted.** No qualified L1C cache saved.
- Crucial negative knowledge: **no recurrence of any concrete-source `maximum recursion depth` error** in this isolated gate. The repaired two-singleton-sum calculation and the accepted S1V6 quadratic-to-dot transport produced no independent errors after the open helper proof goal.
- This local error differs from L1B Gate #3's filtered singleton cardinality goal, L1B Gate #2 concrete `change` recursions, and original L1 Gates #1–#4 source normalization problems.

## Minimal source-faithful repair

Preserve the source theorem statements and original `source48Quadratic`, exact 48-label indexing, and immutable source/toolchain hashes. Replace only `hsplit` proof with explicit branch facts:
```lean
    by_cases hi : k = i
    · have hj : k ≠ j := by
        intro hk
        exact hij (hi.symm.trans hk)
      simp [hi, hj]
    · simp [hi]
```
No `subst k`, extra axioms, `sorry`, source model substitution, or expensive quadratic normalization. Re-pin source SHA and submit exactly one Gate #2 strict axiom check for both roots. Do not count either until successful full green with saved cache. If a new sum simplification error surfaces, retain it separately before changing proof architecture.

Accepted total **51** S1V52 Lean roots (through L1A). L1C, L1D, L2, genuine Lipschitz, `Spin(48)`, sixteen-block native lift, original source-action compatibility and continuity remain unqualified. No mutation to canonical `main`, pinned upstream or PR #25.
