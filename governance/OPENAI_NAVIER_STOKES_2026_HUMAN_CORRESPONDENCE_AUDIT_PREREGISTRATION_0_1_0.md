# OpenAI Navier–Stokes 2026 Human Correspondence and Analytic-Risk Audit — Preregistration 0.1.0

```text
OPERATION = OPENAI_NAVIER_STOKES_2026_HUMAN_CORRESPONDENCE_AUDIT
STATUS = PREREGISTERED
DATE = 2026-09-10
BASELINE_MAIN = 23cd1e5840816919c3db3244af48bb8e558e85d3
PRIOR_FORMAL_REPRODUCIBILITY = PASS
PRIOR_CI_RUN = 34532064891
OPENAI_COMMIT = f9e8bc5b38b6e212696e8a30e3e91517af887bbd
OPENAI_TREE = a503f07635f200c0f2f9c5361df1fa07f95c4741
```

## Purpose

The prior bounded audit established independent formal reproducibility of the pinned Lean certificate. This operation asks a different question: whether the formalized target, the decisive proof adapters, and the paper's analytically substantive endgame correspond faithfully enough that no material statement-level or bridge-level mismatch is visible under a focused human audit.

This operation is not a claim to have independently re-proved all 166 pages. It is a targeted adversarial correspondence audit of the highest-risk bridges between the paper, the official Clay/Fefferman alternatives, and the pinned Lean implementation.

## Frozen evidence universe

1. OpenAI, *Finite Time Blowup for Navier–Stokes*, released 2026-09-08.
2. `openai/NavierStokesAndEuler` at exact commit/tree above.
3. Charles L. Fefferman, official Clay Millennium problem statement, including its appended errata.
4. Existing FCP OpenAI Navier–Stokes source-intake and reproducibility records already canonical on the baseline.

No community-consensus survey, priority adjudication, competing-proof comparison, or prize-eligibility determination is authorized here.

## Audit lanes

### H1 — Clay-target correspondence

Check whether the Lean comparator target is sufficient for alternatives (C) and (D), including:

- arbitrary fixed positive viscosity;
- smooth divergence-free initial datum satisfying the required spatial decay / periodicity;
- smooth externally applied force satisfying the required decay / periodicity;
- exact incompressible Navier–Stokes PDE;
- global smoothness class;
- uniform kinetic-energy condition for (C);
- velocity and pressure periodicity for (D), including the Clay erratum.

Any strengthening of the target is acceptable only if the constructed witnesses actually satisfy it and the strengthening does not weaken the negative conclusion relative to Clay.

### H2 — Differential-operator semantics

Audit the Lean definitions of:

- temporal derivative;
- spatial Fréchet derivative;
- advection;
- spatial divergence;
- pressure gradient;
- componentwise spatial Laplacian;
- residual sign convention;
- pointwise speed-unboundedness.

The smoothness hypotheses must eliminate any `fderiv` junk-value risk on every point where the PDE is used.

### H3 — Force and support bridge

Check that the construction really reaches a globally smooth force with compact spacetime support contained in strictly positive time, and that this implies Fefferman's force-decay hypothesis. Track the zero-initial-time cutoff and the extension across the singular time.

### H4 — Energy and exclusion bridge

Check that:

- the constructed field has one finite kinetic-energy bound on `0 ≤ t < 1`;
- the comparator's `MemLp`/integral formulation does not accidentally narrow the competitor class beyond Fefferman's bounded-energy condition in a way that invalidates the implication;
- the comparison theorem excludes every global smooth bounded-energy competitor with the same force and zero datum;
- pressure growth is not silently assumed.

### H5 — Blowup bridge

Check that the paper's explicit divergent-velocity path implies the Lean `SpeedUnboundedAtOne` target and, with compact support / spatial continuity, the claimed `L∞` blowup statement.

### H6 — viscosity scaling

Check the spatial rescaling from viscosity one to arbitrary `ν > 0`, including the PDE factors, support, energy scaling, and preservation of singular time one.

### H7 — periodicization bridge

Check the R³-to-torus construction:

- compression into a fundamental cube;
- disjoint translated supports;
- preservation of the nonlinear term;
- smooth unit-periodic velocity, pressure, and force;
- time decay/compact future support;
- transfer of unbounded speed;
- exclusion of a global smooth periodic competitor.

### H8 — formal trust boundary

Reconfirm that challenge `sorry`s are not imported as proof premises, that no project-defined axiom or executable solution-side proof hole is used, and that the prior kernel replay remains the controlling formal-execution evidence.

## Verdict vocabulary

```text
NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND
MATERIAL_CORRESPONDENCE_DEFECT_FOUND
UNRESOLVED_ANALYTIC_RISK
OUT_OF_SCOPE_FOR_TARGETED_AUDIT
```

The overall operation may return a mixed verdict. `NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND` does not mean `FULL_INDEPENDENT_HUMAN_PROOF_VERIFICATION`.

## Epistemic ceiling

Even a clean result authorizes at most:

```text
TARGET_AND_ENDGAME_CORRESPONDENCE = SUPPORTED_BY_TARGETED_HUMAN_AUDIT
FULL_166_PAGE_INDEPENDENT_HUMAN_PROOF_REDERIVATION = NO
GLOBAL_MATHEMATICAL_CONSENSUS = NOT_ESTABLISHED
CLAY_RECOGNITION = NOT_ESTABLISHED
```

## FCP isolation

This audit may not:

- alter the active closed K9 corpus;
- admit a framework;
- change K1–K10;
- assign E1–E5 convergence credit;
- change recurrence;
- create empirical credit;
- infer physical canonicity;
- infer unforced 3D Navier–Stokes blowup;
- open or sequence FCP-27.

## Deliverables

1. this preregistration;
2. a correspondence matrix / analytic-risk audit;
3. a bounded handoff with explicit unresolved risks, if any.
