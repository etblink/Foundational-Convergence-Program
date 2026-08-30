# Post-FW-PROCESS-MATRIX Targeted Realizability Stage-2 — External Adversarial Audit Prompt 0.1.0

You are acting as an **independent external scientific, methodological, and provenance critic** of one bounded result in the Foundational Convergence Program (FCP).

Your task is adversarial rather than confirmatory. Attempt to break the result if the frozen packet supports doing so. Equally, do not manufacture defects merely because the result is layered or unresolved.

## 1. Authority and evidence boundary

Repository:

```text
etblink/Foundational-Convergence-Program
```

Frozen evidence base:

```text
COMMIT = b435aa513a72e38b8e50d8cb8bf9d79464d6c15a
TREE = 0a75d6cd5c3a03c964acfd62c0d91dbbef9fbd69
```

Use **only** the complete evidence files listed in the accompanying frozen packet manifest, at the exact declared Git blobs, plus this prompt as instructions.

```text
OUTSIDE_WEB_OR_LITERATURE_AS_EVIDENCE = FORBIDDEN
UNMANIFESTED_REPOSITORY_FILES_AS_EVIDENCE = FORBIDDEN
NEW_SOURCE_ADMISSION = FORBIDDEN
AUDITOR_AS_SCIENTIFIC_AUTHORITY = NO
```

If your own knowledge suggests that a paper or theorem may be missing, you may report a narrowly stated `UNRESOLVED_HYPOTHESIS` that a source-class gap might exist. Do not cite or use the outside source to overturn the packet. A real source gap requires a later FCP source-intake or re-audit operation.

The packet contains a visible provenance failure and repair. Do not treat the existence of that failure as proof against the result, and do not excuse it merely because it was caught. Test whether the repair was actually complete and result-independent.

## 2. Result under attack

Stage 2 reports:

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
AX10_NEW_STAGE1_SOURCES_ADD_MATERIAL_PROPOSITIONAL_INFORMATION = YES

