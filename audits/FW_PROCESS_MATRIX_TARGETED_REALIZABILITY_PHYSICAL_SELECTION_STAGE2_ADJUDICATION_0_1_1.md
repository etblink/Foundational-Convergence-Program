# FW-PROCESS-MATRIX Targeted Realizability / Physical-Selection Stage 2 — Adjudication

**Version:** 0.1.1  
**Operation:** `FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_AND_PHYSICAL_SELECTION_STAGE2`  
**Repair operation:** `POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR`  
**Method:** FCP Method 0.2.1  
**Status:** `SCIENTIFIC_ADJUDICATION_REPAIRED__AX_AND_SYNTHESIS_VALUES_UNCHANGED`

## 0. Supersession and repair boundary

This artifact supersedes version `0.1.0` for current Stage-2 scientific use while preserving `0.1.0` unchanged as historical provenance.

```text
SUPERSEDES = audits/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_ADJUDICATION_0_1_0.md
SUPERSEDED_BLOB = 51b72e9679d0dac6ba8d0769312d2e50d3274cbc
CONTROLLING_PARENT_PREREGISTRATION_0_1_0_BLOB = db6ec71608f09b734a36130d1ee0743e4111daf7
CONTROLLING_DELTA_PREREGISTRATION_0_1_1_BLOB = db6106971156fb98ac04b6045c111a91d17f99d6
CANONICAL_STAGE1_SOURCE_INTAKE_BLOB = 4a594a67f2189f1663740cc76d5ae56e8b931ebc
EXTERNAL_AUDIT_RESPONSE_BLOB = bd199e3c9f3b0c78af3345f3d623500350e01310
INDEPENDENT_ADJUDICATION_BLOB = 1d5db6973a2510d808cc009c7e096fb7520ed5b7

NEW_EXTERNAL_SOURCE_SEARCH = 0
NEW_SOURCE_ADMISSION = 0
SOURCE_UNIVERSE_CHANGE = 0
AX_VALUE_CHANGE = 0
A_F_VALUE_CHANGE = 0
PAIRWISE_READJUDICATION = 0
CONVERGENCE_CREDIT_CHANGE = 0
RECURRENCE_RECOMPUTATION = 0
EMPIRICAL_TARGET_SELECTION = 0
FCP27_SELECTION = 0
```

The repair implements accepted Project Lead findings F1–F4 only:

```text
F1 = INSTANTIATE_REQUIRED_NO_GO_POSITIVE_CLASS_AND_UNRESOLVED_REMAINDER_TABLES
F2 = REMOVE_GUERIN_CRF_2018_AS_POSITIVE_AX4_SUPPORT
F3 = CLARIFY_FELLOUS_ASIANI_2023_AS_AX9_BOUNDARY_CONTEXT_NOT_POSITIVE_IMPLEMENTATION_EXISTENCE_EVIDENCE
F4 = REPLACE_PAIRWISE_INVARIANCE_GLOSS_WITH_NON_READJUDICATION_LANGUAGE
```

## 1. Sole question and semantic firewalls

Stage 2 asks only what the exact frozen 27-source corpus establishes about the relation between the formally valid `FW-PROCESS-MATRIX` domain and physically realizable process structures when representation, postselection, deterministic standard-QM realization, subsystem realization, closed laboratories, classical-spacetime embedding, and concrete implementation remain distinct.

```text
FORMAL_PROCESS_VALIDITY != PHYSICAL_REALIZABILITY
MATHEMATICAL_REPRESENTATION != PHYSICAL_IMPLEMENTATION
PROBABILISTIC_PRE_POSTSELECTION_REPRESENTATION != DETERMINISTIC_PHYSICAL_REALIZATION
STANDARD_QM_MODEL_REALIZATION != CLOSED_LOCAL_LAB_REALIZATION
TIME_DELOCALIZED_SUBSYSTEM_REALIZATION != LOCALIZED_EVENT_REALIZATION
QC_QC_REALIZABILITY != GENERAL_W_DOMAIN_REALIZABILITY
QUANTUM_SWITCH_REALIZATION != GENERAL_PROCESS_MATRIX_REALIZATION
PURE_PROCESS_RESULT != GENERAL_MIXED_PROCESS_RESULT
BIPARTITE_RESULT != GENERAL_MULTIPARTITE_RESULT
NECESSARY_CONDITION != SUFFICIENT_CONDITION
CANDIDATE_POSTULATE != ESTABLISHED_SELECTION_LAW
COMPOSITION_FAILURE != INDIVIDUAL_PROCESS_INVALIDITY
FINE_GRAINED_DEFINITE_ACYCLIC_STRUCTURE != COARSE_OPERATIONAL_CAUSAL_SEPARABILITY
SPACETIME_NO_GO_UNDER_NAMED_ASSUMPTIONS != WHOLE_FRAMEWORK_IMPOSSIBILITY
EXPERIMENTAL_IMPLEMENTATION_OF_A_SUBCLASS != FRAMEWORK_LEVEL_EMPIRICAL_SELECTION
RESOURCE_THEORY_STATUS != PHYSICAL_REALIZABILITY
MODEL_SPECIFIC_ENERGY_OR_HARDWARE_CONSTRAINT != FRAMEWORK_WIDE_SELECTION_RULE
```

