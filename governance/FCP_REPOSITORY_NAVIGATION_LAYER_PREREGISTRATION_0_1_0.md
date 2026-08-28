# FCP Repository Navigation Layer Preregistration 0.1.0

## Operation identity

```text
OPERATION = FCP_REPOSITORY_NAVIGATION_LAYER_BOOTSTRAP
OPERATION_CLASS = REPOSITORY_INFRASTRUCTURE
SUBSTANTIVE_SCIENCE = NO
SCIENTIFIC_ADJUDICATION = NO
SOURCE_INTAKE = NO
METHOD_REVISION = NO
RECURRENCE_RECOMPUTATION = NO
FRAMEWORK_TAXONOMY_CHANGE = NO
```

This operation creates a thin, machine-readable, Git-bound navigation layer over the existing canonical Foundational Convergence Program repository. It is an optimization of repository access and referential integrity only. It does not create independent scientific or governance authority.

## Frozen baseline and topology

```text
REPOSITORY = etblink/Foundational-Convergence-Program
BRANCH = maintenance/fcp-navigation-layer-bootstrap-v2
INDEXED_SCIENTIFIC_BASELINE_COMMIT = b5bc05ea6b82346e856d5dca4f91b98bbbc802ba
INDEXED_SCIENTIFIC_BASELINE_TREE = 23d5f4a0f988cefebbf6c5b8a4dff98a8a7eaab8
INDEXED_SCIENTIFIC_BASELINE_MESSAGE = Canonicalize post-FCP-25 reconciliation routing
COMMIT_TOPOLOGY = EXACTLY_TWO_COMMITS
REMOTE_WRITE = NONE
```

Commit 1 contains only this preregistration. Commit 2 may add only the following six paths:

```text
meta/FCP_NAVIGATION_SCHEMA_0_1_0.json
meta/FCP_CANONICAL_INDEX.json
meta/FCP_OPERATION_REGISTRY.jsonl
meta/FCP_ARTIFACT_REGISTRY.jsonl
tools/fcp_navigation.py
handoffs/FCP_REPOSITORY_NAVIGATION_LAYER_HANDOFF_0_1_0.md
```

After Commit 1, this preregistration is immutable.

## Authority hierarchy

```text
AUTHORITY_HIERARCHY = FROZEN
GIT = PROVENANCE_AUTHORITY
CANONICAL_MARKDOWN_ARTIFACTS = SCIENTIFIC_AND_GOVERNANCE_AUTHORITY
STRUCTURED_NAVIGATION_LAYER = DERIVED_NAVIGATION_ONLY
STRUCTURED_NAVIGATION_LAYER != SCIENTIFIC_AUTHORITY
CONFLICT_RULE = UNDERLYING_CANONICAL_ARTIFACT_WINS
CONFLICTED_NAVIGATION_STATUS = STALE_OR_INVALID
```

The navigation layer may locate, classify, and connect canonical records. It may not manufacture scientific truth or displace the canonical Markdown artifacts that support its curated semantic fields.

## Index scope

```text
INDEX_SCOPE = COMPACT_NAVIGATION_ROOT
INDEX_IS_SECOND_CURRENT_STATE = NO
INDEXED_REPOSITORY = etblink/Foundational-Convergence-Program
INDEXED_SCIENTIFIC_BASELINE = b5bc05ea6b82346e856d5dca4f91b98bbbc802ba
```

The canonical index will bind current orientation, authority paths and blobs, the current Method artifact, current routing, open dockets, read profiles, and registry locations to the indexed scientific baseline. Its semantic content must be a pointer or transcription supported by canonical evidence.

The `GENERAL_PROJECT_ORIENTATION` read profile must begin, in this order, with the current live/current-routing authorities:

```text
CURRENT_STATE.md
README.md
governance/POST_FCP25_GROK_POST_ADJUDICATION_RECONCILIATION_AND_ROUTING_0_1_0.md
FRAMEWORK_REGISTER.md
```

Historical handoffs may follow as supporting context but may not displace those current authorities.

## Artifact registry scope

```text
ARTIFACT_REGISTRY_SCOPE = ENTIRE_TRACKED_INDEXED_BASELINE_TREE_EXCLUDING_SELF_REFERENTIAL_NAVIGATION_FILES
ARTIFACT_RECORD_FORMAT = ONE_JSON_OBJECT_PER_LINE
ARTIFACT_FACT_SOURCE = GIT_AT_INDEXED_BASELINE
UNSUPPORTED_SEMANTIC_BINDING = OMIT
```

Every tracked blob in the indexed baseline will receive an exact path, Git blob, byte count, Git mode, object type, and top-level classification record, except:

```text
meta/FCP_CANONICAL_INDEX.json
meta/FCP_OPERATION_REGISTRY.jsonl
meta/FCP_ARTIFACT_REGISTRY.jsonl
```

Those paths are excluded from their own recursively dependent inventory.

## Operation registry scope

