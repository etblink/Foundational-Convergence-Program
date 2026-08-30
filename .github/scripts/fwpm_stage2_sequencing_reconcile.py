from pathlib import Path
import json
import subprocess

EXPECTED_BASE = "5533ca3858975270a2a9cd666b405d3ebe224006"
STAGE2_RESULT = "fdb1ff04fc5c4a494da9c44822cac277a819d8c0"
STAGE2_TREE = "b348c91e73e95e552f16a067ed595e0d35ac7fc6"
SEQUENCING_OP = "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_ADJUDICATION"
SEQUENCING_PATH = "governance/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_DECISION_0_1_0.md"
ROUTING_OP = "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_ROUTING_AND_NAVIGATION_RECONCILIATION"
ROUTING_PATH = "governance/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_POST_INTEGRATION_ROUTING_0_1_0.md"
AUDIT_OP = "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT"


def replace_once(text, old, new, label):
    count = text.count(old)
    assert count == 1, f"{label}: expected one match, found {count}"
    return text.replace(old, new, 1)

head = subprocess.check_output(["git", "rev-parse", "HEAD"], text=True).strip()
assert head == EXPECTED_BASE, (head, EXPECTED_BASE)

# CURRENT_STATE
p = Path("CURRENT_STATE.md")
text = p.read_text(encoding="utf-8")
text = replace_once(
    text,
    "LATEST_CANONICAL_MAINTENANCE_OPERATION = POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_ROUTING_AND_NAVIGATION_RECONCILIATION",
    f"LATEST_CANONICAL_MAINTENANCE_OPERATION = {ROUTING_OP}",
    "latest maintenance",
)
old_block = """FW_PROCESS_MATRIX_STAGE2_INPUT_IDENTITY_REPAIR = CANONICALLY_COMPLETE
FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_AND_PHYSICAL_SELECTION_STAGE2 = CANONICALLY_COMPLETE
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_ROUTING_AND_NAVIGATION_RECONCILIATION = CANONICALLY_COMPLETE
NEXT_EXECUTION_STEP = READ_ONLY_POST_STAGE2_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_RECOMMENDED_OPERATION = POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_OPERATION_CLASS = READ_ONLY_SEQUENCING_ADJUDICATION
NEXT_OPERATION_AUTHORIZED = YES__CURRENT_EXECUTIVE_DELEGATION
NEXT_OPERATION_AUTHORIZATION_BOUNDARY = READ_ONLY_SEQUENCING_ONLY__NO_DOWNSTREAM_SCIENCE_PRESELECTED
NEXT_NUMBERED_PHASE_SELECTED = NO
FCP27_SELECTED = NO
NEXT_SCIENTIFIC_PHASE = NONE__PENDING_READ_ONLY_POST_STAGE2_SEQUENCING"""
new_block = f"""FW_PROCESS_MATRIX_STAGE2_INPUT_IDENTITY_REPAIR = CANONICALLY_COMPLETE
FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_AND_PHYSICAL_SELECTION_STAGE2 = CANONICALLY_COMPLETE
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_ROUTING_AND_NAVIGATION_RECONCILIATION = CANONICALLY_COMPLETE
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_ADJUDICATION = CANONICALLY_ACCEPTED_READ_ONLY_DECISION
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_SELECTED_ROUTE = R7__EXTERNAL_ADVERSARIAL_AUDIT
NO_IMMEDIATE_NEW_SUBSTANTIVE_SCIENCE = YES
SELECTED_NEXT_OPERATION = {AUDIT_OP}
NEXT_EXECUTION_STEP = PROSPECTIVELY_FREEZE_POST_STAGE2_EXTERNAL_AUDIT_OPENING
NEXT_RECOMMENDED_OPERATION = {AUDIT_OP}
NEXT_OPERATION_CLASS = EXTERNAL_ADVERSARIAL_AUDIT
NEXT_OPERATION_AUTHORIZED = YES__AUDIT_OPENING_PACKET_FREEZE_ONLY
NEXT_OPERATION_AUTHORIZATION_BOUNDARY = FREEZE_AUDIT_PREREGISTRATION_AND_PACKET__STOP_BEFORE_EXTERNAL_CONTACT
NEXT_NUMBERED_PHASE_SELECTED = NO
FCP27_SELECTED = NO
NEXT_SCIENTIFIC_PHASE = NONE__NO_IMMEDIATE_NEW_SUBSTANTIVE_SCIENCE"""
text = replace_once(text, old_block, new_block, "live sequencing block")
old_summary = "The Grok audit and independent adjudication, Finding-007 targeted source re-audit, String/M controls and comparisons, prospective AS/LOOP reanalyses, program-level recurrence, FCP-25, broader holography, FCP-26 Stage 1, publication-provenance housekeeping, FW-CAT Stages 1–2, the post-FW-CAT current-state external audit, the bounded `OBJ-CAT-11` re-adjudication, the causal-process / indefinite-causal-order Stage-1 intake, the prospective Method 0.2.1 admission repair, causal-process Stage-2 taxonomy, the Method-0.2.1 result-independence audit, the dedicated `FW-PROCESS-MATRIX` admission adversarial audit, the closed-corpus `FW_PROCESS_MATRIX_NULL_CONTROL`, the post-null read-only sequencing adjudication, targeted realizability / physical-selection Stage 1, the result-independent Stage-2 input-identity repair, and the closed-corpus Stage-2 physical-selection adjudication are complete at their declared scopes. Stage 2 establishes a general probabilistic/postselected representation but not a general deterministic realization or complete physical-selection criterion; selected positive classes, broad assumption-scoped exclusions, and a nonempty unresolved framework-wide remainder coexist. No non-null pairwise comparison, convergence-credit change, recurrence consequence, empirical-target campaign, framework-status change, method change, or FCP-27 phase follows automatically. The next valid operation is `POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_ADJUDICATION`, a fresh read-only sequencing decision with no downstream scientific route preselected."
new_summary = f"The Grok audit and independent adjudication, Finding-007 targeted source re-audit, String/M controls and comparisons, prospective AS/LOOP reanalyses, program-level recurrence, FCP-25, broader holography, FCP-26 Stage 1, publication-provenance housekeeping, FW-CAT Stages 1–2, the post-FW-CAT current-state external audit, the bounded `OBJ-CAT-11` re-adjudication, the causal-process / indefinite-causal-order Stage-1 intake, the prospective Method 0.2.1 admission repair, causal-process Stage-2 taxonomy, the Method-0.2.1 result-independence audit, the dedicated `FW-PROCESS-MATRIX` admission adversarial audit, the closed-corpus `FW_PROCESS_MATRIX_NULL_CONTROL`, the post-null read-only sequencing adjudication, targeted realizability / physical-selection Stage 1, the result-independent Stage-2 input-identity repair, the closed-corpus Stage-2 physical-selection adjudication, and the fresh post-Stage-2 read-only sequencing decision are complete at their declared scopes. The sequencing decision selects no immediate new substantive science. It selects `{AUDIT_OP}` as the highest-value next epistemic-validation operation and authorizes only prospective audit-opening preregistration/packet freeze under the current delegation; external auditor contact remains a separate real authorization boundary."
text = replace_once(text, old_summary, new_summary, "summary paragraph")
p.write_text(text, encoding="utf-8", newline="\n")

