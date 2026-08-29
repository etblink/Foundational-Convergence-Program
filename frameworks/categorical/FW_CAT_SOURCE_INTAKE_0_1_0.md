# FW-CAT Source Intake — Stage-1 Frozen Corpus

**Version:** 0.1.0

**Status:** QUALIFIED_CANDIDATE_COMPLETE_NOT_INTEGRATED

**Checked:** 2026-08-29

**Operation ID:** `FW_CAT_SOURCE_INTAKE_STAGE1`

**Canonical baseline:** `e77b870963e75d9aced91e1ee20c03fd85956665`

**Indexed scientific baseline:** `5a8e1f8a5de9cd13b6152db3315477d4aa684eb7`

**Taxonomy effect:** none

## 1. Frozen Stage-1 answer

```text
SOURCE_CORPUS = SUFFICIENT_AT_CURRENT_DECLARED_SEARCH_SCOPE
CORPUS_FREEZE = PASS
STAGE2_TAXONOMY_GATE_JUSTIFIED = YES

CANDIDATE_SOURCE_COUNT_REVIEWED = 50
ADMITTED_SOURCE_COUNT = 32
NEW_EXTERNAL_SOURCE_COUNT = 24
REUSED_CANONICAL_SOURCE_COUNT = 8
MEANINGFUL_REJECTED_OR_DEFERRED_COUNT = 18
SOURCE_REGISTER_ROWS_ADDED = 24
DUPLICATE_SOURCE_REGISTER_ROWS = 0

SEARCH_LANES_COVERED = L1;L2;L3;L4;L5;L6;L7;L8;L9;L10;L11;L12;L13
SEARCH_LANES_FAILED = NONE
KNOWN_SOURCE_GAPS_PREVENTING_STAGE2 = NONE

FW_CAT_TAXONOMY_ADJUDICATION = NOT_STARTED
FW_CAT_SURVIVES = NOT_ADJUDICATED
FRAMEWORK_SPLIT_REQUIRED = NOT_ADJUDICATED
SUCCESSOR_FRAMEWORK_COUNT = NOT_ADJUDICATED
NEW_FRAMEWORK_ID = NONE
K1_K10_BASELINE = NOT_STARTED
PAIRWISE_COMPARISON = NONE
CONVERGENCE_CREDIT = NONE
RECURRENCE_RECOMPUTATION = NONE
FRAMEWORK_LEVEL_EMPIRICAL_SELECTION = NONE
```

`STAGE2_TAXONOMY_GATE_JUSTIFIED = YES` means only that the frozen corpus is broad, source-bound, and discriminating enough for a later taxonomy gate. It does not select any later taxonomy outcome.

## 2. Frozen search-lane notation

```text
L1  HISTORY_AND_CURRENT_IDENTITY
L2  CQM_AND_QUANTUM_PROCESS_BOUNDARY
L3  GENERAL_PROCESS_AND_COMPOSITIONAL_FOUNDATIONS
L4  TOPOS_APPROACHES
L5  CATEGORICAL_PROBABILITY_AND_MARKOV_BOUNDARY
L6  CATEGORICAL_OR_FUNCTORIAL_QFT
L7  TQFT_COBORDISM_AND_HIGHER_CATEGORICAL_PHYSICS
L8  CATEGORICAL_OR_HIGHER_CATEGORICAL_QUANTUM_GRAVITY
L9  DYNAMICS_TIME_CAUSALITY_MEASUREMENT_AND_COMPOSITION
L10 REALIZATION_RECONSTRUCTION_LOW_ENERGY_AND_OPERATIONAL_BRIDGES
L11 EMPIRICAL_PHENOMENOLOGICAL_AND_EXPERIMENTAL_STATUS
L12 LIMITATIONS_CRITICISM_NEGATIVE_RESULTS_AND_TAXONOMY_BOUNDARIES
L13 CURRENT_REVIEWS_AND_SYNTHESES
```

Every admitted record below fixes the required identity, bibliographic status, access date, discovery lane, scientific role, exact propositional use, text-sufficiency judgment, provenance, admission reason, and limitation. Inclusion is not endorsement.

## 3. Frozen source manifest

### 01 — `SRC-FCP4-CQM-AC-2004`

- **Identity:** Samson Abramsky and Bob Coecke, *A categorical semantics of quantum protocols* (2004).
- **Stable identifier:** arXiv `quant-ph/0402130`.
- **Status / access / text:** published conference primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES` through the canonical FCP-4 binding and source text.
- **Lane / role:** L1, L2, L3; `FRAMEWORK_IDENTITY`, `PROCESS_OR_COMPOSITION_RULES`.
- **Exact use:** fixes the historical dagger-compact categorical quantum-protocol lineage that FCP already calls `FW-CQM`.
- **Provenance / admission:** `CANONICALLY_REUSED`; original role `FW-CQM_FOUNDATIONAL_PRIMARY`; Stage-1 role `EXISTING_FRAMEWORK_MAPPING`; reused to prevent the broader umbrella from double-counting the established CQM core.
- **Limitation:** quantum-protocol semantics do not establish a generic category-theoretic physics framework or select actual dynamics.

### 02 — `SRC-FCP4-CQM-AC-2009`

- **Identity:** Samson Abramsky and Bob Coecke, *Categorical Quantum Mechanics*, in *Handbook of Quantum Logic and Quantum Structures*, pp. 261–323 (2009).
- **Stable identifier:** arXiv `0808.1023`.
- **Status / access / text:** peer-reviewed handbook synthesis; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES` through the canonical FCP-4 binding and source text.
- **Lane / role:** L1, L2, L13; `CURRENT_SPECIALIST_STATUS` at its historical window and `TAXONOMY_BOUNDARY`.
- **Exact use:** synthesizes the specifically quantum dagger-monoidal program and its supplied structures.
- **Provenance / admission:** `CANONICALLY_REUSED`; original role `FW-CQM_HANDBOOK_SYNTHESIS`; Stage-1 role `EXISTING_FRAMEWORK_MAPPING`; reused to bound the CQM identity rather than broaden it.
- **Limitation:** a monoidal category alone is not a quantum model, physical interpretation, or new dynamics.

