# FCP-19 — Asymptotic Safety K1–K10 Baseline

**Version:** 0.1.0  
**Framework:** `FW-AS`  
**Status:** FRAMEWORK-INTERNAL BASELINE CANDIDATE  
**Exact parent:** `2d7473be495af1b210ee41de22101963f388c0c5`

## 0. Reading rule

This document populates the frozen FCP K1–K10 coordinates for `FW-AS` only. It assigns **no cross-framework E1–E5 relation, no convergence credit, no score, and no winner**.

Source IDs are defined by `FCP19_AS_SOURCE_INTAKE_0_1_0.md`.

Evidence ladder:

- `AS-L0` framework hypothesis/definition;
- `AS-L1` exact/formal RG structure;
- `AS-L2` truncation/model result;
- `AS-L3` multi-truncation/robustness evidence;
- `AS-L4` physical trajectory/IR/realization bridge;
- `AS-L5` framework-level empirical discriminator.

## K1 — Fundamental carrier / state-space structure

### Source-bound candidate

`FW-AS` is most cleanly represented at framework level by a theory space of effective actions/couplings and RG trajectories, not by one privileged quantum-mechanical state space.

The effective-average-action implementation uses a scale-dependent functional `Γ_k` over fields/backgrounds; a point in theory space, the field configuration on which an action is evaluated, an RG trajectory, and a physical quantum state are distinct objects.

### Sources

`SRC-FCP19-AS-WEINBERG-1979`, `SRC-FCP19-AS-REUTER-1998`, `SRC-FCP19-AS-NR-2006`, `SRC-FCP19-AS-PR-2024`.

### Scope/status

- layers: `AS-H`, `AS-RG`;
- status: `SOURCE_DERIVED_WITH_IMPLEMENTATION_DEPENDENCE`;
- strongest evidence: `AS-L1` for formal theory-space/flow structure;
- genericity warning: theory spaces and effective actions are generic RG/QFT machinery;
- physical bridge: incomplete at framework-wide scope;
- empirical status: none at K1 level.

### Burden

Do not identify theory-space points, metric configurations, effective actions, RG trajectories and physical quantum states without an explicit source-qualified map.

### Downgrade witness

The same functional-RG carrier machinery can be used in non-gravitational systems; its existence alone is not AS-specific foundational evidence.

## K2 — Redundancy / equivalence

### Source-bound candidate

The corpus distinguishes several non-identical dependences:

- diffeomorphism/gauge redundancy;
- background versus fluctuation dependence;
- regulator/scheme dependence;
- field-parametrization dependence;
- possible field redefinitions;
- physical equivalence/universality.

### Sources

`SRC-FCP19-AS-REUTER-1998`, `SRC-FCP19-AS-LR-2002`, `SRC-FCP19-AS-DBOPT-2018`, `SRC-FCP19-AS-PR-2024`.

### Scope/status

- layers: `AS-RG`, `AS-ROBUST`;
- status: `PARTIALLY_CONTROLLED_OPEN`;
- strongest evidence: `AS-L3` for studied robustness classes;
- genericity warning: gauge/scheme questions are not AS-specific;
- physical bridge: exact physical equivalence across all implementations is not source-bound.

### Main result

Scheme studies support stability of some universal quantities, but field-parametrization studies can produce materially different fixed-point/relevant-direction structures in background truncations.

### Permanent control

`TECHNICAL_SCHEME_VARIATION != GAUGE_REDUNDANCY != PHYSICAL_EQUIVALENCE`.

## K3 — Allowed transformations / evolution law

### Source-bound candidate

The native transformation structure is RG/coarse-graining flow in theory space, expressed formally through beta functions and functional flow equations.

### Sources

`SRC-FCP19-AS-REUTER-1998`, `SRC-FCP19-AS-LR-2002`, `SRC-FCP19-AS-CPR-2009`, `SRC-FCP19-AS-NR-2006`.

### Scope/status

- layers: `AS-RG`;
- status: `MATURE_FORMAL_RG_STRUCTURE`;
- strongest evidence: `AS-L1`;
- optionality: implementations/regulators/truncations vary;
- physical bridge: RG scale is not physical time.

### Permanent control

> **RG FLOW != PHYSICAL TIME EVOLUTION.**

## K4 — Dynamics / history selector

### Source-bound candidate

Asymptotic safety constrains the scale dependence and admissible UV completion of effective actions. Once a trajectory/effective action is selected and physical signature/boundary conditions are specified, equations of motion or correlation functions can encode spacetime dynamics.

The RG flow itself is not a unique spacetime-history selector.

### Sources

`SRC-FCP19-AS-NR-2006`, `SRC-FCP19-AS-GRS-2019`, `SRC-FCP19-AS-PR-2024`, `SRC-FCP19-AS-SW-2025`.

### Scope/status

- layers: `AS-H`, `AS-PHYS`;
- status: `CONDITIONAL_PHYSICAL_DYNAMICS_AFTER_TRAJECTORY_SELECTION`;
- strongest evidence: `AS-L4` in bounded trajectory/realization studies;
- genericity warning: deriving dynamics from an effective action is generic QFT machinery;
- physical bridge: partial, not universal;
- empirical status: no framework-wide K4 discriminator.