# README
p = Path("README.md")
text = p.read_text(encoding="utf-8")
old = "The 11-source strengthening added material information beyond the legacy corpus. The next step is a **fresh read-only scientific sequencing decision**; Stage 2 does not automatically authorize a pairwise comparison, convergence credit, recurrence recomputation, empirical campaign, framework-status change, or FCP-27."
new = f"The 11-source strengthening added material information beyond the legacy corpus. A fresh post-Stage-2 read-only sequencing decision now selects **no immediate new substantive science**. The next operation is a bounded independent external adversarial audit of the layered Stage-2 result and its visible custody repair; pairwise comparison, convergence credit, recurrence recomputation, empirical escalation, framework-status change, method change, and FCP-27 remain unselected."
text = replace_once(text, old, new, "README sequencing frontier")
p.write_text(text, encoding="utf-8", newline="\n")

# Routing handoff
routing = f'''# Post-FW-PROCESS-MATRIX Targeted Realizability Stage-2 Scientific Sequencing — Post-Integration Routing

**Version:** 0.1.0  
**Status:** CANONICALLY_COMPLETE  
**Operation ID:** `{ROUTING_OP}`  
**Method context:** FCP Method 0.2.1

## 1. Accepted read-only sequencing result

```text
SEQUENCING_DECISION_COMMIT = {EXPECTED_BASE}
SEQUENCING_OPERATION = {SEQUENCING_OP}
SEQUENCING_STATUS = CANONICALLY_ACCEPTED_READ_ONLY_DECISION
NO_IMMEDIATE_NEW_SUBSTANTIVE_SCIENCE = YES
SELECTED_ROUTE = R7
SELECTED_NEXT_OPERATION = {AUDIT_OP}
SELECTED_OPERATION_CLASS = EXTERNAL_ADVERSARIAL_AUDIT
FRAMEWORK_STATUS_CHANGE = NONE
PAIRWISE_COMPARISON = NONE
CONVERGENCE_CREDIT_CHANGE = NONE
RECURRENCE_RECOMPUTATION = NONE
EMPIRICAL_TARGET_SELECTION = NONE
METHOD_CHANGE = NONE
FCP27_SELECTED = NO
```

The sequencing decision preserves the Stage-2 layered result and does not convert any unresolved physical-realizability question into a framework-identity or framework-empirical conclusion.

## 2. Next authorization boundary

```text
NEXT_RECOMMENDED_OPERATION = {AUDIT_OP}
NEXT_OPERATION_CLASS = EXTERNAL_ADVERSARIAL_AUDIT
AUDIT_OPENING_PREREGISTRATION_AND_PACKET_FREEZE = AUTHORIZED_UNDER_CURRENT_EXECUTIVE_DELEGATION
EXTERNAL_AUDITOR_CONTACT = NOT_AUTHORIZED_BY_THIS_ROUTING
EXTERNAL_CONTACT_REQUIRES_SEPARATE_REAL_AUTHORIZATION_BOUNDARY = YES
NEW_EXTERNAL_SCIENTIFIC_SOURCE_SEARCH = NOT_AUTHORIZED
```

The audit opening must preserve the failed Stage-2 `0.1.0` input binding and the separate result-independent repair visibly in the packet.

## 3. Handoff capsule

<!-- FCP_HANDOFF_CAPSULE_BEGIN -->
```json
{{
  "capsule_schema_version": "0.1.0",
  "operation_id": "{ROUTING_OP}",
  "status": "CANONICALLY_COMPLETE",
  "indexed_scientific_baseline_commit": "{EXPECTED_BASE}",
  "method_version": "0.2.1",
  "must_read": [
    "CURRENT_STATE.md",
    "{ROUTING_PATH}",
    "{SEQUENCING_PATH}",
    "governance/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_ROUTING_AND_NAVIGATION_RECONCILIATION_0_1_0.md",
    "audits/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_ADJUDICATION_0_1_0.md",
    "frameworks/causal_process/FW_PROCESS_MATRIX_PHYSICAL_REALIZABILITY_PROFILE_0_1_0.md",
    "handoffs/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_HANDOFF_0_1_0.md",
    "audits/FW_PROCESS_MATRIX_STAGE2_INPUT_IDENTITY_REPAIR_0_1_0.md"
  ],
  "outputs": [
    "CURRENT_STATE.md",
    "README.md",
    "{ROUTING_PATH}"
  ],
  "open_dockets": [
    "CROSS_PAIR_RESIDUAL_E5_CONSISTENCY_CHECK",
    "LOOP_CLAIM_TRANSCRIPTION_CHECK",
    "NFC_AQFT_SLOT_METHOD_NORMALIZATION",
    "REDUCED_NFC_PAIRWISE_INFORMATION_CEILING_LABELING"
  ],
  "next_recommended_operation": "{AUDIT_OP}",
  "forbidden_next_actions": [
    "EXTERNAL_AUDITOR_CONTACT_WITHOUT_SEPARATE_AUTHORIZATION",
    "NEW_EXTERNAL_SCIENTIFIC_SOURCE_SEARCH",
    "FRAMEWORK_STATUS_CHANGE",
    "NON_NULL_PAIRWISE_COMPARISON",
    "CONVERGENCE_CREDIT_CHANGE",
    "RECURRENCE_RECOMPUTATION",
    "EMPIRICAL_TARGET_SELECTION",
    "METHOD_CHANGE",
    "FCP27_SELECTION_OR_EXECUTION"
  ]
}}
```
<!-- FCP_HANDOFF_CAPSULE_END -->
'''
Path(ROUTING_PATH).write_text(routing, encoding="utf-8", newline="\n")

