# OpenAI Navier–Stokes 2026 Load-Bearing Analytic Falsification Audit — Input and Dependency Map 0.1.0

```text
OPERATION = OPENAI_NAVIER_STOKES_2026_LOAD_BEARING_ANALYTIC_FALSIFICATION_AUDIT
PHASE = PHASE_0_BIND_EXACT_INPUT_IDENTITIES_AND_BUILD_NODE_MAP
STATUS = COMPLETE
DATE = 2026-09-10
FCP_BASELINE_MAIN = 3833e237b4b4bd424a622f7a00df23afb5552ea9
FCP_BASELINE_TREE = d453beb6d884bedc23d2ea77f52ae4f41163099d
PREREGISTRATION_COMMIT = 62336d92c81ec5d4d6c1e800edacf6288e8d610e
OPENAI_LEAN_COMMIT = f9e8bc5b38b6e212696e8a30e3e91517af887bbd
OPENAI_LEAN_TREE = a503f07635f200c0f2f9c5361df1fa07f95c4741
PAPER = FINITE TIME BLOWUP FOR NAVIER-STOKES
PAPER_RELEASE_DATE = 2026-09-08
PAPER_LENGTH = 166_PAGES
```

## 1. Frozen primary inputs

The substantive evidence universe remains exactly the one frozen by the preregistration:

1. OpenAI, *Finite Time Blowup for Navier–Stokes*, official PDF released 2026-09-08.
2. `openai/NavierStokesAndEuler` at exact commit `f9e8bc5b38b6e212696e8a30e3e91517af887bbd`, tree `a503f07635f200c0f2f9c5361df1fa07f95c4741`.
3. Fefferman/Clay problem statement and erratum only where target semantics are required.
4. Existing canonical FCP OpenAI Navier–Stokes intake, formal-reproducibility, source-register, and human-correspondence records.

No external post-release critique, media report, social discussion, priority claim, later proof revision, or later repository commit is admitted inside this audit.

## 2. Prior results that are evidence but not premises of correctness

The following are preserved as provenance facts rather than converted into analytic assumptions:

```text
PRIOR_SOURCE_INTAKE = COMPLETE
PRIOR_INDEPENDENT_FORMAL_REPRODUCIBILITY = PASS
PRIOR_TARGET_AND_ENDGAME_CORRESPONDENCE = SUPPORTED_BY_TARGETED_HUMAN_AUDIT
FULL_INDEPENDENT_HUMAN_REPROOF = NO
GLOBAL_CONSENSUS = NOT_ESTABLISHED
CLAY_RECOGNITION = NOT_ESTABLISHED
```

The pinned Lean kernel replay makes a transcription/formal-derivation failure less likely but does not substitute for independent analytic reconstruction in A1–A4.

## 3. Paper load-bearing node map

### A1 — leading-profile construction

Primary paper target: the leading-profile construction centered on Theorem 4.6 and the preparatory profile/moment/cone machinery feeding it.

Material obligations:

- simultaneous satisfaction of profile and matching conditions;
- sign/cone admissibility needed by the later covariance construction;
- nonempty ordered parameter regime;
- smoothness and support inherited by the subsequent localized construction.

Downstream dependency: the fixed primary field, stress target, geometric chart, and later oscillatory controls all rely on this construction.

### A2 — oscillatory stress realization

Primary paper target: the oscillatory realization centered on Proposition 7.5 and the associated covariance/partition construction.

Material obligations:

- signed requested stress realized by oscillatory increments;
- exact handling of primary × tangent, old-remainder × tangent, curl, and self-interaction terms;
- localization/cutoff terms do not reintroduce a same-order residual;
- incompressibility, support, and regularity are preserved.

Downstream dependency: A3's signed correction assumes the actual oscillatory fields and their quantitative bounds.

### A3 — complete residual-improvement cycle

Primary paper target: Proposition 9.6, with supporting material from Sections 8–9.

Material obligations:

- one cycle maps input accuracy `sigma` to `sigma + 1/10`;
- the particular-wave residual gain is real after all linear and nonlinear terms;
- the signed-wave covariance cancellation is computed from the literal updated field;
- finite-head cross defects and cutoff remainders are retained rather than silently set to zero;
- temporal mean and five-row rank/moment repairs are applied to the recomputed defects;
- the complete final nonlinear residual, not merely a projected residual, lies in the improved class.

Downstream dependency: A4 requires a uniform repeatable positive gain at every iteration.

### A4 — infinite iteration and all-jet flatness

Primary paper target: Proposition 9.9 and the passage to the final presingular field.

Material obligations:

- every derivative-order correction series converges in a sufficient topology;
- differentiation and limiting operations are legitimate;
- supports/cutoffs remain compatible with the limiting field;
- the complete residual becomes flat to all orders at the singular point;
- the correction tail does not erase the intended blowup.

Downstream dependency: smooth extension of the residual to the globally smooth compactly supported force and final Theorem 1.1.

## 4. Pinned Lean dependency clusters

