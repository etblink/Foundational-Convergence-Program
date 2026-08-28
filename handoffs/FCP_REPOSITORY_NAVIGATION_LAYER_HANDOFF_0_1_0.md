# FCP Repository Navigation Layer Handoff 0.1.0

## Status and authority boundary

```text
OPERATION = FCP_REPOSITORY_NAVIGATION_LAYER_BOOTSTRAP
OPERATION_CLASS = REPOSITORY_INFRASTRUCTURE
STATUS = QUALIFIED_LOCAL_CANDIDATE
FCP_REPOSITORY_NAVIGATION_LAYER = QUALIFIED_LOCAL_CANDIDATE
INDEXED_SCIENTIFIC_BASELINE_COMMIT = b5bc05ea6b82346e856d5dca4f91b98bbbc802ba
INDEXED_SCIENTIFIC_BASELINE_TREE = 23d5f4a0f988cefebbf6c5b8a4dff98a8a7eaab8
METHOD = 0.2.0
REMOTE_WRITE = NONE
CANONICAL_INTEGRATION = NOT_STARTED
```

This handoff transfers only a derived repository-navigation layer. Git remains provenance authority; canonical Markdown remains scientific and governance authority; the structured navigation records are a fast derived map. If any navigation record conflicts with an underlying canonical artifact, the canonical artifact wins and the navigation record is stale or invalid.

## Outputs

```text
meta/FCP_NAVIGATION_SCHEMA_0_1_0.json
meta/FCP_CANONICAL_INDEX.json
meta/FCP_OPERATION_REGISTRY.jsonl
meta/FCP_ARTIFACT_REGISTRY.jsonl
tools/fcp_navigation.py
handoffs/FCP_REPOSITORY_NAVIGATION_LAYER_HANDOFF_0_1_0.md
```

The canonical index is compact and binds to the scientific baseline rather than to the commit that contains the navigation files. The artifact registry inventories every tracked blob in that indexed baseline except the three self-referential navigation registries. The semantic operation registry covers the current dependency closure and does not claim complete FCP history.

## Deterministic use

From repository root:

```text
python tools/fcp_navigation.py summary
python tools/fcp_navigation.py check --ref b5bc05ea6b82346e856d5dca4f91b98bbbc802ba
python tools/fcp_navigation.py refresh --ref b5bc05ea6b82346e856d5dca4f91b98bbbc802ba
```

`refresh` updates only Git-derived baseline facts, core-authority blobs, counts, and the artifact registry. It does not select science, infer supersession, alter method status, or adjudicate any framework or relation. `check` returns nonzero when structural, Git-identity, referential, supersession, Git-ancestry chronology, deterministic-serialization, or capsule integrity fails. `summary` prints compact orientation without scientific inference.

The targeted audit of all 38 operation records preserves only canonically evidenced semantic relationships. It removes unsupported indirect downstream edges and sets the FCP-6 `routing_commit` to `null` while preserving its supported result commit `7d698cda8b4721dc3e40ebc959eca8b7b9bd7c33`.

## Current routed boundary

```text
LATEST_NUMBERED_PHASE = FCP-25
LATEST_COMPLETED_SCIENCE_OPERATION = FCP25_STAGE2_TENSOR_TAXONOMY_GATE_AND_K1_K10_BASELINE
LATEST_COMPLETED_EXTERNAL_AUDIT_CHAIN = POST_FCP25_GROK_AUDIT
LATEST_COMPLETED_MAINTENANCE_OPERATION = POST_FCP25_GROK_RECONCILIATION
POST_FCP25_GROK_AUDIT = CANONICALLY_COMPLETE
POST_FCP25_GROK_INDEPENDENT_ADJUDICATION = CANONICALLY_COMPLETE
POST_FCP25_GROK_RECONCILIATION = CANONICALLY_COMPLETE
NEXT_RECOMMENDED_OPERATION = BROADER_HOLOGRAPHIC_SOURCE_INTAKE
BROADER_HOLOGRAPHIC_SOURCE_INTAKE = NOT_STARTED
FCP26_SELECTED = NO
FCP26_STARTED = NO
```

