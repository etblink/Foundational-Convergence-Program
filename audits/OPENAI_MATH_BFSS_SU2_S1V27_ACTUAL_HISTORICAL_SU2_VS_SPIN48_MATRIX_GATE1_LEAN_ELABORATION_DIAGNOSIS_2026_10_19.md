# BFSS S1V27 — first genuine historical SU2 versus independent source-sized Spin48 matrix equality gate RED

**2026-10-19 PDT.** **Disposition:** `S1V26_CACHE_AND_S1V25_RECOMPILE_PASS__S1V27_THREE_LABEL_ROOTS_COMPILED__FINAL_TWO_ROOTS_HAVE_SORRYAX_AND_ARE_REJECTED__NO_S1V27_CACHE_SAVED`.

## Actual first causal source evidence

[Original historical SU2 quarter equals independent Spin48 real matrix Strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39326355701), GitHub job `118313127256`, completed FAILURE, workflow commit `50321ef924efe8b40bf762b00789a19e076837f9`.

The exact pinned etblink/math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, immutable original S1J+S1V18 and S1V23 source hashes, and S1V25/S1V27 hashes passed. The original S1V26 independently accepted Spin48 cached artifacts were restored exactly, including S1V18 + S1J + original historical L6G6X, source S1V23 and original G4K/G4L. The exact accepted S1V25 source was **recompiled** in this same environment and BOTH of its original 48-real matrix entry roots passed per-axiom verification (only `propext, Classical.choice, Quot.sound`), yielding `S1V27_HISTORICAL_SOURCE_AND_INDEPENDENT_SPIN48_MODULE_KERNEL_PASS ...S1V25... 2`.

The new unchanged S1V27 candidate blob `a3a368006d8e33cd2d3fcded43faee66415918de` printed its first three fully qualified roots with only the same allowed axioms:
1. `FCP.BFSSS1V27.standalone_source_label_eq_original`;
2. `FCP.BFSSS1V27.standalone_source_label_eq_paired_original`;
3. `FCP.BFSSS1V27.standalone_quarter_coeff_original`.

**Exact first S1V27 compiler failures (original candidate lines):**

```
:81:20: error(lean.unknownIdentifier): Unknown identifier originalZQuarterTime
:91:20: error(lean.unknownIdentifier): Unknown identifier originalZQuarterTime
:101:4: error: (deterministic) timeout at isDefEq, maximum number of heartbeats (400000)
:105:2: error: (deterministic) timeout at tactic execution, maximum number of heartbeats (400000)
:144:22: error(lean.unknownIdentifier): Unknown identifier originalZQuarterTime
:151:33: error: Application type mismatch: Equiv.apply_symm_apply i — first argument expected an Equiv, received OriginalMajoranaLabel
:154:33: error: Application type mismatch: Equiv.apply_symm_apply k — first argument expected an Equiv, received OriginalMajoranaLabel
```

Both remaining S1V27 printed roots `historical_source_quarter_48_matrix_block_entry` and `historical_source_quarter_48_matrix_eq_independent_spin_quarter` **depend on `sorryAx` and are REJECTED**. The source verifier properly did NOT emit its 7-root marker and did NOT save the Stage S1V27 combined cache. The diagnostic artifact is `12221024968`.

## Minimal proposed correction / why

- The source's historically original quarter turn constant actually lives in `FCP.BFSSSU2GaugeG4M.originalZQuarterTime`, which was **opened in the previously accepted S1V25 file** but omitted from new S1V27. Resolve it with explicit `open FCP.BFSSSU2GaugeG4M` or qualify all instances. Do not redefine the constant or change +i, root(2)/2, signs or source group.
- Replace the expensive `simpa only [standalone_source_label_eq_original] using ...` in the S1V27 entry bridge by a small targeted `rw [standalone_source_label_eq_original, standalone_source_label_eq_original]` then `exact FCP.BFSSS1V25.actualHistoricalQuarter_sourceRealMajoranaMatrix_entry j k s t B A`, which prevents uncontrolled heavy `isDefEq` unfolds.
- `Equiv.apply_symm_apply` is a lemma applied to an explicit equivalence, not an arbitrary label: use `sourceBlockColorEquiv.apply_symm_apply i` and `... k` after source pair equivalence `change`.
- If source entry cases still time out, isolate the `Matrix.diagonal` entry equality by explicit index equalities rather than increasing heartbeats indefinitely; preserve original math and tell apart automation/resource costs from a genuine counterexample. Do not weaken the axiom checker.

**Scientific boundary:** This gate is NOT a refutation of historical SU2/Spin48 quarter action equality: no discrepancy in signs, dimensions, or matrix entries has been demonstrated. It is likewise NOT a proof: first three new S1V27 roots compile, last two fail and carry forbidden sorryAx. Source S1V23, S1V24, S1V25, S1V26 acceptance remain valid; S1V27 unqualified. Continue only isolated branch, no PR #25/main/upstream change.
