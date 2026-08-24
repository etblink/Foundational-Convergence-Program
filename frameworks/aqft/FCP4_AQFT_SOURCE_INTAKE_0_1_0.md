# FCP-4 — AQFT Source Intake

**Version:** 0.1.0  
**Framework ID:** `FW-AQFT`  
**Working name:** Algebraic / locally covariant quantum field theory  
**Status:** SOURCE-BOUND READY CANDIDATE  
**Source window frozen:** 2026-08-24  
**Comparison status:** NONE

## 0. Scope

This packet defines the bounded AQFT competitor for later FCP analysis. It does not claim that every result in algebraic, axiomatic, constructive, perturbative, conformal, or locally covariant QFT belongs to one minimal framework.

FCP-4 distinguishes:

- **core AQFT/local quantum physics**;
- **locally covariant extension**;
- **perturbative/model-construction extensions**;
- **measurement/physical-realization results**;
- **empirical results inherited from concrete QFT models**.

---

# 1. Bounded source corpus

## `SRC-FCP4-AQFT-HK-1964` — foundational primary

**Rudolf Haag, Daniel Kastler**, *An Algebraic Approach to Quantum Field Theory*, Journal of Mathematical Physics **5** (1964) 848–861.  
DOI: `10.1063/1.1704187`.

**Role:** foundational algebraic formulation; local/global separation, abstract observable algebra and representation perspective.

**Scope ceiling:** foundational historical source; later developments must not be silently back-projected into the 1964 core.

## `SRC-FCP4-AQFT-BFV-2003` — foundational extension / primary

**Romeo Brunetti, Klaus Fredenhagen, Rainer Verch**, *The generally covariant locality principle — A new paradigm for local quantum physics*, Communications in Mathematical Physics **237** (2003) 31–68.  
DOI: `10.1007/s00220-003-0815-7`; arXiv: `math-ph/0112041`.

**Role:** locally covariant QFT as covariant functor from globally hyperbolic spacetimes/embeddings to algebras/morphisms; relative Cauchy evolution and state-space discussion.

**Scope ceiling:** locally covariant extension, not the minimal Haag–Kastler core and not a derivation of spacetime itself.

## `SRC-FCP4-AQFT-FV-2015` — modern review/synthesis

**Christopher J. Fewster, Rainer Verch**, *Algebraic quantum field theory in curved spacetimes*, in *Advances in Algebraic Quantum Field Theory* (2015), pp. 125–189.  
DOI: `10.1007/978-3-319-21353-8_4`; arXiv: `1504.00586`.

**Role:** modern synthesis of locally covariant AQFT, relative Cauchy evolution, state selection, subtheories and gauge transformations.

**Scope ceiling:** synthesis/review authority; examples and extended axioms are not automatically part of every AQFT model.

## `SRC-FCP4-AQFT-FV-MEAS-2020` — specialized primary physical-realization source

**Christopher J. Fewster, Rainer Verch**, *Quantum Fields and Local Measurements*, Communications in Mathematical Physics **378** (2020) 851–889.  
DOI: `10.1007/s00220-020-03800-6`; arXiv: `1810.06512`.

**Role:** localized system–probe measurement framework within locally covariant AQFT; induced observables and causal composition of instruments.

**Scope ceiling:** establishes a rigorous measurement scheme under its hypotheses, not a universal detector-calibration theorem for all AQFT models.

## `SRC-FCP4-AQFT-BFR-2025` — current modern review/synthesis

**Romeo Brunetti, Klaus Fredenhagen, Kasia Rejzner**, *Perturbative algebraic quantum field theory and beyond* (2025).  
arXiv: `2512.14227`.

**Role:** current review of perturbative AQFT and related interacting-model constructions, including relation to Haag–Kastler ideas and locally covariant settings.

**Scope ceiling:** pAQFT is an extension/model-construction program; renormalization and interacting-model results are not defining axioms of minimal AQFT.

---

# 2. Core framework

At the bounded FCP-4 level, `FW-AQFT` is characterized by an algebraic/local organization of relativistic quantum field theory in which observables are assigned to spacetime regions and consistency conditions relate those assignments.

Typical core ingredients, with formulation dependence explicitly retained, include:

1. a spacetime background/domain with a specified class of regions;
2. an algebra of observables associated with each admissible region;
3. **isotony**: inclusion of regions is reflected by inclusion/embedding of associated algebras;
4. **locality/Einstein causality**: suitably spacelike separated local observable algebras commute or satisfy the framework's corresponding locality condition;
5. covariance or compatible action of spacetime symmetries where included;
6. states as positive normalized linear functionals on the algebra in standard C*-algebraic formulations, with Hilbert-space representations obtained through representation theory/GNS machinery;
7. additional spectrum/vacuum/regularity/state conditions depending on the precise AQFT formulation/model.

FCP does not define one universally mandatory list of every historical Haag–Kastler axiom as the entire modern AQFT framework. The source packet instead records which assumptions are core in the source being invoked.

---

# 3. Optional extensions and non-core structures

The following must be named rather than smuggled into base AQFT:

- locally covariant functorial formulation over globally hyperbolic spacetimes;
- time-slice axiom;
- relative Cauchy evolution;
- specific state-selection principles (vacuum, Hadamard, thermal, etc.);
- DHR or other superselection-sector assumptions;
- perturbative AQFT and Epstein–Glaser renormalization;
- constructive/interacting model assumptions;
- conformal AQFT-specific structure;
- split property, nuclearity and related phase-space conditions where required;
- particular gauge-field or curved-spacetime model constructions.

No optional extension is credited to `FW-AQFT` in later analysis unless the claim cites the source and hypotheses that supply it.

---

# 4. Model-specific results

Concrete free/interacting field models, conformal models, integrable models, gauge models, thermal representations, and effective quantum-gravity applications are model-specific.

Their theorems may test the usefulness of the AQFT architecture but do not become framework-wide consequences merely because they use algebraic methods.

---

# 5. Empirical inheritance

AQFT is closely tied to relativistic QFT, but FCP-4 source-binds no independent framework-level empirical discriminator for abstract AQFT.

Concrete AQFT/pAQFT models may reproduce ordinary QFT predictions. Those predictions inherit empirical support from the corresponding physical model and experiment.

FCP status at this source scope:

`NO_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_IDENTIFIED`.

This is not a claim that AQFT is empirically empty. It is a bookkeeping distinction between:

- empirical success of QFT models;
- mathematical/formal advantages of the AQFT representation;
- independent evidence selecting AQFT over empirically equivalent formulations.

---

# 6. Shallow K1–K10 intake screen

## K1 — State / configuration carrier

Primary observable carrier: local *-algebras/net or locally covariant algebra-valued functor. States are positive normalized functionals in standard algebraic formulations; Hilbert-space representations are secondary/representation-dependent.

**Intake status:** well defined relative to chosen AQFT formulation; no claim of uniquely fundamental ontology.

## K2 — Redundancy / physical equivalence

AQFT separates abstract algebraic content from particular Hilbert-space representations. Unitary inequivalence of representations need not by itself imply inequivalent local physics. Gauge/superselection equivalence is additional structure.

**Intake status:** representation independence is structurally central; exact physical equivalence remains source/model dependent.

## K3 — Allowed transformations

Includes algebra morphisms/automorphisms, spacetime-induced covariance maps, inclusions/embeddings, and model-specific scattering/evolution maps.

**Intake status:** transformation classes are explicit but heterogeneous.

## K4 — Actual dynamics / history selector

Specific AQFT models can possess genuine dynamics, e.g. automorphic time evolution or dynamics encoded through equations/model construction. Locally covariant AQFT with time-slice structure supplies relative Cauchy evolution describing response to metric perturbations.

**Ceiling:** AQFT as a general framework does not select one universal physical history across all models/spacetimes.

## K5 — Observable algebra / measurement interface

This is AQFT's strongest defining key: localized observable algebras are primary. Fewster–Verch 2020 supplies a rigorous localized measurement scheme with probe fields and induced system observables.

**Ceiling:** formal local observables plus a measurement scheme do not imply exhaustive observable completeness or universal experimental calibration.

## K6 — Locality / causal structure

Intrinsic in standard AQFT/local-covariant formulations: local algebras are indexed by spacetime regions and causality conditions constrain spacelike-separated observables.

**Ceiling:** spacetime causal structure is supplied by the spacetime category/background; AQFT does not derive spacetime from a nonspatiotemporal substrate.

## K7 — Scale / renormalization

Not intrinsic to minimal Haag–Kastler AQFT. pAQFT and interacting model programs include renormalization and scale dependence.

**Ceiling:** no framework-wide RG doctrine is inferred from minimal AQFT.

## K8 — Local-to-global consistency / globalization

Central. Nets/functors require consistent assignment and embedding of local algebras across regions/spacetimes. State-selection and global-representation issues remain nontrivial; local data do not automatically yield one preferred global state.

**Intake status:** high-value K8 comparator.

## K9 — Physical realization / calibration

AQFT is intrinsically a framework for relativistic quantum fields on spacetime and can formulate localized measurement interactions. Concrete masses, couplings, detector responses and calibration enter through particular models/experiments.

**Intake status:** strong formal physical realization; empirical calibration is model-dependent.

## K10 — Empirical discriminator

No abstract AQFT-versus-other-QFT-formulation discriminator is source-bound in FCP-4.

`NO_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_IDENTIFIED`.

---

# 7. Framework-type classification

Primary classification:

`REFORMULATION_OF_ESTABLISHED_THEORY`

with important:

`MIXED` extension/model-construction roles through locally covariant and perturbative AQFT.

This is descriptive, not evaluative.

---

# 8. Source-bound strengths for future analysis

FCP-4 establishes AQFT as a particularly sharp future comparator for:

- K5 local observable structure;
- K6 physical locality/causality;
- K8 local-to-global consistency;
- K9 formal physical realization and localized measurement;
- K4 distinction between framework/process structure and actual model dynamics.

It is **not yet scored** against the null baseline, Reduced NFC, or another framework.
