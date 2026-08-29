# FCP Repository Publication-Provenance and Ref-Lifecycle Housekeeping — Handoff 0.1.0

**Operation:** `FCP_REPOSITORY_PUBLICATION_PROVENANCE_AND_REF_LIFECYCLE_HOUSEKEEPING`
**Status:** QUALIFIED CANDIDATE COMPLETE / NOT INTEGRATED
**Scientific mutation:** none

## 1. Controlling result

```text
FCP_REPOSITORY_PUBLICATION_PROVENANCE_AND_REF_LIFECYCLE_HOUSEKEEPING =
QUALIFIED_CANDIDATE_COMPLETE_NOT_INTEGRATED

FCP_PUBLICATION_TRANSPORT_POLICY = CONTENT_API_EQUIVALENT_PUBLICATION_ALLOWED
EXACT_PREPUBLICATION_COMMIT_OBJECT_PRESERVATION = PREFERRED_NOT_REQUIRED
BUNDLE_POWERSHELL_FALLBACK = CANONICALLY_PERMITTED
REMOTE_REF_LIFECYCLE_POLICY = DEFINED
SCIENTIFIC_MUTATION = NONE
```

The candidate canonically formalizes repository publication/provenance semantics and a branch/archive lifecycle policy without changing any scientific result.

## 2. Exact baseline

```text
BASE_COMMIT = 25c75cc200b35244fc7db81ba925b8e2063c442e
BASE_TREE = 779cd9752943172e8c6a542d1a158fbf7abf6b26
BASE_EXACT_PARENT = cd9d7b3c00d6f8b909155421bc272bd63fe39f2b
LATEST_SCIENTIFIC_COMMIT = 9733e2a3671ca81e5f8696f625f60eb59cc0e8e8
```

## 3. Read-only sequencing decision reconciled

```text
POST_FCP26_STAGE1_SCIENTIFIC_SEQUENCING_ADJUDICATION =
PROJECT_LEAD_ACCEPTED_READ_ONLY_DECISION

SEQUENCING_SELECTED_NEXT_OPERATION =
FCP_REPOSITORY_PUBLICATION_PROVENANCE_AND_REF_LIFECYCLE_HOUSEKEEPING

NEXT_SUBSTANTIVE_CANDIDATE_AFTER_HOUSEKEEPING = FW_CAT_SOURCE_INTAKE_STAGE1
FCP27_SELECTED = NO
```

## 4. Publication governance result

The new policy defines qualification identity separately from canonical publication identity, permits content-equivalent publication where commit metadata necessarily differs, permits transport-only Git commits without scientific status, requires candidate-to-publication identity mapping, and requires deterministic navigation rebinding when the actual publication identity is an input.

Bundle + guarded PowerShell publication is the preferred fallback when it is simpler and safer than direct connector object transfer.

## 5. Remote-ref lifecycle result

The current remote branches are classified under the new policy. Two diverged unique tips require immutable archival tags before branch deletion:

```text
archive/audit-fcp24-finding007-targeted-source-reaudit =
3e2e39bf2cb0fe5f40f1836b2dd40a8745b74c57

archive/research-targeted-source-strengthening =
604d8ada8ba533960c1478e692d37303cf239fe7
```

Integrated redundant branches may be removed after exact ref verification because their commits remain reachable from canonical history.

Target post-publication remote state:

```text
REMOTE_BRANCH_COUNT = 1
REMOTE_BRANCHES = main
REMOTE_ARCHIVAL_TAG_COUNT = 4
```

## 6. Scientific firewall

```text
FCP26_STAGE1 = CANONICALLY_COMPLETE
FCP26_STAGE2 = NOT_JUSTIFIED_AT_CURRENT_CANONICAL_SCOPE
FCP26_STAGE2_STARTED = NO
STAGE2_TARGET_COUNT = 0
ATOMIC_CLOCK_TARGET_ADVANCES = NO
OPEN_DOCKET_COUNT = 5
OPEN_DOCKET_EXECUTION = NONE
SOURCE_SEARCH = NONE
PAIRWISE_COMPARISON = NONE
CONVERGENCE_CREDIT = NONE
RECURRENCE_RECOMPUTATION = NONE
FRAMEWORK_WINNER = NONE
SCALAR_FRAMEWORK_SCORE = FORBIDDEN
```

