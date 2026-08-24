# FCP Comparison Keys

**Version:** 0.1.0  
**Status:** FROZEN CANDIDATE — FCP-2  
**Purpose:** framework-neutral comparison coordinates to be fixed before the first cross-framework comparison.

## 0. Governing rule

> **Define the questions before seeing how competing frameworks answer them.**

These keys are role-based, not vocabulary-based. A framework may answer a key with very different mathematics from another framework. Difficulty translating a framework into a key does not authorize changing the key after exposure.

The ten keys K1–K10 are mandatory. Meta-keys M1–M3 classify the status of every answer.

---

# K1 — State / configuration carrier

## Compact definition

A **state/configuration carrier** is the object or family of objects over which a framework represents possible configurations, states, histories, or physical situations before or after any quotient by redundancy.

## Counts as supplying K1

A framework supplies K1 when it explicitly identifies a carrier such as a configuration space, phase space, constraint surface, Hilbert/state space, algebraic state space, field-configuration class, history space, or another mathematically defined state-bearing object.

## Does not count

- naming entities without defining their admissible state space;
- presenting equations without specifying what their variables range over;
- identifying a representation space while leaving the physical-state subset unspecified when that distinction is material;
- assuming a carrier only through later physical interpretation.

## Mathematical existence vs physical realization

The existence of a mathematical carrier establishes only a formal possibility space. Physical realization requires a bridge identifying some elements/equivalence classes with possible physical situations.

## Allowed vs selected

A carrier can contain many mathematically allowed states while dynamics, constraints, initial data, or empirical conditions select only a subset or history.

## Possible empirical bindings

Preparation procedures, state tomography, initial/boundary data inferred from measurement, field configurations reconstructed from observations, or operational state-estimation procedures.

## Failure / nonforcing criteria

K1 is `OPEN` or `NONFORCED` if materially different carriers satisfy the declared framework assumptions and no source theorem or empirical criterion selects among them.

## Null-baseline examples only

- GR: Lorentzian metrics and matter fields on a differentiable spacetime, with constraint-compatible initial data for a chosen formulation.
- QFT/SM: field/operator-state structures and Hilbert/Fock or algebraic state descriptions as appropriate to the calculation; no single quantum-gravity state space is supplied by the combined null baseline.

## Frozen canonical question

> **K1:** What object or family of objects represents the framework's possible states/configurations/histories, which parts are primitive or derived, and what selects the physically realized subset?

---

# K2 — Redundancy / physical equivalence

## Compact definition

A **physical-equivalence relation** identifies mathematically distinct descriptions that the framework treats as representing the same physical situation at the declared scope.

## Counts as supplying K2

An explicit equivalence relation, quotient, gauge orbit, diffeomorphism equivalence, basis-independent observable structure, or another source-defined rule distinguishing descriptive redundancy from physical difference.

## Does not count

- a symmetry merely because it is mathematically present;
- a transformation that changes a measurable quantity;
- informal statements that two descriptions are 'the same' without a criterion;
- quotienting for convenience without showing physical invariance.

## Mathematical existence vs physical realization

A mathematical group action or equivalence can exist without being physically redundant. Physical redundancy requires that declared physical observables be invariant under the identification at the relevant scope.

## Allowed vs selected

Many equivalence relations can be mathematically imposed. The framework must identify which one is physically licensed rather than merely possible.

## Possible empirical bindings

Observable invariance under gauge/coordinate/basis changes; agreement of predictions across equivalent representations.

## Failure / nonforcing criteria

K2 is underdetermined if multiple inequivalent quotient doctrines preserve the formalism and the framework supplies no physical or mathematical selector.

## Null-baseline examples only

- GR: coordinate relabelings/diffeomorphism-related descriptions are not treated as physically distinct merely because coordinate labels differ.
- SM: gauge-related field representatives are physically redundant at the level of gauge-invariant observables.

## Frozen canonical question

> **K2:** Which mathematically distinct descriptions are physically identified, by what exact equivalence rule, and what demonstrates that the identification is redundancy rather than physical symmetry?

---

# K3 — Allowed transformations

## Compact definition