## 2. Complete 27-source proposition ledger

Every frozen source appears exactly once. `R0-R6` labels remain non-monotone. `R0_TO_CONDITIONAL_R1` remains a conditional/postselected representation relation, not deterministic general realization.

| Source ID | Primary proposition class | Scope | R0–R6 relation | Assumption vector | Stage-2 role | Proposition used in axes | Generality ceiling | Lineage / repair note |
|---|---|---|---|---|---|---|---|---|
| `SRC-FW-CAT-STAGE1-ORESHKOV-COSTA-BRUKNER-2012` | `FORMAL_VALIDITY_OR_DOMAIN_CHARACTERIZATION` | `SCOPE_W` | `R0` | `A_STDQM;A_OTHER=LOCAL_LAB_PROCESS_MATRIX_OPERATIONAL_SETTING` | formal-domain foundation | AX1,AX2,AX8 | general formal `W` only; no general physical-realization theorem | reused foundational source |
| `SRC-CPICO-CHIRIBELLA-SWITCH-2013` | `SIMULATION_OR_DEFINITE_ORDER_ALTERNATIVE` | `SCOPE_SWITCH` | `R1` | `A_STDQM;A_OTHER=FIXED_ORDER_SAME_QUERY_RESOURCE_MODEL` | positive switch plus simulation boundary | AX4 | switch only | reused subclass evidence |
| `SRC-CPICO-ORESHKOV-GIARMATZI-2016` | `FORMAL_VALIDITY_OR_DOMAIN_CHARACTERIZATION` | `SCOPE_W` | `R0` | `A_STDQM` | causal/separability classification | AX8 synthesis | classification is not realization | reused; no realization bridge inferred |
| `SRC-CPICO-JIA-SAKHARWADE-2018` | `COMPOSITION_OR_GLOBALIZATION_COMPATIBILITY` | `SCOPE_W` | `R0` | `A_OTHER=PARALLEL_TENSOR_COMPOSITION_SETTING` | negative universal-composition boundary | AX5,AX6 | arbitrary tensor closure is not universal; individual invalidity does not follow | reused |
| `SRC-CPICO-ORESHKOV-TIME-DELOCALIZED-2019` | `SUBSYSTEM_FACTORIZATION_OR_TIME_DELOCALIZED_REALIZATION` | `SCOPE_OTHER_SUBCLASS` | `R1/R2/R3` | `A_STDQM;A_FACT;A_TD` | positive selected class | AX4,AX8 | selected time-delocalizable class only | reused |
| `SRC-CPICO-PURVES-SHORT-2021` | `NO_GO_OR_EXCLUSION_BOUNDARY` | `SCOPE_CI` | `R1` | `A_STDQM;A_OTHER=DECLARED_OPERATIONAL_SCENARIO` | scenario-bound no-go | AX5,AX8 | declared scenario only; not universal | reused; later counterboundaries retained |
| `SRC-CPICO-WECHS-QCQC-2021` | `DETERMINISTIC_STANDARD_QM_REALIZATION` | `SCOPE_QCQC` | `R1` | `A_STDQM` | positive QC-QC realization | AX4 | QC-QC only | reused |
| `SRC-CPICO-BARRETT-CYCLIC-2021` | `INTERPRETIVE_OR_TAXONOMIC_BOUNDARY` | `SCOPE_OTHER_SUBCLASS` | `R0/R1` | `A_STDQM;A_OTHER=CYCLIC_CAUSAL_MODEL_AND_UNITARY_PROCESS_SETTING` | structural boundary/synthesis | AX8 synthesis | structural relation only | reused; no load-bearing realization proposition |
| `SRC-CPICO-WECHS-TIME-DELOCALIZED-2023` | `SUBSYSTEM_FACTORIZATION_OR_TIME_DELOCALIZED_REALIZATION` | `SCOPE_MULTIPARTITE_RESTRICTED` | `R1/R2/R3` | `A_STDQM;A_FACT;A_TD;A_OTHER=UNITARY_EXTENSION_TRIPARTITE_CLASS` | positive restricted class/counterboundary | AX4,AX5,AX8 | restricted unitary extensions only | reused |
| `SRC-CPICO-VANDERLUGT-DI-2023` | `CONCRETE_EXPERIMENTAL_IMPLEMENTATION_OR_CERTIFICATION` | `SCOPE_SWITCH` | `R5_ASSUMPTION_BOUNDARY` | `A_RELC;A_FREE;A_OTHER=EXTENDED_PARTY_CERTIFICATION_SETTING` | assumption-dependent certification boundary | AX8 synthesis | conditional certification; not general realization | reused; canonical Stage-1 role controls after repair |
| `SRC-FW-CAT-STAGE1-ROZEMA-2024` | `INTERPRETIVE_OR_TAXONOMIC_BOUNDARY` | `SCOPE_IMPLEMENTATION` | `R6` | `A_MODEL;A_OTHER=IMPLEMENTATION_SPECIFIC_CAVEATS` | implementation synthesis | AX9 synthesis | implementation review only | reused; review not independent positive implementation evidence |
| `SRC-CPICO-BAVARESCO-SIMULATION-2025` | `SIMULATION_OR_DEFINITE_ORDER_ALTERNATIVE` | `SCOPE_SWITCH` | `R1` | `A_STDQM;A_OTHER=FIXED_ORDER_QUERY_MODEL` | fixed-order obstruction; restricted/postselected alternatives preserved | AX5 synthesis,AX8 | switch/query-model scope only | reused |
| `SRC-CPICO-COSTA-REVIEW-2026` | `INTERPRETIVE_OR_TAXONOMIC_BOUNDARY` | `SCOPE_W` | `R0-R6_SYNTHESIS` | `A_OTHER=REVIEW_SYNTHESIS` | specialist synthesis | AX1-AX10 synthesis only | review is not an independent theorem or vote | reused; no double counting |
| `SRC-CPICO-SALZGER-VILASINI-2026` | `CLOSED_LOCAL_LAB_REALIZATION_OR_RESTRICTION` | `SCOPE_OTHER_SUBCLASS` | `R4/R5` | `A_CLOSEDLAB;A_CLSPACETIME;A_ONEUSE;A_OTHER=LOCAL_ORDER` | assumption-scoped restriction plus surviving class | AX4,AX5,AX7,AX8 | named closed-lab/classical-spacetime assumptions only | reused |
| `SRC-CPICO-GUO-VBC-2026` | `CONCRETE_EXPERIMENTAL_IMPLEMENTATION_OR_CERTIFICATION` | `SCOPE_IMPLEMENTATION` | `R6` | `A_MODEL;A_OTHER=PHOTONIC_SWITCH_VBC_TEST_AND_REPORTED_CAVEATS` | positive concrete subclass implementation | AX9 | photonic-switch implementation only | reused |
| `SRC-CPICO-QU-BELLLIKE-2026` | `CONCRETE_EXPERIMENTAL_IMPLEMENTATION_OR_CERTIFICATION` | `SCOPE_IMPLEMENTATION` | `R6` | `A_MODEL;A_OTHER=EXTENDED_PHOTONIC_SWITCH_TEST_AND_REPORTED_CAVEATS` | positive concrete subclass implementation | AX9 | extended photonic-switch implementation only | reused; caveats preserved |
| `SRC-FWPM-REAL-ARAUJO-PURIFICATION-2017` | `NECESSARY_PHYSICALITY_CONDITION` | `SCOPE_W` | `R0_TO_CANDIDATE_R1_FILTER` | `A_PURE;A_STDQM;A_OTHER=PURIFICATION_POSTULATE` | candidate necessary filter/exclusion | AX1,AX5,AX8,AX10 | necessary candidate only; not sufficient/complete | new Stage-1 source |
| `SRC-FWPM-REAL-SILVA-MULTITIME-2017` | `PROBABILISTIC_OR_POSTSELECTED_REALIZATION` | `SCOPE_W` | `R0_TO_CONDITIONAL_R1` | `A_STDQM;A_POSTSEL` | positive general-`W` conditional representation | AX3,AX10 | arbitrary `W` at probabilistic/postselected layer; not deterministic | new; material general result |
| `SRC-FWPM-REAL-GUERIN-CRF-2018` | `REPRESENTATION_OR_EQUIVALENCE` | `SCOPE_PURE` | `R0` | `A_PURE;A_STDQM;A_OTHER=PURE_PROCESS_CAUSAL_REFERENCE_FRAME_SETTING` | pure-process structural interpretation | AX8 synthesis,AX10 | pure only; not general mixed `W`; not positive R1 realization support | **F2 repaired: removed as positive AX4 support** |
| `SRC-FWPM-REAL-GUERIN-COMPOSITION-2019` | `COMPOSITION_OR_GLOBALIZATION_COMPATIBILITY` | `SCOPE_W` | `R0` | `A_OTHER=BASIC_COMPOSITION_ASSUMPTIONS_OF_SOURCE` | no-general-composition-rule boundary | AX5,AX6,AX10 | no general rule under source assumptions; not individual invalidity | new |
| `SRC-FWPM-REAL-PAUNKOVIC-SPACETIME-2020` | `INTERPRETIVE_OR_TAXONOMIC_BOUNDARY` | `SCOPE_SWITCH` | `R5` | `A_CLSPACETIME;A_OTHER=SPACETIME_EVENT_ORDER_COMPARISON` | causal-order/spacetime-order boundary | AX7,AX10 | switch order does not establish superposed spacetime event order | new |
| `SRC-FWPM-REAL-YOKOJIMA-REVERSIBILITY-2021` | `NO_GO_OR_EXCLUSION_BOUNDARY` | `SCOPE_PURE` | `R1` | `A_PURE;A_REV;A_STDQM;A_OTHER=TWO_SLOT_SUPERCHANNEL_SETTING` | restricted pure positive structure plus exclusion | AX4,AX5,AX10 | pure bipartite/two-slot only | new |
| `SRC-FWPM-REAL-BAUMANN-PAGEWOOTTERS-2022` | `SUBSYSTEM_FACTORIZATION_OR_TIME_DELOCALIZED_REALIZATION` | `SCOPE_OTHER_SUBCLASS` | `R1/R2` | `A_STDQM;A_FACT;A_OTHER=MULTI_CLOCK_PAGE_WOOTTERS_MODEL` | positive model class plus exclusions | AX4,AX5,AX10 | multi-clock Page-Wootters class only | new |
| `SRC-FWPM-REAL-FELLOUS-ASIANI-ENERGY-2023` | `SIMULATION_OR_DEFINITE_ORDER_ALTERNATIVE` | `SCOPE_MODEL` | `R1/R6_DISTINCTION` | `A_STDQM;A_MODEL;A_OTHER=ENERGY_CONSTRAINED_SIMULATION_MODEL` | model-specific energetic implementation distinction | AX9 synthesis,AX10 | model-specific energy/hardware only; not positive concrete-implementation existence evidence | **F3 repaired: AX9 role explicitly boundary/context only** |
| `SRC-FWPM-REAL-VILASINI-RENNER-PRA-2024` | `NO_GO_OR_EXCLUSION_BOUNDARY` | `SCOPE_OTHER_SUBCLASS` | `R5` | `A_RELC;A_FINE;A_CLSPACETIME;A_OTHER=SOURCE_NAMED_EMBEDDING_ASSUMPTIONS` | spacetime/fine-graining exclusion | AX5,AX7,AX8,AX10 | assumption-scoped ICO/cyclic boundary; not framework impossibility | new; PRA 110, 022227 (2024) + 2026 erratum controls; obsolete intermediate theorem excluded |
| `SRC-FWPM-REAL-VILASINI-RENNER-PRL-2024` | `NO_GO_OR_EXCLUSION_BOUNDARY` | `SCOPE_OTHER_SUBCLASS` | `R5` | `A_CLSPACETIME;A_LOCALIZED;A_FINE;A_RELC` | fixed/classical-spacetime localization boundary | AX5,AX7,AX8,AX10 | named fixed-spacetime/localization assumptions only | new |
| `SRC-FWPM-REAL-SALZGER-VILASINI-2025` | `CLASSICAL_SPACETIME_EMBEDDING_OR_RESTRICTION` | `SCOPE_QCQC` | `R4/R5` | `A_STDQM;A_CLSPACETIME;A_FINE;A_OTHER=CAUSAL_BOX_MAPPING_ASSUMPTIONS` | positive spacetime-compatible QC-QC realization | AX4,AX7,AX10 | QC-QC only; no general-`W` bridge | new |