## 7. Next operation after integration

```text
NEXT_RECOMMENDED_OPERATION = FW_CAT_SOURCE_INTAKE_STAGE1
NEXT_OPERATION_CLASS = SOURCE_INTAKE
NEXT_OPERATION_AUTHORIZED = NO
NEXT_NUMBERED_PHASE_SELECTED = NO
NEXT_NUMBERED_PHASE = NONE
FCP27_SELECTED = NO
```

No FW-CAT source search or preregistration occurs in this operation.

## 8. Canonical handoff capsule

<!-- FCP_HANDOFF_CAPSULE_BEGIN -->
```json
{
  "capsule_schema_version": "0.1.0",
  "operation_id": "FCP_REPOSITORY_PUBLICATION_PROVENANCE_AND_REF_LIFECYCLE_HOUSEKEEPING",
  "status": "QUALIFIED_CANDIDATE_COMPLETE_NOT_INTEGRATED",
  "indexed_scientific_baseline_commit": "cd9d7b3c00d6f8b909155421bc272bd63fe39f2b",
  "base_commit": "25c75cc200b35244fc7db81ba925b8e2063c442e",
  "method_version": "0.2.0",
  "must_read": [
    "CURRENT_STATE.md",
    "README.md",
    "governance/FCP_PUBLICATION_PROVENANCE_AND_REF_LIFECYCLE_POLICY_0_1_0.md",
    "audits/FCP_REPOSITORY_PUBLICATION_PROVENANCE_AND_REF_LIFECYCLE_HOUSEKEEPING_0_1_0.md",
    "governance/FCP26_STAGE1_POST_INTEGRATION_ROUTING_0_1_0.md",
    "FRAMEWORK_REGISTER.md"
  ],
  "outputs": [
    "governance/FCP_PUBLICATION_PROVENANCE_AND_REF_LIFECYCLE_POLICY_0_1_0.md",
    "audits/FCP_REPOSITORY_PUBLICATION_PROVENANCE_AND_REF_LIFECYCLE_HOUSEKEEPING_0_1_0.md",
    "handoffs/FCP_REPOSITORY_PUBLICATION_PROVENANCE_AND_REF_LIFECYCLE_HOUSEKEEPING_HANDOFF_0_1_0.md",
    "CURRENT_STATE.md",
    "README.md"
  ],
  "open_dockets": [
    "BISWAS_2026_AUTHOR_METADATA_TRANSCRIPTION_RECONCILIATION",
    "CROSS_PAIR_RESIDUAL_E5_CONSISTENCY_CHECK",
    "LOOP_CLAIM_TRANSCRIPTION_CHECK",
    "NFC_AQFT_SLOT_METHOD_NORMALIZATION",
    "REDUCED_NFC_PAIRWISE_INFORMATION_CEILING_LABELING"
  ],
  "next_recommended_operation": "FW_CAT_SOURCE_INTAKE_STAGE1",
  "forbidden_next_actions": [
    "UNAUTHORIZED_FW_CAT_SOURCE_SEARCH",
    "UNAUTHORIZED_FCP27_NUMBERING",
    "FCP26_STAGE2_EXECUTION",
    "ATOMIC_CLOCK_ANALYSIS",
    "PAIRWISE_COMPARISON",
    "CONVERGENCE_CREDIT",
    "RECURRENCE_RECOMPUTATION",
    "OPEN_DOCKET_EXECUTION"
  ]
}
```
<!-- FCP_HANDOFF_CAPSULE_END -->

## 9. Stop state

The candidate stops at housekeeping qualification. Publication, archive-tag creation, branch cleanup, and canonical integration must pass the exact guarded publication script and its live remote race gates.
