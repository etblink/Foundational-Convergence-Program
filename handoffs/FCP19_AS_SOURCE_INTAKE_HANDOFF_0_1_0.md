# FCP-19 — Asymptotic Safety Source-Intake Handoff

**Version:** 0.1.0  
**Status:** HANDOFF CANDIDATE  
**Framework:** `FW-AS`  
**Branch:** `research/fcp-19-asymptotic-safety-source-intake`  
**Exact parent:** `2d7473be495af1b210ee41de22101963f388c0c5`  
**Parent tree:** `2dace4f8a3b5ffb38efdc0b98a4dc2208004b4d3`

> Candidate commit/tree identifiers are reported by the external qualification record because an immutable artifact cannot self-contain the commit that contains itself.

## 0. Scope

FCP-19 source-binds the previously admitted but unaudited Asymptotic Safety family, populates K1–K10 internally, audits fixed-point/truncation/robustness evidence, preserves optional phenomenology boundaries, and performs no cross-framework E1–E5 comparison.

## 1. Controlling verdict

> **FCP-19 BINDS `FW-AS` AS ONE COHERENT ASYMPTOTIC-SAFETY FRAMEWORK CENTERED ON THE HYPOTHESIS THAT A PHYSICALLY APPROPRIATE INTERACTING UV RG FIXED POINT WITH A FINITE-DIMENSIONAL UV CRITICAL SURFACE PROVIDES A CONTINUUM QUANTUM-GRAVITY COMPLETION. THE FINAL 18-SOURCE CORPUS CONTAINS BROAD MULTI-TRUNCATION EUCLIDEAN PURE-GRAVITY FIXED-POINT EVIDENCE, NONTRIVIAL ROBUSTNESS TESTS, SUBSTANTIVE GRAVITY–MATTER RESULTS, AND INCREASING LORENTZIAN AND UV–IR REALIZATION WORK. THIS SUPPORTS `AS-L3` MULTI-TRUNCATION/ROBUSTNESS STATUS FOR THE GRAVITATIONAL FIXED-POINT PICTURE, BUT DOES NOT SOURCE-QUALIFY AN EXACT COMPLETE-THEORY FIXED-POINT THEOREM, AN EXACT PHYSICAL CRITICAL-SURFACE DIMENSION, COMPLETE REGULATOR/GAUGE/PARAMETRIZATION INDEPENDENCE, COMPLETED LORENTZIAN UNITARY QUANTUM GRAVITY, A UNIQUE REALISTIC GRAVITY–MATTER TRAJECTORY, OR AN UNAVOIDABLE FRAMEWORK-LEVEL EMPIRICAL DISCRIMINATOR. `FW-AS` IS THEREFORE `SOURCE_BOUND_READY`, WITH NO FRAMEWORK SPLIT AND NO CROSS-FRAMEWORK CONVERGENCE CREDIT ASSIGNED.**

## 2. Source corpus

- `CANDIDATE_SOURCES_REVIEWED = 27`
- `FINAL_SOURCES_BOUND = 18`
- `FOUNDATIONAL_PRIMARY_COUNT = 12`
- `REVIEW_SYNTHESIS_COUNT = 6`
- `DIRECT_EMPIRICAL_SOURCE_COUNT = 0`
- `PHENOMENOLOGY_BOUNDARY_COUNT = 2`

Final IDs:

1. `SRC-FCP19-AS-WEINBERG-1979`
2. `SRC-FCP19-AS-REUTER-1998`
3. `SRC-FCP19-AS-SOUMA-1999`
4. `SRC-FCP19-AS-LR-2002`
5. `SRC-FCP19-AS-CPR-2009`
6. `SRC-FCP19-AS-FLNR-2016`
7. `SRC-FCP19-AS-FKLR-2018`
8. `SRC-FCP19-AS-DBOPT-2018`
9. `SRC-FCP19-AS-MRS-2011`
10. `SRC-FCP19-AS-SW-2025`
11. `SRC-FCP19-AS-DEP-2014`
12. `SRC-FCP19-AS-MPR-2016`
13. `SRC-FCP19-AS-NR-2006`
14. `SRC-FCP19-AS-CRIT-2020`
15. `SRC-FCP19-AS-PR-2024`
16. `SRC-FCP19-AS-EICHHORN-2026`
17. `SRC-FCP19-AS-GRS-2019`
18. `SRC-FCP19-AS-PLATANIA-2024`

