# S1V52 L7C0/L7C1 — exact original positive-i native Euler-to-Spin48 completion gate scoping

**Disposition:** `L7B3_GATE1_PASS__99_LOCAL_ROOTS__L7C0_THREE_STAGED__L7C1_THREE_STAGED__HISTORICAL_SOURCE_OLEAN_REPLAY_REQUIRED__UNCONDITIONAL_LIFT_NOT_YET_ACCEPTED`.

## Current confirmed baseline

- [L7B3 Gate #1 run #39490045951](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39490045951), job `118860493154`, strict SUCCESS, four new roots with only `[propext, Classical.choice, Quot.sound]`. L7B2 v4 source cache restored. Saved `bfss-s1v52l7b3-native-euler-witness-spin-hom-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- The conditional hom is **literally** `GaugeGroup 2 →* spinGroup source48Quadratic` in one original `RealSpinBlock`; `hEuler : ∀ g : GaugeGroup 2, originalNativeHasZYZWitness g` remains a parameter.
- The local distinct root count is **99** = prior 95 plus L7B3 4; historical accepted declarations do not count as new local roots.

## Original historical accepted mathematics (do not repropose)

The original upstream BFSS model uses `FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve`, tangent `NormedSpace.exp (t • ((Complex.I:ℂ) • pairedAlgebraData.color c))` and true `OAI.BFSSQuantum.GaugeGroup 2`.

- Historical `L6H5E8R.source_z_gaugeCurve_diagonal_exp` establishes the genuine original positive-i Z curve as the exact paired-color diagonal exponential, and `L6H5E8T.sourceZDiagonal_exp_zero` yields `cos(t*pauliScale)+i sin(t*pauliScale)`. The negative Z entry follows likewise.
- Historical `L6H5E8T.source_y_gaugeCurve_real_rotation` proves the genuine original Y curve is the **positive upper-right sine** real rotation. `sourceYAngle t = t * FCP.BFSSSU2.pauliScale` exactly, not `t/2`.
- Historical `L6H5E8Y.original_source_zyz_exact_euler` proves the literal genuine native equality `sourcePlusIGaugeCurve 2 (originalEulerLeftTime g) * sourcePlusIGaugeCurve 1 (originalEulerMiddleTime g) * sourcePlusIGaugeCurve 2 (originalEulerRightTime g) = g` for ALL native `g`. This was previously strict accepted in the original source chain.
- S1V52 L7A0 has strictly accepted original first-row-to-real quaternion coordinate transport, C1 has genuine original native real quaternion extraction and multiplication. L7B3 has strictly accepted original native ZYZ witness-to-Spin and witness-parametric hom.

## New research source stages — not Lean certified

1. `SU2BFSSPhysicalDomainS1V52L7C0ActualNativePlusICurvesEulerWitnessProbe.lean`: THREE targets `originalNativePositiveIZCurve_coords`, `originalNativePositiveIYCurve_coords`, `originalNativeAll_ZYZWitness`. The first two apply accepted L7A0 first-row extraction directly to the immutable historical R/T genuine source curves; the third supplies L7B3's exact existential `originalNativeHasZYZWitness g` from historical Y all-time Euler. No fresh hypotheses, no surrogate color group and no source time substitution.
2. `SU2BFSSPhysicalDomainS1V52L7C1ActualOriginalNativeSU2Spin48HomProbe.lean`: THREE targets `originalNativeGaugeSpinHom`, `originalNativeGaugeSpinHom_coe`, `originalNativeAll_mem_sourceSpin48`. These specialize the existing accepted L7B3 hom with L7C0's **unconditional** witness. It would be a genuine original native SU2→Spin48 hom for EACH original 16 real-spin block, with the precise accepted original source48 Clifford polynomial. L7C1 is still source-only, unqualified until the complete imported .olean closure compiles and passes the strict allowlist audit.

## Exact build-integration obstacle and risk containment

Historical S1V23 accepted source prerequisite workflow stages explicitly require distinct branch-scoped cache keys:
- A L6G1→L6G5H original physical prefix: `bfss-s1v23-isolated-l6g5h-original-v1-adc7f124-lean4341-d13f23b-...`, restoring an already accepted G4M historical cache;
- B L6G5I→L6G5W: `bfss-s1v23-isolated-l6g5w-original-v1-adc7f124-lean4341-d13f23b-...`;
- C1 L6G6A-D and G6U-X: `bfss-s1v23-isolated-l6g6x-original-v1-adc7f124-lean4341-d13f23b-...`;
- C2 S1V23 source-curve name bridge: `bfss-s1v23-isolated-source-plus-i-quarter-original-v1-adc7f124-lean4341-d13f23b-...`.

The accepted source history also compiles H5E8R/S/T/U/V/W/X/Y in its earlier original source workflow, but that workflow's diagnostic artifact is **not** evidence of a downloadable compiled full closure. The S1V52 L7B3 cache does not automatically contain all historical modules. GitHub Actions caches from a different *nondefault feature branch* cannot automatically be treated as restored on this research branch. A direct import of historic R/T/Y in an isolated fresh L7C0 job without their .olean has no acceptance value.

**PL execution strategy:** first investigate a sanctioned, SHA-verified reuse of historical accepted artifacts. If none, stage a deterministic historical closure **replay** in small batches on the active research branch (including the G4M predecessor that A requires); verify the exact original Mathlib BFSS Core/upstream source pins, source blobs, original root names, exact allowed axioms and nonempty .olean per batch; save uniquely versioned acceptance caches. Restore current L7B3 accepted cache alongside historical closure only after verifying no conflicting source .olean stems and hash/toolchain keys, or recompile the small L7B3 chain against the historical prefix. Compile L7C0 then L7C1 as small separate fail-closed gates. Do not fire redundant CI automatically from staging commits, relax source hashes, change positive-i signs, or infer global source Spin membership from a conditional hom. Maintain per-gate red audits and root counts.

## Still not established even after future L7C1 gate success

The combined *sixteen-block* source Spin48 product/commuting-factor representation; strict source Majorana adjoint intertwining; global topology and continuity; separate manuscript Clifford/Fock representation equivalence; physical Hilbert Gauss equivalence and unbounded operator domains; Hamiltonian/spectral/mass-gap claims. Completion of one original per-block native SU2→Spin48 hom will not imply those without new qualified proofs.

Research branch only. Preserve canonical `main`, upstream `etblink/math`, and draft/unmerged PR #25. No CI triggered by this audit.
