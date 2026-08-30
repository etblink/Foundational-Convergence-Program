# Causal-Process / Indefinite-Causal-Order Source Selection Audit — Stage 1

**Version:** 0.1.0  
**Operation ID:** `CAUSAL_PROCESS_ICO_SOURCE_INTAKE_STAGE1`  
**Preregistration commit:** `554c6d129f5822a8a875ac843d4d205f441b85a9`  
**Search cutoff:** `2026-08-29`

## 1. Audit verdict

```text
SOURCE_SELECTION_AUDIT = PASS
SEARCH_PROTOCOL_EXECUTED = YES
SEARCH_PASSES_COMPLETE = 3_OF_3
DISCOVERY_LANES_COMPLETE = 13_OF_13
MEANINGFUL_CANDIDATES_REVIEWED = 44
ADMITTED_FROZEN_SOURCE_COUNT = 33
NEW_EXTERNAL_SOURCE_COUNT = 28
REUSED_CANONICAL_SOURCE_COUNT = 5
REJECTED_COUNT = 10
DEFERRED_COUNT = 1
DUPLICATE_SOURCE_REGISTER_ROWS_CREATED = 0
COUNTEREVIDENCE_COVERAGE = PASS
OVERLAP_COVERAGE = PASS
TQ1_TQ12_COVERAGE = PASS
SATURATION = PASS_AT_CURRENT_DECLARED_SEARCH_SCOPE
```

The audit evaluates source selection only. It does not adjudicate scientific taxonomy.

## 2. Frozen search contract executed

All D1–D13 lanes and Q1–Q13 query families were used. Search was limited to the preregistered surface classes:

```text
S1 = GENERAL_SCHOLARLY_WEB_DISCOVERY
S2 = ARXIV_RECORDS_AND_FULL_TEXT
S3 = DOI_CROSSREF_PUBLISHER_AND_JOURNAL_RECORDS
S4 = INSPIRE_HEP
S5 = AUTHOR_OR_INSTITUTIONAL_PUBLICATION_PAGES_FOR_IDENTITY_OR_ACCESS
S6 = BIBLIOGRAPHIC_TRAILS_FROM_ADMITTED_PRIMARY_OR_AUTHORITATIVE_REVIEW_SOURCES
```

No unlisted search surface was deliberately introduced.

```text
PASS_1 = BROAD_CORE_LINEAGE_AND_FAMILY_DISCOVERY
PASS_2 = COUNTEREVIDENCE_BOUNDARY_AND_ADVERSE_SEARCH
PASS_3 = GAP_IDENTITY_DUPLICATE_AND_PROPOSITION_REDUNDANCY_AUDIT
```

Pass 1 exposed a heterogeneous landscape rather than one obvious object. Pass 2 targeted physical-realizability limits, causal-inequality limitations, switch/process-matrix distinctions, composition problems, dynamics interpretation, simulation caveats, and QG embedding gaps. Pass 3 resolved source identity, reuse, redundancy, and saturation.

## 3. Lane coverage

| Lane | Status | Frozen-source count | Audit note |
|---|---|---:|---|
| D1 | `PASS` | 6 | Core process-matrix definitions, current synthesis, causality and composition/dynamics boundaries. |
| D2 | `PASS` | 9 | ICO, causal nonseparability, quantum control/resource, relativistic interpretation. |
| D3 | `PASS` | 11 | Quantum switch, QC-QC, implementation, simulation and current experimental lineages. |
| D4 | `PASS` | 6 | Supermaps, combs, categorical higher-order semantics, QC-QC and spacetime realizability. |
| D5 | `PASS` | 6 | Causal witness/nonseparability and resource-theory structure. |
| D6 | `PASS` | 15 | Causal inequalities, noncausality, no-go/counterboundaries, current Bell-like tests. |
| D7 | `PASS` | 7 | GPT/operational, causaloid, cyclic-model and post-quantum higher-order boundaries. |
| D8 | `PASS` | 3 | Causal categories, categorical semantics and causaloid diagrammatic bridge. |
| D9 | `PASS` | 17 | Realizability, simulation, local-lab/spacetime limits and experimental caveats. |
| D10 | `PASS` | 14 | Composition, transformations, resource structure and assumption-sensitive dynamics. |
| D11 | `PASS` | 9 | Experiment, witness, realizability and conditional/device-independent status. |
| D12 | `PASS` | 7 | QG motivation, temporal order, cyclic/local-quantum structures and embedding limits. |
| D13 | `PASS` | 17 | Current synthesis, history, critique, interpretation and taxonomy boundaries. |

