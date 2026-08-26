# FCP-23 — Phase Opening and Empirical/No-Go Preregistration

**Version:** 0.1.0  
**Status:** `SELECTED_NOT_YET_EXECUTED`  
**Method:** FCP Method 0.2.0  
**Authorized canonical baseline:** `d208ecb97510ca454c37830e13b93021a779b5c5`  
**Authorized baseline tree:** `81bb15acebc684931e20cc031c766f50e06af9a6`  
**Exact baseline parent:** `115e88f578d3d9f761d870c3cb569bd72b61c559`

## 1. Accepted sequencing decision

The accepted Post-FCP-22 Scientific Sequencing Decision is:

```text
POST_FCP22_SEQUENCING_ADJUDICATION = ACCEPTED

NEXT_RECOMMENDED_SCIENTIFIC_PHASE =
EMPIRICAL_NO_GO_DISCRIMINATOR_FEASIBILITY

FCP23_NATURAL_PHASE_ID = YES

FCP23_TITLE =
FCP-23 — Framework-Level Empirical / No-Go
Discriminator Feasibility and Target Selection

SCIENTIFIC_SEQUENCE_PRIORITY_1 =
FRAMEWORK_LEVEL_EMPIRICAL_NO_GO_DISCRIMINATOR_FEASIBILITY

SCIENTIFIC_SEQUENCE_PRIORITY_2 =
PROSPECTIVE_REDUCED_NFC_VS_STRENGTHENED_AS_REANALYSIS

SCIENTIFIC_SEQUENCE_PRIORITY_3 =
PROSPECTIVE_REDUCED_NFC_VS_STRENGTHENED_LOOP_REANALYSIS

RECURRENCE_RECOMPUTATION = PREMATURE
LOOP_TAXONOMY_REVIEW = PARALLEL_LATER
CLAIM_LEDGER_PROPAGATION = REPOSITORY_ACCOUNTING_TASK
```

This record opens and preregisters FCP-23. It does not execute FCP-23 science.

## 2. FCP-23 scientific question

```text
DOES ANY CURRENTLY ADMITTED FCP FRAMEWORK
FORCE A COMMITMENT THAT CURRENT EMPIRICAL,
OBSERVATIONAL, CONSISTENCY, OR RIGOROUS
NO-GO EVIDENCE CAN TEST AT FRAMEWORK SCOPE,
RATHER THAN ONLY AT MODEL, PARAMETER,
REALIZATION, EXTENSION, OR TRUNCATION SCOPE?
```

FCP-23 is a discriminator-feasibility and target-selection audit, not a phenomenology survey, framework ranking, or winner-selection exercise.

## 3. Frozen framework scope

The FCP-23 framework set is exactly:

```text
FW-NULL-GRQFTSM
FW-NFC-RED
FW-AQFT
FW-GPTOPT
FW-CQM
FW-CST
FW-LOOP
FW-AS
```

No new framework may be admitted during FCP-23. `FW-STRING`, `FW-TENSOR`, `FW-CAT`, and any other new framework are outside this phase.

Each framework is evaluated as its currently canonical FCP object:

```text
FW-AQFT =
CURRENT_SOURCE_STRENGTHENED_AQFT_OBJECT

FW-LOOP =
CURRENT_SOURCE_STRENGTHENED_LOOP_OBJECT
WITH_EXISTING_LQC_FIREWALL

FW-AS =
CURRENT_SOURCE_STRENGTHENED_AS_OBJECT

FW-NFC-RED =
EXACT_FCP3_REDUCED_NFC_COMPARATIVE_OBJECT
```

Full/later NFC is not imported. LQC is not imported into `FW-LOOP`. Framework-adjacent sources receive no framework credit without separate taxonomy authorization.

## 4. Governing framework-vs-model rule

Permanent controls:

```text
MODEL_PREDICTION != FRAMEWORK_PREDICTION
MODEL_EXCLUSION != FRAMEWORK_EXCLUSION
PARAMETER_REGION_EXCLUSION != FRAMEWORK_EXCLUSION
REALIZATION_FAILURE != FRAMEWORK_FAILURE
OPTIONAL_EXTENSION_FAILURE != FRAMEWORK_FAILURE
TRUNCATION_FAILURE != FRAMEWORK_FAILURE
COMPATIBILITY != EMPIRICAL_SELECTION
RECOVERY_OF_INCUMBENT_SUCCESS != EMP4
NO_GO_FOR_ONE_IMPLEMENTATION != FRAMEWORK_NO_GO
```

Scientifically meaningful model-, parameter-, realization-, extension-, and truncation-level results must be preserved at their correct scope rather than erased.

## 5. Forced-framework-commitment gate

A discriminator candidate may advance only when its tested commitment is classified as:

```text
FORCED_FRAMEWORK_COMMITMENT
```

rather than:

```text
OPTIONAL_MODEL
OPTIONAL_EXTENSION
PARAMETER_CHOICE
BOUNDARY_CONDITION
INITIAL_CONDITION
REALIZATION_CHOICE
TRUNCATION_ARTIFACT
PHENOMENOLOGICAL_ANSATZ
TARGET_CONDITIONED_RECOVERY
UNKNOWN
```

Required gate:

```text
CAN_THE_FRAMEWORK_RETAIN_ITS_CANONICAL_IDENTITY
WHILE_ESCAPING_THIS_TESTED_COMMITMENT?

YES ->
NOT_FRAMEWORK_FORCED

NO ->
FRAMEWORK_FORCED_CANDIDATE

UNRESOLVED ->
DO_NOT_PROMOTE
```

A framework-forced candidate therefore requires evidence that the admitted framework cannot preserve its canonical identity while avoiding the tested commitment.

## 6. Frozen exclusion-scope taxonomy

Every candidate empirical/no-go result receives exactly one primary exclusion scope:

```text
EXCL-F = FRAMEWORK
EXCL-M = MODEL
EXCL-P = PARAMETER_REGION
EXCL-R = REALIZATION
EXCL-E = EXTENSION
EXCL-T = TRUNCATION
EXCL-U = UNRESOLVED
```

Framework exclusion requires:

```text
FORCED_FRAMEWORK_COMMITMENT = YES
NO_CORE_PRESERVING_ESCAPE = ESTABLISHED
```

Anything weaker must not be described as framework exclusion.

## 7. Canonical-corpus-first stage

FCP-23 begins with:

```text
STAGE_1 =
CANONICAL_CORPUS_FORCED_COMMITMENT_SCREEN
```

The existing canonical FCP corpus is screened first, including framework source bindings, null controls, Reduced-NFC comparisons, GPTOPT empirical material, CST phenomenology records, targeted source-strengthening packets, FCP-22, Method 0.2.0, and current live registers.

No broad external search is allowed before this internal screen.

A target family stops at Stage 1 if:

```text
NO_PLAUSIBLE_FRAMEWORK_FORCED_COMMITMENT
```

is identified.

## 8. External-source admission rule

Only target families surviving Stage 1 may receive new external sources.

Allowed source classes are:

```text
PRIMARY_EXPERIMENTAL_RESULT
PRIMARY_OBSERVATIONAL_RESULT
PRIMARY_THEOREM_OR_NO_GO_RESULT
PRIMARY_FRAMEWORK_PHENOMENOLOGY_RESULT
CURRENT_AUTHORITATIVE_REVIEW
DIRECT_LIMITATION_OR_FAILURE_RESULT
```

Reviews may orient a search but do not replace primary support when primary support is available.

Each admitted source must support one declared discriminator proposition or one declared limitation proposition. Literature is not admitted merely because it concerns a framework.

## 9. Preregistered screening families