### 03 — `SRC-FCP4-CQM-CK-2017`

- **Identity:** Bob Coecke and Aleks Kissinger, *Picturing Quantum Processes* (Cambridge University Press, 2017).
- **Stable identifiers:** DOI `10.1017/9781316219317`; ISBN `9781107104228`.
- **Status / access / text:** scholarly monograph; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES` through the canonical FCP-4 binding and relevant chapters.
- **Lane / role:** L2, L3, L9, L13; `PROCESS_OR_COMPOSITION_RULES`, `MEASUREMENT_OR_OPERATIONAL_STRUCTURE`.
- **Exact use:** supplies the mature process-first CQM account of quantum and classical–quantum composition.
- **Provenance / admission:** `CANONICALLY_REUSED`; original role `FW-CQM_MODERN_MONOGRAPH`; Stage-1 role `EXISTING_FRAMEWORK_MAPPING`; reused as the strongest extant CQM boundary.
- **Limitation:** the book represents quantum theory and related processes; it does not turn every process theory into a distinct foundational competitor.

### 04 — `SRC-FCP4-CQM-GS-2018`

- **Identity:** Stefano Gogioso and Carlo Maria Scandolo, *Categorical Probabilistic Theories*, EPTCS 266, 367–385 (2018).
- **Stable identifiers:** DOI `10.4204/EPTCS.266.23`; arXiv `1701.08075`.
- **Status / access / text:** peer-reviewed proceedings primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES` through the canonical source text.
- **Lane / role:** L2, L3, L5, L12; `TAXONOMY_BOUNDARY` between categorical process and operational-probabilistic traditions.
- **Exact use:** documents correspondences and differences between CQM-style and OPT-style structures.
- **Provenance / admission:** `CANONICALLY_REUSED`; original role `FW-CQM_CQM_OPT_BRIDGE`; Stage-1 role `EXISTING_FRAMEWORK_MAPPING`; reused specifically for overlap control.
- **Limitation:** the bridge does not identify the whole CQM and GPT/OPT families, and formal translation is not scientific identity.

### 05 — `SRC-FCP4-GPT-BARRETT-2007`

- **Identity:** Jonathan Barrett, *Information processing in generalized probabilistic theories*, Physical Review A 75, 032304 (2007).
- **Stable identifiers:** DOI `10.1103/PhysRevA.75.032304`; arXiv `quant-ph/0508211`.
- **Status / access / text:** peer-reviewed primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES` through the canonical FCP-4 binding and source text.
- **Lane / role:** L2, L3, L5, L10; `EXISTING_FRAMEWORK_MAPPING`, `MODEL_CLASS`.
- **Exact use:** fixes the broad GPT theory space against which categorical probabilistic or reconstruction work must be checked.
- **Provenance / admission:** `CANONICALLY_REUSED`; original role `FW-GPTOPT_FOUNDATIONAL_GPT`; Stage-1 role `GPTOPT_OVERLAP_CONTROL`.
- **Limitation:** classical, quantum, and post-quantum models inhabit the theory space; additional categorical packaging is not automatically a new physical framework.

### 06 — `SRC-FCP4-OPT-CHIRIBELLA-2014`

- **Identity:** Giulio Chiribella, *Dilation of states and processes in operational-probabilistic theories* (2014).
- **Stable identifiers:** DOI `10.4204/EPTCS.172.1`; arXiv `1412.8539`.
- **Status / access / text:** peer-reviewed proceedings synthesis; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES` through the canonical FCP-4 binding and source text.
- **Lane / role:** L2, L3, L9, L10; `MEASUREMENT_OR_OPERATIONAL_STRUCTURE`, `EXISTING_FRAMEWORK_MAPPING`.
- **Exact use:** fixes systems, tests, events, probabilities, and process composition in the OPT lineage.
- **Provenance / admission:** `CANONICALLY_REUSED`; original role `FW-GPTOPT_OPT_SYNTHESIS`; Stage-1 role `GPTOPT_OVERLAP_CONTROL`.
- **Limitation:** dilation conclusions depend on stated hypotheses; process language alone does not establish categorical distinctness.

### 07 — `SRC-FCP4-GPT-PLAVALA-2023`

- **Identity:** Martin Plávala, *General probabilistic theories: An introduction*, Physics Reports 1033, 1–64 (2023).
- **Stable identifiers:** DOI `10.1016/j.physrep.2023.09.001`; arXiv `2103.07469`.
- **Status / access / text:** peer-reviewed current review; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES` through the canonical source text.
- **Lane / role:** L2, L5, L10, L13; `CURRENT_SPECIALIST_STATUS`, `EXISTING_FRAMEWORK_MAPPING`.
- **Exact use:** supplies a current GPT boundary for convex states, effects, measurements, transformations, and theory models.
- **Provenance / admission:** `CANONICALLY_REUSED`; original role `FW-GPTOPT_MODERN_REVIEW`; Stage-1 role `GPTOPT_OVERLAP_CONTROL`.
- **Limitation:** categorical reconstructions or graphical calculi that instantiate these structures cannot be double-counted without additional primitive or scope differences.

### 08 — `SRC-FCP4-AQFT-BFV-2003`

- **Identity:** Romeo Brunetti, Klaus Fredenhagen, and Rainer Verch, *The generally covariant locality principle — A new paradigm for local quantum physics*, Communications in Mathematical Physics 237, 31–68 (2003).
- **Stable identifiers:** DOI `10.1007/s00220-003-0815-7`; arXiv `math-ph/0112041`.
- **Status / access / text:** peer-reviewed primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES` through the canonical FCP-4 binding and source text.
- **Lane / role:** L6, L9, L12; `EXISTING_FRAMEWORK_MAPPING`, `DYNAMICS`, `TAXONOMY_BOUNDARY`.
- **Exact use:** fixes the functorial spacetime-to-algebra structure and relative Cauchy evolution already assigned to `FW-AQFT`.
- **Provenance / admission:** `CANONICALLY_REUSED`; original role `FW-AQFT_LOCALLY_COVARIANT_EXTENSION`; Stage-1 role `FUNCTORIAL_QFT_EXISTING_FRAMEWORK_CONTROL`.
- **Limitation:** functoriality is part of a physically interpreted QFT framework here; it does not license a separate categorical framework merely because a functor appears.

