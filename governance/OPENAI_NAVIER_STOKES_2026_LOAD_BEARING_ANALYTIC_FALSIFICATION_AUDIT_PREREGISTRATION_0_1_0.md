# OpenAI Navier–Stokes 2026 Load-Bearing Analytic Falsification Audit — Preregistration 0.1.0

```text
OPERATION = OPENAI_NAVIER_STOKES_2026_LOAD_BEARING_ANALYTIC_FALSIFICATION_AUDIT
STATUS = PREREGISTERED
DATE = 2026-09-10
BASELINE_MAIN = 3833e237b4b4bd424a622f7a00df23afb5552ea9
BASELINE_TREE = d453beb6d884bedc23d2ea77f52ae4f41163099d
PRIOR_SOURCE_INTAKE = COMPLETE
PRIOR_FORMAL_REPRODUCIBILITY = PASS
PRIOR_HUMAN_CORRESPONDENCE_AUDIT = NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND
OPENAI_COMMIT = f9e8bc5b38b6e212696e8a30e3e91517af887bbd
OPENAI_TREE = a503f07635f200c0f2f9c5361df1fa07f95c4741
```

## 1. Purpose

The prior FCP operations established three narrower facts: the OpenAI paper was source-bound without framework promotion; the pinned Lean artifact independently replayed successfully under the declared kernel/axiom boundary; and a targeted human correspondence audit found no material mismatch between the Clay target, the paper's endgame, and the formalized theorem adapters.

This operation asks a harder and deliberately asymmetric question:

> Can a focused independent analytic attack expose a load-bearing mathematical defect, unresolved gap, or non-reproduced estimate in the proof's critical spine?

This is a falsification audit, not a confirmation exercise. One demonstrated load-bearing defect outweighs any number of additional successful consistency checks.

This operation is not a full 166-page independent human re-proof. It targets the smallest set of high-leverage analytic nodes such that failure of one could materially compromise the claimed theorem.

## 2. Frozen evidence universe

The audit may use only the following primary/canonical materials for substantive mathematical adjudication:

1. OpenAI, *Finite Time Blowup for Navier–Stokes*, released 2026-09-08.
2. `openai/NavierStokesAndEuler` at exact commit/tree above.
3. Charles L. Fefferman's official Clay Millennium Navier–Stokes problem statement and erratum, solely where target semantics are needed.
4. Existing canonical FCP records for the OpenAI Navier–Stokes source intake, formal reproducibility audit, source-register reconciliation, and human correspondence audit.

External commentary, media coverage, social discussion, priority disputes, or later expert reactions are not admissible evidence inside this operation unless a separate, explicitly provenance-bound external-review intake is opened. A later external objection may motivate a new docket but may not silently alter this frozen audit.

## 3. Audit strategy

The operation uses a load-bearing minimum-cut approach rather than uniform rereading. For every selected node the auditor must:

1. restate the mathematical obligation independently of the Lean theorem name;
2. identify the upstream assumptions on which it depends;
3. identify the downstream theorem steps that fail if it is false;
4. reconstruct the dominant scaling/sign/support/regularity requirements by hand;
5. search explicitly for omitted nonlinear interactions, derivative loss, parameter incompatibility, support leakage, convergence failure, or illegitimate limiting interchange;
6. compare the reconstructed obligation against the corresponding paper statement and Lean implementation;
7. attempt at least one adversarial boundary case or worst-term calculation;
8. record unresolved dependencies rather than laundering them into a PASS.

Lean kernel acceptance is admissible evidence about the formal derivation encoded in the pinned artifact, but it is not by itself sufficient to mark an analytic lane reproduced by independent human reasoning.

## 4. Frozen load-bearing nodes

### A1 — Leading-profile construction / Theorem 4.6 spine

Audit the finite-dimensional and asymptotic construction feeding the leading singular profile, including as applicable:

- finite moment solves and compatibility constraints;
- matching of inner and exterior/heat-type profiles;
- admissibility and positivity of the stress/shear data;
- parameter hierarchy and existence of a nonempty simultaneous parameter regime;
- regularity and support properties required downstream;
- absence of a hidden circular dependence between profile choice and later stress realization.

Primary falsification question:

```text
DO_ALL_DECLARED_PROFILE_CONSTRAINTS_ADMIT_ONE_COMMON_PARAMETER_CHOICE_WITH_THE_REQUIRED_REGULARITY_AND_SIGN_PROPERTIES?
```