```text
EMPIRICAL_OBSERVATIONAL_DISCRIMINATION

BELL_CONTEXTUALITY_AND_OPERATIONAL_CONSTRAINTS

CAUSALITY_LOCALITY_CONSTRAINTS

LORENTZ_INVARIANCE_OR_SIGNATURE_CONSTRAINTS

UNITARITY_AND_SPECTRAL_POSITIVITY

ANALYTICITY_OR_POSITIVITY_CONSTRAINTS

GRAVITY_MATTER_CONSISTENCY

CONTINUUM_OR_MANIFOLDLIKENESS_OBSTRUCTIONS

RENORMALIZATION_OR_UV_CONSISTENCY

COMPOSITE_SYSTEM_CONSTRAINTS

FRAMEWORK_FORCED_COSMOLOGICAL_OR_ASTROPHYSICAL_SIGNATURES

OTHER_RIGOROUS_NO_GO_RESULT
ONLY_IF_DIRECTLY_TRIGGERED_BY_CANONICAL_FRAMEWORK_CONTENT
```

This is a screening taxonomy, not a mandate for a search in every category. Categories may not be expanded opportunistically after promising literature is encountered.

## 10. Required empirical/no-go record

Every surviving target must record:

```text
TARGET_ID
TESTED_FRAMEWORK
FORCED_FRAMEWORK_COMMITMENT
COMMITMENT_PROVENANCE
OBSERVABLE_OR_THEOREM
RESULT_TYPE
PREPARATION_OR_INITIAL_CONDITIONS
PARAMETER_TREATMENT
REALIZATION_DEPENDENCE
MODEL_DEPENDENCE
TRUNCATION_DEPENDENCE
THEOREM_ASSUMPTIONS_IF_APPLICABLE
UNCERTAINTY_OR_TOLERANCE_MODEL_IF_EMPIRICAL
TEST_DOMAIN
KNOWN_OUT_OF_SCOPE_DOMAIN
NULL_OR_WEAKER_COMPARATOR
FAILURE_CONDITION
NO_CORE_PRESERVING_ESCAPE_STATUS
EXCLUSION_SCOPE
EMPIRICAL_STATUS
PHYSICAL_REALIZATION_STATUS
CALIBRATION_STATUS
EVIDENCE_STRENGTH
PROVENANCE_STATUS
```

## 11. Frozen Method 0.2.0 E4 burden

Operational-predictive E4 requires all mandatory predicates:

```text
DECLARED_OBSERVABLE_SET
PREPARATION_OR_INITIAL_CONDITIONS
PARAMETER_TREATMENT
UNCERTAINTY_OR_TOLERANCE_MODEL
TEST_DOMAIN
KNOWN_OUT_OF_SCOPE_OBSERVABLES
```

Failure of a mandatory predicate prevents E4 qualification. A theoretical consistency bound is not silently substituted for an empirical uncertainty/tolerance model.

## 12. Frozen EMP4 burden

Framework-level empirical selection requires `EMP4` or a separately justified exact equivalent under Method 0.2.0.

Required conditions include:

```text
DIRECT_FRAMEWORK_DISCRIMINATION
FORCED_FRAMEWORK_COMMITMENT
DECLARED_COMPARATOR
FALSIFIABLE_EXCLUSION_CONDITION
FRAMEWORK_SCOPE_NOT_MODEL_SCOPE
NO_INHERITED_EMPIRICAL_CREDIT
NO_TARGET_CONDITIONED_CREDIT
```

`EMP1`, `EMP2`, or `EMP3` alone do not imply EMP4.

## 13. Null / weaker-comparator discipline

Comparator roles must be declared separately using the active Method 0.2.0 comparator taxonomy, including where applicable:

```text
INCUMBENT_OR_NULL_BASELINE
REALIZATION_TARGET
FORMAL_COMPARATOR
COUNTERMODEL_OR_BOUNDARY_COMPARATOR
```

Permanent controls:

```text
NULL_INCOMPLETENESS
!=
POSITIVE_EVIDENCE_FOR_CANDIDATE

FAILURE_TO_SOLVE_NULL_OPEN_PROBLEM
!=
NEGATIVE_EVIDENCE_AGAINST_CANDIDATE

RECOVERY_OF_NULL_SUCCESS
!=
INDEPENDENT_EMPIRICAL_CREDIT

NULL_EMPIRICAL_SUCCESS
!=
FOUNDATIONAL_COMPLETENESS
```