### 09 — `SRC-FW-CAT-STAGE1-BAEZ-STAY-2011`

- **Identity:** John C. Baez and Mike Stay, *Physics, Topology, Logic and Computation: A Rosetta Stone*, Lecture Notes in Physics 813, 95–172 (2011).
- **Stable identifiers:** DOI `10.1007/978-3-642-12821-9_2`; arXiv `0903.0340`.
- **Status / access / text:** scholarly review chapter; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L1, L3, L7, L12; `TAXONOMY_BOUNDARY` and historical cross-domain map.
- **Exact use:** establishes the shared symmetric-monoidal diagrammatic analogy across physics, topology, logic, and computation.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_TAXONOMY_BOUNDARY` because it directly demonstrates why shared categorical syntax cannot establish one scientific object.
- **Limitation:** it is explicitly cross-domain exposition, not a single physical ontology, model class, dynamics, or empirical program.

### 10 — `SRC-FW-CAT-STAGE1-TULL-2020`

- **Identity:** Sean Tull, *A Categorical Reconstruction of Quantum Theory*, Logical Methods in Computer Science 16(1), article 4 (2020).
- **Stable identifiers:** DOI `10.23638/LMCS-16(1:4)2020`; arXiv `1804.02265`.
- **Status / access / text:** peer-reviewed primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L2, L3, L10, L12; `REALIZATION_OR_RECONSTRUCTION`, `EXISTING_FRAMEWORK_MAPPING`.
- **Exact use:** shows that extra categorical-operational principles reconstruct generalized finite-dimensional quantum theory and, under probabilistic specialization, real or complex quantum theory.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_REALIZATION_OR_RECONSTRUCTION` for the CQM–GPTOPT–effectus intersection.
- **Limitation:** dagger compactness plus explicit purification, kernel, exclusion, conditioning, and scalar assumptions are required; the result does not define all process theories or uniquely select complex quantum theory without specialization.

### 11 — `SRC-FW-CAT-STAGE1-SELBY-SCANDOLO-COECKE-2021`

- **Identity:** John H. Selby, Carlo Maria Scandolo, and Bob Coecke, *Reconstructing quantum theory from diagrammatic postulates*, Quantum 5, 445 (2021).
- **Stable identifiers:** DOI `10.22331/q-2021-04-28-445`; arXiv `1802.00367`.
- **Status / access / text:** peer-reviewed primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L2, L3, L10; `REALIZATION_OR_RECONSTRUCTION` and `EXISTING_FRAMEWORK_MAPPING`.
- **Exact use:** binds a process-theoretic reconstruction of finite-dimensional classical–quantum systems using symmetric purification and additional selection principles.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_REALIZATION_OR_RECONSTRUCTION` because its extra postulates expose what is not supplied by generic composition.
- **Limitation:** reconstruction is finite-dimensional and axiom-dependent; it maps strongly to existing CQM/GPTOPT rather than automatically creating a broader successor.

### 12 — `SRC-FW-CAT-STAGE1-CHO-EFFECTUS-2019`

- **Identity:** Kenta Cho, *Effectuses in Categorical Quantum Foundations*, PhD thesis, Radboud University (2019).
- **Stable identifiers:** handle `2066/207521`; arXiv `1910.12198`.
- **Status / access / text:** examined doctoral thesis / authoritative comprehensive treatment; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L1, L3, L5, L10, L12; `FRAMEWORK_IDENTITY`, `MEASUREMENT_OR_OPERATIONAL_STRUCTURE`, `TAXONOMY_BOUNDARY`.
- **Exact use:** fixes effectus theory as a categorical axiomatic approach connecting quantum foundations, probability, logic, and operational structure.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_CORE_OR_IDENTITY` because it is the most complete single identity source found for the effectus branch.
- **Limitation:** a thesis rather than a journal synthesis; effectus structure spans classical and quantum examples and overlaps OPT/CQM, so distinct scientific-framework status remains unadjudicated.

### 13 — `SRC-FW-CAT-STAGE1-ISHAM-BUTTERFIELD-1998`