```text
LEDGER_SOURCE_COUNT = 27
ALL_FROZEN_SOURCES_ACCOUNTED_FOR = YES
SILENT_SOURCE_OMISSION = NO
SOURCE_AS_VOTE = NO
```

## 3. General framework-wide selection criterion: G1–G8

```text
G1_GENERAL_W_SCOPE = NOT_SATISFIED_BY_ANY_COMPLETE_CRITERION
G2_PHYSICAL_NOT_MERELY_REPRESENTATIONAL_CONTENT = PARTIALLY_SATISFIED_BY_RESTRICTED_RESULTS
G3_NECESSARY_AND_SUFFICIENT_BURDEN = FAIL__NO_PC10_GENERAL_W_RESULT
G4_EXPLICIT_ASSUMPTIONS = PASS_FOR_USED_RESULTS
G5_NO_FALSE_GENERALIZATION_FROM_SUBCLASS = PASS_AS_ADJUDICATION_CONTROL
G6_COUNTEREXAMPLES_AND_NO_GO_BOUNDARIES_ACCOUNTED_FOR = PASS_AS_ADJUDICATION_CONTROL
G7_COMPOSITION_GLOBALIZATION_BURDEN = FAIL_FOR_COMPLETE_CRITERION__GENERAL_CLOSURE_NOT_ESTABLISHED
G8_EMPIRICAL_SUBCLASS_EVIDENCE_NOT_USED_TO_FILL_THEORETICAL_GAPS = PASS_AS_ADJUDICATION_CONTROL
GENERAL_COMPLETE_SELECTION_CRITERION_BURDEN = NOT_MET
```

