# Method 0.2.1 Result-Independence Audit — Preregistration

**Version:** 0.1.0  
**Status:** PREREGISTERED_BEFORE_CONTROL_ADJUDICATION  
**Operation ID:** `METHOD_0_2_1_RESULT_INDEPENDENCE_AUDIT`  
**Operation class:** `BOUNDED_INTERNAL_METHOD_AUDIT`  

## 1. Frozen question

```text
QUESTION = DOES_THE_C_REVISION_CORRECT_A_PREEXISTING_FCP_WIDE_METHOD_INCONSISTENCY?
```

This audit tests whether the Method-0.2.1 framework-admission criterion-C revision has a general justification that can be established from canonical FCP evidence that predates the dedicated causal-process source intake.

It does **not** ask whether `FW-PROCESS-MATRIX` should remain admitted. It does not re-adjudicate any historical framework. It does not revise Method 0.2.1.

## 2. Hard scope firewall

```text
NEW_SOURCE_SEARCH = NONE
NEW_SOURCE_ADMISSION = NONE
EXTERNAL_SOURCE_RETRIEVAL = NONE
FW_PROCESS_MATRIX_STATUS_CHANGE = FORBIDDEN
FW_PROCESS_MATRIX_ADMISSION_READJUDICATION = FORBIDDEN
FW_PROCESS_MATRIX_K1_K10_READJUDICATION = FORBIDDEN
HISTORICAL_FRAMEWORK_STATUS_CHANGE = FORBIDDEN
HISTORICAL_TAXONOMY_CHANGE = FORBIDDEN
METHOD_0_2_1_REVISION = FORBIDDEN_INSIDE_AUDIT
METHOD_0_2_0_REVISION = FORBIDDEN
PAIRWISE_COMPARISON = FORBIDDEN
E1_E5_ASSIGNMENT = FORBIDDEN
CONVERGENCE_CREDIT = FORBIDDEN
RECURRENCE_DOCKET_EXECUTION = FORBIDDEN
RECURRENCE_RECOMPUTATION = FORBIDDEN
EMPIRICAL_TARGET_SELECTION = FORBIDDEN
FCP27_SELECTION_OR_EXECUTION = FORBIDDEN
ARCHIVE_OR_GARBAGE_COLLECTION_EXECUTION = FORBIDDEN
```

A materially adverse audit result must be preserved and handed off. It may not be repaired inside this operation.

## 3. Current execution boundary

```text
REPOSITORY = etblink/Foundational-Convergence-Program
CANONICAL_BRANCH = main
CANONICAL_COMMIT_AT_PREREGISTRATION = 55d9927abcd92aab508c7b6c17604e191d6ead4c
CANONICAL_TREE_AT_PREREGISTRATION = 4becc7194db36fe540917a4a4f328f26ae000901
CANONICAL_EXACT_PARENT_AT_PREREGISTRATION = 5dcf7eedc9866dc3945d8b15c8f305106168a6ef
CANONICAL_MESSAGE_AT_PREREGISTRATION = Refresh navigation after post-FW-PROCESS-MATRIX sequencing

SEQUENCING_DECISION_COMMIT = a5d8fc750e02c5f4e9cc2044c070c05afdcb615c
METHOD_0_2_1_REVISION_COMMIT = bcc355017147aca787cd76646853890baa2a0bbc
```

At this boundary:

```text
METHOD_0_2_1 = ACTIVE_PROSPECTIVELY
FW_PROCESS_MATRIX_CURRENT_STATUS = SOURCE_BOUND_READY
FW_PROCESS_MATRIX_INDEPENDENT_POST_ADMISSION_AUDIT = NOT_PERFORMED
METHOD_0_2_1_RESULT_INDEPENDENCE_AUDIT = AUTHORIZED_NOT_STARTED
```

## 4. Causal-process-blind evidence cutoff

All substantive evidence used to justify or challenge the generality of criterion C must come from repository objects exactly as they existed at the following pre-intake commit:

```text
PRE_CAUSAL_PROCESS_CUTOFF_COMMIT = 602eb6026e95e625ecc2f4fa5415b1bfbc218557
PRE_CAUSAL_PROCESS_CUTOFF_TREE = 72acbbf7f09246e658119551090969f681ede87d
PRE_CAUSAL_PROCESS_CUTOFF_PARENT = 7d68e99ae97a6fc8e6974ce6641c6290198bedbc
PRE_CAUSAL_PROCESS_CUTOFF_MESSAGE = Refresh navigation after post-sequencing routing
```

This is the canonical baseline from which `CAUSAL_PROCESS_ICO_SOURCE_INTAKE_STAGE1` was subsequently opened. Dedicated causal-process Stage-1/Stage-2 scientific outputs are therefore outside the substantive control-evidence window.

Binding rule:

```text
CAUSAL_PROCESS_BLIND_EVIDENCE_RULE =
ALL_SUBSTANTIVE_CONTROL_EVIDENCE_MUST_BE_READ_AT_REF_602eb6026e95e625ecc2f4fa5415b1bfbc218557
```

Post-cutoff artifacts may be used only for:

1. identifying the exact Method-0.2.1 proposition under audit;
2. identifying the exact sequencing authorization and audit scope;
3. provenance of the current operation.

They may not be used to establish that the C revision was independently justified.

In particular, the causal-process intake, taxonomy, process-matrix K1–K10 baseline, quantum-switch evidence, and `FW-PROCESS-MATRIX` properties are forbidden as positive evidence for the audit result.

## 5. Rules under audit

The audit compares only the criterion-C clauses:

```text
C_OLD = INTRINSIC_DYNAMICS_OR_SOURCE_BOUND_FRAMEWORK_LEVEL_DYNAMICAL_ARCHITECTURE

C_NEW = SOURCE_BOUND_PHYSICAL_LAW_CONSTRAINT_OR_DYNAMICAL_ARCHITECTURE
```

All other A–H admission criteria remain outside the audit except for the criterion-overlap test in Section 10.

Passing or failing C alone is never equivalent to framework admission or rejection.

## 6. Historical-status firewall

Historical FCP dispositions are immutable controls, not outcomes of this audit.

For each control object, the audit records the historical status as it existed at the cutoff and then computes **counterfactual diagnostic classifications** only:

```text
C_OLD_DIAGNOSTIC = PASS | FAIL | AMBIGUOUS | NOT_APPLICABLE
C_NEW_DIAGNOSTIC = PASS | FAIL | AMBIGUOUS | NOT_APPLICABLE
PHYSICAL_LAW_OR_CONSTRAINT_ARCHITECTURE = YES | NO | AMBIGUOUS
BARE_VALIDITY_REPRESENTATION_COMPOSITION_OR_MODEL_CONSTRAINT_ONLY = YES | NO | AMBIGUOUS
DYNAMICS_STATUS = SOURCE_BOUND_CORE | SOURCE_BOUND_EXTENSION | OPTIONAL_OR_MODEL_DEPENDENT | OPEN_OR_ABSENT | MIXED | NOT_APPLICABLE
HISTORICAL_FCP_DISPOSITION = VERBATIM_CONTROL_LABEL
```

No diagnostic code changes any historical framework or taxonomy status.

## 7. Frozen control set and exact cutoff blobs

### 7.1 Positive / admitted framework controls

#### `FW-CST`

```text
frameworks/causal_set/FCP10_CST_CANONICAL_FRAMEWORK_BINDING_0_1_0.md
BLOB = 787de09a267ee28429e8d80c11f237b7eacad3e8

frameworks/causal_set/FCP9_CAUSAL_K1_K10_BASELINE_0_1_0.md
BLOB = dcac3f4f3f6ae63bddd1a1bed94c00342ae5b12c

frameworks/causal_set/FCP9_CAUSAL_SOURCE_INTAKE_0_1_0.md
BLOB = 89b80b830324a97cdcd5ee37fc473c22c802a7ac
```

#### `FW-GPTOPT`

```text
frameworks/gpt_opt/FCP4_GPT_OPT_SOURCE_INTAKE_0_1_0.md
BLOB = 232e28b36e334aa73879075f6e4dc01a4bc25248

frameworks/gpt_opt/FCP7_GPTOPT_COMPARATIVE_BASELINE_0_1_0.md
BLOB = 653b2997c8c96f63dffff182ad8121c9a137e7d8
```