## 14. Permitted FCP-23 outcome classes

Permitted bounded results include:

```text
FRAMEWORK_LEVEL_DISCRIMINATOR_IDENTIFIED

FRAMEWORK_LEVEL_NO_GO_CANDIDATE_IDENTIFIED

MODEL_LEVEL_ONLY_DISCRIMINATORS_IDENTIFIED

PARAMETER_OR_REALIZATION_CONSTRAINTS_ONLY

MIXED_BOUNDED_RESULT
```

Identification of a candidate does not itself establish framework exclusion.

## 15. Frozen bounded null-result wording

The following is explicitly a successful scientific outcome:

```text
NO_CURRENT_FRAMEWORK_LEVEL_DISCRIMINATOR_IDENTIFIED
AT_THE_DECLARED_SOURCE_SCOPE
```

It means:

```text
NO_SOURCE_QUALIFIED_RESULT
IN_THE_DECLARED_FCP23_SOURCE_WINDOW
SATISFIES_THE_CURRENT_FRAMEWORK_LEVEL
DISCRIMINATOR_BURDEN
```

It does not mean that foundational physics is empirically underdetermined in principle and does not rule out future experiments, theorems, refinements, or physical realizations.

```text
BOUNDED_UNDERDETERMINATION_ONLY = YES
```

## 16. Target-selection limit

```text
MAXIMUM_FOLLOW_ON_TARGETS = 1
TARGET_SELECTION = 0_OR_1
```

Zero targets is allowed. If several candidates survive, rank them by scientific information value and select exactly one for a separately authorized follow-on investigation.

## 17. Staged search-stop rule

### Stage 1 — canonical corpus screen

Stop a target family when:

```text
NO_PLAUSIBLE_FRAMEWORK_FORCED_COMMITMENT
```

is established.

### Stage 2 — bounded external source intake

Stop a target family when any of the following is established:

```text
FRAMEWORK_FORCED_TARGET_NOT_ESTABLISHED
ONLY_MODEL_OR_PARAMETER_SCOPE_SURVIVES
PRIMARY_SOURCE_CEILING_REACHED
NO_CORE_PRESERVING_ESCAPE_REMAINS_UNRESOLVED
DISCRIMINATOR_BURDEN_CANNOT_BE_MET
```

### Stage 3 — final adjudication

FCP-23 ends after either:

```text
ONE_FOLLOW_ON_TARGET_SELECTED
```

or:

```text
NO_CURRENT_FRAMEWORK_LEVEL_DISCRIMINATOR_IDENTIFIED
AT_THE_DECLARED_SOURCE_SCOPE
```

Search may not continue merely to avoid a null result.

## 18. Source-freeze rule

Before final discriminator adjudication:

```text
FCP23_SOURCE_CORPUS_FROZEN_BEFORE_FINAL_SCORING = YES
```

After freeze:

```text
NEW_SOURCES_DURING_FINAL_ADJUDICATION = 0
```

Any later source expansion requires explicit reopening or a separately versioned phase.

## 19. Anti-retrofitting rule

The following are frozen before substantive FCP-23 execution and may not be changed after seeing which framework appears favored:

- framework set;
- framework-object definitions;
- forced-commitment burden;
- exclusion-scope taxonomy;
- E4 burden;
- EMP4 burden;
- external-source admission rule;
- screening-family taxonomy;
- staged search-stop rule;
- source-freeze rule;
- maximum target count;
- bounded negative-result wording.

```text
TARGET_RETROFITTING = FORBIDDEN
```

A methodological defect discovered during FCP-23 is surfaced as:

```text
METHOD_REVIEW_CANDIDATE
```

and is not silently repaired inside the scoring pass.

## 20. Symmetric anti-smuggling / anti-over-subtraction controls

Explicitly test against:

```text
MODEL_TO_FRAMEWORK_PROMOTION
OPTIONAL_EXTENSION_TO_CORE_PROMOTION
TRUNCATION_TO_FRAMEWORK_PROMOTION
PARAMETER_BOUND_TO_FRAMEWORK_EXCLUSION
REALIZATION_FAILURE_TO_FRAMEWORK_FAILURE
COMPATIBILITY_TO_SELECTION_PROMOTION
INHERITED_SUCCESS_TO_EMP4_PROMOTION
TARGET_CONDITIONED_RECOVERY_TO_INDEPENDENT_CREDIT
NO_GO_SCOPE_EXPANSION
NULL_OPEN_PROBLEM_TO_CANDIDATE_CREDIT
```

Also require:

```text
OVER_SUBTRACTION_TEST = REQUIRED
```

A real result is retained at the strongest source-qualified scope even when it does not qualify as framework discrimination.

## 21. No-winner architecture

```text
FRAMEWORK_WINNER = NONE
SCALAR_FRAMEWORK_SCORE = FORBIDDEN
GLOBAL_RANKING = FORBIDDEN
```

FCP-23 produces a discriminator-feasibility map and at most one follow-on target.

## 22. Execution boundary

This preregistration does not authorize substantive FCP-23 execution.

```text
FCP23_STATUS = SELECTED_NOT_YET_EXECUTED
FCP23_SUBSTANTIVE_EXECUTION = NOT_STARTED

NEW_EXTERNAL_SOURCES = 0
NEW_EMPIRICAL_ADJUDICATIONS = 0
NEW_FRAMEWORK_EXCLUSIONS = 0

RECURRENCE_RECOMPUTATION = NOT_STARTED
NFC_AS_REANALYSIS = NOT_STARTED
NFC_LOOP_REANALYSIS = NOT_STARTED
CLAIM_LEDGER_PROPAGATION = NOT_STARTED
LOOP_TAXONOMY_CHANGE = NOT_STARTED
NEW_FRAMEWORK_INTAKE = NOT_STARTED
```

A separate authorization is required to execute FCP-23.

## 23. Qualification expectations

The phase-opening candidate qualifies only if:

```text
CANONICAL_BASELINE = PASS
SEQUENCING_DECISION_TRANSCRIPTION = PASS
FCP23_IDENTITY_FREEZE = PASS
FRAMEWORK_SCOPE_FREEZE = PASS
FORCED_COMMITMENT_GATE = PASS
MODEL_FRAMEWORK_SCOPE_DISCIPLINE = PASS
EXCLUSION_SCOPE_TAXONOMY = PASS
CANONICAL_CORPUS_FIRST_RULE = PASS
SOURCE_ADMISSION_RULE = PASS
SEARCH_STOP_RULE = PASS
SOURCE_FREEZE_RULE = PASS
E4_BURDEN_FREEZE = PASS
EMP4_BURDEN_FREEZE = PASS
NULL_COMPARATOR_DISCIPLINE = PASS
ANTI_TARGET_RETROFITTING = PASS
ANTI_SMUGGLING = PASS
ANTI_OVER_SUBTRACTION = PASS
BOUNDED_NULL_RESULT_WORDING = PASS
MAXIMUM_TARGET_RULE = PASS
HISTORICAL_IMMUTABILITY = PASS
NO_SUBSTANTIVE_FCP23_EXECUTION = PASS
```

## 24. Governing principle

```text
FREEZE_THE_RULES_BEFORE_LOOKING_FOR_THE_ANSWER.

MODEL_CONSTRAINT_IS_NOT_FRAMEWORK_EXCLUSION.

NO_CURRENT_DISCRIMINATOR_AT_THE_DECLARED_SOURCE_SCOPE
IS_A_VALID_SCIENTIFIC_RESULT.

ONE_FOLLOW_ON_TARGET_AT_MOST.

NO_WINNER.

NO_FCP23_SCIENCE_YET.

PREREGISTER.
QUALIFY.
STOP.
```