### Main burden

Select a physically relevant RG trajectory, obtain the appropriate Lorentzian effective action/correlation functions, fix boundary/initial data and calibrate parameters.

### Permanent control

`RG_FLOW_IS_NOT_AUTOMATICALLY_K4_DYNAMICS`.

## K5 — Observables / measurement

### Source-bound candidate

The corpus contains correlation functions, effective couplings and low-energy quantities derived along selected flows, and modern work on momentum-dependent vertices/spectral properties. These are not one complete framework-wide observable algebra or detector map.

### Sources

`SRC-FCP19-AS-PR-2024`, `SRC-FCP19-AS-EICHHORN-2026`, `SRC-FCP19-AS-GRS-2019`, `SRC-FCP19-AS-PLATANIA-2024`.

### Scope/status

- layers: `AS-PHYS`, `AS-PHEN`;
- status: `PARTIAL_REALIZATION`;
- strongest evidence: `AS-L4`;
- genericity warning: running couplings and gauge-dependent intermediate quantities are not automatically observables;
- empirical status: no unavoidable base-framework observable discriminator identified.

### Permanent control

`RUNNING_COUPLING_OR_CRITICAL_EXPONENT != EMPIRICAL_OBSERVABLE_WITHOUT_PHYSICAL_BRIDGE`.

## K6 — Locality / causal structure

### Source-bound candidate

Most historical fixed-point calculations are Euclidean and use local or quasi-local effective-action truncations. The corpus also contains foliated and Lorentzian FRG constructions with fixed-point evidence in controlled truncations.

### Sources

`SRC-FCP19-AS-MRS-2011`, `SRC-FCP19-AS-SW-2025`, `SRC-FCP19-AS-PR-2024`, `SRC-FCP19-AS-CRIT-2020`.

### Scope/status

- layers: `AS-RG`, `AS-PHYS`;
- status: `LORRENTZIAN_PROGRESS_WITH_OPEN_COMPLETION`;
- strongest evidence: `AS-L3` to `AS-L4` for signature-specific constructions;
- physical bridge: incomplete framework-wide causality/unitarity realization;
- empirical status: none.

### Main result

Lorentzian work materially narrows the old Euclidean-signature gap, but the bounded corpus does not establish completed Lorentzian quantum gravity, exact microcausality, or a full nonperturbative unitarity theorem.

### Permanent control

`EUCLIDEAN_FIXED_POINT_EVIDENCE != COMPLETED_LORENTZIAN_QUANTUM_GRAVITY`.

## K7 — Scale / coarse-graining / RG structure

### Source-bound candidate

This is the strongest native FCP key for `FW-AS`.

The source-bound structure includes:

- RG scale `k`;
- beta functions;
- Gaussian/non-Gaussian fixed points;
- critical exponents;
- relevant and irrelevant directions;
- UV critical surface;
- trajectory selection;
- regulator/scheme/parametrization robustness questions;
- continuum-limit interpretation through fixed-point control.

### Sources

`SRC-FCP19-AS-WEINBERG-1979`, `SRC-FCP19-AS-REUTER-1998`, `SRC-FCP19-AS-LR-2002`, `SRC-FCP19-AS-CPR-2009`, `SRC-FCP19-AS-FLNR-2016`, `SRC-FCP19-AS-FKLR-2018`, `SRC-FCP19-AS-DBOPT-2018`.

### Scope/status

- layers: `AS-H`, `AS-RG`, `AS-TRUNC`, `AS-ROBUST`;
- status: `CENTRAL_SOURCE_BOUND_STRUCTURE_WITH_APPROXIMATION_CEILING`;
- strongest evidence: `AS-L3` for the gravitational fixed-point picture;
- genericity warning: RG mathematics itself is generic; AS-specific credit attaches to the gravitational interacting fixed-point/critical-surface hypothesis and evidence;
- physical bridge: continuum/trajectory interpretation is conditional on complete-theory persistence.

### Main result

Across the bounded Euclidean pure-gravity corpus, interacting fixed points recur through increasingly large truncations and operator bases. The exact complete-theory fixed point and exact critical-surface dimension are not source-bound as theorems.

## K8 — Local-to-global / globalization / continuum completion

### Source-bound candidate

The natural AS analogue is reconstruction of a complete UV-to-IR RG trajectory/continuum theory from local scale dependence and fixed-point boundary conditions.

### Sources

`SRC-FCP19-AS-NR-2006`, `SRC-FCP19-AS-GRS-2019`, `SRC-FCP19-AS-PR-2024`, `SRC-FCP19-AS-CRIT-2020`.

### Scope/status

- layers: `AS-H`, `AS-PHYS`;
- status: `CONDITIONAL_GLOBAL_TRAJECTORY_PROGRAM`;
- strongest evidence: `AS-L4` for selected UV–IR trajectories;
- genericity warning: continuum limits and RG trajectories are widespread in QFT;
- physical bridge: complete realistic trajectory remains open.