These are navigation transcriptions from the exact canonical baseline, not independent conclusions of this infrastructure operation.

## Open dockets carried forward

```text
REDUCED_NFC_PAIRWISE_INFORMATION_CEILING_LABELING = DOCKETED_NOT_EXECUTED
NFC_AQFT_SLOT_METHOD_NORMALIZATION = DOCKETED_NOT_EXECUTED
CROSS_PAIR_RESIDUAL_E5_CONSISTENCY_CHECK = DOCKETED_NOT_EXECUTED
LOOP_CLAIM_TRANSCRIPTION_CHECK = DOCKETED_NOT_EXECUTED
```

No docket is executed by this operation.

## Prospective machine-readable handoff capsule

<!-- FCP_HANDOFF_CAPSULE_BEGIN -->
```json
{
  "capsule_schema_version": "0.1.0",
  "forbidden_next_actions": [
    "NAVIGATION_LAYER_PUBLICATION",
    "MAIN_INTEGRATION",
    "BROADER_HOLOGRAPHIC_SOURCE_INTAKE",
    "SOURCE_SEARCH",
    "SOURCE_ADMISSION",
    "FRAMEWORK_CREATION",
    "FRAMEWORK_TAXONOMY_ADJUDICATION",
    "RECURRENCE_RECOMPUTATION",
    "CATEGORY_B_DOCKET_EXECUTION",
    "FCP26_SELECTION",
    "FCP26"
  ],
  "indexed_scientific_baseline_commit": "b5bc05ea6b82346e856d5dca4f91b98bbbc802ba",
  "method_version": "0.2.0",
  "must_read": [
    "governance/FCP_REPOSITORY_NAVIGATION_LAYER_PREREGISTRATION_0_1_0.md",
    "meta/FCP_CANONICAL_INDEX.json",
    "CURRENT_STATE.md",
    "README.md",
    "governance/POST_FCP25_GROK_POST_ADJUDICATION_RECONCILIATION_AND_ROUTING_0_1_0.md",
    "FRAMEWORK_REGISTER.md",
    "governance/FCP_METHOD_0_2_0_ACTIVATION.md"
  ],
  "next_recommended_operation": "BROADER_HOLOGRAPHIC_SOURCE_INTAKE",
  "open_dockets": [
    "REDUCED_NFC_PAIRWISE_INFORMATION_CEILING_LABELING",
    "NFC_AQFT_SLOT_METHOD_NORMALIZATION",
    "CROSS_PAIR_RESIDUAL_E5_CONSISTENCY_CHECK",
    "LOOP_CLAIM_TRANSCRIPTION_CHECK"
  ],
  "operation_id": "FCP_REPOSITORY_NAVIGATION_LAYER_BOOTSTRAP",
  "outputs": [
    "meta/FCP_NAVIGATION_SCHEMA_0_1_0.json",
    "meta/FCP_CANONICAL_INDEX.json",
    "meta/FCP_OPERATION_REGISTRY.jsonl",
    "meta/FCP_ARTIFACT_REGISTRY.jsonl",
    "tools/fcp_navigation.py",
    "handoffs/FCP_REPOSITORY_NAVIGATION_LAYER_HANDOFF_0_1_0.md"
  ],
  "status": "QUALIFIED_LOCAL_CANDIDATE"
}
```
<!-- FCP_HANDOFF_CAPSULE_END -->

Future handoffs may adopt this capsule format prospectively. Historical handoffs without capsules remain valid and must not be rewritten merely to add one.

## Scientific non-effects and stop

```text
SCIENTIFIC_MUTATION = NONE
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
BROADER_HOLOGRAPHIC_SOURCE_INTAKE_STARTED = NO
FCP24_REANALYSIS = NO
FCP25_REANALYSIS = NO
POST_FCP25_GROK_REANALYSIS = NO
FW_HOLO_CREATED = NO
FCP26_SELECTED = NO
FCP26_STARTED = NO
```

The next permitted step is independent Project Lead verification of this local navigation-layer candidate. Publication and canonical integration have not started; publication, integration, source intake, docket execution, and new science require separate authorization.
