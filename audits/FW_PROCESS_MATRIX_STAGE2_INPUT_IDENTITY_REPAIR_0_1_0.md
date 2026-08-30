# FW-PROCESS-MATRIX Stage-2 Input-Identity Repair Audit

**Version:** 0.1.0  
**Operation ID:** `FW_PROCESS_MATRIX_STAGE2_INPUT_IDENTITY_REPAIR`  
**Operation class:** `BOUNDED_PROVENANCE_CUSTODY_REPAIR`  
**Scientific adjudication:** NOT PERFORMED

## 1. Trigger

The frozen Stage-2 preregistration version `0.1.0` was checked before corpus application as required. That check found an exact evidence-identity defect.

```text
CANONICAL_MAIN_AT_DETECTION = 0eb74a2b880b5b16f9158c461d05c7340f4b9e43
CANONICAL_TREE_AT_DETECTION = 0f9d2d7cab8345b103bac64dd531d73de58b072f
STAGE2_PREREGISTRATION_0_1_0_BLOB = db6ec71608f09b734a36130d1ee0743e4111daf7

PREREGISTERED_STAGE1_SOURCE_INTAKE_BLOB = e0d0fc67760818974590bdb92f2fb67b49ec9094
CANONICAL_STAGE1_SOURCE_INTAKE_BLOB = 4a594a67f2189f1663740cc76d5ae56e8b931ebc
IDENTITY_MATCH = NO
```

The canonical Stage-1 scientific result is:

```text
STAGE1_SCIENTIFIC_RESULT_COMMIT = 5675f75621125bdbac3755d88e57768afcc949c9
STAGE1_SCIENTIFIC_RESULT_TREE = 1cb2403c2ad84f050ed451a69ddbdfee0f3f7637
```

At that exact commit, the path

```text
frameworks/causal_process/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_SOURCE_INTAKE_STAGE1_0_1_0.md
```

has blob:

```text
4a594a67f2189f1663740cc76d5ae56e8b931ebc
```

The same path remains at that blob in the accepted post-Stage-1 navigation baseline `e30784fffc1e49e497289c9c9da151762c613596` and at live `main` at detection.

## 2. Why this is not a cosmetic hash mismatch

The two blobs are closely related but not identical. At minimum, their frozen Stage-1 role labels differ for load-bearing corpus entries:

```text
SRC-CPICO-VANDERLUGT-DI-2023
  NONCANONICAL_BLOB = R5 conditional certification architecture
  CANONICAL_BLOB    = R5-assumption certification boundary

SRC-FWPM-REAL-GUERIN-CRF-2018
  NONCANONICAL_BLOB = R1/R2 pure-process interpretation
  CANONICAL_BLOB    = R0 pure-process realizability interpretation
```

Therefore the preregistered pointer cannot be treated as an interchangeable encoding of the canonical Stage-1 evidence object.

## 3. Preregistered integrity-gate application

Stage-2 preregistration `0.1.0` states that an internal source-identity or corpus-integrity defect invalidating the frozen input premise requires a stop before scientific adjudication.

The gate is applied as follows:

```text
STAGE2_INPUT_INTEGRITY = FAIL
SCIENTIFIC_ADJUDICATION = NOT_COMPLETED
AX1_AX10_ADJUDICATION = NOT_PERFORMED_UNDER_0_1_0
A_F_SYNTHESIS = NOT_PERFORMED_UNDER_0_1_0
STAGE2_RESULT_ARTIFACTS = NOT_CREATED
REPAIR_REQUIRES_SEPARATE_BOUNDED_CUSTODY_OR_SOURCE_IDENTITY_OPERATION = YES
```

No unfavorable or favorable Stage-2 outcome is inferred from this failure.

## 4. Result-independent repair law

The repair is fixed by immutable provenance, not by the scientific valence of either blob.

```text
REPAIR_TARGET = EXACT_BLOB_AT_CANONICAL_STAGE1_SCIENTIFIC_RESULT_COMMIT
REPAIR_TARGET_PATH = frameworks/causal_process/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_SOURCE_INTAKE_STAGE1_0_1_0.md
REPAIR_TARGET_BLOB = 4a594a67f2189f1663740cc76d5ae56e8b931ebc

NEW_SOURCE_SEARCH = 0
NEW_SOURCE_ADMISSION = 0
SOURCE_REMOVAL_OR_REPLACEMENT = 0
SOURCE_REGISTER_MUTATION = 0
STAGE1_SCIENTIFIC_RESULT_CHANGE = 0
STAGE2_ADJUDICATION_RULE_CHANGE = 0
METHOD_REVISION = 0
FRAMEWORK_STATUS_CHANGE = 0
PAIRWISE_COMPARISON = 0
CONVERGENCE_CREDIT = 0
RECURRENCE_RECOMPUTATION = 0
EMPIRICAL_TARGET_SELECTION = 0
FCP27_SELECTION = 0
```

The only permitted repair is to bind the Stage-2 evidence universe to the exact canonical Stage-1 intake blob already fixed by immutable history.

## 5. Disposition of preregistration 0.1.0

```text
FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_AND_PHYSICAL_SELECTION_STAGE2_PREREGISTRATION_0_1_0 =
HISTORICAL_FAILED_INPUT_BINDING__DO_NOT_APPLY_FOR_ADJUDICATION
```

The file remains preserved in Git history and in the live tree as provenance. It is not rewritten.

A delta preregistration `0.1.1` may supersede it for execution only if it:

1. inherits every scientific adjudication rule from blob `db6ec71608f09b734a36130d1ee0743e4111daf7` unchanged;
2. replaces only the incorrect Stage-1 source-intake blob identity with `4a594a67f2189f1663740cc76d5ae56e8b931ebc`;
3. preserves all other frozen evidence identities and all prohibitions;
4. states explicitly that Stage-2 scientific adjudication remains not started at the repair boundary.

## 6. Stop boundary

```text
INPUT_IDENTITY_REPAIR_DIAGNOSIS = COMPLETE
STAGE2_SCIENTIFIC_RESULT = NONE
NEXT_BOUNDED_ACTION = FREEZE_DELTA_PREREGISTRATION_0_1_1_WITH_CANONICAL_STAGE1_BLOB
```