- **Identity:** C. J. Isham and Jeremy Butterfield, *A Topos Perspective on the Kochen–Specker Theorem: I. Quantum States as Generalized Valuations*, International Journal of Theoretical Physics 37, 2669–2733 (1998).
- **Stable identifiers:** DOI `10.1023/A:1026680806775`; arXiv `quant-ph/9803055`.
- **Status / access / text:** peer-reviewed foundational primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L1, L4, L9; `FRAMEWORK_IDENTITY`, `MEASUREMENT_OR_OPERATIONAL_STRUCTURE`.
- **Exact use:** establishes the presheaf/sieve-valued response to Kochen–Specker contextuality that seeded the contravariant topos lineage.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_CORE_OR_IDENTITY` as the historical primary.
- **Limitation:** the result reformulates valuations and propositions; it does not by itself supply new dynamics, spacetime realization, or experimental predictions.

### 14 — `SRC-FW-CAT-STAGE1-DORING-ISHAM-2011`

- **Identity:** Andreas Döring and Chris Isham, *“What is a Thing?”: Topos Theory in the Foundations of Physics*, Lecture Notes in Physics 813, 753–937 (2011).
- **Stable identifiers:** DOI `10.1007/978-3-642-12821-9_13`; arXiv `0803.0417`.
- **Status / access / text:** scholarly synthesis chapter; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L1, L4, L8, L12, L13; `FRAMEWORK_IDENTITY`, `PRIMITIVE_STRUCTURE`, `CURRENT_SPECIALIST_STATUS` at its publication window.
- **Exact use:** states the language-in-a-topos program and its state-object, quantity-value object, intuitionistic logic, and daseinisation machinery.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_CURRENT_SYNTHESIS` for the mature contravariant program.
- **Limitation:** it develops a foundational formal language motivated partly by quantum gravity; it is not a completed quantum-gravity dynamics or empirical realization.

### 15 — `SRC-FW-CAT-STAGE1-HEUNEN-LANDSMAN-SPITTERS-2009`

- **Identity:** Chris Heunen, Nicolaas P. Landsman, and Bas Spitters, *A Topos for Algebraic Quantum Theory*, Communications in Mathematical Physics 291, 63–110 (2009).
- **Stable identifiers:** DOI `10.1007/s00220-009-0865-6`; arXiv `0709.4364`.
- **Status / access / text:** peer-reviewed primary, open access; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L4, L5, L6, L12; `PRIMITIVE_STRUCTURE`, `TAXONOMY_BOUNDARY`.
- **Exact use:** fixes the covariant Bohrification approach: a C*-algebra induces a topos containing an internal commutative algebra and locale-valued quantum phase space.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_CORE_OR_IDENTITY` because it is a distinct live topos construction, not merely another presentation of the contravariant one.
- **Limitation:** starts from an operator algebra and reconstructs logic/state-space semantics internally; it does not supply an independent model selector or experimental discriminator.

### 16 — `SRC-FW-CAT-STAGE1-WOLTERS-2013`

- **Identity:** Sander Wolters, *A Comparison of Two Topos-Theoretic Approaches to Quantum Theory*, Communications in Mathematical Physics 317, 3–53 (2013).
- **Stable identifiers:** DOI `10.1007/s00220-012-1652-3`; arXiv `1010.2031`.
- **Status / access / text:** peer-reviewed comparative primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L4, L12; `TAXONOMY_BOUNDARY`, `LIMITATION_OR_NEGATIVE_RESULT`.
- **Exact use:** compares the contravariant spectral-presheaf and covariant Bohrification programs, including their logic, spectra, state pairings, and physical interpretation.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_TAXONOMY_BOUNDARY` because it blocks treating “topos quantum theory” as automatically homogeneous.
- **Limitation:** it compares two mathematical/interpretive constructions and does not decide whether either is a separate physical framework.

### 17 — `SRC-FW-CAT-STAGE1-FLORI-2018`

- **Identity:** Cecilia Flori, *A Second Course in Topos Quantum Theory*, Lecture Notes in Physics 944 (Springer, 2018).
- **Stable identifiers:** DOI `10.1007/978-3-319-71108-9`; ISBN `978-3-319-71108-9`.
- **Status / access / text:** specialist monograph; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES_FOR_ASSIGNED_SYNTHESIS_AND_GAP_ROLE` from the detailed contents, preview, and relevant chapter text.
- **Lane / role:** L4, L8, L9, L12, L13; `CURRENT_SPECIALIST_STATUS` and `LIMITATION_OR_NEGATIVE_RESULT`.
- **Exact use:** synthesizes observables, group action/time evolution, the covariant approach, spacetime extensions, and explicitly identifies quantization in the approach as an open problem.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_CURRENT_SYNTHESIS` and `ADMIT_LIMITATION_OR_NEGATIVE_RESULT`.
- **Limitation:** advanced proposals for spacetime and quantization remain programmatic/open; monograph coverage is not evidence of experimental selection.

### 18 — `SRC-FW-CAT-STAGE1-DORING-2015`

- **Identity:** Andreas Döring, *Spectral presheaves as quantum state spaces*, Philosophical Transactions of the Royal Society A 373, 20140247 (2015).
- **Stable identifier:** DOI `10.1098/rsta.2014.0247`.
- **Status / access / text:** peer-reviewed primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L4, L9; `DYNAMICS` and `PRIMITIVE_STRUCTURE`.
- **Exact use:** formulates Hamiltonian flows and time evolution on the spectral presheaf associated with a supplied operator algebra.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_DYNAMICS_OR_PROCESS_STRUCTURE` because it closes a specific “topos has no dynamics” coverage gap.
- **Limitation:** the Hamiltonian and operator algebra remain supplied quantum-theory structure; this is not a universal history selector or new empirical dynamics.

### 19 — `SRC-FW-CAT-STAGE1-FRITZ-2020`

- **Identity:** Tobias Fritz, *A synthetic approach to Markov kernels, conditional independence and theorems on sufficient statistics*, Advances in Mathematics 370, 107239 (2020).
- **Stable identifiers:** DOI `10.1016/j.aim.2020.107239`; arXiv `1908.07021`.
- **Status / access / text:** peer-reviewed primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L3, L5, L12; `PRIMITIVE_STRUCTURE` and `TAXONOMY_BOUNDARY`.
- **Exact use:** fixes Markov categories as a synthetic categorical framework for probability and statistics across several concrete probability models.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_TAXONOMY_BOUNDARY` because it is the clearest generic-mathematics firewall test in the probability lane.
- **Limitation:** the paper’s scientific object is mathematical probability/statistics; no foundational-physics ontology, dynamics, or independent empirical claim is supplied.