#### `FW-CQM`

```text
frameworks/categorical_quantum/FCP4_CATEGORICAL_QUANTUM_SOURCE_INTAKE_0_1_0.md
BLOB = 75653c6f6cb33438d96c3edaa2fb653143bce818
```

FCP-13/FCP-14 bindings may be consulted at the cutoff only if the source-intake artifact leaves the framework-wide dynamics/law distinction ambiguous; they may not be used to introduce later content.

#### `FW-AQFT`

```text
frameworks/aqft/FCP4_AQFT_SOURCE_INTAKE_0_1_0.md
BLOB = 558b3944b0115a6857c394cef41f2132e521a4bd

frameworks/aqft/FCP5_AQFT_COMPARATIVE_BINDING_0_1_0.md
BLOB = 48a4ee9b98171e006c46e6b5c4be99cce8f60628
```

#### `FW-LOOP`

```text
frameworks/loop/FCP15_LOOP_K1_K10_BASELINE_0_1_0.md
BLOB = bc2920a50c5df97cd8e4a888f9f6fbf9088e7cee

frameworks/loop/FCP15_LOOP_SOURCE_INTAKE_0_1_0.md
BLOB = 7d7cff3d42a0cd146d3049a3d80cebf1d0a38c7c
```

#### `FW-AS`

```text
frameworks/asymptotic_safety/FCP19_AS_K1_K10_BASELINE_0_1_0.md
BLOB = a91a57fd866e8d930d592e0c3f6d53ac082d9aae

frameworks/asymptotic_safety/FCP19_AS_SOURCE_INTAKE_0_1_0.md
BLOB = 8be99ad8a557d7e6c3db980fbc464c790bf4eab7
```

#### `FW-STRING-M`

```text
frameworks/string/FCP24_STRING_K1_K10_BASELINE_0_1_0.md
BLOB = a4a166cbe9546d72ecf7622e6c4dd6948cb361e1

frameworks/string/FCP24_STRING_SOURCE_INTAKE_0_1_0.md
BLOB = 70c6e61288e224c16b8a69fa71f23f2d8d5e66d5

frameworks/string/FCP24_STRING_TAXONOMY_GATE_0_1_0.md
BLOB = 205975e97e7126f425374a4c3598acf01ed4c98b
```

#### `FW-NULL-GRQFTSM`

```text
frameworks/null_gr_qft_sm/FCP1_NULL_COMPETITOR_BASELINE_0_1_0.md
BLOB = d86b40096d0905b57354a1f58f0f582f4dfb1f3d

frameworks/null_gr_qft_sm/FCP2_NULL_STRUCTURAL_DECOMPOSITION_0_1_0.md
BLOB = c048117000e6964454d3dd57b18eb09a17052576
```

### 7.2 Removed / nonframework specificity controls

#### Historical `FW-TENSOR` umbrella — `REMOVED_WITH_REASON`

```text
frameworks/tensor/FCP25_TENSOR_K1_K10_BASELINE_0_1_0.md
BLOB = c42fc9b59b72f0baff066ea3d26504c1dcf6081b

frameworks/tensor/FCP25_TENSOR_SOURCE_INTAKE_0_1_0.md
BLOB = 2c310c3a5889c71ec419dccfaa9f8c9db0472b9e

audits/FCP25_TENSOR_TAXONOMY_ADJUDICATION_0_1_0.md
BLOB = a415e89bc3fb0f1d76e88119d84f92e6fd6c91d8
```

#### Historical `FW-CAT` umbrella — `REMOVED_WITH_REASON`

```text
frameworks/categorical/FW_CAT_K1_K10_BASELINE_0_1_0.md
BLOB = 074e6d6f9bb2af0324a3f849053719e418b0fe71

frameworks/categorical/FW_CAT_SOURCE_INTAKE_0_1_0.md
BLOB = 92e8d69b8b92ff29ee2f36e3cc0e8577bf5760e1

frameworks/categorical/FW_CAT_SOURCE_SELECTION_AUDIT_0_1_0.md
BLOB = 7eb71c6e2cc043975db01e1dabea9a02e87e5450

audits/FW_CAT_TAXONOMY_ADJUDICATION_0_1_0.md
BLOB = dfdaac236040da8ca3c752a3fc82b2362627de7c
```

