# S1V52L1C Gate #2 — RED: explicit coordinate disequalities but unrestricted simp leaves residual implication

**Disposition:** `L1C_GATE2_RED__EXPLICIT_HI_HJ_PRESENT__SIMP_STILL_LEAVES_I_EQ_J_TO_S_EQ_ZERO__TWO_SORRYAX__TARGET_IF_POS_IF_NEG`.

## Primary evidence
- [GitHub Actions run #39407531114](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39407531114), job `118576990586`, **completed FAILURE** at strict Lean compile; checkout `899af1f4443504d28b9dedffba147a8bd28f0c27`.
- Original candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L1CIsolatedSource48CoordinateNormProbe.lean`, checked source blob `97b5850fa5f22e053c20aa7ade195b1955303187`.
- All original source SHA/toolchain checks passed, accepted L1A cache `bfss-s1v52l1a-original48-isolated-abstract-norm-z-factor-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored; original source oleans present. Lean 4.34.1 and pinned original Mathlib SHA, original BFSS `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`.
- Single actual Lean error `...IsolatedSource48CoordinateNormProbe.lean:56:4: error: unsolved goals` in helper `hsplit` on the true-`k=i` branch. Context has `hi : k = i`, `hj : k ≠ j` and source `hij : i ≠ j` but `simp [hi,hj]` leaves exactly `⊢ i = j → s = 0`. This demonstrates that even explicitly constructing disequality certificates did **not** make this unrestricted simplifier expression stable.
- Both `source48Dot_two_coordinate_norm` and `source48Quadratic_two_coordinate_norm` depend on `sorryAx`; neither is accepted; no cache saved. All remaining statements maintain the **actual original source quadratic form** and 48-label type, not any surrogate.
- Distinct from L1C Gate1 (used `subst k; simp [hij.symm]` and left the same residual implication). **No `maxRecDepth` errors occurred in either L1C strict gate.**
- Accepted S1V52 count **51** unchanged.

## Next targeted repair
Replace the branching `simp` automation by exact conditional rewrites:
```lean
  by_cases hi : k = i
  · have hj : k ≠ j := by
      intro hk
      exact hij (hi.symm.trans hk)
    simp only [if_pos hi, if_neg hj, add_zero]
  · simp only [if_neg hi, zero_add]
```
The final `hsplit` is a purely propositional identity for two disjoint support points; do not alter mathematical premise or increase recursion limit. Test the same two roots once under a new exact-source hash, same immutable upstream, and fresh save cache. If this still fails, reexamine hsplit mathematically under the exact elaborated `if` expression, not rerunning semantically equivalent broad simp approaches.

Pending L1D actual Z-plane source norm and L2 genuine Lipschitz membership remain **unqualified**. No `spinGroup source48Quadratic`, sixteen-block lift, native source action or continuity established by L1C. Canonical main, upstream mathematics and draft PR #25 untouched.