The names below are navigation anchors, not substitutes for the paper's mathematical statements.

### A1 cluster

High-value files include:

```text
NavierStokes/PrimaryGeometryAssembly.lean
NavierStokes/PrimaryTargetBounds.lean
NavierStokes/PrimaryCopyBounds.lean
NavierStokes/ConstructedSlowBase.lean
NavierStokes/AssembledSlowBase.lean
NavierStokes/BaseWitnessClosure.lean
NavierStokes/ActualPrimaryCovariance.lean
```

Observed structural fact: the Lean construction exposes `Prepared`/witness objects and proves existence from lower-level profile/cone/geometry data rather than importing a finished theorem as a project axiom.

### A2 cluster

High-value files include:

```text
NavierStokes/ActualSignedStageControls.lean
NavierStokes/ActualSignedControl.lean
NavierStokes/ActualSignedMeanBinding.lean
NavierStokes/SignedMeanGain.lean
NavierStokes/SignedCrossDefectClass.lean
NavierStokes/CrossBasedMeanComposition.lean
```

Observed structural fact: the actual signed coefficient is defined through the selected covariance matrix/target and the literal current request. The finite pre-tail covariance defect is retained explicitly; only an actual proved tail identity makes it vanish on sufficiently high bands.

### A3 cluster

High-value files include:

```text
NavierStokes/CorrectionStep.lean
NavierStokes/CorrectionAnalyticStep.lean
NavierStokes/ActualParticularCycleData.lean
NavierStokes/ActualCyclePreservation.lean
NavierStokes/ActualIterationLedger.lean
NavierStokes/ExponentLedger.lean
NavierStokes/FiveRowRank.lean
NavierStokes/MeanRankUpdate.lean
NavierStokes/SignedMeanGain.lean
NavierStokes/SignedCrossDefectClass.lean
NavierStokes/CrossBasedMeanComposition.lean
```

Observed structural facts:

- `ExponentLedger.lean` explicitly describes itself as arithmetic conditional on the analytic estimates; it is not the PDE proof.
- `CorrectionStep.lean` performs exact field bookkeeping for the differentiated nonlinear residual and retains old/new cross terms.
- `CorrectionAnalyticStep.step` derives a new `CycleAnalyticInvariant` at `sigma + 1/10` from the actual particular/signed wave data, mean corrections, rank repair, pressure reconstruction, and residual recomputation.
- `ActualCyclePreservation.state_runInvariant` constructs the repeatable actual run by induction; preservation is not supplied as an oracle.
- `FiveRowRank.lean` constructs the five-row moment inverse from localized moment repair with distinct powers for positive `lambda`; it does not assume nonsingularity/preimages.

### A4 cluster

High-value files to audit in Phase 4 include the actual finite-stage bounds, physical prefixes, candidate assembly, diagonal/limit construction, flat residual and force-extension files. Exact final cluster will be frozen before A4 adjudication rather than inferred here from names alone.

## 5. Cross-node dependency direction

```text
A1_LEADING_PROFILE
    -> fixed primary geometry / target / cone data
    -> A2_OSCILLATORY_STRESS_REALIZATION
    -> actual particular + signed wave inputs
    -> A3_RESIDUAL_IMPROVEMENT_CYCLE
    -> repeatable sigma -> sigma+1/10 gain
    -> A4_INFINITE_ITERATION_AND_FLATNESS
    -> smooth residual extension / final forced blowup theorem
```

Failure of a downstream node does not retroactively falsify an upstream node. Failure of A1 may invalidate the concrete inputs to A2–A4; failure of A2 may invalidate A3's concrete wave data; failure of A3 blocks the iterative gain required by A4.

## 6. Global parameter ledger — initial partition

The complete joint-feasibility adjudication is deferred to preregistered Phase 5, but the following roles are already distinguished:

```text
FIXED_SMALL_DERIVATIVE_LOSS = kappa_s = 1/100000
ITERATION_ACCURACY = sigma_j = 1/5 + j/10
WAVE_RESIDUAL_EXPONENT = B_j = 1/2 + sigma_j
MEAN_DEFECT_EXPONENT = C*_j = 1 + sigma_j
CYCLE_GAIN = 1/10
FIVE_ROW_POWER_PARAMETER = lambda > 0, fixed by the prepared profile
```

The A3 audit must not infer global feasibility merely from the numerical closure of these displayed exponents.

## 7. Phase-0 disposition

```text
PHASE_0 = COMPLETE
INPUT_IDENTITIES_BOUND = YES
NODE_MAP_FROZEN = YES
A3_FIRST = YES
SCIENTIFIC_VERDICT_ISSUED = NO
FCP_K9_EFFECT = NONE
FRAMEWORK_EFFECT = NONE
K1_K10_EFFECT = NONE
E1_E5_EFFECT = NONE
RECURRENCE_EFFECT = NONE
EMPIRICAL_EFFECT = NONE
CURRENT_STATE_MUTATION = NONE
```

The next admissible action under the preregistration is Phase 1: A3 one-full-residual-improvement-cycle falsification.