An **allowed transformation** is a mathematically or physically licensed map, operation, intervention, symmetry, representation change, coarse-graining, or transition between framework objects.

## Counts as supplying K3

An explicitly typed class of transformations with declared domain, codomain, composition/closure conditions, and interpretation where physical.

## Does not count

- listing possible mathematical maps without a licensing rule;
- assuming every definable transformation is physical;
- conflating gauge transformations with evolution;
- conflating kinematic accessibility with actual occurrence.

## Mathematical existence vs physical realization

A transformation may be mathematically definable without being realizable as a physical intervention or evolution.

## Allowed vs selected

> **Allowed transformations are not actual dynamics.**

The set/category of licensed transformations is a possibility structure. K4 separately asks what selects actual histories.

## Possible empirical bindings

Controlled transformations/preparations, symmetry tests, scattering channels, laboratory interventions, scale transformations whose observable consequences can be tested.

## Failure / nonforcing criteria

K3 is underdetermined if the framework uses transformations without a complete typing/licensing rule or admits multiple incompatible transformation categories with no selector.

## Null-baseline examples only

Gauge transformations, coordinate transformations, Lorentz/Poincaré transformations where applicable, unitary representation changes, physically allowed interactions encoded by the action, and renormalization/coarse-graining maps. None of these alone specifies which physical event occurs next.

## Frozen canonical question

> **K3:** Which transformations are licensed, how are they typed and interpreted, and which are merely representational, kinematic, interventional, or potentially dynamical?

---

# K4 — Actual dynamics / history selector

## Compact definition

A **dynamics/history selector** is the law, weighting rule, constraint-plus-evolution structure, stochastic kernel, amplitude rule, or equivalent mechanism that determines or probabilistically weights physical histories conditional on required data.

## Counts as supplying K4

Deterministic evolution equations, Hamiltonian flow, field equations plus well-posed initial data, action/extremal principles with a specified physical solution rule, stochastic transition kernels, transition amplitudes plus a probability rule, or another source-defined history-selection mechanism.

## Does not count

- a set of allowed transformations;
- symmetry constraints alone;
- existence of an action with no rule connecting it to physical histories;
- equations without required initial/boundary conditions when a unique history is claimed;
- a probability interpretation without a specified measure/kernel.

## Mathematical existence vs physical realization

A mathematically well-defined evolution system becomes physical only after its variables, parameters, initial/boundary data, and observable consequences are physically realized.

## Allowed vs selected

K4 is the explicit separation point between possibility and occurrence. Supplying a law does not imply supplying a unique cosmic history if initial/boundary data remain free.

## Possible empirical bindings

Time-series predictions, scattering/decay probabilities, orbital evolution, gravitational-wave phasing, transition rates, cosmological evolution observables.

## Failure / nonforcing criteria

K4 is `OPEN` or `NONFORCED` if multiple inequivalent evolution/weighting rules satisfy the framework's prior assumptions or if the framework provides possibilities but no selector.

## Null-baseline examples only

- GR: Einstein field equations provide classical dynamics conditional on suitable initial/boundary data and matter sources.
- SM/QFT: the Lagrangian/action and quantum rules generate amplitudes/rates conditional on states, parameters, preparation, and measurement context.
- Combined null baseline: no single established UV-complete law unifies quantum matter with dynamical spacetime at arbitrary scale.

## Frozen canonical question

> **K4:** What law or weighting rule determines what actually happens, what data must additionally be supplied, and does the framework select a unique history, a probability distribution, or only a constrained possibility set?

---

# K5 — Observable algebra / measurement interface

## Compact definition

An **observable/measurement interface** is the mathematically defined family of quantities, events, or operational statistics that the framework connects to possible measurements.

## Counts as supplying K5

A defined observable algebra/family plus a rule connecting formal quantities to outcomes, expectation values, probabilities, rates, detector-level variables, or other operational records.

## Does not count

- arbitrary mathematical functions on the state space;
- formal variables with suggestive names but no measurement bridge;
- a selected finite test family claimed to exhaust physics without a completeness theorem;
- coordinate/gauge-dependent quantities presented as observables without qualification.