Araújo et al. provide a candidate necessary condition, not a necessary-and-sufficient law. Silva et al. provide a general conditional/postselected representation, not a deterministic selection law. Restricted deterministic, subsystem, spacetime, and implementation results cannot fill those general gaps.

## 4. Required assumption-sensitive no-go / exclusion table

Each row instantiates the preregistered tuple:

```text
<SOURCE_BOUND_SCOPE, ASSUMPTION_VECTOR, EXCLUDED_REALIZATION_OR_PROPERTY, ESCAPE_OR_NONCOVERED_DOMAIN>
```

| Source / boundary | Source-bound scope | Assumption vector | Excluded realization or property | Escape or noncovered domain |
|---|---|---|---|---|
| `SRC-CPICO-JIA-SAKHARWADE-2018` | `SCOPE_W` as a counterexample to universal tensor closure | `A_OTHER=PARALLEL_TENSOR_COMPOSITION_SETTING` | unrestricted tensor-product closure of arbitrary valid processes | compatible/restricted compositions may exist; failure does not imply either constituent process is individually invalid |
| `SRC-CPICO-PURVES-SHORT-2021` | `SCOPE_CI` | `A_STDQM;A_OTHER=DECLARED_OPERATIONAL_SCENARIO` | causal-inequality realization in the declared operational scenario | results outside that scenario are not covered; later time-delocalized counterboundaries remain admissible |
| `SRC-CPICO-BAVARESCO-SIMULATION-2025` | `SCOPE_SWITCH` | `A_STDQM;A_OTHER=FIXED_ORDER_QUERY_MODEL` | deterministic fixed-order simulation at the declared query/resource burden | restricted or postselected alternatives remain noncovered by the obstruction |
| `SRC-FWPM-REAL-ARAUJO-PURIFICATION-2017` | `SCOPE_W` candidate filter | `A_PURE;A_STDQM;A_OTHER=PURIFICATION_POSTULATE` | processes failing the source-bound purifiability necessary condition | satisfying the necessary filter is not sufficient for realization; non-purification selection laws are not ruled out |
| `SRC-FWPM-REAL-GUERIN-COMPOSITION-2019` | `SCOPE_W` as a no-general-rule result | `A_OTHER=BASIC_COMPOSITION_ASSUMPTIONS_OF_SOURCE` | existence of one unrestricted general composition rule under the source assumptions | restricted compatibility rules or altered assumptions remain open; individual-process invalidity does not follow |
| `SRC-FWPM-REAL-YOKOJIMA-REVERSIBILITY-2021` | `SCOPE_PURE` | `A_PURE;A_REV;A_STDQM;A_OTHER=TWO_SLOT_SUPERCHANNEL_SETTING` | broader pure/reversible two-slot structures outside the classified unitary/opposite-order form; purifiable bipartite causal-inequality violation | mixed, nonpurifiable, more general multipartite, or non-two-slot domains are not covered |
| `SRC-FWPM-REAL-BAUMANN-PAGEWOOTTERS-2022` | `SCOPE_OTHER_SUBCLASS` | `A_STDQM;A_FACT;A_OTHER=MULTI_CLOCK_PAGE_WOOTTERS_MODEL` | selected noncausal processes incompatible with the named multi-clock/factorization construction | processes outside that model/factorization choice are not covered |
| `SRC-FWPM-REAL-VILASINI-RENNER-PRA-2024` | `SCOPE_OTHER_SUBCLASS` | `A_RELC;A_FINE;A_CLSPACETIME;A_OTHER=SOURCE_NAMED_EMBEDDING_ASSUMPTIONS` | source-bound cyclic/ICO embedding under the named acyclic-spacetime/fine-graining constraints | relaxing the named relativistic, fine-graining, or classical-spacetime assumptions is noncovered; not whole-framework impossibility |
| `SRC-FWPM-REAL-VILASINI-RENNER-PRL-2024` | `SCOPE_OTHER_SUBCLASS` | `A_CLSPACETIME;A_LOCALIZED;A_FINE;A_RELC` | localized fixed-classical-spacetime realization without the source-bound finer definite acyclic description | nonlocalization or relaxation of the named fixed-spacetime/fine-graining assumptions is noncovered |
| `SRC-CPICO-SALZGER-VILASINI-2026` | `SCOPE_OTHER_SUBCLASS` | `A_CLOSEDLAB;A_CLSPACETIME;A_ONEUSE;A_OTHER=LOCAL_ORDER` | broader higher-order/process structures under the named closed-lab/classical-spacetime/local-order assumptions | selected QC-QC-like structures survive; relaxing the named assumptions is noncovered |