# Canonical index semantic program state
index_path = Path("meta/FCP_CANONICAL_INDEX.json")
index = json.loads(index_path.read_text(encoding="utf-8"))
state = index["program_state"]
state["current_handoff_path"] = ROUTING_PATH
state["current_operation"] = ROUTING_OP
state["current_routing_path"] = ROUTING_PATH
state["latest_completed_maintenance_operation"] = ROUTING_OP
state["post_fw_process_matrix_targeted_realizability_stage2_scientific_sequencing_adjudication"] = "CANONICALLY_ACCEPTED_READ_ONLY_DECISION"
state["post_fw_process_matrix_targeted_realizability_stage2_scientific_sequencing_selected_route"] = "R7__EXTERNAL_ADVERSARIAL_AUDIT"
state["no_immediate_new_substantive_science"] = True
state["next_recommended_operation"] = AUDIT_OP
state["next_operation_class"] = "EXTERNAL_ADVERSARIAL_AUDIT"
state["next_operation_authorized"] = True
state["next_operation_authorization_boundary"] = "AUDIT_OPENING_PACKET_FREEZE_ONLY__EXTERNAL_CONTACT_SEPARATE"
state["post_stage2_external_adversarial_audit"] = "SELECTED_NOT_STARTED"
state["post_stage2_external_audit_opening_authorized"] = True
index_path.write_text(json.dumps(index, ensure_ascii=False, sort_keys=True, indent=2) + "\n", encoding="utf-8", newline="\n")