## Mathematical existence vs physical realization

Formal observables become physically realized only when their units, calibration, preparation/measurement conditions, and data relationship are explicit.

## Allowed vs selected

A framework may admit many formal observables while experiments access only a subset. Choice of an observable family does not by itself prove physical exhaustion.

## Possible empirical bindings

Cross sections, decay widths, clock readings, interferometer strain, spectral lines, detector counts, correlation functions, oscillation probabilities, cosmological estimators.

## Failure / nonforcing criteria

K5 is incomplete if the framework cannot specify operational observables or if a claimed complete observable family lacks a theorem/empirical argument showing exhaustion.

## Null-baseline examples only

GR timing/redshift/orbital/GW observables; QFT/SM masses, widths, cross sections, asymmetries, event spectra and coupling-sensitive rates. Neither component supplies one theorem that its chosen observable family exhausts every physically meaningful quantity.

## Frozen canonical question

> **K5:** Which formal quantities are operational observables, how are they connected to measurements, and is any claim of observational completeness actually established?

---

# K6 — Locality / causal structure

## Compact definition

**Locality/causal structure** is the rule determining which degrees of freedom, events, regions, or operations may directly influence or signal to which others and how influence propagates.

## Counts as supplying K6

An explicit causal order, cone structure, microcausality rule, finite-speed propagation principle, local interaction law, graph adjacency/influence rule, or derived/emergent locality bridge with stated assumptions.

## Does not count

- spatial adjacency with no influence semantics;
- correlation alone;
- entanglement interpreted as superluminal signalling without a signalling rule;
- claiming emergent locality without identifying the emergence map/limit.

## Mathematical existence vs physical realization

A partial order, graph, metric, or commutator relation becomes a physical causal/locality structure only when tied to influence, signalling, propagation, or measurement.

## Allowed vs selected

Multiple causal/local structures can be mathematically placed on the same carrier. The framework must state which is primitive, derived, model-selected, or empirical.

## Possible empirical bindings

Signal propagation, light cones, time-of-flight, Lorentz-invariance tests, microcausal scattering structure, gravitational-wave propagation, no-signalling tests.

## Failure / nonforcing criteria

K6 is nonforcing if causal/local structure is inferred from a formal adjacency/metric without a physical bridge or if multiple inequivalent causal structures remain admissible.

## Null-baseline examples only

GR Lorentzian metric/light-cone causal structure and local propagation in relativistic field equations; relativistic QFT microcausality/local interaction structure. The combined baseline does not derive spacetime locality from a deeper nonspatiotemporal substrate.

## Frozen canonical question

> **K6:** What defines possible influence/signalling relations, is locality/causality primitive or derived, and what bridge connects the mathematical relation to physical propagation?

---

# K7 — Coarse-graining / renormalization / scale relation

## Compact definition

A **scale-relation structure** specifies maps or flows connecting descriptions valid at different resolutions, energies, lengths, coarse-graining levels, or effective degrees of freedom.

## Counts as supplying K7

Renormalization-group flow, effective field theory matching, controlled coarse-graining, continuum/discrete limit maps, decimation, refinement, homogenization, or another explicit inter-scale transformation with stated invariants and approximation/error control.

## Does not count

- merely using different models at different scales without a bridge;
- declaring emergence without a controlled map/limit;
- equating scale dependence of a description with scale dependence of ontology;
- numerical convergence without identifying the physical quantity preserved.

## Mathematical existence vs physical realization

A scale map is mathematical until the running/effective parameters and observables are calibrated to physical scales.

## Allowed vs selected

Many coarse-grainings can exist. The physically useful or canonical flow must be justified by the framework, observable equivalence, universality, or empirical success.

## Possible empirical bindings

Running couplings, scaling laws, EFT corrections, critical behavior, low-energy matching, lattice/continuum extrapolation.

## Failure / nonforcing criteria

K7 is underdetermined if different coarse-graining schemes yield materially different physical predictions without a reconciliation or universality theorem.

## Null-baseline examples only

QFT renormalization-group evolution and effective-theory reasoning; GR weak-field/post-Newtonian/effective descriptions under controlled approximations. These are relations among descriptions, not proof that ontology itself changes with scale.