```text
NO_GO_TABLE_PRESENT = YES
NO_GO_ASSUMPTIONS_EXPLICIT = YES
NO_GO_ESCAPE_OR_NONCOVERED_DOMAIN_EXPLICIT = YES
COMPOSITION_FAILURE_PROMOTED_TO_INDIVIDUAL_INVALIDITY = NO
SPACETIME_NO_GO_PROMOTED_TO_FRAMEWORK_IMPOSSIBILITY = NO
```

## 5. Required positive-realization-class table

Every row below satisfies the preregistered RCLASS burden at its declared scope. `SRC-FWPM-REAL-GUERIN-CRF-2018` is intentionally absent as positive AX4 support after F2 repair.

| Positive class / source basis | Class identity | Construction / implementation | Realizability layer | Assumptions | Generality ceiling | RCLASS 1–5 |
|---|---|---|---|---|---|---|
| quantum switch / `SRC-CPICO-CHIRIBELLA-SWITCH-2013` | source-bound switch family | explicit switch realization / simulation contrast | `R1` | `A_STDQM;A_OTHER=FIXED_ORDER_SAME_QUERY_RESOURCE_MODEL` | switch only | PASS |
| time-delocalized isometric class / `SRC-CPICO-ORESHKOV-TIME-DELOCALIZED-2019` | selected isometric/time-delocalized class | explicit standard-QM realization on time-delocalized subsystems | `R1/R2/R3` | `A_STDQM;A_FACT;A_TD` | selected class only | PASS |
| QC-QC / `SRC-CPICO-WECHS-QCQC-2021` | QC-QC | explicit deterministic standard-QM higher-order realization | `R1` | `A_STDQM` | QC-QC only | PASS |
| restricted multipartite time-delocalized class / `SRC-CPICO-WECHS-TIME-DELOCALIZED-2023` | declared unitary-extension tripartite class | explicit time-delocalized realization | `R1/R2/R3` | `A_STDQM;A_FACT;A_TD;A_OTHER=UNITARY_EXTENSION_TRIPARTITE_CLASS` | restricted unitary extensions only | PASS |
| closed-lab/classical-spacetime surviving class / `SRC-CPICO-SALZGER-VILASINI-2026` | selected QC-QC-like surviving structures | realization/restriction result under named closed-lab assumptions | `R4/R5` | `A_CLOSEDLAB;A_CLSPACETIME;A_ONEUSE;A_OTHER=LOCAL_ORDER` | named surviving class only | PASS_AT_DECLARED_RESTRICTED_CLASS |
| pure/reversible two-slot class / `SRC-FWPM-REAL-YOKOJIMA-REVERSIBILITY-2021` | pure two-slot superchannels | source-bound unitary / coherent opposite-order structure | `R1` | `A_PURE;A_REV;A_STDQM;A_OTHER=TWO_SLOT_SUPERCHANNEL_SETTING` | pure bipartite/two-slot only | PASS |
| Page-Wootters controlled-order class / `SRC-FWPM-REAL-BAUMANN-PAGEWOOTTERS-2022` | multi-clock Page-Wootters class | explicit multi-clock/factorization construction | `R1/R2` | `A_STDQM;A_FACT;A_OTHER=MULTI_CLOCK_PAGE_WOOTTERS_MODEL` | named model class only | PASS |
| QC-QC spacetime/causal-box class / `SRC-FWPM-REAL-SALZGER-VILASINI-2025` | QC-QC | explicit causal-box/spacetime mapping | `R4/R5` | `A_STDQM;A_CLSPACETIME;A_FINE;A_OTHER=CAUSAL_BOX_MAPPING_ASSUMPTIONS` | QC-QC only | PASS |
| photonic-switch implementation / `SRC-CPICO-GUO-VBC-2026` | photonic switch test implementation | concrete implementation/certification | `R6` | `A_MODEL;A_OTHER=PHOTONIC_SWITCH_VBC_TEST_AND_REPORTED_CAVEATS` | implementation only | PASS |
| extended photonic-switch implementation / `SRC-CPICO-QU-BELLLIKE-2026` | extended photonic switch test | concrete implementation/certification | `R6` | `A_MODEL;A_OTHER=EXTENDED_PHOTONIC_SWITCH_TEST_AND_REPORTED_CAVEATS` | implementation only | PASS |

