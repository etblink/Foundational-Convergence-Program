# FCP-19 — Asymptotic Safety Nonforcing Countermodels

**Version:** 0.1.0  
**Framework:** `FW-AS`  
**Status:** COUNTERMODEL CANDIDATE

## 0. Purpose

These are negative witnesses against overclaiming from the bounded `FW-AS` source corpus. They do not refute asymptotic safety. They show which stronger statements do not follow from the evidence presently bound.

## CM-1 — A fixed point in a small truncation need not survive full theory-space enlargement

Take a finite truncation `T_n` of theory space with projected beta functions admitting an interacting fixed point `g_i*`. The existence of `g_i*` in `T_n` does not logically imply that a fixed point exists after adding all omitted operators.

The FCP-19 corpus contains substantial evidence that the gravitational fixed-point picture persists under many enlargements, so this countermodel does **not** reduce current evidence to one fragile calculation. Its role is narrower: it blocks the inference from any individual truncation to an exact complete-theory theorem.

Witness sources: `SRC-FCP19-AS-REUTER-1998`, `SRC-FCP19-AS-FLNR-2016`, `SRC-FCP19-AS-FKLR-2018`.

Defeats:

`ONE_TRUNCATION_FIXED_POINT -> COMPLETE_THEORY_FIXED_POINT`.

## CM-2 — Truncation robustness need not fix the exact relevant-direction count

Suppose successive polynomial truncations yield a stable small number of relevant directions. A change of field parametrization or approximation can nevertheless yield another fixed-point class with a different count.

Witness: `SRC-FCP19-AS-DBOPT-2018` reports two versus three relevant directions for different parametrization classes in the studied background `f(R)` setting.

Defeats:

`SMALL_RELEVANT_COUNT_IN_MANY_TRUNCATIONS -> EXACT_PHYSICAL_CRITICAL_SURFACE_DIMENSION`.

## CM-3 — Regulator robustness is not exact regulator independence

A set of dimensionless combinations may display weak cutoff dependence across a family of regulators while other quantities remain scheme dependent. Exact physical scheme independence requires a stronger complete calculation/observable statement.

Witnesses: `SRC-FCP19-AS-LR-2002`, `SRC-FCP19-AS-CPR-2009`.

Defeats:

`ROBUST_ACROSS_TESTED_REGULATORS -> PROVED_REGULATOR_INDEPENDENCE`.

## CM-4 — RG flow can exist without selecting physical time evolution

Let `Γ_k` satisfy an RG flow equation as the coarse-graining scale `k` varies. This determines scale dependence of effective descriptions, not a spacetime history parameterized by physical time.

A physical trajectory/effective action can later determine equations of motion under additional physical data. The two roles remain distinct.

Witness: the formal `AS-RG` structure source-bound by `SRC-FCP19-AS-REUTER-1998` and the UV–IR realization distinction in `SRC-FCP19-AS-NR-2006`.

Defeats:

`RG_FLOW = K4_PHYSICAL_DYNAMICS`.

## CM-5 — UV fixed-point evidence can exist without a demonstrated realistic IR trajectory

One can source-bind a UV fixed point in a finite theory-space truncation without showing a complete trajectory that simultaneously reaches realistic low-energy GR, observed matter content, physical signature, and calibrated observables.

Witnesses: early fixed-point papers versus later trajectory/realization reviews.

Defeats:

`UV_FIXED_POINT_EVIDENCE -> COMPLETE_PHYSICAL_REALIZATION`.

## CM-6 — Euclidean fixed-point evidence can exist without completed Lorentzian quantum gravity

A Euclidean FRG truncation may exhibit a non-Gaussian fixed point even if the Lorentzian continuation, spectral positivity, causality, and unitarity questions remain unresolved.

FCP-19 also records positive Lorentzian evidence from `SRC-FCP19-AS-MRS-2011`, `SRC-FCP19-AS-SW-2025` and `SRC-FCP19-AS-PR-2024`. The countermodel therefore blocks only the older shortcut from Euclidean evidence alone to full Lorentzian completion.

Defeats:

`EUCLIDEAN_FIXED_POINT -> COMPLETED_LORENTZIAN_QG`.

## CM-7 — Matter compatibility does not derive the Standard Model

A gravity–matter truncation can admit a fixed point for the Standard Model field content or selected extensions while leaving field content, masses, mixing parameters and low-energy couplings unpredicted or partially free.

Witnesses: `SRC-FCP19-AS-DEP-2014`, `SRC-FCP19-AS-MPR-2016`, `SRC-FCP19-AS-EICHHORN-2026`.

