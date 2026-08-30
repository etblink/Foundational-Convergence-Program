from pathlib import Path
import json
import subprocess

EXPECTED_BASE = "99fa6fb51db8ea23a8e065a8f94ef656d7f2cdac"
EXPECTED_TREE = "f9476c8198461ac39abf1e1472b068884f34e8ea"
AUDIT_OP = "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT"
CONTACT_OP = "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDITOR_CONTACT"
ROUTING_OP = "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_OPENING_ROUTING_AND_NAVIGATION_RECONCILIATION"
ROUTING_PATH = "governance/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_OPENING_POST_INTEGRATION_ROUTING_0_1_0.md"
PREREG = "governance/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_PREREGISTRATION_0_1_0.md"
MANIFEST = "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_PACKET_MANIFEST_0_1_0.md"
PROMPT = "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_PROMPT_0_1_0.md"
QUAL = "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_PACKET_QUALIFICATION_0_1_0.md"
OPENING_HANDOFF = "handoffs/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_OPENING_HANDOFF_0_1_0.md"
SEQUENCING = "governance/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_DECISION_0_1_0.md"


def replace_once(text, old, new, label):
    n = text.count(old)
    assert n == 1, f"{label}: expected 1 match, found {n}"
    return text.replace(old, new, 1)

head = subprocess.check_output(["git", "rev-parse", "HEAD"], text=True).strip()
tree = subprocess.check_output(["git", "show", "-s", "--format=%T", "HEAD"], text=True).strip()
assert head == EXPECTED_BASE, (head, EXPECTED_BASE)
assert tree == EXPECTED_TREE, (tree, EXPECTED_TREE)