### A2 — Oscillatory stress realization / Proposition 7.5 spine

Audit the mechanism by which oscillatory velocity pulses generate the required nonlinear momentum-flux correction, including:

- tensor/sign convention;
- averaging/covariance identity;
- divergence and incompressibility constraints;
- interactions between distinct oscillatory components;
- support and cutoff errors;
- amplitude/frequency scaling;
- whether the realized stress lies in the required admissible cone;
- whether any omitted cross term is of the same or worse order as the term being cancelled.

Primary falsification question:

```text
DO_THE_OSCILLATORY_FIELDS_REALIZE_THE_REQUIRED_SIGNED_STRESS_AFTER_ALL_NONLINEAR_CROSS_TERMS_AND_CUTOFF_ERRORS_ARE_INCLUDED?
```

### A3 — One full residual-improvement cycle / Proposition 9.6 spine

This is the highest-priority single node.

Audit one complete correction cycle from incoming residual to outgoing residual, tracking every contribution created by:

- oscillatory correction;
- signed-stress correction;
- mean-flow correction;
- pressure reconstruction;
- moment/radial corrections;
- localization and cutoff operations;
- nonlinear interactions with the background field and with other new corrections.

The auditor must construct an explicit residual-term ledger and verify that the claimed output exponent/order is genuinely improved in the declared norm/derivative class.

Primary falsification question:

```text
AFTER_RECOMPUTING_THE_FULL_NONLINEAR_RESIDUAL_DOES_EVERY_NEW_TERM_FALL_STRICTLY_WITHIN_THE_CLAIMED_IMPROVED_ERROR_CLASS?
```

A term that is merely moved between components, hidden in pressure, or controlled only under an incompatible parameter inequality counts as a material issue until resolved.

### A4 — Infinite iteration, diagonal summation, and all-jet flatness / Proposition 9.9 spine

Audit the passage from finitely improved approximants to the final presingular field, including:

- summability of corrections in every required derivative order;
- compatibility of shrinking support/cutoff scales;
- preservation of smoothness away from and up to the relevant endpoint;
- legitimate exchange of infinite summation and differentiation;
- vanishing to all orders of the final residual at the singular spacetime point;
- sufficiency of the flatness estimate for the subsequent smooth force-extension step;
- survival of the intended blowup under the infinite correction series.

Primary falsification question:

```text
DO_THE_ITERATED_CORRECTIONS_CONVERGE_IN_A_STRONG_ENOUGH_TOPOLOGY_TO_PRESERVE_BLOWUP_WHILE_MAKING_THE_COMPLETE_RESIDUAL_FLAT_TO_ALL_ORDERS?
```

## 5. Cross-node parameter-consistency gate

Even if A1–A4 each appear locally valid, the audit must separately test whether all parameter inequalities used across them have a common feasible solution.

Required artifact:

```text
GLOBAL_PARAMETER_INEQUALITY_LEDGER
```

The ledger must distinguish:

- fixed universal constants;
- freely chosen small parameters;
- freely chosen large parameters;
- quantities chosen sequentially after earlier parameters;
- inequalities depending on derivative order;
- inequalities required uniformly over the iteration.

A collection of pairwise-compatible inequalities is not sufficient if the full system is jointly empty or if the order of choices is circular.

## 6. Verdict vocabulary

Each node must receive exactly one primary verdict:

```text
REPRODUCED_NO_DEFECT_FOUND
RESOLVED_AFTER_ADVERSARIAL_CHECK
NOT_INDEPENDENTLY_REPRODUCED
UNRESOLVED_ANALYTIC_RISK
MATERIAL_ANALYTIC_DEFECT_FOUND
OUT_OF_SCOPE
```

The overall operation must use one of:

```text
LOAD_BEARING_SPINE_SURVIVED_TARGETED_FALSIFICATION
LOAD_BEARING_SPINE_PARTIALLY_REPRODUCED_WITH_OPEN_RISKS
MATERIAL_LOAD_BEARING_DEFECT_FOUND
AUDIT_INCOMPLETE
```

`LOAD_BEARING_SPINE_SURVIVED_TARGETED_FALSIFICATION` is permitted only if A1–A4 and the global parameter-consistency gate are all independently reproduced or adversarially resolved without material residue.

## 7. Defect severity rule

A finding is `MATERIAL_ANALYTIC_DEFECT_FOUND` only if the audit establishes that an asserted proof step is false, unjustified under its stated hypotheses, or dependent on mutually incompatible assumptions in a way that blocks the claimed theorem.