## Frozen canonical question

> **K7:** How are descriptions at different scales related, what is invariant or flows, and what establishes that the scale relation preserves or approximates the relevant physics?

---

# K8 — Local-to-global consistency / globalization

## Compact definition

A **globalization structure** states conditions under which compatible local data, local solutions, local observables, patches, or subsystems combine into a coherent global object or history.

## Counts as supplying K8

Explicit gluing/patching conditions, constraint propagation, bundle transition consistency, anomaly cancellation, descent/sheaf conditions, global existence/uniqueness theorems, or another source-defined local-to-global criterion.

## Does not count

- local consistency alone;
- repeating a local construction over many patches without compatibility proof;
- assuming a global state because all local pieces exist;
- treating numerical agreement on overlaps as exact globalization without an error criterion.

## Mathematical existence vs physical realization

A mathematical globalization theorem establishes a global formal object. Physical realization additionally requires that the local data and global object correspond to physical states/observables.

## Allowed vs selected

There may be multiple global extensions of the same local data. Existence, uniqueness, and physical selection must be recorded separately.

## Possible empirical bindings

Global constraint consistency, topological sector effects, anomaly-sensitive observables, cosmological/global solutions, consistency of local calibrations across domains.

## Failure / nonforcing criteria

K8 fails in the strong sense when locally valid data admit no global extension or when uniqueness is claimed but multiple inequivalent extensions exist.

## Null-baseline examples only

GR patching of coordinate charts/metric data subject to geometric and constraint consistency; gauge-field bundle/global consistency; anomaly cancellation and globally consistent QFT constructions where applicable. Local equations alone do not guarantee one unique global cosmological solution.

## Frozen canonical question

> **K8:** Under what exact conditions do compatible local descriptions globalize, is the global object unique, and what physical significance is established for that globalization?

---

# K9 — Physical realization / calibration

## Compact definition

A **physical-realization/calibration bridge** maps formal structures and parameters to measured quantities with defined units, operational procedures, calibration conventions, and uncertainty treatment.

## Counts as supplying K9

Explicit identification of formal variables with time, length, energy, mass, charge, curvature, species, detector events, frequencies, rates, cosmological observables, etc., together with the operational/calibration rule used in practice.

## Does not count

- suggestive naming;
- dimensional resemblance;
- post hoc identification without measurement semantics;
- a free scale factor left unspecified when numerical prediction is claimed;
- parameter fitting presented as derivation.

## Mathematical existence vs physical realization

K9 is the bridge itself: without it, a formal theorem remains mathematical even if its symbols resemble familiar physical quantities.

## Allowed vs selected

Multiple realizations of the same formal structure may exist. The framework must state whether one realization is derived, chosen, or empirically calibrated.

## Possible empirical bindings

Unit standards, detector calibration, parameter estimation, metrology, cross-section normalization, mass/coupling extraction, curvature/timing inference.

## Failure / nonforcing criteria

K9 is underdetermined when materially different calibrations/realizations fit the formalism and no source or empirical rule selects one.

## Null-baseline examples only

GR metric/connection mapped to clocks, free fall, ranging and GW strain; SM/QFT amplitudes/renormalized parameters mapped to measured masses, widths, cross sections, branching fractions and event rates.

## Frozen canonical question

> **K9:** What explicit map connects the formal structure to calibrated physical quantities, which parameters are fitted versus predicted, and how is uncertainty propagated?

---

# K10 — Empirical discriminator

## Compact definition

An **empirical discriminator** is a preregistered or source-qualified observation capable of distinguishing a framework claim from a materially weaker or alternative comparator under a stated uncertainty and decision rule.

## Counts as supplying K10

A comparator, predicted observable/distribution, uncertainty model, decision/falsification criterion, provenance, and a clear record of which parameters were fixed before examining the discriminating data.

## Does not count

- fitting the same data used to define the prediction without disclosure;
- qualitative compatibility with known facts;
- a consistency check with no comparator;
- a post hoc explanation presented as prospective prediction;
- a prediction shared by a substantially weaker framework when framework-specific credit is claimed.