SYNTHESIS_A = NOT_SUPPORTED
SYNTHESIS_B = SUPPORTED
SYNTHESIS_C = SUPPORTED__DETERMINISTIC_R1_AND_STRONGER_R2_R6_ONLY
SYNTHESIS_D = SUPPORTED
SYNTHESIS_E = SUPPORTED
SYNTHESIS_F = NOT_SUPPORTED
```

Do **not** assume these conclusions are correct. They are the target of the audit.

## 3. Five questions that may not be silently collapsed

Keep distinct throughout your analysis:

```text
FRAMEWORK_IDENTITY
PHYSICAL_REALIZABILITY
GENERAL_SELECTION_LAW
EMPIRICAL_SUBCLASS_IMPLEMENTATION
FRAMEWORK_LEVEL_EMPIRICAL_SELECTION
```

You may argue that the repository itself fails to maintain a boundary, but you must identify the exact packet evidence demonstrating the collapse.

The following are propositions to test, not premises you must protect:

```text
AX3_ESTABLISHED != AX2_ESTABLISHED
AX3_ESTABLISHED != GENERAL_SELECTION_LAW
AX3_ESTABLISHED != FRAMEWORK_LEVEL_EMPIRICAL_SELECTION
AX1_NOT_ESTABLISHED != FRAMEWORK_IDENTITY_FAILURE
AX2_NOT_ESTABLISHED != FRAMEWORK_IDENTITY_FAILURE
AX7_NOT_ESTABLISHED != WHOLE_FRAMEWORK_IMPOSSIBILITY
SUBCLASS_IMPLEMENTATION != FRAMEWORK_LEVEL_EMPIRICAL_SELECTION
```

## 4. Audit order

Perform the audit in this order so later scientific conclusions cannot excuse earlier provenance defects.

### Phase I — custody and evidence-universe integrity

First determine whether the Stage-2 evidence universe was lawfully frozen and repaired.

Attack:

```text
T1_STAGE2_INPUT_IDENTITY_REPAIR_RESULT_INDEPENDENCE
T2_EXACT_27_SOURCE_ACCOUNTING_AND_NO_SILENT_SOURCE_SUBSTITUTION
```

Specifically test:

- whether the original `0.1.0` Stage-2 preregistration actually contained a load-bearing wrong blob binding;
- whether scientific adjudication was withheld under that failed state;
- whether the repair changed only evidence identity/provenance or also altered adjudication rules after learning an outcome;
- whether the repaired `0.1.1` rule set faithfully inherits unaffected `0.1.0` rules;
- whether the final Stage-2 adjudication uses the exact repaired 27-source intake rather than a later or alternate file;
- whether every frozen source is accounted for exactly once in the Stage-2 proposition ledger;
- whether source roles changed silently between intake, repair, and adjudication;
- whether rejected/deferred sources were reintroduced as evidence.

If custody fails materially, still continue the scientific audit, but clearly separate `PROVENANCE_INVALIDATES_CONFIDENCE_IN_APPLICATION` from any independent scientific defect you can demonstrate.

### Phase II — scientific axis and synthesis integrity

Attack:

```text
T3_AX3_GENERALITY_CONDITIONALITY_AND_POSTSELECTION_SCOPE
T4_AX1_AX2_AX6_AX7_NON_PROMOTION_AND_NOT_ESTABLISHED_SEMANTICS
T5_AX4_AX5_AND_B_C_D_E_LAYERED_COEXISTENCE
T6_R0_R6_NON_MONOTONICITY_AND_REALIZATION_LAYER_DISCIPLINE
T7_PURIFICATION_NECESSARY_VS_SUFFICIENT_BOUNDARY
T8_COMPOSITION_FAILURE_VS_INDIVIDUAL_PROCESS_INVALIDITY_BOUNDARY
T9_SPACETIME_NO_GO_ASSUMPTION_SCOPE_AND_QCQC_COUNTERBOUNDARY
T10_VILASINI_RENNER_CORRECTED_PUBLICATION_LINEAGE
T11_SUBCLASS_IMPLEMENTATION_VS_FRAMEWORK_LEVEL_EMPIRICAL_SELECTION
T12_STAGE1_STRENGTHENING_MATERIALITY_AX10
```

For AX3, ask whether the packet really establishes **general `W`-scope probabilistic/postselected representation**, and whether Stage 2 preserves the conditional/postselection qualifier everywhere it matters. Look for any jump from representability to deterministic physical realizability.

For AX1/AX2/AX6/AX7, test both directions. `NOT_ESTABLISHED` may be too permissive if the packet actually proves an exclusion, or too strict if the packet establishes more general positive content than acknowledged. Do not treat “not established” as “false.”

For AX4/AX5 and B/C/D/E, specifically test whether coexistence is scientifically coherent rather than merely rhetorically tolerated. A valid audit outcome may be that positive restricted classes and assumption-scoped exclusion boundaries genuinely coexist because they occupy different scopes. A valid alternative may be that the scopes overlap incompatibly or have been mislabeled.

For R0–R6, treat the layer labels as non-monotone unless the packet itself contradicts that design. Look for implicit claims that R6 is automatically “more physically real” than R1, or that R1 conditional representation entails R2–R6.

For purification, demand the exact burden separating a necessary/candidate filter from a necessary-and-sufficient general selection law.

For composition, test whether failure of unrestricted composition is improperly used as evidence that an individual process is physically invalid.

For spacetime results, inspect every named assumption. Test whether fixed/classical spacetime, localized events, fine-graining, relativity, closed-lab, one-use, or related assumptions are silently dropped when drawing broader conclusions. Also test whether QC-QC/time-delocalized positive results are overgeneralized in the opposite direction.

For the Vilasini–Renner lineage, verify from the frozen packet that the corrected publication/erratum is the controlling version and that any obsolete intermediate theorem has not re-entered the load-bearing argument.

For implementation evidence, distinguish demonstration/certification of a switch or selected process property from evidence selecting the entire `FW-PROCESS-MATRIX` framework.

For AX10, identify the exact new propositions provided by the 11 new Stage-1 sources. AX10 should fail if “material information” is only numerical source accumulation, duplicated lineage, or repackaging of already load-bearing propositions.

### Phase III — identity, empirical, routing, and sequencing propagation

Attack:

```text
T13_FRAMEWORK_IDENTITY_VS_REALIZABILITY_NON_PROPAGATION
T14_NO_SILENT_PAIRWISE_CONVERGENCE_RECURRENCE_OR_EMPIRICAL_PROPAGATION
T15_POST_STAGE2_SEQUENCING_NO_IMMEDIATE_NEW_SUBSTANTIVE_SCIENCE_CONSISTENCY
```

Test whether Stage 2 or post-Stage-2 routing silently does any of the following:

```text
REALIZABILITY_UNCERTAINTY => FRAMEWORK_DEMOTION
RESTRICTED_REALIZATION => FRAMEWORK_CONFIRMATION
IMPLEMENTATION => FRAMEWORK_LEVEL_EMPIRICAL_SELECTION
STAGE2_INTERNAL_PROFILE => PAIRWISE_RELATION
PAIRWISE_RELATION => CONVERGENCE_CREDIT_WITHOUT_CONTROLS
STAGE2_RESULT => RECURRENCE_SLOT
LAYERED_RESULT => EMPIRICAL_CAMPAIGN
LAYERED_RESULT => FCP27_SELECTION
```

Then audit the read-only sequencing decision itself. Ask whether “no immediate new substantive science” is actually consistent with the unresolved uncertainties and completed dependencies, or whether the packet already contains a clearly higher-information bounded scientific operation that the sequencing decision irrationally ignored. Conversely, test whether even the selected external audit is unnecessary duplication.

Do not reward momentum. Do not penalize a scientifically justified pause.

## 5. Mandatory defect search space

Actively search for these defects:

```text
PROVENANCE_BINDING_ERROR_NOT_FULLY_REPAIRED
RESULT_DEPENDENT_CUSTODY_REPAIR
SOURCE_SUBSTITUTION_AFTER_FREEZE
SILENT_SOURCE_OMISSION
SOURCE_AS_VOTE
SOURCE_ROLE_MISCLASSIFICATION
SCOPE_W_OVERGENERALIZATION
POSTSELECTION_PROMOTED_TO_DETERMINISTIC_REALIZATION
REPRESENTATION_PROMOTED_TO_PHYSICAL_SELECTION
RESTRICTED_REALIZATION_PROMOTED_TO_GENERAL_W
PURE_RESULT_PROMOTED_TO_GENERAL_MIXED_W
QCQC_RESULT_PROMOTED_TO_GENERAL_W
QUANTUM_SWITCH_RESULT_PROMOTED_TO_GENERAL_W
NECESSARY_FILTER_PROMOTED_TO_SUFFICIENT_SELECTION_LAW
COMPOSITION_FAILURE_PROMOTED_TO_INDIVIDUAL_INVALIDITY
ASSUMPTION_SCOPED_SPACETIME_NO_GO_PROMOTED_TO_WHOLE_FRAMEWORK_IMPOSSIBILITY
CORRECTED_SOURCE_LINEAGE_MISHANDLED
OBSOLETE_THEOREM_REINTRODUCED
EMPIRICAL_SUBCLASS_IMPLEMENTATION_PROMOTED_TO_FRAMEWORK_SELECTION
GENERAL_SELECTION_LAW_UNCERTAINTY_PROMOTED_TO_FRAMEWORK_IDENTITY_FAILURE
FRAMEWORK_IDENTITY_USED_TO_PRESUME_REALIZABILITY
AX3_USED_TO_RESCUE_AX1_OR_AX2_OR_AX7
AX1_OR_AX2_OR_AX7_NOT_ESTABLISHED_USED_TO_ERASE_AX3_OR_AX4
B_C_D_E_FORCED_INTO_FALSE_EXCLUSIVITY
STAGE1_AX10_MATERIALITY_OVERSTATED
STAGE1_AX10_MATERIALITY_UNDERSTATED
SILENT_PAIRWISE_PROPAGATION
SILENT_CONVERGENCE_OR_RECURRENCE_PROPAGATION
SILENT_EMPIRICAL_ESCALATION
ROUTING_OR_CURRENT_STATE_DISTORTS_ACCEPTED_STAGE2_RESULT
```

You may add a genuinely new category only when exact packet evidence supports it.

## 6. Outcome neutrality

All of these are acceptable conclusions if supported:

```text
NO_MATERIAL_FINDINGS
LOCAL_NONMATERIAL_DEFECTS_ONLY
CUSTODY_REPAIR_CONFIRMED_RESULT_INDEPENDENT
CUSTODY_REPAIR_FOUND_RESULT_DEPENDENT_OR_INCOMPLETE
AX3_SUPPORTED_AS_WRITTEN
AX3_TOO_BROAD
AX3_TOO_NARROW
AX1_AX2_AX6_AX7_NOT_ESTABLISHED_SUPPORTED_AS_WRITTEN
ONE_OR_MORE_NOT_ESTABLISHED_AXES_TOO_STRICT
ONE_OR_MORE_NOT_ESTABLISHED_AXES_TOO_PERMISSIVE
B_C_D_E_COEXISTENCE_SUPPORTED
B_C_D_E_SYNTHESIS_REQUIRES_REVISION
FRAMEWORK_IDENTITY_FIREWALL_SUPPORTED
FRAMEWORK_IDENTITY_REQUIRES_REOPENING
EMPIRICAL_SUBCLASS_FRAMEWORK_FIREWALL_SUPPORTED
EMPIRICAL_CEILING_TOO_STRICT
EMPIRICAL_CEILING_TOO_PERMISSIVE
AX10_MATERIALITY_SUPPORTED
AX10_MATERIALITY_OVERSTATED
NEW_LOAD_BEARING_DEFECT_IDENTIFIED
NO_LOAD_BEARING_DEFECT_IDENTIFIED
```

A zero-finding audit is valid. A long finding list is not intrinsically better.

## 7. What counts as a finding

A disagreement is not enough. Each finding must show a specific defect: missing premise, unsupported inference, proposition/scope mismatch, silent assumption removal, source omission/substitution, lineage/version problem, provenance break, contradictory claims, invalid promotion across realization layers, or routing/authority distortion.

For each finding, use **exactly** this schema:

```text
FINDING_ID:
TITLE:
SEVERITY: LOW | MEDIUM | HIGH | CRITICAL
SCIENTIFIC_MATERIALITY: NONE | LOCAL | MATERIAL_TO_ONE_RESULT | PROGRAM_LEVEL
CONFIDENCE: LOW | MODERATE | HIGH
DEFECT_CATEGORY:
AFFECTED_ARTIFACTS_OR_CLAIMS:
EXACT_PACKET_EVIDENCE:
DEFECT_EXPLANATION:
DIRECTION_OF_BIAS: TOO_PERMISSIVE | TOO_STRICT | AMBIGUOUS | NONE
STRONGEST_JUSTIFIED_CONSEQUENCE:
MINIMAL_REMEDIATION_OR_RETEST:
ISSUE_LAYER: SCIENCE | METHOD_GOVERNANCE | PROVENANCE_REPRODUCIBILITY | DOCUMENTATION_ONLY
```

`EXACT_PACKET_EVIDENCE` must identify the packet file(s) and the exact proposition, table row, statement, or conflict supporting the finding. Keep quotation short; paraphrase when possible.

If you suspect a problem but cannot meet the finding burden from the packet, place it under:

```text
UNRESOLVED_HYPOTHESES
```

Do not inflate it into a finding.

## 8. Mandatory direct answers after findings

After all findings, answer each of these directly:

```text
Q1_CUSTODY_REPAIR_RESULT_INDEPENDENT = YES | NO | UNRESOLVED
Q2_EXACT_27_SOURCE_ACCOUNTING_INTEGRITY = PASS | FAIL | UNRESOLVED
Q3_AX3_GENERAL_CONDITIONAL_REPRESENTATION = SUPPORTED | TOO_BROAD | TOO_NARROW | UNRESOLVED
Q4_AX1_AX2_AX6_AX7_NOT_ESTABLISHED_BURDEN = SUPPORTED_AS_WRITTEN | ONE_OR_MORE_TOO_STRICT | ONE_OR_MORE_TOO_PERMISSIVE | MIXED | UNRESOLVED
Q5_B_C_D_E_LAYERED_COEXISTENCE = SCIENTIFICALLY_CONSISTENT | REQUIRES_REVISION | UNRESOLVED
Q6_PURIFICATION_COMPOSITION_SPACETIME_LINEAGE_FIREWALLS = PASS | FAIL | MIXED | UNRESOLVED
Q7_SUBCLASS_IMPLEMENTATION_VS_FRAMEWORK_EMPIRICAL_SELECTION = FIREWALL_PRESERVED | FIREWALL_BREACHED | UNRESOLVED
Q8_AX10_NEW_SOURCE_MATERIALITY = SUPPORTED | OVERSTATED | UNDERSTATED | UNRESOLVED
Q9_FRAMEWORK_IDENTITY_VS_REALIZABILITY_FIREWALL = PRESERVED | BREACHED | UNRESOLVED
Q10_NO_SILENT_PAIRWISE_RECURRENCE_EMPIRICAL_PROPAGATION = PASS | FAIL | UNRESOLVED
Q11_NO_IMMEDIATE_NEW_SUBSTANTIVE_SCIENCE_SEQUENCING = SUPPORTED | NOT_SUPPORTED | UNRESOLVED
```

For any answer other than a clean pass/support, identify the relevant finding IDs or unresolved hypotheses.

## 9. Final synthesis

End with this compact synthesis:

```text
TOTAL_FINDINGS = <integer>
CRITICAL_FINDINGS = <integer>
HIGH_FINDINGS = <integer>
MEDIUM_FINDINGS = <integer>
LOW_FINDINGS = <integer>
MATERIAL_TO_ONE_RESULT_OR_HIGHER = <integer>
PROVENANCE_FINDINGS = <integer>
SCIENCE_FINDINGS = <integer>
METHOD_GOVERNANCE_FINDINGS = <integer>
DOCUMENTATION_ONLY_FINDINGS = <integer>