### Permanent control

`FIXED_POINT_EXISTENCE != COMPLETE_GLOBAL_UV_TO_IR_PHYSICAL_TRAJECTORY`.

## K9 — Physical realization / calibration

### Source-bound candidate

The corpus contains selected trajectories approaching classical/GR-like regimes, Lorentzian developments, matter compatibility studies and phenomenological constructions. Calibration still uses observed low-energy parameters and model/trajectory choices.

### Sources

`SRC-FCP19-AS-GRS-2019`, `SRC-FCP19-AS-PR-2024`, `SRC-FCP19-AS-SW-2025`, `SRC-FCP19-AS-DEP-2014`, `SRC-FCP19-AS-MPR-2016`, `SRC-FCP19-AS-EICHHORN-2026`.

### Scope/status

- layers: `AS-PHYS`, `AS-MATTER`;
- status: `PARTIAL_CONDITIONAL_REALIZATION`;
- strongest evidence: `AS-L4`;
- genericity warning: recovering a low-energy effective action is not unique empirical selection;
- physical bridge: nonempty but incomplete;
- empirical status: calibration/prediction separation remains model dependent.

### Main burdens

- exact physical UV fixed point and trajectory;
- Lorentzian completion;
- physical observable extraction;
- realistic gravity–matter trajectory;
- parameter prediction versus fitting;
- full low-energy calibration.

## K10 — Empirical discriminator

### Source-bound candidate

The corpus contains particle, cosmological and black-hole phenomenology proposals, matter restrictions in specific approximations, and possible observational pathways. No bound source establishes an unavoidable base-`FW-AS` prediction with a complete detector-level decision rule that distinguishes the framework from viable alternatives.

### Sources

`SRC-FCP19-AS-EICHHORN-2026`, `SRC-FCP19-AS-GRS-2019`, `SRC-FCP19-AS-PLATANIA-2024`, `SRC-FCP19-AS-DEP-2014`, `SRC-FCP19-AS-MPR-2016`.

### Scope/status

- layers: `AS-PHEN`, `AS-MATTER`, `AS-PHYS`;
- status: `NO_CURRENT_BASE_FRAMEWORK_DISCRIMINATOR`;
- strongest evidence: `AS-L4`; `AS-L5 = NONE`;
- empirical status: model/trajectory-specific, optional, constrained, or inherited rather than compulsory framework selection.

### Permanent controls

> **THEORETICAL_PREDICTIVITY != EMPIRICAL_DISCRIMINATOR.**

> **OPTIONAL_PHENOMENOLOGY != BASE_FRAMEWORK_PREDICTION.**

## 11. Predictivity ledger

FCP-19 separates four distinct claims:

1. **Logical implication:** if the physical UV critical surface is finite-dimensional, only finitely many relevant parameters must be fixed to specify a UV-complete trajectory. `SOURCE_BOUND` at `AS-L0/L1`.
2. **Existence evidence:** many gravitational truncations exhibit a non-Gaussian fixed point with a small number of relevant directions. `SUPPORTED_AT_AS-L2/L3`.
3. **Exact physical dimension:** the complete gravity/matter theory has a source-qualified, exact finite critical-surface dimension. `OPEN`.
4. **Numerical prediction:** the finite relevant data have been mapped to a complete set of successful, unavoidable numerical predictions. `OPEN` at base-framework scope.

`FINITE_RELEVANT_DIRECTIONS_IN_A_TRUNCATION != COMPLETE_PREDICTIVITY_THEOREM`.

## 12. Baseline summary

| Key | FCP-19 bounded status | Strongest AS-L |
|---|---|---:|
| K1 | theory-space/effective-action carrier; implementation dependent | L1 |
| K2 | redundancy/scheme/parametrization distinctions partially controlled | L3 |
| K3 | mature formal RG/coarse-graining transformation structure | L1 |
| K4 | physical dynamics conditional after trajectory/effective-action selection | L4 |
| K5 | partial correlation-function/observable realization | L4 |
| K6 | substantial Lorentzian progress; full causal/unitary completion open | L4 |
| K7 | central fixed-point/RG/critical-surface structure; approximation ceiling remains | L3 |
| K8 | conditional continuum/global UV-to-IR trajectory program | L4 |
| K9 | partial physical/IR/matter realization and calibration | L4 |
| K10 | no unavoidable framework-level empirical discriminator | NONE at L5 |

## 13. Baseline verdict

`FW-AS` supplies a source-specific and unusually strong K7 scale/RG structure, but this does not automatically discharge K4 physical dynamics, K9 realization, or K10 empirical selection. The source-bound object is sufficiently coherent for a later null/GR subtraction phase.

`CROSS_FRAMEWORK_E1_E5_ASSIGNMENTS = 0`.

`KEY_EXTENSION_CANDIDATE = 0`.

`OVERALL_FRAMEWORK_SCORE = NONE`.

`WINNER = NONE`.