## Mathematical existence vs physical realization

A mathematically different prediction is not empirical until K9 maps it to measurable quantities and a real observation/test exists or is specified.

## Allowed vs selected

A framework may permit many empirical outcomes. Discriminating force comes from constraining outcomes relative to a comparator, not merely being compatible with the observed one.

## Empirical-output labels

- `FITTED_INPUT`
- `CONSISTENCY_CHECK`
- `RETRODICTION`
- `POSTDICTION`
- `HELD_OUT_PREDICTION`
- `PROSPECTIVE_RISKY_PREDICTION`

## Failure / nonforcing criteria

K10 is absent if no material comparator is specified or if the claimed distinctive result follows equally in a weaker framework. A prediction is downgraded if post hoc flexibility absorbs the discriminating observation without a predeclared rule.

## Null-baseline examples only

Precision electroweak relations, QCD running, Higgs coupling/rate patterns, neutrino oscillation mismatch with the minimal massless-neutrino SM, and quantitative GR tests such as timing and gravitational-wave propagation/dynamics.

## Frozen canonical question

> **K10:** Which observation can distinguish the framework claim from a materially weaker comparator, with what prediction, uncertainty model, decision rule, provenance, and parameter-freeze status?

---

# Meta-key M1 — Selection status

Every material key component must receive one of:

- `PRIMITIVE` — assumed in the evaluated framework/version;
- `SOURCE_DERIVED` — follows from prior source-bound assumptions;
- `MODEL_CHOICE` — selected among multiple lawful options without internal uniqueness;
- `EMPIRICALLY_FIXED` — selected/calibrated by observation or measurement;
- `UNDERDETERMINED` — materially unresolved at the declared scope.

This status is orthogonal to the claim classifications in `CLAIM_LEDGER.md`.

---

# Meta-key M2 — Canonicity level

Every use of **canonical** must specify one of:

1. `C1_PRESENTATION` — invariant under relabeling/representation change;
2. `C2_RELATIVE_MATHEMATICAL` — unique after domain/category/language/model inputs are fixed;
3. `C3_FRAMEWORK` — selected by the framework's own formal rules;
4. `C4_PHYSICAL` — uniquely selected as the physical structure of nature;
5. `C5_EMPIRICAL` — favored by evidence relative to stated alternatives at a declared scope.

No automatic promotion between levels is permitted.

---

# Meta-key M3 — Scope ceiling

Every K1–K10 answer must end with the strongest permitted inference. Examples:

- `MATHEMATICAL_ONLY`
- `FRAMEWORK_INTERNAL`
- `PHYSICAL_CONDITIONAL`
- `EMPIRICALLY_SUPPORTED_TESTED_REGIME`
- `GLOBAL_COMPLETENESS_UNPROVED`
- `UV_STATUS_OPEN`
- `NO_ONTOLOGY_CLAIM`
- `NO_CROSS_FRAMEWORK_CREDIT_YET`

Free text may refine the ceiling, but may not weaken the requirement to state it.

---

# Anti-retrofitting rule

K1–K10 version `0.1.0` is frozen before the first cross-framework audit.

If a future framework exposes a genuinely missing foundational category, record:

`KEY_EXTENSION_CANDIDATE`

Do not silently modify an existing key.

A key-set amendment requires a separately versioned governance revision that:

1. explains why the existing key set is insufficient;
2. shows that the proposed key is framework-neutral;
3. states whether the amendment changes prior interpretations;
4. reruns every previously audited framework affected by the revision.

A framework's unfamiliar vocabulary is not, by itself, evidence that a new key is needed.

---

# Freeze statement

At version `0.1.0`, the comparison coordinates are:

`K1 Carrier` · `K2 Equivalence` · `K3 Allowed transformations` · `K4 Dynamics` · `K5 Observables` · `K6 Causality/locality` · `K7 Scale relation` · `K8 Globalization` · `K9 Physical realization` · `K10 Empirical discriminator`.

Their status is classified independently by `M1 Selection`, `M2 Canonicity`, and `M3 Scope ceiling`.

> **No cross-framework comparison is authorized by this file itself.**