#### Broader holographic nonframework remainder

```text
frameworks/holography/BROADER_HOLOGRAPHIC_K1_K10_BASELINE_0_1_0.md
BLOB = 554639a21e1ff550d3f71ffd3332503903cd32cb

frameworks/holography/BROADER_HOLOGRAPHIC_SOURCE_INTAKE_0_1_0.md
BLOB = 48e312671b963378544c3b277086418e0559bb4c

frameworks/holography/BROADER_HOLOGRAPHIC_SOURCE_SELECTION_AUDIT_0_1_0.md
BLOB = f2d89fe49c5871c53cbda7b837e124c5ac63b33d

audits/BROADER_HOLOGRAPHIC_TAXONOMY_ADJUDICATION_0_1_0.md
BLOB = afb210c3b644ae158231dcf1daccb1a134ce29a4
```

### 7.3 Historical disposition manifest

```text
FRAMEWORK_REGISTER.md
BLOB_AT_CUTOFF = 1af1bd791663242caffe635b5856a88c86017b5d
```

The cutoff Framework Register is used only to bind the historical status/control class. It does not itself prove C-old or C-new.

## 8. Evidence hierarchy

For a control object, use in order:

1. source-bound framework/taxonomy artifact at the cutoff;
2. K1–K10 baseline or canonical binding at the cutoff;
3. cutoff Framework Register only for historical disposition;
4. another explicitly listed cutoff artifact only when the higher-priority artifact leaves the audited proposition ambiguous.

The audit may quote or paraphrase only propositions actually present in those cutoff objects.

Absence of a statement is not automatically evidence of failure. If the object cannot be classified from the frozen controls, code `AMBIGUOUS`.

## 9. Criterion-C interpretation rules frozen before adjudication

### 9.1 C-old

`C_OLD = PASS` only if the cutoff evidence source-binds either:

- intrinsic/core dynamics; or
- a framework-level architecture whose scientific role is genuinely dynamical/history-selecting rather than merely representational, compositional, kinematic, or model-local.

Optional dynamics that are not constitutive of the admitted framework do not automatically satisfy C-old at framework-core scope.

### 9.2 C-new

`C_NEW = PASS` only if the cutoff evidence source-binds, at the scientific-object/framework scope under evaluation, at least one of:

- a physically interpreted law restricting the object’s physically admissible states, histories, processes, transformations, or realizations;
- a physically interpreted constraint architecture that is constitutive of the scientific object rather than a mathematical representation convention;
- intrinsic or source-bound framework-level dynamics.

The following are explicitly insufficient by themselves:

```text
GENERIC_MATHEMATICAL_CONSISTENCY
REPRESENTATION_VALIDITY
CATEGORY_OR_PROCESS_COMPOSITION
NORMALIZATION_AS_PURELY_FORMAL_CONVENTION
NUMERICAL_OPTIMIZATION_RULES
VARIATIONAL_ANSATZ_RULES_WITHOUT_FRAMEWORK_PHYSICAL_SCOPE
MODEL_SPECIFIC_CONSTRAINTS_PROJECTED_TO_AN_UMBRELLA
DICTIONARY_OR_DUALITY_RELATIONS_INSIDE_AN_EXISTING_FRAMEWORK
SIMULATION_ARCHITECTURE
COMPUTATIONAL_TRACTABILITY_CONDITIONS
```

A rule can count as a physical constraint only when the cutoff evidence identifies it as part of the physical framework/object, not merely as a valid mathematical representation or selected model.

## 10. Six mandatory audit controls

### T1 — `OLD_C_FALSE_NEGATIVE_CONTROL`

Question:

> Does C-old reject or materially conflict with at least one framework that FCP had already source-bound and admitted before the causal-process intake, for a reason that reflects the criterion’s conceptual requirement rather than missing documentation?