```text
POSITIVE_REALIZATION_CLASS_TABLE_PRESENT = YES
POSITIVE_REALIZATION_CLASS_COUNT = 10
GUERIN_CRF_2018_POSITIVE_AX4_SUPPORT = NO
FELLOUS_ASIANI_2023_POSITIVE_R6_EXISTENCE_SUPPORT = NO
```

## 6. Required unresolved-remainder table

The unresolved remainder is not one undifferentiated claim.

| Remainder component | Scope | Established positive information | Established restriction / absence | Unresolved proposition |
|---|---|---|---|---|
| complete physical selection criterion | `SCOPE_W` | necessary filter(s), general conditional representation, restricted positive classes | no PC10 necessary-and-sufficient result; G3/G7 fail for a complete criterion | which condition, if any, exactly selects the physically realizable subset of valid `W` |
| deterministic standard-QM realization | `SCOPE_W` | multiple restricted R1–R3 constructions | no source extends deterministic realization to every valid `W` | whether a general deterministic standard-QM realization exists and, if not, the exact realizable subdomain |
| closed-laboratory realization | `SCOPE_W` | selected QC-QC-like classes survive named assumptions | closed-lab assumptions exclude/restrict broader structures | exact general closed-lab realizable subdomain |
| classical-spacetime embedding | `SCOPE_W` | selected QC-QC spacetime/causal-box embeddings | fixed-spacetime/localization/fine-graining no-go boundaries under named assumptions | whether and under what assumptions general `W` structures admit classical-spacetime embedding |
| composition / globalization | `SCOPE_W` | restricted compatible/composable classes exist | unrestricted tensor/composition closure is not established and source-bound counterexamples exist | a general replacement compatibility/globalization law, if any |
| framework-wide physical realizability remainder | `SCOPE_W` | AX3 established; AX4/AX9 nonempty below general scope | AX1/AX2/AX6/AX7 not established | joint characterization of physically realized, unrealized, and assumption-dependent regions of the valid formal domain |

```text
UNRESOLVED_REMAINDER_TABLE_PRESENT = YES
AX8_UNRESOLVED_PHYSICAL_REALIZABILITY_REMAINDER = NONEMPTY
UNRESOLVED_REALIZABILITY_PROMOTED_TO_FRAMEWORK_FALSE = NO
RESTRICTED_REALIZATIONS_PROMOTED_TO_FRAMEWORK_TRUE = NO
```

## 7. AX1–AX10 — unchanged after repair