```text
OPERATION_REGISTRY_SCOPE = CURRENT_DEPENDENCY_CLOSURE
HISTORICAL_OPERATION_COMPLETENESS_CLAIMED = NO
ABSENT_OPERATION_MEANS_SCIENTIFIC_ABSENCE = NO
OPERATION_RECORD_FORMAT = ONE_JSON_OBJECT_PER_LINE
```

The initial closure will cover operations necessary to navigate the exact current canonical state, including current-state and framework routing, the Claim Ledger supersession map, current program-level recurrence, the current post-FCP-24 Method-0.2.0 reanalysis chain, FCP-24, FCP-25, the post-FCP-25 audit/response/adjudication/reconciliation chain, and current next-operation routing. Predecessors and superseded operations will be included only where canonical evidence makes them necessary for current relationships to be intelligible.

Operation relationships must keep the following edge meanings distinct:

```text
INPUT_DEPENDENCY
SUPERSESSION
DOWNSTREAM_CONSUMER
NEXT_OPERATION_ROUTING
```

Dependencies do not imply scientific endorsement. Supersession requires canonical evidence.

## Stable identity and reference rules

```text
EXISTING_CANONICAL_OPERATION_TOKEN = PRESERVE_EXACTLY
WEAKEST_NECESSARY_NEW_NAVIGATION_ID = ALLOWED_WITH_CANONICAL_EVIDENCE_PATH
UNKNOWN_OPERATION_REFERENCE = FORBIDDEN
UNKNOWN_ARTIFACT_REFERENCE = FORBIDDEN
SUPERSESSION_SELF_EDGE = FORBIDDEN
SUPERSESSION_CYCLE = FORBIDDEN
```

Null or empty fields are preferred to invented commits, dependencies, supersessions, or scientific relationships.

## Operation semantic and chronology audit

Every non-null `base_commit`, `result_commit`, `routing_commit`, `supersedes`, `superseded_by`, `downstream_consumers`, and `next_operations` value must be supported by canonical evidence. Unsupported values must be null or empty; replacements may not be inferred from chronology.

For each ordinary linear operation with populated commit fields:

```text
BASE_TO_RESULT = BASE_COMMIT_MUST_BE_ANCESTOR_OF_RESULT_COMMIT
RESULT_TO_ROUTING = RESULT_COMMIT_MUST_BE_ANCESTOR_OF_ROUTING_COMMIT
BASE_AFTER_RESULT = FORBIDDEN
ROUTING_BEFORE_RESULT = FORBIDDEN
CHRONOLOGY_VIOLATION = NAVIGATION_INTEGRITY_FAIL_WITH_NONZERO_EXIT
```

The FCP-6 record preserves `result_commit = 7d698cda8b4721dc3e40ebc959eca8b7b9bd7c33` and uses `routing_commit = null` unless distinct canonical post-result routing evidence is positively demonstrated.

## Self-reference rule

```text
SELF_REFERENCE_RULE = NO_NAVIGATION_FILE_MAY_REQUIRE_THE_SHA_OF_THE_COMMIT_CONTAINING_ITSELF
INDEX_BINDING_TARGET = INDEXED_SCIENTIFIC_BASELINE
NAVIGATION_COMMIT_MAY_DESCEND_FROM_INDEXED_BASELINE = YES
```

The canonical index and handoff capsule will identify the exact scientific baseline being indexed. They will not attempt to solve an impossible recursive commit-identity dependency.

## Handoff capsule standard

The new navigation-layer handoff will introduce the prospective capsule convention without modifying any historical handoff.

```text
HANDOFF_CAPSULE_STANDARD = PROSPECTIVE_ONLY
HISTORICAL_HANDOFF_VALIDITY = PRESERVED
CAPSULE_BEGIN = <!-- FCP_HANDOFF_CAPSULE_BEGIN -->
CAPSULE_END = <!-- FCP_HANDOFF_CAPSULE_END -->
CAPSULE_BODY = EXACTLY_ONE_JSON_FENCED_BLOCK
```

The capsule will contain:

```text
capsule_schema_version
operation_id
status
indexed_scientific_baseline_commit
method_version
must_read
outputs
open_dockets
next_recommended_operation
forbidden_next_actions
```

No capsule field will require the SHA of the commit containing the capsule.

## Deterministic tool boundary

```text
DETERMINISTIC_TOOL_BOUNDARY = PYTHON_STANDARD_LIBRARY_PLUS_INSTALLED_GIT_CLI
NETWORK_ACCESS_REQUIRED = NO
GITHUB_API_REQUIRED = NO
DATABASE_REQUIRED = NO
VECTOR_DATABASE_REQUIRED = NO
EMBEDDINGS_REQUIRED = NO
THIRD_PARTY_PYTHON_PACKAGE_REQUIRED = NO
PLATFORMS = WINDOWS_AND_LINUX
```