## 3. Taxonomy

`FCP19_AS_TAXONOMY = OUTCOME_A_ONE_FRAMEWORK`.

`IS_ASYMPTOTIC_SAFETY_ONE_SOURCE_BOUND_FRAMEWORK_AT_FCP_SCOPE = YES`.

`FRAMEWORK_SPLIT_CANDIDATE = 0`.

Bookkeeping layers retained:

- `AS-H`
- `AS-RG`
- `AS-TRUNC`
- `AS-ROBUST`
- `AS-MATTER`
- `AS-PHYS`
- `AS-PHEN`

These do not become framework IDs or subframeworks.

## 4. Hypothesis / implementation firewall

`AS-H` is the UV fixed-point/finite-critical-surface framework hypothesis.

`AS-RG` is a calculational/formal implementation family, predominantly effective-average-action / functional-RG machinery in the bounded corpus.

`AS-TRUNC` contains finite/truncated projected calculations.

A fixed point found with `AS-RG` in `AS-TRUNC` is evidence for `AS-H`; it is not definitionally identical to `AS-H` and is not automatically exact.

Permanent control:

> **ASYMPTOTIC-SAFETY HYPOTHESIS != FUNCTIONAL-RG IMPLEMENTATION.**

## 5. K1–K10 baseline

### K1 — carrier/state structure

Theory space of effective actions/couplings and RG trajectories is the clean framework-level carrier. Metric configurations, effective actions, points in theory space, RG trajectories and physical states remain distinct.

Status: `SOURCE_DERIVED_WITH_IMPLEMENTATION_DEPENDENCE`; strongest `AS-L1`.

### K2 — redundancy/equivalence

Gauge/diffeomorphism redundancy, background/fluctuation dependence, regulator/scheme dependence, field parametrization and physical equivalence are distinct.

Status: `PARTIALLY_CONTROLLED_OPEN`; strongest `AS-L3`.

### K3 — transformations

RG/coarse-graining transformation structure is mature and source-bound.

Status: `MATURE_FORMAL_RG_STRUCTURE`; strongest `AS-L1`.

### K4 — physical dynamics

RG flow is scale evolution, not physical time. Physical dynamics is obtained conditionally from a selected effective action/trajectory plus Lorentzian and physical data.

Status: `CONDITIONAL_PHYSICAL_DYNAMICS_AFTER_TRAJECTORY_SELECTION`; strongest `AS-L4`.

### K5 — observables

Correlation functions, vertices, spectral properties and selected low-energy observables are nonempty; no complete framework-wide observable/detector map is source-bound.

Status: `PARTIAL_REALIZATION`; strongest `AS-L4`.

### K6 — locality/causality

The corpus is historically Euclidean but contains substantive Lorentzian fixed-point/signature-robustness work. Full causal/unitary completion remains open.

Status: `LORENTZIAN_PROGRESS_WITH_OPEN_COMPLETION`; strongest `AS-L4`.

### K7 — scale/RG

Central native structure: beta functions, fixed points, critical exponents, relevant/irrelevant directions, UV critical surface, trajectory selection and robustness questions.

Status: `CENTRAL_SOURCE_BOUND_STRUCTURE_WITH_APPROXIMATION_CEILING`; strongest `AS-L3`.

### K8 — globalization/continuum

Fixed-point control plus UV–IR RG trajectories provides a conditional continuum/globalization program. Complete realistic trajectory is not source-bound.

Status: `CONDITIONAL_GLOBAL_TRAJECTORY_PROGRAM`; strongest `AS-L4`.

### K9 — realization/calibration

Selected trajectories, matter systems and Lorentzian developments provide partial bridges. Complete realistic physical realization and parameter prediction/calibration remain open.