```text
AX1_GENERAL_COMPLETE_SELECTION_CRITERION = NOT_ESTABLISHED
AX2_GENERAL_DETERMINISTIC_STANDARD_QM_REALIZATION = NOT_ESTABLISHED
AX3_GENERAL_PROBABILISTIC_OR_POSTSELECTED_REPRESENTATION = ESTABLISHED
AX4_POSITIVE_RESTRICTED_REALIZATION_CLASSES = NONEMPTY
AX5_BROAD_SOURCE_BOUND_NO_GO_OR_EXCLUSION_BOUNDARIES = NONEMPTY
AX6_GENERAL_COMPOSITION_OR_GLOBALIZATION_CLOSURE = NOT_ESTABLISHED
AX7_CLASSICAL_SPACETIME_EMBEDDING_OF_GENERAL_W_DOMAIN = NOT_ESTABLISHED
AX8_UNRESOLVED_PHYSICAL_REALIZABILITY_REMAINDER = NONEMPTY
AX9_CONCRETE_IMPLEMENTATION_EVIDENCE = NONEMPTY_SUBCLASS_ONLY
AX10_NEW_STAGE1_SOURCES_ADD_MATERIAL_PROPOSITIONAL_INFORMATION_BEYOND_LEGACY_CORPUS = YES
```

### AX1
No `SCOPE_W` proposition supplies a physical necessary-and-sufficient criterion satisfying G1–G8. `NOT_ESTABLISHED` is a frozen-corpus conclusion, not proof that such a criterion cannot exist.

### AX2
Deterministic standard-QM realizations are positively source-bound for selected switch, QC-QC, time-delocalized/isometric, pure/reversible, and model-dependent classes. No source extends the map to every formally valid `W`.

### AX3
`SRC-FWPM-REAL-SILVA-MULTITIME-2017` supplies the load-bearing general result: an equivalent multi-time/pre-postselected representation and probabilistic implementation recipe for arbitrary process matrices at the declared conditional layer.

```text
AX3_ESTABLISHED != AX2_ESTABLISHED
AX3_ESTABLISHED != GENERAL_DETERMINISTIC_PHYSICAL_REALIZATION
AX3_ESTABLISHED != NATURE_SELECTS_GENERAL_W_DOMAIN
```

### AX4
Positive restricted realization classes remain materially nonempty. The pure/reversible positive subclass is carried by the source-bound Yokojima result, not by the R0 Guérin causal-reference-frame representation. The repaired positive-class table controls the exact membership.

### AX5
Broad source-bound negative boundaries remain nonempty. The repaired no-go table controls scope, assumptions, excluded property, and escape/noncovered domain.

### AX6
No general closure law for arbitrary valid processes is established; source-bound counterexamples/no-go results block unrestricted composition. This does not invalidate each constituent process.

### AX7
Positive classical-spacetime constructions remain restricted, especially QC-QC under named assumptions. No source bridges them to every valid `W`; broad fixed-spacetime results impose nontrivial restrictions under their named assumptions.

### AX8
The repaired unresolved-remainder table makes explicit the nonempty framework-wide remainder left after conditional representation, restricted positives, filters, exclusions, and implementations are accounted for.

### AX9
Concrete implementation/certification existence evidence remains source-bound to concrete implementation sources such as Guo and Qu. `SRC-FWPM-REAL-FELLOUS-ASIANI-ENERGY-2023` contributes model-specific boundary/context information only and is not used as positive concrete-implementation existence evidence.

### AX10
The 11 new Stage-1 sources still add material propositions: general postselected representation, purifiability filtering, independent composition obstruction, pure/reversible restrictions, Page-Wootters structure, energetic implementation distinctions, corrected spacetime/fine-graining boundaries, and positive QC-QC spacetime/composition structure.

## 8. Synthesis A–F — unchanged after repair

```text
A_GENERAL_SOURCE_BOUND_SELECTION_OR_REALIZATION_CRITERION_ESTABLISHED = NOT_SUPPORTED
B_MULTIPLE_ASSUMPTION_DEPENDENT_REALIZABILITY_CLASSES_WITH_NO_SINGLE_GENERAL_CRITERION = SUPPORTED
C_ONLY_SELECTED_SUBCLASSES_HAVE_POSITIVE_REALIZATION_RESULTS = SUPPORTED
C_REALIZATION_LAYER_SCOPE = DETERMINISTIC_R1_AND_STRONGER_PHYSICAL_REALIZATION_LAYERS_R2_R6
D_STRONG_NO_GO_OR_EXCLUSION_BOUNDARY_FOR_BROAD_FORMAL_SUBSETS = SUPPORTED
E_REALIZABILITY_REMAINS_MIXED_OR_UNRESOLVED_AT_DECLARED_SCOPE = SUPPORTED
F_EXISTING_33_SOURCE_CORPUS_ALREADY_EXHAUSTS_MATERIAL_RESULT_AND_NEW_STRENGTHENING_ADDS_NO_MATERIAL_INFORMATION = NOT_SUPPORTED
```

C is layer-scoped and explicitly does not deny AX3's general `W`-scope probabilistic/postselected representation. B/C/D/E legitimately coexist.

## 9. Bounded physical-realizability result