# CURRENT_STATE.md
p = Path("CURRENT_STATE.md")
text = p.read_text(encoding="utf-8")
text = replace_once(
    text,
    "LATEST_CANONICAL_MAINTENANCE_OPERATION = POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_ROUTING_AND_NAVIGATION_RECONCILIATION",
    f"LATEST_CANONICAL_MAINTENANCE_OPERATION = {ROUTING_OP}",
    "latest maintenance operation",
)
old_intro = "`LATEST_NUMBERED_PHASE` remains FCP-26 because the later FW-CAT, causal-process, method-audit, process-matrix admission-audit, sequencing, null-control, targeted realizability source-strengthening, and physical-selection Stage-2 operations are unnumbered and FCP-27 has not been selected. The latest substantive scientific operation remains the completed `FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_AND_PHYSICAL_SELECTION_STAGE2`. Under the exact frozen 27-source corpus, a general `W`-scope probabilistic/postselected representation is established, while a general deterministic standard-QM realization, a complete general physical-selection criterion, unrestricted composition/globalization closure, and general classical-spacetime embedding are not established. Positive restricted realization classes and broad assumption-scoped exclusion boundaries are both nonempty, and the framework-wide physical-realizability remainder remains nonempty. No framework-level empirical selection follows. The fresh post-Stage-2 read-only sequencing adjudication is now complete and selects no immediate new substantive science; it selects a bounded independent external adversarial audit of the layered Stage-2 result and visible custody repair as the next epistemic-validation operation. External auditor contact remains a separate real authorization boundary. Exact enclosing maintenance identities remain recoverable from Git rather than embedded self-referentially."
new_intro = f"`LATEST_NUMBERED_PHASE` remains FCP-26 because the later FW-CAT, causal-process, method-audit, process-matrix admission-audit, sequencing, null-control, targeted realizability source-strengthening, and physical-selection Stage-2 operations are unnumbered and FCP-27 has not been selected. The latest substantive scientific operation remains the completed `FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_AND_PHYSICAL_SELECTION_STAGE2`. Under the exact frozen 27-source corpus, a general `W`-scope probabilistic/postselected representation is established, while a general deterministic standard-QM realization, a complete general physical-selection criterion, unrestricted composition/globalization closure, and general classical-spacetime embedding are not established. Positive restricted realization classes and broad assumption-scoped exclusion boundaries are both nonempty, and the framework-wide physical-realizability remainder remains nonempty. No framework-level empirical selection follows. The fresh post-Stage-2 sequencing decision selects no immediate new substantive science. Its bounded external adversarial-audit opening is now frozen and qualified: the failed Stage-2 `0.1.0` evidence binding, separate result-independent repair, exact 22-file packet, frozen two-sided prompt, and packet qualification are canonical. No auditor has been contacted. The next real boundary is separate authorization for external auditor contact. Exact enclosing maintenance identities remain recoverable from Git rather than embedded self-referentially."
text = replace_once(text, old_intro, new_intro, "opening narrative")
old_live = """POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_ADJUDICATION = CANONICALLY_ACCEPTED_READ_ONLY_DECISION
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_SELECTED_ROUTE = R7__EXTERNAL_ADVERSARIAL_AUDIT
NO_IMMEDIATE_NEW_SUBSTANTIVE_SCIENCE = YES
SELECTED_NEXT_OPERATION = POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT
NEXT_EXECUTION_STEP = PROSPECTIVELY_FREEZE_POST_STAGE2_EXTERNAL_AUDIT_OPENING
NEXT_RECOMMENDED_OPERATION = POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT
NEXT_OPERATION_CLASS = EXTERNAL_ADVERSARIAL_AUDIT
NEXT_OPERATION_AUTHORIZED = YES__AUDIT_OPENING_PACKET_FREEZE_ONLY
NEXT_OPERATION_AUTHORIZATION_BOUNDARY = FREEZE_AUDIT_PREREGISTRATION_AND_PACKET__STOP_BEFORE_EXTERNAL_CONTACT
NEXT_NUMBERED_PHASE_SELECTED = NO
FCP27_SELECTED = NO
NEXT_SCIENTIFIC_PHASE = NONE__NO_IMMEDIATE_NEW_SUBSTANTIVE_SCIENCE"""
new_live = f"""POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_ADJUDICATION = CANONICALLY_ACCEPTED_READ_ONLY_DECISION
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_SELECTED_ROUTE = R7__EXTERNAL_ADVERSARIAL_AUDIT
NO_IMMEDIATE_NEW_SUBSTANTIVE_SCIENCE = YES
SELECTED_NEXT_OPERATION = {AUDIT_OP}
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT = OPENING_PACKET_FROZEN_QUALIFIED__EXTERNAL_CONTACT_NOT_STARTED
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_PREREGISTRATION_COMMIT = 063e453c6e0924682d0a09257bcee7e530ec3088
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_PACKET_FREEZE_COMMIT = {EXPECTED_BASE}
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_EVIDENCE_BASE = b435aa513a72e38b8e50d8cb8bf9d79464d6c15a
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_EVIDENCE_COMPONENT_COUNT = 22
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_FAILED_BINDING_INCLUDED = YES
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_REPAIR_INCLUDED = YES
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_PACKET_QUALIFICATION = PASS
EXTERNAL_AUDITOR_IDENTITY = UNBOUND
EXTERNAL_AUDITOR_CONTACTED = NO
EXTERNAL_AUDIT_PROMPT_SENT = NO
EXTERNAL_AUDIT_PACKET_EXPOSED = NO
EXTERNAL_AUDIT_RESPONSE_ACQUIRED = NO
NEXT_EXECUTION_STEP = EXTERNAL_AUDITOR_CONTACT_REQUIRES_SEPARATE_REAL_AUTHORIZATION
NEXT_RECOMMENDED_OPERATION = {CONTACT_OP}
NEXT_OPERATION_CLASS = EXTERNAL_AUDIT_CONTACT
NEXT_OPERATION_AUTHORIZED = NO__SEPARATE_REAL_AUTHORIZATION_REQUIRED
NEXT_OPERATION_AUTHORIZATION_BOUNDARY = EXTERNAL_AUDITOR_CONTACT
NEXT_NUMBERED_PHASE_SELECTED = NO
FCP27_SELECTED = NO
NEXT_SCIENTIFIC_PHASE = NONE__NO_IMMEDIATE_NEW_SUBSTANTIVE_SCIENCE"""
text = replace_once(text, old_live, new_live, "live audit-opening block")
old_summary = "The Grok audit and independent adjudication, Finding-007 targeted source re-audit, String/M controls and comparisons, prospective AS/LOOP reanalyses, program-level recurrence, FCP-25, broader holography, FCP-26 Stage 1, publication-provenance housekeeping, FW-CAT Stages 1–2, the post-FW-CAT current-state external audit, the bounded `OBJ-CAT-11` re-adjudication, the causal-process / indefinite-causal-order Stage-1 intake, the prospective Method 0.2.1 admission repair, causal-process Stage-2 taxonomy, the Method-0.2.1 result-independence audit, the dedicated `FW-PROCESS-MATRIX` admission adversarial audit, the closed-corpus `FW_PROCESS_MATRIX_NULL_CONTROL`, the post-null read-only sequencing adjudication, targeted realizability / physical-selection Stage 1, the result-independent Stage-2 input-identity repair, the closed-corpus Stage-2 physical-selection adjudication, and the fresh post-Stage-2 read-only sequencing decision are complete at their declared scopes. The sequencing decision selects no immediate new substantive science. It selects `POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT` as the highest-value next epistemic-validation operation and authorizes only prospective audit-opening preregistration/packet freeze under the current delegation; external auditor contact remains a separate real authorization boundary."
new_summary = f"The Grok audit and independent adjudication, Finding-007 targeted source re-audit, String/M controls and comparisons, prospective AS/LOOP reanalyses, program-level recurrence, FCP-25, broader holography, FCP-26 Stage 1, publication-provenance housekeeping, FW-CAT Stages 1–2, the post-FW-CAT current-state external audit, the bounded `OBJ-CAT-11` re-adjudication, the causal-process / indefinite-causal-order Stage-1 intake, the prospective Method 0.2.1 admission repair, causal-process Stage-2 taxonomy, the Method-0.2.1 result-independence audit, the dedicated `FW-PROCESS-MATRIX` admission adversarial audit, the closed-corpus `FW_PROCESS_MATRIX_NULL_CONTROL`, the post-null read-only sequencing adjudication, targeted realizability / physical-selection Stage 1, the result-independent Stage-2 input-identity repair, the closed-corpus Stage-2 physical-selection adjudication, and the fresh post-Stage-2 read-only sequencing decision are complete at their declared scopes. The selected external adversarial-audit opening is also frozen and qualified, with the provenance failure and repair both exposed. No external auditor has been contacted and no response exists. The next real boundary is `{CONTACT_OP}`, which is not authorized by the present state and requires separate real authorization."
text = replace_once(text, old_summary, new_summary, "current-state summary")
p.write_text(text, encoding="utf-8", newline="\n")