A positive T1 need not identify multiple historical false negatives. One clean framework-neutral counterexample is logically sufficient to refute universality of C-old. Additional pre-existing examples strengthen generality but are not required.

### T2 — `NEW_C_FALSE_POSITIVE_CONTROL`

Question:

> Does C-new become so permissive that a removed/nonframework control earns C solely from representation, composition, optimization, dictionary structure, or model-local constraints rather than a source-bound physical law/constraint at the evaluated object scope?

Important:

```text
REMOVED_OBJECT_C_NEW_PASS != FRAMEWORK_ADMISSION_FALSE_POSITIVE
```

C is only one of A–H. The failure tested here is **loss of criterion-C specificity**, not automatic all-gate admission.

Define:

```text
C_NEW_SPECIFICITY_FAILURE =
A_REMOVED_OR_NONFRAMEWORK_CONTROL_PASSES_C_NEW
SOLELY_FROM_FORMAL_REPRESENTATIONAL_COMPOSITIONAL_COMPUTATIONAL_OR_MODEL_LOCAL_CONSTRAINTS
```

### T3 — `CRITERION_OVERLAP_OR_DOUBLE_COUNT_CONTROL`

Question:

> Does C-new add an independent physical-law/constraint burden, or does it merely restate another A–H criterion such that C has no separable adjudicative content?

The audit may inspect the frozen Method-0.2.1 statement of A–H only to compare criterion semantics. It may not modify them.

### T4 — `PHYSICAL_LAW_VS_VALIDITY_SYNTAX_CONTROL`

Question:

> Can the pre-causal control set operationally distinguish physical law/constraint architecture from bare formal validity with acceptable consistency?

If the distinction cannot be applied without importing causal-process reasoning, this control fails or becomes materially ambiguous.

### T5 — `FRAMEWORK_NEUTRALITY_CONTROL`

Question:

> Does C-new behave coherently across operational, categorical, algebraic, discrete-causal, QG, string, null, removed-umbrella, and nonframework controls rather than privileging one framework style?

No demand is made that all admitted frameworks produce the same C-old/C-new diagnostic code. The demand is that the rule’s meaning remain stable.

### T6 — `CAUSAL_PROCESS_BLIND_JUSTIFICATION_CONTROL`

Question:

> Could the conceptual case for replacing C-old with C-new be made using only the pre-cutoff control evidence plus general Method semantics, without relying on any causal-process scientific fact?

The audit result must be written so that deletion of every causal-process scientific artifact would not change the argument for or against Method 0.2.1.

## 11. Per-control audit record

For every named control object, record:

```text
CONTROL_ID
CONTROL_CLASS = ADMITTED_FRAMEWORK | NULL_FRAMEWORK | REMOVED_UMBRELLA | NONFRAMEWORK_REMAINDER
HISTORICAL_FCP_DISPOSITION
CUTOFF_EVIDENCE_PATHS
DYNAMICS_STATUS
PHYSICAL_LAW_OR_CONSTRAINT_ARCHITECTURE
BARE_VALIDITY_REPRESENTATION_COMPOSITION_OR_MODEL_CONSTRAINT_ONLY
C_OLD_DIAGNOSTIC
C_NEW_DIAGNOSTIC
C_NEW_PASS_BASIS_IF_ANY
SPECIFICITY_WARNING_IF_ANY
AUDIT_USE
```

A control record is diagnostic only.

## 12. Decision rule frozen before adjudication

No scalar score is used.

### Outcome A — `GENERAL_RESULT_INDEPENDENT_JUSTIFICATION_CONFIRMED`

Use A only if all of the following hold:

1. T1 establishes a genuine pre-causal conceptual inconsistency/false-negative risk in C-old using at least one already admitted control;
2. T2 finds no material C-new specificity failure across the removed/nonframework controls;
3. T3 finds that C-new retains separable content rather than merely duplicating another admission burden;
4. T4 finds the physical-law/constraint versus formal-validity distinction operationally usable from pre-cutoff evidence;
5. T5 finds no material framework-style bias in the criterion meaning;
6. T6 establishes that the revision’s conceptual justification can be stated without any causal-process scientific fact.