The tool will support `refresh --ref <git-ref>`, `check --ref <git-ref>`, and `summary`. `refresh` may regenerate Git facts and the artifact registry but may not autonomously alter curated scientific or routing semantics. `check` will fail nonzero on any structural, Git-identity, baseline, reference, supersession, chronology, or capsule-integrity failure. `summary` will print compact orientation without scientific inference.

The validator may enforce types, required-field presence, parsing, path and blob identity, byte counts, commit and tree existence, reference resolution, uniqueness, supersession acyclicity, Git ancestry consistency, capsule parsing, and deterministic serialization. It may not hardcode mutable answers for the latest phase, next operation, current docket IDs, current Method value/path, current handoff operation, framework survival, scientific correctness, or framework status. Those values come from structured data and canonical evidence.

Generated JSON and JSONL will use UTF-8, LF endings, stable record ordering, and stable key serialization. Repeated refreshes of the same reference with unchanged curated input must be byte-identical.

## No-inference and immutability rules

```text
NO_SCIENTIFIC_INFERENCE_RULE = FROZEN
AI_INFERENCE_FROM_FILENAME_ALONE = INSUFFICIENT_FOR_SEMANTIC_BINDING
AI_INFERENCE_FROM_DIRECTORY_ALONE = INSUFFICIENT_FOR_SUPERSESSION
AI_INFERENCE_FROM_CHRONOLOGY_ALONE = INSUFFICIENT_FOR_DEPENDENCY
AMBIGUOUS_SEMANTIC_FIELD = NULL_OR_OMITTED

NO_HISTORICAL_REWRITE_RULE = FROZEN
PREEXISTING_FILE_MODIFICATION = FORBIDDEN
PREEXISTING_FILE_DELETION = FORBIDDEN
HISTORICAL_HANDOFF_REWRITE = FORBIDDEN

NO_AUTOMATIC_SUPERSESSION_INFERENCE_RULE = FROZEN
SUPERSESSION_REQUIRES_CANONICAL_TEXT_OR_EXACT_CURRENT_ROUTING = YES

NO_AUTOMATIC_NEXT_SCIENCE_SELECTION_RULE = FROZEN
CURATED_NEXT_OPERATION_MAY_BE_TRANSCRIBED_FROM_CANONICAL_ROUTING = YES
TOOL_MAY_SELECT_NEXT_SCIENCE = NO
```

The following pre-existing authorities remain byte-identical:

```text
CURRENT_STATE.md
FRAMEWORK_REGISTER.md
SOURCE_REGISTER.md
CLAIM_LEDGER.md
README.md
FCP_CHARTER.md
EPISTEMIC_RULES.md
COMPARISON_PROTOCOL.md
```

No existing artifact under `audits/`, `comparisons/`, `comparison_keys/`, `frameworks/`, `handoffs/`, `meta/`, or `sources/` may change.

## Scientific non-effects

```text
SCIENTIFIC_CLAIM_CHANGE = NONE
CLAIM_LEDGER_CHANGE = NONE
SOURCE_REGISTER_CHANGE = NONE
FRAMEWORK_REGISTER_CHANGE = NONE
CURRENT_STATE_CHANGE = NONE
README_CHANGE = NONE
METHOD_0_2_0_CHANGE = NONE
COMPARISON_CHANGE = NONE
RECURRENCE_CHANGE = NONE
FRAMEWORK_STATUS_CHANGE = NONE
SOURCE_ADMISSION = NONE
SOURCE_REMOVAL = NONE
NEW_EXTERNAL_SOURCE_SEARCH = NONE
FCP24_REANALYSIS = NO
FCP25_REANALYSIS = NO
POST_FCP25_GROK_REANALYSIS = NO
BROADER_HOLOGRAPHIC_SOURCE_INTAKE_STARTED = NO
FW_HOLO_CREATED = NO
FCP26_SELECTED = NO
FCP26_STARTED = NO
```

## Qualification and stop boundary

Qualification requires schema, canonical-index, artifact-registry, operation-registry, handoff-capsule, referential-integrity, Git-ancestry, deterministic-refresh, exact two-commit topology, clean-worktree, strict Git-fsck, final remote-main race-gate, and Git-bundle verification passes. Temporary negative fixtures must prove rejection of routing-before-result chronology, unknown operation references, supersession cycles, and artifact blob mismatches without mutating the final candidate.

```text
PUSH = FORBIDDEN
PULL_REQUEST = FORBIDDEN
MAIN_MUTATION = FORBIDDEN
REMOTE_BRANCH_CREATION = FORBIDDEN
CANONICAL_INTEGRATION = FORBIDDEN
NEXT_STEP_AFTER_LOCAL_QUALIFICATION = PROJECT_LEAD_INDEPENDENT_NAVIGATION_LAYER_VERIFICATION
```

No broader holographic source intake, source search or admission, framework creation or taxonomy adjudication, recurrence recomputation, Category-B docket execution, FCP-26 selection, or FCP-26 work is authorized.
