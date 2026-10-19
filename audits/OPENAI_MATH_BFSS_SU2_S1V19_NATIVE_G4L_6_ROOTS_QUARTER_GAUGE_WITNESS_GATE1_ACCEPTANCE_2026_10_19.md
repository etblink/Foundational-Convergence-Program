# BFSS S1V19 — native G4L actual GaugeGroup 2 quarter-turn witness accepted

**Date:** October 19, 2026 PDT. **Status:** `NATIVE_G4L_SU2_QUARTER_WITNESS_6_KERNEL_PASS__HISTORICAL_SOURCE_CURVE_IDENTIFICATION_OPEN`.

## Original pinned CI qualification

- [G4L SU2 Quarter Gauge Witness Strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39309892604), job `118256441704`, completed **SUCCESS** on isolated workflow commit `e2d0c8ea8354d8c3d64fdcef2d3af818617d0d3d`.
- Original pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Original G4K six-root cache restored successfully, with genuine OAI math and typed original G4J GaugeData.
- New unchanged G4L source `SU2BFSSG4LNativeQuarterSourceGaugeWitnessProbe.lean`, Git blob `037c2c9882bf4096988a1439ec6a7d6cba5507d9`. Exact compiler `#print axioms` names:
  1. `FCP.BFSSSU2GaugeG4L.originalZQuarterMatrix_det_one`
  2. `FCP.BFSSSU2GaugeG4L.originalZQuarterMatrix_unitary`
  3. `FCP.BFSSSU2GaugeG4L.originalZQuarterMatrix_specialUnitary`
  4. `FCP.BFSSSU2GaugeG4L.actualQuarterGauge`
  5. `FCP.BFSSSU2GaugeG4L.actualQuarterGauge_coe`
  6. `FCP.BFSSSU2GaugeG4L.actualQuarterGauge_fermion_theta_sign`
- All 6/6 original declarations printed precisely the permitted `[propext, Classical.choice, Quot.sound]` (no `sorryAx`, other axioms or `error:`). Strict validation reports `ORIGINAL_SOURCE_G4L_SU2_QUARTER_GAUGE_WITNESS_6_ROOTS_KERNEL_PASS`; all source hash verification and `.olean` checks passed.
- Cache-save output explicitly: `Cache saved with key: bfss-s1v19-isolated-g4l-original-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

## Accepted source mathematical result

A **real element** `FCP.BFSSSU2GaugeG4L.actualQuarterGauge : OAI.BFSSQuantum.GaugeGroup 2` whose underlying 2×2 complex matrix is `!![Complex.I, 0;0,-Complex.I]` has been constructed by checking both real SU(2) requirements, unitary and determinant one. The original fully-accepted `G4J.pairedGaugeData : pairedAlgebraData.GaugeData` transforms all 16×3 paired Majorana fields with signs (-,-,+) when acted on by this particular genuine SU(2) element. No added axiom and no substitution of an alternative group or Fock state.

## Critical UNPROVED historical-curve identity

`actualQuarterGauge = FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve (2 : Fin 3) ((Real.pi/2) * Real.sqrt 2)` is **NOT** a theorem of G4L. The sourcePlusIGaugeCurve definition imports a broad historical `L6G6V/L6G5/L6G4` physical operator chain; source S1G and S1V19 remain uncompiled on the isolated branch.

Next: prove the actual original 2×2 Pauli z-generator matrix exponential at the original scalar parameter without importing L6G6X (a small-import sublemma), then qualify a **separate, explicit, Lean-source-typed** bridge to L6G6X with source module restored. Never replace the final original identity by informal equivalence or a new source curve with the same name. Existing G4L cache is a reusable material improvement, not closure of manuscript Spin(48), its Hilbert module identification, physical domain, or BFSS gap.

Governance: isolated branch only; no PR #25, main, or pinned upstream alterations.