### 20 — `SRC-FW-CAT-STAGE1-COECKE-SPEKKENS-2012`

- **Identity:** Bob Coecke and Robert W. Spekkens, *Picturing classical and quantum Bayesian inference*, Synthese 186, 651–696 (2012).
- **Stable identifiers:** DOI `10.1007/s11229-011-9917-5`; arXiv `1102.2368`.
- **Status / access / text:** peer-reviewed primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L3, L5, L10, L12; `MEASUREMENT_OR_OPERATIONAL_STRUCTURE` and `TAXONOMY_BOUNDARY`.
- **Exact use:** gives a categorical graphical treatment of classical Bayesian inference and quantum-like conditional-density calculi.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_TAXONOMY_BOUNDARY` for the probability-to-quantum bridge.
- **Limitation:** the quantum-like calculus is a representational/inferential construction; a dagger compact Bayesian calculus is not by itself a distinct physical framework.

### 21 — `SRC-FW-CAT-STAGE1-ATIYAH-1988`

- **Identity:** Michael F. Atiyah, *Topological quantum field theory*, Publications Mathématiques de l’IHÉS 68, 175–186 (1988).
- **Stable identifier:** DOI `10.1007/BF02698547`.
- **Status / access / text:** peer-reviewed foundational primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L1, L6, L7, L12; `FRAMEWORK_IDENTITY` and `TAXONOMY_BOUNDARY`.
- **Exact use:** fixes the axiomatic cobordism-to-vector-space structure of TQFT.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_CORE_OR_IDENTITY` and `ADMIT_TAXONOMY_BOUNDARY`.
- **Limitation:** the axioms classify topological field-theory structure; they are not axioms for general QFT, local propagating physics, or a complete foundational ontology.

### 22 — `SRC-FW-CAT-STAGE1-BAEZ-DOLAN-1995`

- **Identity:** John C. Baez and James Dolan, *Higher-Dimensional Algebra and Topological Quantum Field Theory*, Journal of Mathematical Physics 36, 6073–6105 (1995).
- **Stable identifiers:** DOI `10.1063/1.531236`; arXiv `q-alg/9503002`.
- **Status / access / text:** peer-reviewed programmatic primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L1, L7, L8, L12; `PRIMITIVE_STRUCTURE` and `TAXONOMY_BOUNDARY`.
- **Exact use:** binds the higher-category/extended-TQFT program and its proposed classification architecture.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_CORE_OR_IDENTITY` for the higher-categorical TQFT branch.
- **Limitation:** several central statements are proposals or hypotheses about higher categories and extended TQFTs, not a completed physical theory or empirical result.

### 23 — `SRC-FW-CAT-STAGE1-FREED-2013`

- **Identity:** Daniel S. Freed, *The Cobordism Hypothesis*, Bulletin of the American Mathematical Society 50, 57–92 (2013).
- **Stable identifiers:** DOI `10.1090/S0273-0979-2012-01393-9`; arXiv `1210.5100`.
- **Status / access / text:** peer-reviewed expository review; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L7, L12, L13; `CURRENT_SPECIALIST_STATUS` and `TAXONOMY_BOUNDARY`.
- **Exact use:** provides an authoritative map of extended TQFTs and the cobordism hypothesis sufficient to distinguish mathematical classification from a general foundational-physics claim.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_CURRENT_SYNTHESIS`.
- **Limitation:** it is an exposition of a mathematical classification result; full dualizability/classification does not select observed dynamics or make all QFT topological.

### 24 — `SRC-FW-CAT-STAGE1-OECKL-2003`

- **Identity:** Robert Oeckl, *A “general boundary” formulation for quantum mechanics and quantum gravity*, Physics Letters B 575, 318–324 (2003).
- **Stable identifiers:** DOI `10.1016/j.physletb.2003.08.043`; arXiv `hep-th/0306025`.
- **Status / access / text:** peer-reviewed primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L6, L7, L8, L9, L10, L12; `PROCESS_OR_COMPOSITION_RULES`, `REALIZATION_OR_RECONSTRUCTION`.
- **Exact use:** binds a physically motivated general-boundary proposal associating state spaces to arbitrary region boundaries, amplitudes to regions, and gluing to composition.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_CORE_OR_IDENTITY` as a candidate beyond pure TQFT classification.
- **Limitation:** the quantization prescription is expressly heuristic and incomplete; demonstrated examples do not establish a four-dimensional quantum-gravity completion.

### 25 — `SRC-FW-CAT-STAGE1-CRANE-1995`

- **Identity:** Louis Crane, *Clock and Category: Is Quantum Gravity Algebraic?*, Journal of Mathematical Physics 36, 6180–6193 (1995).
- **Stable identifiers:** DOI `10.1063/1.531240`; arXiv `gr-qc/9504038`.
- **Status / access / text:** peer-reviewed programmatic primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L1, L7, L8, L9, L12; `FRAMEWORK_IDENTITY` and `LIMITATION_OR_NEGATIVE_RESULT` through explicit programmatic scope.
- **Exact use:** records a discrete algebraic/categorical quantum-gravity proposal related to TQFT methods and general-relativistic reinterpretation of quantum mechanics.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_CORE_OR_IDENTITY` because it is a genuine foundational proposal rather than generic mathematics.
- **Limitation:** exploratory and programmatic; it does not provide a completed four-dimensional dynamics, low-energy recovery, or empirical discriminator.

### 26 — `SRC-FW-CAT-STAGE1-BAEZ-HUERTA-2011`