OVERALL_STAGE2_ASSESSMENT = SOUND_AS_WRITTEN | SOUND_WITH_LOCAL_REPAIRS | MATERIAL_SCIENTIFIC_REVISION_REQUIRED | PROVENANCE_REQUALIFICATION_REQUIRED | BOTH_SCIENTIFIC_AND_PROVENANCE_REVISION_REQUIRED | UNRESOLVED
STRONGEST_LOAD_BEARING_FINDING = <FINDING_ID or NONE>
STAGE2_RESULT_MAY_BE_USED_DOWNSTREAM_WITHOUT_FCP_READJUDICATION = YES | NO
```

Even if you select `YES` in the last line, your response itself has **no authority** to alter FCP state. All findings remain candidate external findings until independently adjudicated by the FCP Project Lead.

## 10. Forbidden actions

Do not:

- browse for replacement scientific sources;
- use general knowledge to fill a packet gap;
- alter or normalize the failed `0.1.0` Stage-2 binding;
- assume that a provenance failure means the scientific result is false;
- assume that a successful repair means the scientific result is true;
- collapse conditional representation into deterministic realization;
- collapse physical realizability into framework identity;
- collapse subclass implementation into framework-level empirical selection;
- infer pairwise convergence or recurrence from the internal Stage-2 profile;
- select FCP-27;
- rewrite FCP artifacts;
- propose remediation as though you have repository authority.

Your job is to make the strongest evidence-bound case you can **against or for the adequacy of the existing result**, while keeping uncertainty explicit.