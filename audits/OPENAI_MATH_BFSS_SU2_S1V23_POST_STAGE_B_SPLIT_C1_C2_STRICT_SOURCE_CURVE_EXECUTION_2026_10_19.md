# BFSS S1V23 — post-Stage B historical source curve: separated C1 / C2 qualification

**Date:** October 19, 2026 PDT. **Status:** Stage B strict acceptance complete; C1 dispatched, C2 NOT dispatched.

## Accepted input

- [Stage B Original L6G5I–W Physical Source Strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39316851640) job `118280441975`: 15/15 original source modules, 42/42 axioms roots qualified using only `propext, Classical.choice, Quot.sound`. Exact original source hashes, `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, restored accepted Stage A source cache all verified.
- Saved CI cache `bfss-s1v23-isolated-l6g5w-original-v1-adc7f124-lean4341-d13f23b-Linux-X64`. See accepted record `OPENAI_MATH_BFSS_SU2_S1V23_L6G5I_W_STAGE_B_42_ROOTS_STRICT_GATE1_ACCEPTANCE_2026_10_19.md`.
- Stage A + Stage B together comprise **28 original historical physical-source modules and 92 strictly checked named declarations**, not a new reimplemented source curve.

## Why Stage C is separated into C1 and C2

The 8 original L6G6A–D/U–X sources have already been qualified historically but their `.olean` closure requires recovery in this isolated branch; the **new** S1V23 3-root identification candidate has never compiled in this branch. A monolithic 38-root gate would lose newly compiled source modules and the cache if a single new S1V23 `rfl`, `Subtype.ext`, or field-action elaboration failed. That creates unnecessary repetition of expensive upstream source proofs.

- **Stage C1: source-only original L6G6X**, workflow `.github/workflows/bfss-s1v23-original-l6g6x-actual-source-curve-strict.yml`, commit `71fbcbb063d90bb2047f79fdc36163b979dd608e`, [run #39318649350](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39318649350). Restores exact accepted Stage B key, verifies all eight original SHA1 blob hashes, immutable toolchain, OAI `GaugeGeometry`, original G3C/G4M/physical L6G5W `.olean` prerequisites; strictly compiles exactly A, B, C, D, U, V, W, X and their **35** `#print axioms` with a unique full-match generated private name / exact qualified upstream name and only three allowed axioms. Save new `bfss-s1v23-isolated-l6g6x-original-v1-adc7f124-lean4341-d13f23b-Linux-X64` only on complete success. **C1 running; not accepted until logs and cache-save prove success.**
- **Stage C2: final historical S1V23 name bridge, NOT triggered.** The unchanged staged candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V23OriginalPlusICurveNativeQuarterBridgeProbe.lean` has exact Git blob `cb29eb6261fc50550cc275bceb5b000619d521b7`, imports the **real historical** `SU2BFSSPhysicalDomainL6G6XOriginalSU2GaugeCurveProbe` and the G4M original paired exponential; root namespace `FCP.BFSSS1V23`. Three explicit Lean checks:
  1. `original_sourcePlusIGaugeCurve_z_matrix_eq`: source-defined original underlying positive-`i` color exponent equals qualified G4M matrix at all real times;
  2. `original_sourcePlusIGaugeCurve_quarter_eq_actualGauge`: actual original SU2 group curve at quarter time equals accepted G4L actual native quarter element;
  3. `original_sourcePlusIGaugeCurve_quarter_fermion_theta_sign`: transport original G4J `pairedGaugeData` exact 48-Majorana covariance to **historical source curve**, not a surrogate.
  Run C2 only once C1 cache-save is confirmed. The C2 workflow should restore C1 cache fail-closed, check exact original G4M, G4L, G4J and L6G6X `.olean`, pin candidate Git blob and actual L6G6X blob `b4aff5ae8e55e506d6850765ec661d777b63a58e`, compile unchanged candidate and audit three theorem axiom prints. Preserve actual first causal error and do not change mathematics just to produce green.

## Scope discipline

Even if C2 becomes green, only the **actual historical plus-i source SU(2) quarter group identity and 48-Majorana covariance** would be established. The independent manuscript Spin(48) lift/intertwiner, original physical-domain matching and BFSS spectral gap remain separate obligations. All changes limited to isolated research branch; no `main`, PR #25, or original pinned `etblink/math` mutations.