No lane required a post-hoc query-family expansion.

## 4. Canonical reuse audit

Exactly five existing canonical records were reused:

```text
SRC-FW-CAT-STAGE1-ORESHKOV-COSTA-BRUKNER-2012
SRC-FW-CAT-STAGE1-COECKE-LAL-2013
SRC-FW-CAT-STAGE1-KISSINGER-UIJLEN-2019
SRC-FW-CAT-STAGE1-RUBINO-2017
SRC-FW-CAT-STAGE1-ROZEMA-2024
```

They were reconsidered for proposition-specific Stage-1 roles rather than admitted automatically. Their existing Source Register rows remain unchanged and no duplicates are created.

```text
LEGACY_VOTING_POWER = NONE
CANONICAL_REUSE_AS_AUTOMATIC_ADMISSION = NO
REUSED_PROPOSITION_SILENTLY_BROADENED = NO
```

## 5. New-source duplicate audit

Before assigning `SRC-CPICO-*` IDs, the current Source Register was checked for new-prefix and load-bearing-title/identifier collisions. No matching rows were found. The Source Register change is append-only; its pre-operation content is required to remain a byte-identical prefix of the candidate register.

## 6. Meaningful rejected/deferred candidates

| Candidate | Disposition | Reason |
|---|---|---|
| Branciard et al. 2016, *Witnesses of causal nonseparability* | `REJECT_REDUNDANT` | Araújo 2015 plus current Costa 2026 synthesis cover the taxonomy-level witness proposition without losing a distinct boundary burden. |
| Goswami et al. 2018, quantum-switch indefinite-order experiment | `REJECT_REDUNDANT_IMPLEMENTATION` | Independent implementation acknowledged; Rubino 2017 plus Rozema 2024 and 2026 current tests adequately cover implementation/status. |
| Antesberger et al. 2024, quantum-switch process tomography | `REJECT_TOO_NARROW` | Specialized tomography does not add a distinct framework-identity or realizability burden beyond stronger admitted sources. |
| 2023 energetically constrained quantum-switch simulation comparison | `REJECT_TOO_NARROW` | Restricted-operation comparison is narrower than the general simulation boundary supplied by Chiribella 2013 and Bavaresco 2025. |
| Hardy 2007, *Quantum gravity computers* | `REJECT_REDUNDANT` | Programmatic causaloid extension; Hardy 2005 plus Sakharwade–Hardy 2024 cover identity and current bridge. |
| Hardy 2008/2010 Formalism Locality development | `REJECT_REDUNDANT` | Useful lineage but no taxonomy-critical proposition beyond the admitted causaloid sources. |
| Noncausal Page–Wootters circuits (2022) | `REJECT_MODEL_SPECIFIC` | Clock-model realization is narrower than admitted time-delocalized/QC-QC realizability sources. |
| *A map of indefinite causal order* (2025 preprint) | `REJECT_LOWER_AUTHORITY_REDUNDANT_SYNTHESIS` | Current synthesis is carried by Costa et al. 2026 and Rozema et al. 2024. |
| Ghose 2026, *Indefinite Causal Order from Failure-to-Glue* | `DEFER_SPECULATIVE_IDENTITY` | Recent single-paper categorical/QG proposal; potentially relevant if independently developed, but insufficient for a load-bearing Stage-1 role. |
| 2023 single-shot/geometric process-matrix discrimination paper | `REJECT_TOO_NARROW` | Technical information task without distinct identity or limiting proposition. |
| 2022 quantum-refrigeration/thermodynamic switch application | `REJECT_APPLICATION_SPECIFIC` | Application-specific performance does not materially alter source-bound identity, realizability, or empirical-framework burden. |

No rejection was based on whether a source strengthened or weakened a future framework-admission case.

## 7. Counterevidence coverage

```text
PHYSICAL_REALIZABILITY_LIMITS = COVERED
CAUSAL_INEQUALITY_LIMITS = COVERED
QUANTUM_SWITCH_VS_GENERAL_PROCESS_MATRIX = COVERED
IMPLEMENTATION_CAVEATS = COVERED
RESOURCE_THEORY_LIMITS = COVERED
POSTSELECTION_OR_SIMULATION_BOUNDARIES = COVERED
LOCAL_LAB_ASSUMPTIONS = COVERED
HIGHER_ORDER_TRANSFORMATION_VS_ICO = COVERED
DEFINITE_ORDER_OR_CAUSAL_EXPLANATION_BOUNDARIES = COVERED
FRAMEWORK_IDENTITY_CAUTIONS = COVERED
QG_EMBEDDING_GAPS = COVERED
COMPOSITION_LIMITS = COVERED
DYNAMICS_INTERPRETATION_SENSITIVITY = COVERED
```