- **Identity:** John C. Baez and John Huerta, *An Invitation to Higher Gauge Theory*, General Relativity and Gravitation 43, 2335–2392 (2011).
- **Stable identifiers:** DOI `10.1007/s10714-010-1070-9`; arXiv `1003.4485`.
- **Status / access / text:** peer-reviewed open-access review; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L6, L7, L8, L10, L12; `PRIMITIVE_STRUCTURE`, `MODEL_CLASS`, `TAXONOMY_BOUNDARY`.
- **Exact use:** maps 2-groups, 2-connections, gerbes, Poincaré 2-groups, BF/topological-gravity examples, string 2-groups, and higher structures.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_CURRENT_SYNTHESIS` and `ADMIT_TAXONOMY_BOUNDARY`.
- **Limitation:** higher gauge theory is a family of mathematical and model-building structures across existing domains; the review does not define one quantum-gravity competitor or establish physical realization.

### 27 — `SRC-FW-CAT-STAGE1-COECKE-LAL-2013`

- **Identity:** Bob Coecke and Raymond Lal, *Causal Categories: Relativistically Interacting Processes*, Foundations of Physics 43, 458–501 (2013).
- **Stable identifiers:** DOI `10.1007/s10701-012-9646-8`; arXiv `1107.6019`.
- **Status / access / text:** peer-reviewed primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L2, L3, L9, L12; `PROCESS_OR_COMPOSITION_RULES` and `TAXONOMY_BOUNDARY`.
- **Exact use:** constructs causal categories for fixed causal structure, terminality, partial monoidal composition, and a relativistic-covariance result.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_DYNAMICS_OR_PROCESS_STRUCTURE` for causal composition.
- **Limitation:** encodes a supplied fixed causal structure and compositional constraints; it does not derive spacetime, select actual histories, or establish indefinite causal order.

### 28 — `SRC-FW-CAT-STAGE1-KISSINGER-UIJLEN-2019`

- **Identity:** Aleks Kissinger and Sander Uijlen, *A categorical semantics for causal structure*, Logical Methods in Computer Science 15(3), article 15 (2019).
- **Stable identifiers:** DOI `10.23638/LMCS-15(3:15)2019`; arXiv `1701.04732`.
- **Status / access / text:** peer-reviewed primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L2, L3, L9, L12; `PROCESS_OR_COMPOSITION_RULES`, `EXISTING_FRAMEWORK_MAPPING`.
- **Exact use:** categorically represents fixed and higher-order causal structures, including quantum combs, quantum switches, and process matrices in suitable categories.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_DYNAMICS_OR_PROCESS_STRUCTURE` and `ADMIT_TAXONOMY_BOUNDARY`.
- **Limitation:** categorical semantics organize permitted causal processes; they do not establish which process is physically realized or make the process-matrix family a new categorical framework.

### 29 — `SRC-FW-CAT-STAGE1-HARDY-2016`

- **Identity:** Lucien Hardy, *Operational General Relativity: Possibilistic, Probabilistic, and Quantum* (2016).
- **Stable identifier:** arXiv `1608.06940`.
- **Status / access / text:** primary preprint with no final journal form located at the search cutoff; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L3, L8, L9, L10, L12; `REALIZATION_OR_RECONSTRUCTION` and `FRAMEWORK_IDENTITY`.
- **Exact use:** binds an operational-space and compositional formulation of GR and outlines probabilistic and nascent quantum extensions.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_CORE_OR_IDENTITY` because no final publication supplied the same proposal and its preprint status is explicit.
- **Limitation:** the quantum case is described as nascent; no completed quantum-gravity theory, distinctive low-energy derivation, or empirical selection is provided.

### 30 — `SRC-FW-CAT-STAGE1-ORESHKOV-COSTA-BRUKNER-2012`

- **Identity:** Ognyan Oreshkov, Fabio Costa, and Časlav Brukner, *Quantum correlations with no causal order*, Nature Communications 3, 1092 (2012).
- **Stable identifier:** DOI `10.1038/ncomms2076`.
- **Status / access / text:** peer-reviewed open-access primary; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L3, L9, L10, L12; `MODEL_CLASS`, `MEASUREMENT_OR_OPERATIONAL_STRUCTURE`, `TAXONOMY_BOUNDARY`.
- **Exact use:** fixes the process-matrix framework with local quantum laboratories but no assumed global causal order and exhibits causal-inequality-violating correlations.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_CORE_OR_IDENTITY` as a serious adjacent causal-process family that categorical semantics later encompass.
- **Limitation:** it is operational/process-matrix physics, not intrinsically a categorical framework; physical realizability of the most general processes and quantum-gravity embedding remain separate questions.

### 31 — `SRC-FW-CAT-STAGE1-RUBINO-2017`

- **Identity:** Giulia Rubino et al., *Experimental verification of an indefinite causal order*, Science Advances 3, e1602589 (2017).
- **Stable identifiers:** DOI `10.1126/sciadv.1602589`; arXiv `1608.01683`.
- **Status / access / text:** peer-reviewed open-access experiment; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L9, L10, L11, L12; `EMPIRICAL_OR_REALIZATION_CEILING`.
- **Exact use:** records an approximately seven-standard-deviation causal-witness demonstration of causal nonseparability for an implemented photonic quantum switch.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_EMPIRICAL_OR_OPERATIONAL_STATUS` to prevent an unsupported “no experiments exist” statement.
- **Limitation:** known input states, operations, and readout probe a particular quantum-switch implementation; this is not a causal-inequality violation, quantum-gravity test, or framework-level test of category theory, CQM, or the historical `FW-CAT` umbrella.

### 32 — `SRC-FW-CAT-STAGE1-ROZEMA-2024`