Defeats:

`STANDARD_MODEL_COMPATIBLE_WITH_FIXED_POINT -> STANDARD_MODEL_DERIVED`.

## CM-8 — Matter bounds can be implementation dependent

One truncation/approximation can produce restrictive matter bounds while a dynamical-propagator/vertex setup finds broad matter stability within its validity range.

The correct FCP-19 conclusion is implementation dependence, not a majority vote.

Witness pair:

- `SRC-FCP19-AS-DEP-2014`;
- `SRC-FCP19-AS-MPR-2016`.

Defeats:

`ONE_MATTER_TRUNCATION_BOUND -> FRAMEWORK_UNIVERSAL_MATTER_BOUND`.

## CM-9 — Low-energy GR compatibility does not provide independent AS empirical evidence

A selected AS trajectory may reproduce classical GR-like behavior and be calibrated to observed Newton/cosmological parameters. The empirical success of the recovered target is not automatically a new framework-level AS prediction.

Witness: `SRC-FCP19-AS-GRS-2019`.

Defeats:

`RECOVERS_EMPIRICALLY_SUCCESSFUL_GR -> INDEPENDENT_AS_EMPIRICAL_SELECTION`.

This relation is reserved for a future null/GR subtraction phase.

## CM-10 — RG-improved black-hole solutions need not be compulsory base-framework solutions

An RG-improvement prescription may identify `k` with a function of radius, curvature or another spacetime quantity and generate a quantum-corrected black-hole metric. Different identification prescriptions or effective actions can alter the result.

Witness: `SRC-FCP19-AS-PLATANIA-2024`.

Defeats:

`ASYMPTOTIC_SAFETY_MOTIVATED_BLACK_HOLE -> UNIQUE_FW_AS_BLACK_HOLE_PREDICTION`.

## CM-11 — Generic RG/fixed-point mathematics is not AS-specific foundational content

A non-gravitational field theory can possess beta functions, fixed points, relevant directions and universality classes. Those generic structures do not by themselves distinguish gravitational asymptotic safety.

What is AS-specific at the current source scope is the gravitational UV fixed-point / finite-critical-surface hypothesis and the associated gravitational evidence.

Defeats:

`USES_RG_FIXED_POINT_MATHEMATICS -> AS_SPECIFIC_FOUNDATIONAL_CREDIT`.

## CM-12 — Finite relevant directions do not directly equal numerical predictions

Even if a physical UV critical surface is finite-dimensional, the relevant coordinates must still be identified, mapped to physical parameters, evolved to the IR, and related to observables. Some parameters may require experimental input.

Witnesses: `SRC-FCP19-AS-GRS-2019`, `SRC-FCP19-AS-EICHHORN-2026`.

Defeats:

`FINITE_CRITICAL_SURFACE -> ALL_LOW_ENERGY_NUMBERS_PREDICTED`.

## CM-13 — A current phenomenology pathway need not be an unavoidable discriminator

Particle, cosmological and black-hole models may provide possible tests while depending on selected trajectories, truncations, matter sectors, or scale-setting rules.

Witnesses: `SRC-FCP19-AS-EICHHORN-2026`, `SRC-FCP19-AS-PLATANIA-2024`.

Defeats:

`PHENOMENOLOGY_PROGRAM_EXISTS -> AS-L5_FRAMEWORK_DISCRIMINATOR_EXISTS`.

## CM-14 — Lack of a competing UV completion is not positive AS evidence

Even if another framework fails to provide a UV completion, that absence cannot source-bind the AS fixed point or select `FW-AS`.

Defeats:

`COMPETITOR_OPEN_PROBLEM -> POSITIVE_AS_EVIDENCE`.

## 15. Countermodel summary

The bounded source corpus survives these countermodels in a nontrivial way:

- the fixed-point picture is broader than a single truncation;
- regulator/truncation robustness is substantive;
- Lorentzian evidence is nonempty and increasingly mature;
- gravity–matter evidence is substantial;
- UV–IR and phenomenology programs exist.

But the countermodels prevent those facts from being promoted into:

- an exact complete-theory fixed-point theorem;
- an exact physical critical-surface dimension;
- complete scheme/gauge/parametrization independence;
- identification of RG flow with physical history;
- completed Lorentzian unitary QG;
- Standard Model derivation;
- unique GR recovery;
- unavoidable framework-level empirical selection.

`COUNTERMODELS_DEFEAT_OVERCLAIMS_WITHOUT_REFUTING_FW_AS = YES`.