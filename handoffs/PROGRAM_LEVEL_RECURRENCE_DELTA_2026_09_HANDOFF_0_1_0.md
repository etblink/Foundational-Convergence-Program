# Program-Level Recurrence Delta 2026-09 — Handoff 0.1.0

**Operation:** `PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09`  
**Status:** QUALIFIED FOR PROJECT-LEAD INTEGRATION  
**Date:** 2026-09-10

## 1. Canonical base gate

The operation began from and was qualified against:

```text
CANONICAL_MAIN_COMMIT = baeda13f9140d7e0d50adfef36546f26fae3f999
CANONICAL_MAIN_TREE = 2bc0ff33f5f2cc6f67b6a4b86f12f0cacf6db553
CANONICAL_MAIN_UNCHANGED_DURING_CANDIDATE_EXECUTION = YES
```

## 2. Candidate branch

```text
BRANCH = research/program-level-recurrence-delta-2026-09
ADJUDICATION_COMMIT = 68193b1151030164157890c7e7dafa1e99940b72
ADJUDICATION_TREE = 581c074a88a6a35264c8123b96795b8eee10aeb9
ADJUDICATION_PARENT = f9710df78572ad062db8c821eedfa84b088b6455
BASE_MERGE_ANCESTOR = baeda13f9140d7e0d50adfef36546f26fae3f999
AHEAD_BY_BEFORE_HANDOFF = 3
BEHIND_BY_BEFORE_HANDOFF = 0
```

The branch commit is unsigned; this is recorded as transport/provenance metadata and is not treated as scientific evidence.

## 3. Frozen artifacts

Before this handoff, the candidate diff against canonical base contained exactly:

1. `governance/PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09_PREREGISTRATION_0_1_0.md`
2. `audits/PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09_ADJUDICATION_0_1_0.md`

This handoff is the third allowed artifact. No pairwise scientific artifact, prior recurrence artifact, source register, framework register, claim ledger, comparison protocol, or historical FCP-18 artifact was rewritten during the scientific operation.

## 4. Controlling scientific result

```text
CURRENT_HISTORICAL_PAIRWISE_OPERATION_COUNT = 19
CURRENT_EFFECTIVE_PAIRWISE_SLOT_COUNT = 15
CURRENT_EFFECTIVE_REDUCED_NFC_PAIRWISE_SLOT_COUNT = 7

RECURRENCE_CANDIDATE_FAMILY_COUNT = 13
FAMILY_COUNT_CHANGED = NO
FAMILY_SUPPORT_INCIDENCE_CHANGED = YES

R1 = 0
R2 = 0
R3 = 1
R4 = 1
R5 = 7
R6 = 0
R7 = 1
R8 = 3
R9 = 0
R10 = 0

CURRENT_INDEPENDENT_FRAMEWORK_LEVEL_EMP4_SLOT_COUNT = 0
CURRENT_MULTI_FAMILY_EMP4_RECURRENCE_COUNT = 0
REDUCED_NFC_SUPPORTING_RECURRENCE_FAMILY_COUNT = 0
HAS_REDUCED_NFC_ACCUMULATED_REPEATED_INDEPENDENT_SUPPORT = NO
DOES_ANY_INDEPENDENTLY_NONGENERIC_COMMON_STRUCTURE_SURVIVE_ACROSS_MULTIPLE_DISTINCT_FRAMEWORK_FAMILIES = NO
FRAMEWORK_WINNER = NONE
SCALAR_FRAMEWORK_SCORE = FORBIDDEN
```

## 5. Material audit finding

The preregistration's provisional expectation of 14 current effective pairwise slots was falsified by exact reconstruction. The process-matrix/null comparison is a distinct current pairwise slot created after the previous 13-slot recurrence epoch, and the Reduced-NFC/process-matrix comparison is another distinct current slot. The K9 targeted reanalysis updates the process-matrix/null slot but is not separately counted in the current denominator.

```text
PREREGISTERED_EXPECTED_CURRENT_SLOT_COUNT = 14
RECONSTRUCTED_CURRENT_SLOT_COUNT = 15
DENOMINATOR_CORRECTION = PASS
FORCED_EXPECTATION_PRESERVATION = NO
```

This discrepancy is a positive audit result: the preregistration's explicit reconstruction-over-expectation rule operated as intended.

## 6. Family-support delta

The process-matrix/null slot adds support incidence to existing R4 lineage/reformulation and R7 empirical-inheritance/shared-target axes and reinforces the existing R8 dynamics, realization/calibration, and discriminator burdens. It creates no new recurrence family.

The Reduced-NFC/process-matrix slot contributes five generic E5 incidences to existing R5 families: carrier/domain organization, quotient/equivalence, admissible transformations, observable/interface mediation, and globalization/coherence. It contributes no E1–E4 relation, non-generic relation, or empirical selection.

## 7. Qualification gates

```text
CANONICAL_BASELINE = PASS
EXACT_INPUT_IDENTITY_BINDING = PASS
NEW_EXTERNAL_SOURCES = 0
SOURCE_WINDOW_EXPANSION = 0
DENOMINATOR_RECONSTRUCTION = PASS
PROCESS_MATRIX_K9_DOUBLE_COUNTING = NO
REDUCED_NFC_DENOMINATOR_RECONSTRUCTION = PASS
K1_K10_MATRIX_ARITHMETIC = PASS
RECURRENCE_VECTOR_ARITHMETIC = PASS
GENERICITY_SUBTRACTION = PASS
LINEAGE_SUBTRACTION = PASS
TARGET_CONDITIONING_FIREWALL = PASS
EMPIRICAL_INHERITANCE_FIREWALL = PASS
SHARED_ABSENCE_FIREWALL = PASS
OVERCLAIM_TEST = PASS
OVER_SUBTRACTION_TEST = PASS
SCALAR_SCORE_FIREWALL = PASS
HISTORICAL_ARTIFACT_IMMUTABILITY = PASS
SCIENTIFIC_CANDIDATE_QUALIFICATION = PASS
```

## 8. Integration boundary

Project Lead integration may merge this scientific candidate if final PR diff inspection confirms exactly the three allowed artifacts. Navigation and durable-provenance updates, if desired, should occur **after** the scientific result is canonical and should be treated as a separate bounded maintenance reconciliation.

No FCP-27 operation is selected by this handoff. No new source search is authorized by this handoff. No framework receives winner status or evidentiary promotion.

## 9. Post-integration recommended sequence

After canonical integration:

1. reconcile the durable current-state surfaces to the 15-slot / 7-NFC-slot recurrence delta without rewriting historical recurrence records;
2. append the minimum durable Claim Ledger row for the new recurrence result if the current ledger policy requires it;
3. perform a fresh read-only sequencing adjudication from the reconciled canonical state rather than automatically selecting FCP-27 or another recurrence operation.