- **Identity:** Lee A. Rozema, Teodor Strömberg, Huan Cao, Yu Guo, Bi-Heng Liu, and Philip Walther, *Experimental aspects of indefinite causal order in quantum mechanics*, Nature Reviews Physics 6, 483–499 (2024).
- **Stable identifiers:** DOI `10.1038/s42254-024-00739-8`; arXiv `2405.00767`.
- **Status / access / text:** peer-reviewed current review; accessed 2026-08-29; `FULL_TEXT_SUFFICIENCY = YES`.
- **Lane / role:** L9, L10, L11, L12, L13; `CURRENT_SPECIALIST_STATUS`, `EMPIRICAL_OR_REALIZATION_CEILING`.
- **Exact use:** surveys experimental implementations, characterization methods, applications, interpretations, and limitations of indefinite causal order.
- **Provenance / admission:** `NEW_EXTERNAL_SOURCE`; `ADMIT_CURRENT_SYNTHESIS` and `ADMIT_EMPIRICAL_OR_OPERATIONAL_STATUS`.
- **Limitation:** experimental control of operation order and task advantage remain bounded quantum-information results; they do not select a categorical ontology or a quantum-gravity framework.

## 4. Nonadjudicative candidate-object map

These are Stage-2 questions, not Stage-1 verdicts.

| Serious discovered family | Representative sources | Putative formal or primitive core | Putative physical scope | Existing-framework relations | Coherence / heterogeneity evidence and known limits | Preparation label and reserved Stage-2 question |
|---|---|---|---|---|---|---|
| Dagger categorical quantum and process theories | 01–04, 10–11 | systems as objects; processes as morphisms; sequential/parallel composition; dagger, compactness, discarding, and added axioms | finite-dimensional quantum protocols, classical–quantum processes, reconstructions | direct `FW-CQM` home; reconstruction overlap with `FW-GPTOPT` | coherent quantum-process lineage, but extra structures and reconstruction assumptions vary; generic composition supplies no dynamics | `POSSIBLE_EXISTING_FRAMEWORK_MAPPING`; is any scientifically material remainder not already `FW-CQM` or `FW-GPTOPT`? |
| Effectus and categorical operational logic | 10, 12; boundary sources 05–07 | effects, predicates, partial maps, instruments, operational categories | axiomatic classical/quantum and probabilistic theories | strong `FW-CQM` and `FW-GPTOPT` overlap | comprehensive identity exists, but examples span multiple theories and the physical primitive burden may be representational | `UNRESOLVED`; distinct scientific candidate, bridge, or existing-framework machinery? |
| Contravariant and covariant topos quantum approaches | 13–18 | presheaves/topoi, contextual valuations, spectral presheaf or internal spectrum, intuitionistic logic | quantum logic, state-space semantics, time evolution, speculative spacetime extensions | overlaps standard quantum/operator algebra and touches `FW-AQFT`; not reducible to `FW-CQM` merely by categorical language | two explicitly compared constructions; dynamics exists for supplied Hamiltonians; quantization/spacetime extensions remain open | `POSSIBLE_MULTIPLE_FRAMEWORKS`; one program, multiple programs, or representational reformulations? |
| Categorical probability and Bayesian process calculi | 04–07, 19–20 | Markov categories, stochastic maps, Bayesian inversion, graphical probability | mathematical probability/statistics and quantum-inference bridges | generic layer overlaps `FW-GPTOPT` where physical operational theories are instantiated | formal unity is strong; distinct foundational-physics claim is absent in the Markov-category core | `POSSIBLE_MATHEMATICAL_OR_REPRESENTATIONAL_PROGRAM`; what, if anything, exceeds GPTOPT or mathematical infrastructure? |
| Functorial AQFT | 08 | covariant functor from spacetimes to observable algebras; time-slice and relative Cauchy evolution | QFT on curved spacetimes | already source-bound `FW-AQFT` | physically interpreted framework exists, but its categorical form is not a new competitor | `POSSIBLE_EXISTING_FRAMEWORK_MAPPING`; confirm complete assignment without double counting. |
| Axiomatic and extended TQFT / cobordism classification | 09, 21–23 | cobordisms, monoidal functors, higher categories, dualizability | topological field theories and their classification | adjacent to QFT and QG programs; possible overlap with `FW-LOOP` or `FW-STRING-M` only in concrete models | coherent mathematical classification; topological/model scope and missing generic local dynamics are decisive ceilings | `POSSIBLE_MATHEMATICAL_OR_REPRESENTATIONAL_PROGRAM`; does any source-defined physical candidate remain after classification machinery is separated? |
| General-boundary quantum theory | 21, 24 | state spaces on arbitrary region boundaries, regional amplitudes, gluing composition | QM, QFT, and proposed QG generalization | adjacent to QFT/AQFT and spin-foam/`FW-LOOP` realizations | distinct physical proposal with examples; original quantization is heuristic/incomplete and 4D QG is not established | `POSSIBLE_DISTINCT_FRAMEWORK_CANDIDATE`; is the physical core stable and independent of existing QFT/QG realizations? |
| Higher gauge and categorical quantum-gravity programs | 22, 25–26 | higher groups/categories, higher connections, algebraic/TQFT-inspired discrete structures | gauge theory, BF/topological gravity, spin foams, string structures, exploratory QG | possible assignments across `FW-LOOP`, `FW-STRING-M`, ordinary gauge/QFT, or nonframework mathematics | scientifically heterogeneous examples; Crane is programmatic and higher-gauge review spans many supplied models | `POSSIBLE_MULTIPLE_FRAMEWORKS`; which works define physical competitors versus machinery for existing ones? |
| Causal categories and higher-order causal processes | 27–32 | categorical causal constraints, higher-order processes, process matrices, quantum switch | fixed and indefinite causal order in operational quantum theory | strong `FW-CQM`/`FW-GPTOPT` mapping; adjacent causal-quantum intake noted by FCP-4 | formal bridges and experiments exist, but “categorical,” process-matrix, and quantum-switch scopes are not identical | `UNRESOLVED`; existing-framework extension, distinct causal-process candidate, or adjacent nonframework material? |
| Operational/compositional general relativity | 29 | operational space, agency, time direction, compositional GR | possibilistic/probabilistic GR and nascent quantum extension | adjacent to `FW-GPTOPT` and quantum-gravity frameworks | genuine physical target and compositional formalism; quantum case remains preprint-level and nascent | `POSSIBLE_DISTINCT_FRAMEWORK_CANDIDATE`; is there a source-stable quantum framework beyond an operational GR reformulation? |

