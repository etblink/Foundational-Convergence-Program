# FCP-4 — Categorical Quantum Mechanics / Quantum Process Theory Source Intake

**Version:** 0.1.0  
**Framework ID:** `FW-CQM`  
**Working name:** Categorical quantum mechanics / quantum process theories  
**Status:** SOURCE-BOUND READY CANDIDATE  
**Source window frozen:** 2026-08-24  
**Comparison status:** NONE

## 0. Scope

This packet binds a specifically quantum-motivated categorical/process tradition separately from the broader placeholder `FW-CAT`.

`FW-CQM` is not defined as “all applications of category theory to physics.” Its bounded core is the compositional/process-theoretic reformulation of quantum theory initiated by Abramsky and Coecke and developed through dagger/compact categorical and diagrammatic structures.

Broader categorical foundations, topos approaches, effectus theory and other categorical programs remain outside this packet unless separately admitted.

---

# 1. Bounded source corpus

## `SRC-FCP4-CQM-AC-2004` — foundational primary

**Samson Abramsky, Bob Coecke**, *A categorical semantics of quantum protocols* (2004).  
arXiv: `quant-ph/0402130`.

**Role:** foundational process/categorical formulation abstracting key quantum-protocol structure using compact closed categories with biproduct-like/additive features in the original development.

**Scope ceiling:** foundational source for the tradition; later dagger, mixed-state, classical-structure and reconstruction machinery must be source-bound separately.

## `SRC-FCP4-CQM-AC-2009` — handbook synthesis

**Samson Abramsky, Bob Coecke**, *Categorical Quantum Mechanics*, in *Handbook of Quantum Logic and Quantum Structures* (revised handbook version, 2009), pp. 261–323.  
arXiv: `0808.1023`.

**Role:** mature early synthesis of the categorical quantum mechanics program and its structural/diagrammatic framework.

**Scope ceiling:** synthesis of the CQM tradition, not a claim that every monoidal category is a physical quantum theory.

## `SRC-FCP4-CQM-CK-2017` — modern monograph/synthesis

**Bob Coecke, Aleks Kissinger**, *Picturing Quantum Processes: A First Course in Quantum Theory and Diagrammatic Reasoning*, Cambridge University Press (2017).  
DOI: `10.1017/9781316219317`; ISBN: `9781107104228`.

**Role:** systematic source for process-first/diagrammatic quantum theory, symmetric monoidal composition, dagger/compact structure, classical-quantum interaction and categorical quantum protocols.

**Scope ceiling:** textbook/monograph synthesis; model-specific structures must be distinguished from generic process theory.

## `SRC-FCP4-CQM-GS-2018` — bridging primary

**Stefano Gogioso, Carlo Maria Scandolo**, *Categorical Probabilistic Theories*, Electronic Proceedings in Theoretical Computer Science **266** (2018) 367–385.  
DOI: `10.4204/EPTCS.266.23`; arXiv: `1701.08075`.

**Role:** explicitly analyzes the relationship between CQM and operational probabilistic theories, documenting both similarities and important differences and proposing a categorical bridge.

**Scope ceiling:** a bridging framework does not establish that CQM and OPT are one identical FCP competitor.

---

# 2. Core framework

At FCP-4 intake scope, CQM/process theory takes systems and processes/composition as primary organizational structures.

Generic process-theoretic structure commonly includes:

1. objects representing system types;
2. morphisms representing processes;
3. sequential composition of processes;
4. monoidal/parallel composition of systems and processes;
5. a monoidal unit representing the trivial system;
6. states and effects represented as processes with trivial input or output.

Quantum-specific categorical models typically add some combination of:

- dagger structure;
- compact structure;
- biproduct/additive or enrichment structure;
- completely positive constructions for mixed processes;
- Frobenius/classical structures for classical data and observables;
- phase/complementarity structures.

FCP does not make every such structure part of a minimal generic process theory.

---

# 3. Why `FW-CQM` is separate from `FW-CAT`

The existing `FW-CAT` entry was deliberately broad: categorical / process-theoretic / related structural approaches.

FCP-4 now identifies a narrower source-bound quantum tradition whose intended target and mature semantics are sufficiently specific to deserve a separate comparator:

`FW-CQM`.

`FW-CAT` remains for broader categorical foundations that may later include effectus, topos, categorical causal, categorical reconstruction or other traditions after separate source intake.

This prevents future analysis from granting CQM every theorem developed anywhere in categorical physics.

---

# 4. Optional extensions

The following require explicit source/assumption binding:

- dagger compactness;
- specific additive/biproduct structure;
- CPM/mixed-state constructions;
- special commutative dagger Frobenius algebras for classical structures;
- strong complementarity;
- ZX-calculus-specific completeness theorems;
- categorical reconstruction principles;
- causal/process-theoretic restrictions;
- probabilistic enrichment;
- effectus or topos machinery;
- specific toy-model categories.

No later CQM claim may aggregate these into a single maximal framework without naming the hypotheses.

---

# 5. Model-specific results

Examples such as finite-dimensional Hilbert-space quantum theory (`FHilb`), relations/toy theories, stabilizer fragments, ZX-calculus models and particular categorical probabilistic theories are model-specific.

A theorem in one model does not become a theorem of generic CQM unless its categorical hypotheses are made explicit.

---

# 6. Empirical inheritance

CQM can reproduce standard quantum protocols and calculations when instantiated in an appropriate quantum model. That reproduction inherits the empirical support of quantum theory; it does not independently establish that the abstract categorical language is uniquely selected by nature.

Conversely, the fact that the categorical framework also hosts toy/non-Hilbert models demonstrates that the abstract process structure alone does not uniquely determine ordinary quantum physics.

FCP-4 status:

`NO_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_IDENTIFIED`.

---

# 7. Shallow K1–K10 intake screen

## K1 — State / configuration carrier

Primary generic carrier is categorical: system objects and morphisms/processes. States are morphisms from the monoidal unit; effects are morphisms to it.

**Ceiling:** this is process semantics, not one unique physical state ontology.

## K2 — Redundancy / physical equivalence

Morphisms/diagrams are identified according to the equations/coherence of the chosen categorical theory. Diagrammatic equality is mathematical equality in the presentation; whether two descriptions denote the same physical situation depends on model semantics.

**Ceiling:** categorical coherence is not automatically physical gauge redundancy.

## K3 — Allowed transformations

Processes/morphisms are primitive, with sequential and parallel composition central.

**Intake status:** strongest defining key.

## K4 — Actual dynamics / history selector

A process category supplies composable possible processes. It does not, merely by being a process theory, select which process occurs or define one universal temporal evolution law.

Specific quantum models can include unitary channels, CP maps or other dynamics.

**Status:** no generic universal history selector.

## K5 — Observable algebra / measurement interface

States/effects and classical-quantum interfaces can be represented compositionally. Quantum observables/classical structures usually require additional categorical structure rather than following from bare monoidal composition.

**Ceiling:** formal process/measurement semantics are not exhaustive physical calibration.

## K6 — Locality / causal structure

Not intrinsic to generic CQM. Tensor/parallel composition does not by itself establish spacetime separation or relativistic causality. Causal restrictions require additional process-theoretic structure.

## K7 — Scale / renormalization

No intrinsic framework-wide RG/coarse-graining doctrine.

## K8 — Local-to-global consistency / globalization

Composition is foundational, but generic CQM is about compositional assembly rather than one spacetime patching/globalization theorem. Coherence results ensure consistency of composition/diagrams at the categorical level.

**Ceiling:** categorical compositionality is not automatically geometric globalization.

## K9 — Physical realization / calibration

When instantiated in finite-dimensional quantum theory, diagrams/processes correspond to familiar states, channels, measurements and protocols. Generic categorical models need not have the same physical interpretation.

**Status:** realization is model-dependent; calibration is inherited from the instantiated quantum model.

## K10 — Empirical discriminator

No generic CQM-specific observable discriminator is source-bound in FCP-4.

`NO_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_IDENTIFIED`.

---

# 8. Framework-type classification

`MIXED`:

- `FOUNDATIONAL_META_FRAMEWORK`;
- `REFORMULATION_OF_ESTABLISHED_THEORY`;
- with model-specific generalized/reconstruction uses.

The classification is descriptive only.

---

# 9. Relationship to GPT/OPT

FCP-4 explicitly avoids both over-separation and over-merging.

CQM and OPT share process/compositional motivations and can be connected by categorical probabilistic frameworks. However, the bridging literature itself records nontrivial differences in assumptions and formalism.

Therefore:

- `FW-GPTOPT` remains a probabilistic operational theory family;
- `FW-CQM` remains a categorical quantum/process family;
- a later theorem may translate between particular models, but no identity of the full framework families is assumed.

No E1–E5 class is assigned in FCP-4.

---

# 10. Future-comparison value

`FW-CQM` is informative for later analysis of:

- K3 process composition;
- K5 state/effect/measurement representation;
- K8 compositional consistency;
- the distinction between mathematical process semantics and K4 physical dynamics;
- the distinction between structural reformulation and independent empirical content.

It is not yet compared or scored against any FCP framework.