# README
p = Path("README.md")
text = p.read_text(encoding="utf-8")
old = "The 11-source strengthening added material information beyond the legacy corpus. A fresh post-Stage-2 read-only sequencing decision now selects **no immediate new substantive science**. The next operation is a bounded independent external adversarial audit of the layered Stage-2 result and its visible custody repair; pairwise comparison, convergence credit, recurrence recomputation, empirical escalation, framework-status change, method change, and FCP-27 remain unselected."
new = "The 11-source strengthening added material information beyond the legacy corpus. A fresh post-Stage-2 read-only sequencing decision selects **no immediate new substantive science**. A bounded independent external adversarial-audit opening is now frozen and qualified against the layered Stage-2 result and its visible custody repair. **No external auditor has been contacted yet**; contact remains a separate real authorization boundary. Pairwise comparison, convergence credit, recurrence recomputation, empirical escalation, framework-status change, method change, and FCP-27 remain unselected."
text = replace_once(text, old, new, "README frontier")
p.write_text(text, encoding="utf-8", newline="\n")

# Post-integration routing handoff
routing = f'''# Post-FW-PROCESS-MATRIX Stage-2 External Audit Opening — Post-Integration Routing and Navigation Reconciliation

**Version:** 0.1.0  
**Status:** CANONICALLY_COMPLETE  
**Operation ID:** `{ROUTING_OP}`  
**Method context:** FCP Method 0.2.1

## 1. Canonical opening boundary

```text
AUDIT_OPERATION = {AUDIT_OP}
AUDIT_PREREGISTRATION_COMMIT = 063e453c6e0924682d0a09257bcee7e530ec3088
AUDIT_PACKET_FREEZE_COMMIT = {EXPECTED_BASE}
AUDIT_PACKET_FREEZE_TREE = {EXPECTED_TREE}
AUDIT_EVIDENCE_BASE_COMMIT = b435aa513a72e38b8e50d8cb8bf9d79464d6c15a
AUDIT_EVIDENCE_BASE_TREE = 0a75d6cd5c3a03c964acfd62c0d91dbbef9fbd69
AUDIT_EVIDENCE_COMPONENT_COUNT = 22
AUDIT_PACKET_QUALIFICATION = PASS
FAILED_STAGE2_0_1_0_BINDING_INCLUDED = YES
RESULT_INDEPENDENT_REPAIR_INCLUDED = YES
EXTERNAL_AUDITOR_IDENTITY = UNBOUND
EXTERNAL_AUDITOR_CONTACTED = NO
AUDIT_PROMPT_SENT = NO
AUDIT_PACKET_EXPOSED = NO
EXTERNAL_RESPONSE_ACQUIRED = NO
NO_IMMEDIATE_NEW_SUBSTANTIVE_SCIENCE = YES
```

The audit-opening artifacts are canonical and qualified. They do not alter the accepted Stage-2 science and do not authorize external contact.

## 2. Exact next real authorization boundary

```text
NEXT_RECOMMENDED_OPERATION = {CONTACT_OP}
NEXT_OPERATION_CLASS = EXTERNAL_AUDIT_CONTACT
NEXT_OPERATION_AUTHORIZED = NO
AUTHORIZATION_REQUIREMENT = SEPARATE_REAL_USER_AUTHORIZATION
CONTACT_MAY_NOT_BE_INFERRED_FROM_PACKET_READINESS = YES
```

If contact is later authorized and a response is acquired, that response must be frozen verbatim in a separate provenance-custody operation before any independent FCP adjudication.

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
    "{PREREG}",
    "{MANIFEST}",
    "{PROMPT}",
    "{QUAL}",
    "{OPENING_HANDOFF}",
    "{SEQUENCING}"
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
  "next_recommended_operation": "{CONTACT_OP}",
  "forbidden_next_actions": [
    "EXTERNAL_AUDITOR_CONTACT_WITHOUT_SEPARATE_REAL_AUTHORIZATION",
    "ASSUME_EXTERNAL_RESPONSE_EXISTS",
    "NEW_EXTERNAL_SCIENTIFIC_SOURCE_SEARCH",
    "SOURCE_ADMISSION",
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

# Canonical index semantic state
idxp = Path("meta/FCP_CANONICAL_INDEX.json")
idx = json.loads(idxp.read_text(encoding="utf-8"))
state = idx["program_state"]
state["current_handoff_path"] = ROUTING_PATH
state["current_operation"] = ROUTING_OP
state["current_routing_path"] = ROUTING_PATH
state["latest_completed_maintenance_operation"] = ROUTING_OP
state["post_fw_process_matrix_targeted_realizability_stage2_external_adversarial_audit"] = "OPENING_PACKET_FROZEN_QUALIFIED__EXTERNAL_CONTACT_NOT_STARTED"
state["post_fw_process_matrix_targeted_realizability_stage2_external_audit_preregistration_commit"] = "063e453c6e0924682d0a09257bcee7e530ec3088"
state["post_fw_process_matrix_targeted_realizability_stage2_external_audit_packet_freeze_commit"] = EXPECTED_BASE
state["post_fw_process_matrix_targeted_realizability_stage2_external_audit_evidence_component_count"] = 22
state["external_auditor_identity"] = "UNBOUND"
state["external_auditor_contacted"] = False
state["external_audit_prompt_sent"] = False
state["external_audit_packet_exposed"] = False
state["external_audit_response_acquired"] = False
state["next_recommended_operation"] = CONTACT_OP
state["next_operation_class"] = "EXTERNAL_AUDIT_CONTACT"
state["next_operation_authorized"] = False
state["next_operation_authorization_boundary"] = "EXTERNAL_AUDITOR_CONTACT__SEPARATE_REAL_AUTHORIZATION_REQUIRED"
idxp.write_text(json.dumps(idx, ensure_ascii=False, sort_keys=True, indent=2) + "\n", encoding="utf-8", newline="\n")

# Operation registry
opp = Path("meta/FCP_OPERATION_REGISTRY.jsonl")
ops = [json.loads(line) for line in opp.read_text(encoding="utf-8").splitlines() if line]
by_id = {r["operation_id"]: r for r in ops}
audit = by_id[AUDIT_OP]
audit["base_commit"] = "b435aa513a72e38b8e50d8cb8bf9d79464d6c15a"
audit["status"] = "OPENING_PACKET_FROZEN_QUALIFIED__EXTERNAL_CONTACT_NOT_STARTED"
audit["input_paths"] = [SEQUENCING]
audit["output_paths"] = [PREREG, MANIFEST, PROMPT, QUAL, OPENING_HANDOFF]
audit["canonical_evidence_paths"] = ["CURRENT_STATE.md", PREREG, MANIFEST, PROMPT, QUAL, OPENING_HANDOFF, "audits/FW_PROCESS_MATRIX_STAGE2_INPUT_IDENTITY_REPAIR_0_1_0.md", "audits/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_ADJUDICATION_0_1_0.md", "frameworks/causal_process/FW_PROCESS_MATRIX_PHYSICAL_REALIZABILITY_PROFILE_0_1_0.md", SEQUENCING]
audit["handoff_path"] = OPENING_HANDOFF
audit["next_operations"] = [CONTACT_OP]
audit["downstream_consumers"] = [CONTACT_OP]
# Keep result_commit null: the scientific external audit has not executed; 99fa is only its opening freeze.
audit["result_commit"] = None
audit["routing_commit"] = None

by_id[CONTACT_OP] = {
    "base_commit": EXPECTED_BASE,
    "canonical_evidence_paths": ["CURRENT_STATE.md", ROUTING_PATH, PREREG, MANIFEST, PROMPT, QUAL, OPENING_HANDOFF],
    "display_name": "Post-FW-PROCESS-MATRIX Stage-2 external auditor contact authorization boundary",
    "downstream_consumers": ["POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_CUSTODY_AND_FREEZE"],
    "handoff_path": OPENING_HANDOFF,
    "input_paths": [ROUTING_PATH, PREREG, MANIFEST, PROMPT, QUAL, OPENING_HANDOFF],
    "method_version": "0.2.1",
    "next_operations": ["POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_CUSTODY_AND_FREEZE"],
    "operation_class": "EXTERNAL_AUDIT_CONTACT",
    "operation_id": CONTACT_OP,
    "output_paths": [],
    "result_commit": None,
    "routing_commit": None,
    "schema_version": "0.1.0",
    "status": "AUTHORIZATION_REQUIRED_NOT_STARTED",
    "superseded_by": [],
    "supersedes": [],
}

by_id["POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_CUSTODY_AND_FREEZE"] = {
    "base_commit": None,
    "canonical_evidence_paths": [OPENING_HANDOFF, MANIFEST, PROMPT],
    "display_name": "Post-FW-PROCESS-MATRIX Stage-2 external audit response custody and freeze",
    "downstream_consumers": [],
    "handoff_path": None,
    "input_paths": [OPENING_HANDOFF, MANIFEST, PROMPT],
    "method_version": None,
    "next_operations": [],
    "operation_class": "PROVENANCE_CUSTODY",
    "operation_id": "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_CUSTODY_AND_FREEZE",
    "output_paths": [],
    "result_commit": None,
    "routing_commit": None,
    "schema_version": "0.1.0",
    "status": "NOT_STARTED__NO_RESPONSE_EXISTS",
    "superseded_by": [],
    "supersedes": [],
}

by_id[ROUTING_OP] = {
    "base_commit": EXPECTED_BASE,
    "canonical_evidence_paths": ["CURRENT_STATE.md", "README.md", ROUTING_PATH, PREREG, MANIFEST, PROMPT, QUAL, OPENING_HANDOFF],
    "display_name": "Post-FW-PROCESS-MATRIX Stage-2 external-audit opening routing and navigation reconciliation",
    "downstream_consumers": [CONTACT_OP],
    "handoff_path": ROUTING_PATH,
    "input_paths": ["CURRENT_STATE.md", "README.md", PREREG, MANIFEST, PROMPT, QUAL, OPENING_HANDOFF],
    "method_version": "0.2.1",
    "next_operations": [CONTACT_OP],
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

records = [by_id[k] for k in sorted(by_id)]
opp.write_text("".join(json.dumps(r, ensure_ascii=False, sort_keys=True, separators=(",", ":")) + "\n" for r in records), encoding="utf-8", newline="\n")