A crucial retained distinction is:

```text
MATHEMATICALLY_VALID_GENERALIZED_PROCESS
!=
STANDARD_QM_REALIZATION_ON_SUITABLE_SUBSYSTEMS
!=
CLASSICAL_SPACETIME_CLOSED_LAB_REALIZATION
```

The corpus contains direct evidence on all three levels.

## 8. Existing-framework overlap audit

### CQM

Categorical causal semantics can represent fixed and higher-order causal structure, switches and process matrices. That establishes representation overlap, not source-bound `FW-CQM` identity coverage. No CQM identity expansion is performed.

### GPTOPT

Process matrices, causaloid work, operational reconstructions and higher-order boxworld have operational/probabilistic relations. Common operational language is not treated as proof that the entire landscape is already `FW-GPTOPT`.

### Higher-order process machinery

Supermaps and quantum combs are admitted as a necessary boundary: ordinary higher-order quantum transformations include definite-order physically realizable structures. Higher order therefore does not entail ICO.

### CST and QG

Causal-order language is not mapped to causal set theory. QG-motivated sources survive only when they directly concern dynamic/indefinite causal structure and retain explicit embedding limitations.

## 9. TQ1–TQ12 readiness audit

Every preregistered taxonomy-readiness target has `ADEQUATE_COVERAGE`. This means the later gate can responsibly ask the question; it does not answer it.

```text
TQ1 = ADEQUATE_COVERAGE
TQ2 = ADEQUATE_COVERAGE
TQ3 = ADEQUATE_COVERAGE
TQ4 = ADEQUATE_COVERAGE
TQ5 = ADEQUATE_COVERAGE
TQ6 = ADEQUATE_COVERAGE
TQ7 = ADEQUATE_COVERAGE
TQ8 = ADEQUATE_COVERAGE
TQ9 = ADEQUATE_COVERAGE
TQ10 = ADEQUATE_COVERAGE
TQ11 = ADEQUATE_COVERAGE
TQ12 = ADEQUATE_COVERAGE
```

## 10. Saturation assessment

Late Pass-3 searches predominantly returned already admitted lineages, duplicate versions/secondary presentations, narrower applications, implementation-specific variants covered by stronger sources, lower-authority reviews, or speculative single-paper proposals.

No unresolved source gap was identified that would predictably change whether a later taxonomy adjudication is responsible.

```text
LITERATURE_COMPLETE = NO
UNIVERSALLY_EXHAUSTIVE = NO
SATURATION = PASS_AT_CURRENT_DECLARED_SEARCH_SCOPE
```

## 11. Selection-bias audit

```text
PRO_SINGLE_FRAMEWORK_BIAS = CONTROLLED
PRO_FRAGMENTATION_BIAS = CONTROLLED
ANTI_FRAMEWORK_BIAS = CONTROLLED
RECENCY_BIAS = CONTROLLED
FAMOUS_SOURCE_BIAS = CONTROLLED
CQM_OVERLAP_BIAS = CONTROLLED
GPTOPT_OVERLAP_BIAS = CONTROLLED
PROCESS_MATRIX_CENTRALITY_BIAS = CONTROLLED
QUANTUM_SWITCH_IMPLEMENTATION_BIAS = CONTROLLED
QG_MOTIVATION_BIAS = CONTROLLED
DYNAMICS_RESCUE_BIAS = CONTROLLED
NEGATIVE_RESULT_BIAS = CONTROLLED
```

Controls include primary-source priority, separate reuse accounting, mandatory adverse search, distinct process/resource/inequality/realizability lanes, current synthesis without review voting, and preservation of mutually tensioned results. No scalar bias score is assigned.

## 12. Corpus sufficiency

```text
SOURCE_CORPUS = SUFFICIENT_AT_CURRENT_DECLARED_SEARCH_SCOPE
STAGE2_TAXONOMY_QUESTION = SUPPORTED_FOR_LATER_ADJUDICATION
STAGE2_TAXONOMY_ADJUDICATED = NO
NEW_FRAMEWORK = NO
```

A later taxonomy gate must freeze its adjudication rule before interpreting this corpus as one object, multiple objects, an existing-framework relation, a model/process/resource class, a deferred remainder, or no framework.