Status: `PARTIAL_CONDITIONAL_REALIZATION`; strongest `AS-L4`.

### K10 — empirical discriminator

Phenomenology exists, but the bounded corpus contains no unavoidable base-framework prediction satisfying a detector-level framework discriminator burden.

Status: `NO_CURRENT_BASE_FRAMEWORK_DISCRIMINATOR`; `AS-L5 = NONE`.

## 6. Strongest fixed-point evidence

`FCP19_STRONGEST_FIXED_POINT_EVIDENCE = AS-L3_MULTI_TRUNCATION_ROBUSTNESS`.

Reasons:

- fixed points recur beyond Einstein-Hilbert truncation;
- high-order `f(R)` calculations show substantial convergence evidence;
- Ricci-tensor extensions retain the picture;
- regulator/scheme robustness has been studied;
- modern dynamical and Lorentzian work adds implementation diversity.

Ceiling:

`COMPLETE_THEORY_FIXED_POINT_THEOREM = NO`.

## 7. Relevant directions / predictivity

The logical finite-critical-surface -> finitely many free relevant parameters statement is source-bound.

A small number of relevant directions repeatedly appears in finite calculations.

However field parametrization can change the apparent count, gravity–matter/background/dynamical settings alter fixed-point structure, and complete theory space is not exhausted.

Therefore:

`EXACT_PHYSICAL_CRITICAL_SURFACE_DIMENSION = OPEN`.

`COMPLETE_PREDICTIVITY_THEOREM = OPEN`.

## 8. Regulator/gauge/parametrization

- regulator/scheme robustness: `PARTIALLY_CONTROLLED`;
- gauge/background-fluctuation control: `PARTIALLY_CONTROLLED_OPEN`;
- parametrization dependence: `MATERIAL_APPROXIMATION_DEPENDENCE` in retained `f(R)` evidence;
- exact complete physical independence: `OPEN`.

## 9. Continuum / Lorentzian / unitarity

Continuum interpretation through a fixed point is built into the AS mechanism, and selected global/UV–IR trajectories exist.

Lorentzian fixed-point evidence is nonempty and materially stronger than an exclusively Euclidean program description would imply.

Nevertheless:

- complete realistic global trajectory: open;
- complete Lorentzian theory-space control: open;
- full nonperturbative unitarity: open;
- complete causal observable theory: open.

## 10. Gravity–matter

The corpus deliberately retains a tension:

- DEP-2014 finds restrictive matter-content bounds in its approximation;
- MPR-2016 finds broad UV stability in a dynamical setup within validity bounds.

FCP-19 does not choose by source count.

Bounded result:

`GRAVITY_MATTER_EVIDENCE = SUBSTANTIAL_BUT_IMPLEMENTATION_DEPENDENT`.

`STANDARD_MODEL_COMPATIBILITY != STANDARD_MODEL_DERIVATION`.

## 11. IR/GR realization

Selected trajectories can reach classical/GR-like regimes and low-energy scales. These results are source-bound as partial physical realization.

Observed low-energy parameters used to select or calibrate trajectories remain inputs where applicable.

Status: `AS-L4_PARTIAL_CONDITIONAL`.

No AS/null convergence class is assigned here.

## 12. Empirical / phenomenology boundary

- direct empirical source records: 0;
- phenomenology boundary records: 2;
- black-hole, cosmology and particle/matter programs: nonempty;
- unavoidable framework-level discriminator: none source-bound.

`FCP19_AS_K10 = NO_CURRENT_BASE_FRAMEWORK_DISCRIMINATOR`.

## 13. Countermodel outcome

Fourteen nonforcing witnesses defeat the principal overclaims while preserving substantive AS evidence.

They block inference from:

- truncation fixed point -> complete theory;
- robustness -> exact independence;
- RG flow -> physical time;
- fixed point -> complete IR realization;
- Euclidean evidence -> completed Lorentzian QG;
- matter compatibility -> Standard Model derivation;
- GR recovery -> independent AS empirical evidence;
- RG-improved black holes -> compulsory base solutions;
- phenomenology program -> framework-level discriminator.