### Outcome B — `PARTIAL_GENERAL_JUSTIFICATION_WITH_MATERIAL_METHOD_AMBIGUITY`

Use B if a genuine pre-causal defect in C-old exists, but one or more of T2–T5 remains materially ambiguous without establishing a clear failure.

### Outcome C — `GENERAL_JUSTIFICATION_FAILS_OR_IS_MATERIALLY_PROCESS_MATRIX_COUPLED`

Use C if any of the following is established:

- T1 fails because no pre-causal conceptual problem with C-old can be demonstrated;
- T2 establishes a material specificity failure;
- T3 shows C-new is substantively redundant/vacuous;
- T4 shows the physical-law versus formal-validity distinction cannot be applied independently of causal-process reasoning;
- T5 shows material framework-style bias that undermines neutrality;
- T6 fails because the justification materially relies on causal-process scientific content.

### Outcome D — `PREEXISTING_CANONICAL_EVIDENCE_INSUFFICIENT_FOR_RESULT_INDEPENDENCE_FINDING`

Use D when the cutoff evidence is too incomplete to distinguish A/B/C without speculation.

## 13. Anti-result-shopping rules

```text
FW_PROCESS_MATRIX_MAY_NOT_APPEAR_AS_A_CONTROL = YES
PROCESS_MATRIX_PASS_OR_FAIL_MAY_NOT_ENTER_DECISION_RULE = YES
DESIRED_FRAMEWORK_STATUS_MAY_NOT_ENTER_DECISION_RULE = YES
NO_CONTROL_MAY_BE_DROPPED_AFTER_REVIEW = YES
NO_CONTROL_MAY_BE_ADDED_AFTER_REVIEW_EXCEPT_TO_RESOLVE_AN_EXACT_PREDECLARED_ARTIFACT_AMBIGUITY = YES
NO_EXTERNAL_SEARCH_IF_A_CONTROL_IS_AMBIGUOUS = YES
AMBIGUITY_MUST_BE_RECORDED_NOT_REPAIRED = YES
```

The result sought is a verdict on Method-0.2.1 result independence, not preservation or rejection of the process-matrix admission.

## 14. Required audit outputs

The substantive audit, if later executed under this preregistration, may create only:

```text
audits/METHOD_0_2_1_RESULT_INDEPENDENCE_AUDIT_0_1_0.md
handoffs/METHOD_0_2_1_RESULT_INDEPENDENCE_AUDIT_HANDOFF_0_1_0.md
```

The result artifact must contain:

- all control records;
- T1–T6 findings;
- final A/B/C/D disposition;
- explicit causal-process-blind argument;
- exact consequence boundary without executing the consequence.

## 15. Required stop behavior

If Outcome A:

```text
METHOD_0_2_1_RESULT_INDEPENDENCE = CONFIRMED_AT_PRE_CAUSAL_CONTROL_SCOPE
FW_PROCESS_MATRIX_STATUS_CHANGE = NONE
ADMISSION_AUDIT_AUTOMATICALLY_STARTED = NO
```

If Outcome B/C/D:

```text
METHOD_0_2_1_CHANGE_INSIDE_AUDIT = NONE
FW_PROCESS_MATRIX_STATUS_CHANGE_INSIDE_AUDIT = NONE
NEXT_CONSEQUENCE = REQUIRES_SEPARATE_SEQUENCING_OR_METHOD_ADMISSION_RECONSIDERATION
```

Under every outcome:

```text
HISTORICAL_FRAMEWORK_STATUS_CHANGE = NONE
NEW_SOURCE_SEARCH = NONE
PAIRWISE = NONE
CONVERGENCE = NONE
RECURRENCE = NONE
FCP27 = UNSELECTED
```

## 16. Freeze statement

This preregistration freezes the cutoff, controls, criterion interpretations, mandatory tests, and A/B/C/D decision rule **before substantive review of the control artifacts**.

```text
AUDIT_PREREGISTRATION = FROZEN
CONTROL_ADJUDICATION = NOT_STARTED
METHOD_REVISION = NONE
FW_PROCESS_MATRIX_STATUS_CHANGE = NONE
```
