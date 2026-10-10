# BFSS SU2 G4-K9C — Gate #165 finite-sum elaboration failure diagnosis 0.1.0

**Date:** 2026-10-09 (America/Los_Angeles). **Disposition:** `REPAIR_REQUIRED__TWO_FINITE_SUM_TACTIC_FAILURES`; candidate remains uncompiled. **Compiler evidence:** [BFSS SU2 Concrete Color Gate #165](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38009596366), run `38009596366`, job `114086269110`, tested commit `746d6230985be6dcac0143a71e7481a4af8f428e`, tree `d519db7f234b3deae718999f90fb0ff6714bf074`, source file blob `53a95dca9dd107636895e3865e452db062ab18a1`.

The accepted G4-K8E3, G4-K8E4, G4-K9A and G4-K9B proof compilation and cache qualification all passed. The new G4-K9C leaf failed at exactly two sites of `symmetricZeroDiagonal_halfDoubleSum_eq_upper`, which then propagated `sorryAx` transitively to declarations depending on it. It is **not** an independently accepted five-theorem result.

### Exact errors and bounded repair

1. Source line 70: `simp only [hsplit]` recursively rewrites a generic `F i j` pattern in the nested sum and exhausted the compiler recursion depth. The repair is structural: two `Finset.sum_congr` applications and one `exact hsplit i j` at each fixed pair. No recursive unfolding or increased resource limits, and no mathematical statement is changed.
2. Source line 78: `rw [Finset.sum_subtype_eq_sum_filter]` could not match a sum over the *full Fintype of spatial-pair subtypes* to the theorem's prerequisite `Finset.subtype p s`. The repair first rewrites the genuine subtype `Finset.univ` with the pinned existing `Finset.subtype_univ` theorem, then applies the named `Finset.sum_subtype_eq_sum_filter` and performs controlled sum/filter simplification. No new combinatorial theorem or axiom.

All five theorem statements and three genuine source-application proofs beyond the generic first theorem remain identical; the source imports and `#print axioms` commands remain identical. Existing accepted proof files, cache, workflow, source pins, and FCP source register are unchanged. The repaired candidate **must** pass exact pinned `lake env lean` independently before any promotion; if Lean disagrees with a theorem signature or simplification, investigate the exact new log rather than presuming success.

Scientific claim retained: antisymmetric source color bracket times antisymmetric source gammaTwo is symmetric and zero on diagonal; its half ordered-pair sum equals the upper-pair sum. No source potential-multiplier identity or spectral result is claimed until separately compiled.

**Next checkpoint:** owner-reported Gate #166. Do not inspect its result before the owner reports the color.