## 5. Explicit existing-framework and generic-mathematics boundaries

```text
FW_CAT_VS_FW_CQM = EXPLICITLY_AUDITED
FW_CAT_VS_FW_GPTOPT = EXPLICITLY_AUDITED
FW_CAT_VS_FW_AQFT = EXPLICITLY_AUDITED
CQM_DOUBLE_COUNT = BLOCKED
GPTOPT_DOUBLE_COUNT = BLOCKED
AQFT_DOUBLE_COUNT = BLOCKED

GENERIC_CATEGORY_THEORY_AS_FRAMEWORK_EVIDENCE = REJECTED
GENERIC_MONOIDALITY_AS_PHYSICAL_COMPOSITION = REJECTED
FUNCTORIALITY_AS_NEW_FRAMEWORK = REJECTED
MARKOV_CATEGORY_AS_FOUNDATIONAL_PHYSICS_WITHOUT_BRIDGE = REJECTED
TQFT_CLASSIFICATION_AS_GENERAL_QFT_OR_QG = REJECTED
HIGHER_CATEGORY_STRUCTURE_AS_PHYSICAL_ONTOLOGY = REJECTED
ALLOWED_PROCESS_AS_ACTUAL_DYNAMICS = REJECTED
```

The same source can expose an important boundary without becoming a member of a new framework. In particular, sources 09, 19, and 21–23 are retained partly because they make the generic-mathematics and classification firewalls auditable.

## 6. Dynamics, realization, and empirical boundary

The corpus contains several kinds of dynamics or evolution, and they remain distinct:

- supplied quantum channels, Hamiltonians, or process composition in CQM/process theories;
- Hamiltonian flows on a spectral presheaf;
- relative Cauchy evolution in already source-bound AQFT;
- region-amplitude gluing in the general-boundary proposal;
- causal constraints and higher-order transformations in causal-process formalisms;
- classical GR composition and a nascent quantum extension in operational GR.

None is promoted to a universal physical history selector for the historical umbrella.

The empirical lane found a real but narrow experimental record for causally nonseparable quantum-switch processes, together with a current review of interpretations and limitations. It did not find a direct experiment selecting topoi, effectuses, generic categorical probability, axiomatic TQFT, higher-category classification, the general-boundary QG proposal, or category theory as a foundational ontology.

```text
DIRECT_FRAMEWORK_LEVEL_FW_CAT_EXPERIMENT = NONE_IDENTIFIED
INDEFINITE_CAUSAL_ORDER_EXPERIMENTS = BOUNDED_ADJACENT_PROCESS_EVIDENCE
EXPERIMENTAL_EVIDENCE_BACK_PROJECTED_TO_CATEGORY_THEORY = NO
NEW_EMPIRICAL_PREDICTION = NONE
NEW_PHENOMENOLOGY = NONE
NEW_PARAMETER_ESTIMATION = NONE
```

## 7. Corpus-freeze and readiness statement

The corpus contains historical primaries, current syntheses, explicit comparisons between nearby programs, reconstruction and realization sources, generic-mathematics controls, programmatic quantum-gravity sources, dynamics and causality sources, and a bounded experimental-status record. It is intentionally heterogeneous because the later gate must test whether the historical umbrella is heterogeneous.

```text
IDENTITY_COVERAGE = PASS
CORE_STRUCTURE_COVERAGE = PASS
CQM_BOUNDARY_COVERAGE = PASS
GPTOPT_BOUNDARY_COVERAGE = PASS
GENERIC_MATHEMATICS_FIREWALL = PASS
LIMITATION_AND_NEGATIVE_COVERAGE = PASS
DYNAMICS_AND_REALIZATION_COVERAGE = PASS
EMPIRICAL_STATUS_COVERAGE = PASS
CURRENT_SYNTHESIS_COVERAGE = PASS
CORPUS_SATURATION = SUFFICIENT_FOR_LATER_TAXONOMY
LITERATURE_COMPLETE = NO_CLAIM
UNIVERSALLY_EXHAUSTIVE = NO_CLAIM
STAGE2_TAXONOMY_GATE_JUSTIFIED = YES
NEXT_RECOMMENDED_OPERATION = FW_CAT_TAXONOMY_GATE_STAGE2
NEXT_OPERATION_AUTHORIZED = NO
FCP27_SELECTED = NO
```

## 8. Scientific non-effects and stop boundary

```text
FW_CAT_REGISTER_STATUS_CHANGED = NO
FW_CAT_TAXONOMY_ADJUDICATED = NO
FRAMEWORK_CREATED = NO
FRAMEWORK_SPLIT_OR_MERGE = NO
FRAMEWORK_REMOVED = NO
K1_K10_INSTANTIATED = NO
PAIRWISE_COMPARISON = NO
CONVERGENCE_CREDIT = NO
RECURRENCE_RECOMPUTATION = NO
FCP26_STAGE2_STARTED = NO
FCP27_SELECTED = NO
ATOMIC_CLOCK_WORK = NO
OPEN_DOCKET_EXECUTION = NONE
REMOTE_WRITE = NONE
```