# Operation registry
op_path = Path("meta/FCP_OPERATION_REGISTRY.jsonl")
ops = [json.loads(line) for line in op_path.read_text(encoding="utf-8").splitlines() if line]
by_id = {r["operation_id"]: r for r in ops}
seq = by_id[SEQUENCING_OP]
seq["base_commit"] = "5fa57d2ef99adc0ea9eec7ff082e8e86746fc96f"
seq["result_commit"] = EXPECTED_BASE
seq["status"] = "CANONICALLY_ACCEPTED_READ_ONLY_DECISION"
seq["output_paths"] = [SEQUENCING_PATH]
seq["canonical_evidence_paths"] = ["CURRENT_STATE.md", ROUTING_PATH, SEQUENCING_PATH, "audits/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_ADJUDICATION_0_1_0.md", "frameworks/causal_process/FW_PROCESS_MATRIX_PHYSICAL_REALIZABILITY_PROFILE_0_1_0.md", "handoffs/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_HANDOFF_0_1_0.md"]
seq["handoff_path"] = SEQUENCING_PATH
seq["next_operations"] = [AUDIT_OP]
seq["downstream_consumers"] = [AUDIT_OP]

by_id[ROUTING_OP] = {
    "base_commit": EXPECTED_BASE,
    "canonical_evidence_paths": ["CURRENT_STATE.md", "README.md", ROUTING_PATH, SEQUENCING_PATH],
    "display_name": "Post-FW-PROCESS-MATRIX Stage-2 sequencing routing and navigation reconciliation",
    "downstream_consumers": [AUDIT_OP],
    "handoff_path": ROUTING_PATH,
    "input_paths": ["CURRENT_STATE.md", "README.md", SEQUENCING_PATH],
    "method_version": "0.2.1",
    "next_operations": [AUDIT_OP],
    "operation_class": "REPOSITORY_MAINTENANCE",
    "operation_id": ROUTING_OP,
    "output_paths": ["CURRENT_STATE.md", "README.md", ROUTING_PATH],
    "result_commit": None,
    "routing_commit": None,
    "schema_version": "0.1.0",
    "status": "CANONICALLY_COMPLETE",
    "superseded_by": [],
    "supersedes": [],
}
by_id[AUDIT_OP] = {
    "base_commit": EXPECTED_BASE,
    "canonical_evidence_paths": ["CURRENT_STATE.md", ROUTING_PATH, SEQUENCING_PATH, "audits/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_ADJUDICATION_0_1_0.md", "audits/FW_PROCESS_MATRIX_STAGE2_INPUT_IDENTITY_REPAIR_0_1_0.md"],
    "display_name": "Post-FW-PROCESS-MATRIX targeted-realizability Stage-2 external adversarial audit",
    "downstream_consumers": [],
    "handoff_path": None,
    "input_paths": [ROUTING_PATH, SEQUENCING_PATH, "audits/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_ADJUDICATION_0_1_0.md", "frameworks/causal_process/FW_PROCESS_MATRIX_PHYSICAL_REALIZABILITY_PROFILE_0_1_0.md", "handoffs/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_HANDOFF_0_1_0.md", "audits/FW_PROCESS_MATRIX_STAGE2_INPUT_IDENTITY_REPAIR_0_1_0.md"],
    "method_version": "0.2.1",
    "next_operations": [],
    "operation_class": "EXTERNAL_ADVERSARIAL_AUDIT",
    "operation_id": AUDIT_OP,
    "output_paths": [],
    "result_commit": None,
    "routing_commit": None,
    "schema_version": "0.1.0",
    "status": "SELECTED_NOT_STARTED",
    "superseded_by": [],
    "supersedes": [],
}
records = [by_id[k] for k in sorted(by_id)]
op_path.write_text("".join(json.dumps(r, ensure_ascii=False, sort_keys=True, separators=(",", ":")) + "\n" for r in records), encoding="utf-8", newline="\n")
