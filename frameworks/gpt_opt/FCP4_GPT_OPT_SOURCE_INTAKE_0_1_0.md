# FCP-4 — GPT / OPT Source Intake

**Version:** 0.1.0  
**Framework ID:** `FW-GPTOPT`  
**Working name:** Generalized probabilistic / operational-probabilistic theories  
**Status:** SOURCE-BOUND READY CANDIDATE  
**Source window frozen:** 2026-08-24  
**Comparison status:** NONE

## 0. Scope

This packet binds one operational theory family spanning convex generalized probabilistic theories (GPTs) and compositional operational-probabilistic theories (OPTs).

FCP-4 does not treat every reconstruction program as part of the base framework. The common core is a theory space of operational systems, states/preparations, transformations, effects/measurements and outcome probabilities, with classical and quantum theory among the admissible models in standard presentations.

The packet preserves two subtraditions:

- **GPT presentation:** convex/ordered state-effect geometry and probabilistic models;
- **OPT presentation:** systems, tests/events/transformations and sequential/parallel composition with probabilities.

At the present K1–K10 intake level these differences do not warrant separate FCP IDs.

---

# 1. Bounded source corpus

## `SRC-FCP4-GPT-HARDY-2001` — foundational reconstruction primary

**Lucien Hardy**, *Quantum Theory From Five Reasonable Axioms* (2001).  
arXiv: `quant-ph/0101012`.

**Role:** early operational reconstruction showing that quantum theory can be selected from a broader probabilistic setting only after explicit axioms, including a continuity/reversibility-type postulate.

**Scope ceiling:** reconstruction lineage, not the definition of all later GPT/OPT frameworks.

## `SRC-FCP4-GPT-BARRETT-2007` — foundational GPT primary

**Jonathan Barrett**, *Information processing in generalized probabilistic theories*, Physical Review A **75**, 032304 (2007).  
DOI: `10.1103/PhysRevA.75.032304`; arXiv: `quant-ph/0508211`.

**Role:** general probabilistic theory framework containing classical, quantum and post-quantum models; operational/information-processing consequences.

**Scope ceiling:** particular assumptions used for composites/dynamics must not be promoted to every GPT formulation.

## `SRC-FCP4-GPT-CDP-PUR-2010` — optional-principle primary

**Giulio Chiribella, Giacomo Mauro D’Ariano, Paolo Perinotti**, *Probabilistic theories with purification*, Physical Review A **81**, 062348 (2010).  
DOI: `10.1103/PhysRevA.81.062348`; arXiv: `0908.1583`.

**Role:** studies GPT/OPT models satisfying the additional purification principle and derives strong consequences from that extra hypothesis.

**Scope ceiling:** purification is **not** a base GPT/OPT axiom in FCP-4.

## `SRC-FCP4-OPT-CHIRIBELLA-2014` — framework synthesis

**Giulio Chiribella**, *Dilation of states and processes in operational-probabilistic theories*, Electronic Proceedings in Theoretical Computer Science **172** (2014) 1–14.  
DOI: `10.4204/EPTCS.172.1`; arXiv: `1412.8539`.

**Role:** concise source for OPT systems/processes/probabilities and the relationship between category-theoretic and probabilistic structure.

**Scope ceiling:** purification/dilation results require named hypotheses and are not base-framework consequences.

## `SRC-FCP4-GPT-MULLER-2021` — modern review/synthesis

**Markus P. Müller**, *Probabilistic Theories and Reconstructions of Quantum Theory*, SciPost Physics Lecture Notes **28** (2021).  
DOI: `10.21468/SciPostPhysLectNotes.28`; arXiv: `2011.01286`.

**Role:** modern introduction to GPTs and explicit separation between the broad theory space and additional principles used to reconstruct quantum theory.

**Scope ceiling:** reconstruction axioms discussed in the source are optional additions, not generic GPT consequences.

## `SRC-FCP4-GPT-PLAVALA-2023` — modern review/synthesis

**Martin Plávala**, *General probabilistic theories: An introduction*, Physics Reports **1033** (2023) 1–64.  
DOI: `10.1016/j.physrep.2023.09.001`; arXiv: `2103.07469`.

**Role:** current broad review of GPT state/effect/measurement/transformation structure, convex geometry and classical/quantum/post-quantum models.

**Scope ceiling:** a review of a family with multiple formulations; individual results must retain their assumptions.

---

# 2. Why GPT and OPT are not split further in FCP-4

The source traditions use different primitives and emphases, but their broad physical role and allowed theory space substantially overlap.

Common FCP-level content includes:

- operational systems;
- states/preparations;
- effects/measurement outcomes;
- transformations/channels/events;
- probabilities for experimental outcomes;
- system composition;
- classical and quantum theories as admissible instances in standard versions;
- room for non-quantum/post-quantum models.

The principal difference at intake scope is packaging:

- GPTs often foreground convex state/effect geometry and ordered vector spaces;
- OPTs often foreground processes/tests and compositional structure.

FCP-4 finds no source-bound reason to treat those as empirically or physically independent competitors yet. Therefore:

`FW-GPTOPT`

is one framework family with explicitly recorded subtraditions.

A later split would require evidence that the two presentations impose materially different allowed model classes or K1–K10 burdens, not merely different notation.

---

# 3. Core framework

The common core contains operationally interpretable systems and probability assignments for experiments.

Typical structures include:

1. sets/convex sets of states or preparations;
2. effects representing measurement outcomes/probability-valued tests;
3. measurements as compatible collections of effects/events;
4. transformations/channels between systems;
5. sequential composition and, where supplied, parallel/composite-system composition;
6. normalization/causality conditions sufficient to make probabilities operationally meaningful;
7. convex mixing in standard GPT presentations.

FCP does not require every source lineage to encode these in exactly the same mathematical language.

---

# 4. Optional reconstruction axioms / extensions

The following are **not** base-framework consequences unless explicitly assumed:

- purification;
- local tomography/local distinguishability;
- continuous reversibility;
- perfect distinguishability;
- ideal compression;
- pure conditioning;
- sharpness;
- spectrality;
- homogeneity/self-duality;
- particular tensor-product choices;
- information causality or other information principles;
- restrictions sufficient to single out complex quantum theory.

The key firewall is:

> **The GPT/OPT possibility space is not quantum theory. Quantum theory is selected only after additional structure/principles or empirical restriction.**

---

# 5. Model-specific results

Boxworld, PR-box models, real/complex/quaternionic quantum-like theories, polygon state spaces, restricted quantum theories and other GPT models are model-specific.

No theorem proved in one such model is promoted to the whole `FW-GPTOPT` family without the required assumptions.

Likewise, a quantum reconstruction theorem is a theorem of:

`base operational framework + named reconstruction principles`,

not of the base operational framework alone.

---

# 6. Empirical inheritance

GPT/OPT frameworks are deliberately broad enough to contain ordinary quantum theory in standard formulations and often additional non-quantum models.

Therefore ordinary quantum experimental success is **not** independent evidence for the whole GPT/OPT possibility space.

Experiments may rule out or constrain particular GPT models or principles, but FCP-4 does not bind one framework-wide empirical discriminator selecting `FW-GPTOPT` as a physical theory.

Status:

`NO_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_IDENTIFIED`.

---

# 7. Shallow K1–K10 intake screen

## K1 — State / configuration carrier

Typically convex state spaces or normalized states in ordered vector spaces in GPT form; more general operational systems/events in OPT form.

**Ceiling:** framework-general carrier, not a unique ontology of nature.

## K2 — Redundancy / physical equivalence

Operational equivalence is naturally defined through indistinguishability by available effects/tests: two states/processes may be identified when all allowed experiments assign the same probabilities.

**Ceiling:** the exact quotient/separation assumptions vary by formulation; operational equivalence is not automatically gauge redundancy.

## K3 — Allowed transformations

Transformations/channels/events are native and can be composed sequentially; composite-system structure supplies parallel composition where defined.

**Ceiling:** the set of allowed transformations is framework/model data.

## K4 — Actual dynamics / history selector

GPT/OPT generally represents possible transformations and channels but does not select one universal law determining which transformation occurs in every physical system.

Particular models may specify reversible groups, semigroups, Hamiltonian-like generators or stochastic processes. Purification can imply reversible dilations under additional assumptions.

**Status:** no base-framework universal history selector.

## K5 — Observable algebra / measurement interface

Central. Effects, tests, measurements and outcome probabilities are operational primitives or near-primitives.

**Ceiling:** operational meaning does not by itself identify which physical effects exist in nature or prove the chosen set is exhaustive.

## K6 — Locality / causality

Not one intrinsic spacetime-locality doctrine. Non-signalling, causal ordering, local tomography and related principles may be imposed separately.

**Ceiling:** locality/causality is generally optional or model/principle dependent.

## K7 — Scale / renormalization

No intrinsic framework-wide RG or coarse-graining doctrine.

**Ceiling:** scale structure must be supplied by model or additional theory.

## K8 — Local-to-global consistency / globalization

Composite-system consistency and tensor-product choices are central, but the framework does not supply one universal spacetime globalization principle. Different composite rules can generate materially different theory spaces.

**Intake status:** valuable for composition/sufficiency questions, but not identical to geometric globalization.

## K9 — Physical realization / calibration

Preparations, transformations, effects and probabilities are operationally interpretable. Concrete mapping to fields, particles, energies, spacetime regions or detector hardware is model-dependent.

**Ceiling:** strong abstract operational semantics, incomplete framework-wide physical calibration.

## K10 — Empirical discriminator

The framework itself is a possibility space rather than one unique predictive theory. Specific GPT alternatives can be empirically constrained, but no single `FW-GPTOPT` prediction is source-bound in FCP-4.

`NO_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_IDENTIFIED`.

---

# 8. Framework-type classification

`MIXED`:

- `GENERALIZATION_OF_ESTABLISHED_THEORY`;
- `RECONSTRUCTION_PROGRAM`;
- in some formulations, `FOUNDATIONAL_META_FRAMEWORK`.

This is not a framework score.

---

# 9. Dynamics-specific conclusion

FCP-4 rejects the shortcut:

> “GPT/OPT has processes, therefore GPT/OPT supplies dynamics.”

Processes/channels are K3 structure. A K4 physical law requires an additional selector/generator/probability law identifying actual temporal development.

Purification and reversible-dilation results remain conditional on added principles.

---

# 10. Future-comparison value

`FW-GPTOPT` is particularly informative for later FCP work on:

- K1 operational state carriers;
- K2 operational equivalence;
- K3 transformations;
- K5 effects/measurement sufficiency;
- composite-system assumptions;
- the distinction between a broad possibility framework and a source-selected physical theory.

It is not yet compared or scored against any FCP framework.