```text
R0_FORMAL_W_DOMAIN = ESTABLISHED_PREEXISTING_BASELINE
GENERAL_W_POSTSELECTED_REPRESENTATION = ESTABLISHED
GENERAL_W_DETERMINISTIC_STANDARD_QM_REALIZATION = NOT_ESTABLISHED
POSITIVE_RESTRICTED_R1_R3_REALIZATIONS = NONEMPTY
POSITIVE_RESTRICTED_R4_R5_REALIZATIONS = NONEMPTY
BROAD_ASSUMPTION_SCOPED_R4_R5_RESTRICTIONS = NONEMPTY
R6_CONCRETE_IMPLEMENTATION_EVIDENCE = NONEMPTY_SUBCLASS_ONLY
GENERAL_W_COMPOSITION_GLOBALIZATION_CLOSURE = NOT_ESTABLISHED
GENERAL_W_CLASSICAL_SPACETIME_EMBEDDING = NOT_ESTABLISHED
GENERAL_COMPLETE_PHYSICAL_SELECTION_CRITERION = NOT_ESTABLISHED
UNRESOLVED_PHYSICAL_REALIZABILITY_REMAINDER = NONEMPTY
FRAMEWORK_LEVEL_EMPIRICAL_SELECTION = NONE
```

### Relation to the prior null control

Stage 2 did **not** re-adjudicate the prior null comparison. The previously integrated null-control records and relation counts therefore remained administratively unchanged during Stage 2. No scientific invariance of those pairwise relations under the new AX3 information is established here.

```text
PAIRWISE_NULL_RECORDS_READJUDICATED_IN_STAGE2 = NO
PAIRWISE_NULL_RECORDS_MUTATED_IN_STAGE2 = NO
PAIRWISE_RESULT_SCIENTIFICALLY_INVARIANT_UNDER_AX3 = NOT_ADJUDICATED
AX3_PAIRWISE_RELEVANCE_TO_PMNC_K9_03 = OPEN_PENDING_SEPARATELY_PREREGISTERED_PAIRWISE_OPERATION
```

This wording supersedes the 0.1.0 gloss that Stage 2 sharpened the K9 remainder “without changing the null result.”

## 10. Adversarial overclaim audit after repair

```text
GENERAL_POSTSELECTED_REPRESENTATION_PROMOTED_TO_DETERMINISTIC_REALIZATION = NO
RESTRICTED_POSITIVE_CLASS_PROMOTED_TO_GENERAL_W_REALIZATION = NO
GUERIN_CRF_R0_REPRESENTATION_PROMOTED_TO_AX4_REALIZATION = NO
FELLOUS_ASIANI_MODEL_CONSTRAINT_PROMOTED_TO_POSITIVE_R6_EXISTENCE_EVIDENCE = NO
QUANTUM_SWITCH_PROMOTED_TO_GENERAL_PROCESS_MATRIX_REALIZATION = NO
QCQC_PROMOTED_TO_GENERAL_W_REALIZATION = NO
PURE_PROCESS_RESULT_PROMOTED_TO_GENERAL_MIXED_PROCESS_RESULT = NO
NECESSARY_PURIFICATION_FILTER_PROMOTED_TO_SUFFICIENT_SELECTION_LAW = NO
COMPOSITION_FAILURE_PROMOTED_TO_INDIVIDUAL_PROCESS_INVALIDITY = NO
ASSUMPTION_SCOPED_SPACETIME_NO_GO_PROMOTED_TO_FRAMEWORK_IMPOSSIBILITY = NO
SUBCLASS_EXPERIMENT_PROMOTED_TO_FRAMEWORK_EMPIRICAL_SELECTION = NO
PAIRWISE_NON_READJUDICATION_PROMOTED_TO_PAIRWISE_INVARIANCE = NO
CORRECTED_VILASINI_RENNER_PUBLICATION_LINEAGE_USED = YES
OBSOLETE_INTERMEDIATE_PREPRINT_THEOREM_USED = NO
```

## 11. Final conclusion

The frozen corpus supports neither blanket realizability nor blanket unrealizability. Its strongest general positive remains a conditional probabilistic/postselected representation across `W`. Deterministic and stronger physical realization remains positive only for selected classes or named assumptions, while broad no-go/exclusion boundaries also survive. No complete general physical-selection criterion, general deterministic standard-QM realization, general composition closure, or general classical-spacetime embedding is established. The unresolved physical-realizability remainder remains nonempty. The 11-source strengthening remains materially informative.

The accepted external-audit repairs change the **auditability and role precision** of the Stage-2 result, not its AX1–AX10 or A–F values.

## 12. No automatic downstream propagation

```text
FW_PROCESS_MATRIX_FRAMEWORK_STATUS_CHANGE = NO
FRAMEWORK_REGISTER_STATUS_CHANGE = NO
CLAIM_LEDGER_PROPAGATION = NO
PAIRWISE_COMPARISON = NO
PAIRWISE_RELATION_CHANGE = NOT_ADJUDICATED
CONVERGENCE_CREDIT_CHANGE = NO
RECURRENCE_RECOMPUTATION = NO
EMPIRICAL_TARGET_SELECTION = NO
FCP27_SELECTION = NO
METHOD_REVISION = NO
SOURCE_REGISTER_MUTATION = NO
```