`COUNTERMODELS_DEFEAT_OVERCLAIMS_WITHOUT_REFUTING_FW_AS = YES`.

## 14. Permanent anti-smuggling controls

> **ASYMPTOTIC-SAFETY HYPOTHESIS != FUNCTIONAL-RG IMPLEMENTATION.**

> **RG FLOW != PHYSICAL TIME EVOLUTION.**

> **FIXED POINT IN A TRUNCATION != FIXED POINT OF THE COMPLETE THEORY.**

> **TRUNCATION STABILITY != EXACT THEORY-SPACE CONTROL.**

> **REGULATOR ROBUSTNESS != PROVED REGULATOR INDEPENDENCE.**

> **GAUGE/PARAMETRIZATION STABILITY != COMPLETE PHYSICAL GAUGE INDEPENDENCE.**

> **FINITE RELEVANT DIRECTIONS IN A TRUNCATION != COMPLETE PREDICTIVITY THEOREM.**

> **EUCLIDEAN FIXED-POINT EVIDENCE != COMPLETED LORENTZIAN QUANTUM GRAVITY.**

> **UV COMPLETION != IR GENERAL RELATIVITY RECOVERY.**

> **IR GR RECOVERY != INDEPENDENT EMPIRICAL SELECTION OF ASYMPTOTIC SAFETY.**

> **MATTER COMPATIBILITY != STANDARD MODEL DERIVATION.**

> **CRITICAL EXPONENT != EMPIRICAL OBSERVABLE WITHOUT A PHYSICAL BRIDGE.**

> **OPTIONAL COSMOLOGY/BLACK-HOLE/PARTICLE PHENOMENOLOGY != BASE-FRAMEWORK PREDICTION.**

> **QFT/RG MATHEMATICS != AS-SPECIFIC FOUNDATIONAL CREDIT.**

> **ABSENCE OF ANOTHER UV COMPLETION != POSITIVE EVIDENCE FOR ASYMPTOTIC SAFETY.**

## 15. Governance / prior-result flags

- `FRAMEWORK_SPLIT_CANDIDATE = 0`
- `KEY_EXTENSION_CANDIDATE = 0`
- `PRIOR_RESULT_REMEDIATION_CANDIDATE = 0`
- `GOVERNANCE_REVISION = 0`
- `CROSS_FRAMEWORK_E1_E5_ASSIGNMENTS = 0`
- `OVERALL_FRAMEWORK_SCORE = NONE`
- `WINNER = NONE`

## 16. Durable claim recommendation

FCP-19 warrants three durable claims:

1. source-bound identity/taxonomy of one coherent `FW-AS` framework;
2. `AS-L3` fixed-point evidence ceiling with exact complete-theory/critical-surface claims withheld;
3. partial Lorentzian/matter/IR realization with no unavoidable framework-level empirical discriminator.

Expected durable rows after append: **58**.

No prior durable claim requires supersession.

## 17. Evidence-driven next recommendation

Because `FW-AS` is source-bound and its conceptual object is now separated from generic RG/QFT machinery and optional phenomenology, the next task should be:

> **FCP-20 — `FW-AS` vs. Null/GR: RG-Lineage, Fixed-Point, Continuum-Recovery, and Empirical-Inheritance Control**

That phase should subtract, before any Reduced-NFC comparison:

- generic QFT/RG mathematics;
- perturbative/EFT lineage;
- classical-GR target structure;
- target-conditioned IR/GR recovery;
- observed GR/QFT success inherited through recovery;
- optional matter/cosmology/black-hole phenomenology.

FCP-20 must separately determine whether the AS-specific fixed-point/critical-surface residue remains non-generic after null/GR subtraction.

No FCP-20 work begins under FCP-19.

## 18. Stop condition

If FCP-19 qualifies:

- do not integrate FCP-17, FCP-18 or FCP-19;
- do not update README;
- do not open a PR;
- do not begin FCP-20;
- do not compare `FW-AS` with Reduced NFC;
- do not revise governance.

> **Preserve results, not theories.**