A suspicious but unresolved step must remain `UNRESOLVED_ANALYTIC_RISK` or `NOT_INDEPENDENTLY_REPRODUCED`; uncertainty may not be promoted to a defect.

Conversely, formal kernel success may not demote a humanly unresolved semantic/analytic dependency to reproduced unless the exact mathematical obligation is shown to match the formal statement and its hypotheses are independently verified.

## 8. Epistemic ceiling

Even the strongest clean outcome authorizes at most:

```text
PINNED_FORMAL_ARTIFACT_REPRODUCIBILITY = PASS
TARGET_AND_ENDGAME_CORRESPONDENCE = SUPPORTED_BY_TARGETED_HUMAN_AUDIT
LOAD_BEARING_ANALYTIC_SPINE = SURVIVED_TARGETED_INDEPENDENT_FALSIFICATION
FULL_166_PAGE_INDEPENDENT_HUMAN_PROOF_REDERIVATION = NO
GLOBAL_MATHEMATICAL_CONSENSUS = NOT_ESTABLISHED
CLAY_RECOGNITION = NOT_ESTABLISHED
UNFORCED_3D_NAVIER_STOKES_BLOWUP = NOT_ESTABLISHED
```

No wording in this operation may collapse targeted falsification survival into complete independent verification of every lemma.

## 9. FCP isolation

This operation may not:

- alter or contaminate the active closed K9 corpus;
- change any `FW-PROCESS-MATRIX` K9 relation;
- admit or remove any FCP framework;
- change K1–K10;
- assign E1–E5 convergence credit;
- recompute recurrence;
- create empirical credit;
- infer physical realization or canonicity;
- infer support for NFC or any other favored framework from generic mathematical motifs;
- infer unforced 3D Navier–Stokes blowup;
- open or sequence FCP-27;
- rewrite `CURRENT_STATE.md`, `FRAMEWORK_REGISTER.md`, `CLAIM_LEDGER.md`, or recurrence artifacts during the scientific audit.

Any later routing consequence requires a separately authorized reconciliation operation after the audit result is frozen.

## 10. Execution order

The frozen order is:

```text
PHASE_0 = BIND_EXACT_INPUT_IDENTITIES_AND_BUILD_NODE_MAP
PHASE_1 = A3_ONE_FULL_RESIDUAL_IMPROVEMENT_CYCLE
PHASE_2 = A2_OSCILLATORY_STRESS_REALIZATION
PHASE_3 = A1_LEADING_PROFILE_CONSTRUCTION
PHASE_4 = A4_INFINITE_ITERATION_AND_ALL_JET_FLATNESS
PHASE_5 = GLOBAL_PARAMETER_CONSISTENCY_GATE
PHASE_6 = CROSS_CHECK_AGAINST_PINNED_LEAN_DEPENDENCY_GRAPH
PHASE_7 = FREEZE_RESULT_AND_HANDOFF
```

A3 is intentionally first because it has the highest expected information gain: it is the nonlinear proof junction at which omitted or mis-scaled terms are most likely to be fatal.

## 11. Stop / escalation conditions

The operation must pause substantive downstream adjudication and freeze a defect docket if any of the following occurs:

1. a reproducible algebraic/sign error changes the leading residual order;
2. a required parameter system is shown to be jointly infeasible;
3. a claimed cancellation omits a same-order or larger nonlinear interaction;
4. an iteration estimate fails to close in the required derivative class;
5. the infinite series cannot be justified in the topology required for residual flatness;
6. the paper and Lean implementation materially disagree on a load-bearing hypothesis or conclusion;
7. an apparently crucial fact is available only as an assumption/axiom rather than proved from the frozen inputs.

Minor notation errors or locally repairable transcription defects are not automatically theorem-fatal; their repairability must be demonstrated rather than presumed.

## 12. Required deliverables

1. this preregistration;
2. exact input-identity and theorem/dependency map;
3. A3 residual-term ledger and adjudication;
4. A2 oscillatory-stress reconstruction and adversarial check;
5. A1 leading-profile constraint/parameter ledger;
6. A4 convergence/all-jet-flatness ledger;
7. global parameter-consistency ledger;
8. Lean dependency crosswalk for A1–A4;
9. final analytic falsification audit record;
10. bounded handoff recording exact residual uncertainty and authorized epistemic ceiling.
