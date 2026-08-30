#!/usr/bin/env python3
from __future__ import annotations

import json
import os
import re
import shutil
import subprocess
import tempfile
from pathlib import Path

BASE = "1da10fbb5dfad84b294a65a03cbcd911b13ad8fd"
BASE_TREE = "ae3d1fd0c8a561245b66459fa0a7e462bea696e2"
CUSTODY = "a4b63bc40199ffd735898bc7b331b3fdf39e8633"
ADJUDICATION = "aa6dacd7c6fe1d35c3df1233b19373f4e1c4c612"
REPAIR = BASE
REPAIR_TREE = BASE_TREE
RESPONSE_BLOB = "bd199e3c9f3b0c78af3345f3d623500350e01310"
CUSTODY_BLOB = "0a832127d4dcb16428053a1280981d33eb01bb9e"
ADJUDICATION_BLOB = "1d5db6973a2510d808cc009c7e096fb7520ed5b7"
REPAIRED_ADJ_BLOB = "256e73ffc68bacc1860d4b3368868161e9845da1"
REPAIRED_PROFILE_BLOB = "95cb4691957644b1c8fc0323fbfcce7bf1196201"
REPAIRED_HANDOFF_BLOB = "ac15fffd5c6af27aacbd7b3578d34f07a3b87993"
REPAIR_AUDIT_BLOB = "dcc1ec831fb579df993790d3e6e7771418877fe0"
ROUTING_OP = "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_REPAIR_ROUTING_AND_NAVIGATION_RECONCILIATION"
NEXT_OP = "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_REPAIR_SCIENTIFIC_SEQUENCING_ADJUDICATION"
ROUTING_PATH = "governance/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_REPAIR_POST_INTEGRATION_ROUTING_0_1_0.md"
TARGET_BRANCH = os.environ.get("TARGET_BRANCH", "maintenance/fwpm-stage2-post-audit-repair-routing")


def run(*args: str, cwd: Path | None = None, capture: bool = True) -> str:
    p = subprocess.run(args, cwd=cwd, text=True, encoding="utf-8", stdout=subprocess.PIPE if capture else None, stderr=subprocess.STDOUT if capture else None, check=False)
    if p.returncode != 0:
        raise SystemExit(f"command failed ({p.returncode}): {' '.join(args)}\n{p.stdout or ''}")
    return (p.stdout or "").strip()


def require_replace(text: str, old: str, new: str, label: str) -> str:
    n = text.count(old)
    if n != 1:
        raise SystemExit(f"{label}: expected exactly one occurrence, found {n}")
    return text.replace(old, new, 1)


def require_regex(text: str, pattern: str, replacement: str, label: str) -> str:
    out, n = re.subn(pattern, replacement, text, count=1, flags=re.DOTALL)
    if n != 1:
        raise SystemExit(f"{label}: expected exactly one regex match, found {n}")
    return out


def write_lf(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text.replace("\r\n", "\n").replace("\r", "\n"), encoding="utf-8", newline="\n")


def stable_json(v) -> str:
    return json.dumps(v, ensure_ascii=False, sort_keys=True, separators=(",", ":"))


def stable_json_pretty(v) -> str:
    return json.dumps(v, ensure_ascii=False, sort_keys=True, indent=2) + "\n"


def patch_current_state(repo: Path) -> None:
    path = repo / "CURRENT_STATE.md"
    text = path.read_text(encoding="utf-8")
    text = require_replace(text,
        "LATEST_CANONICAL_SCIENTIFIC_OPERATION = FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_AND_PHYSICAL_SELECTION_STAGE2",
        "LATEST_CANONICAL_SCIENTIFIC_OPERATION = POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR",
        "latest science operation")
    text = require_replace(text,
        "LATEST_CANONICAL_SCIENTIFIC_COMMIT = fdb1ff04fc5c4a494da9c44822cac277a819d8c0",
        f"LATEST_CANONICAL_SCIENTIFIC_COMMIT = {REPAIR}",
        "latest science commit")
    text = require_replace(text,
        "LATEST_CANONICAL_SCIENTIFIC_TREE = b348c91e73e95e552f16a067ed595e0d35ac7fc6",
        f"LATEST_CANONICAL_SCIENTIFIC_TREE = {REPAIR_TREE}",
        "latest science tree")
    text = require_replace(text,
        "LATEST_CANONICAL_MAINTENANCE_OPERATION = POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_OPENING_ROUTING_AND_NAVIGATION_RECONCILIATION",
        f"LATEST_CANONICAL_MAINTENANCE_OPERATION = {ROUTING_OP}",
        "latest maintenance operation")

    top_narrative = (
        "`LATEST_NUMBERED_PHASE` remains FCP-26 because the later FW-CAT, causal-process, method-audit, process-matrix admission-audit, sequencing, null-control, targeted realizability source-strengthening, and physical-selection Stage-2 operations are unnumbered and FCP-27 has not been selected. "
        "The latest substantive scientific chain is the accepted-findings repair of `FW-PROCESS-MATRIX` Stage 2 after a frozen external adversarial audit and independent Project Lead adjudication. The exact 27-source corpus and all Stage-2 AX1–AX10 / A–F values are unchanged: general `W`-scope probabilistic/postselected representation remains established; general deterministic standard-QM realization, a complete physical-selection criterion, unrestricted composition/globalization closure, and general classical-spacetime embedding remain unestablished; restricted positive classes and broad assumption-scoped exclusions remain nonempty; and framework-level empirical selection remains none. "
        "The audit response is frozen, the Project Lead independently accepted F1, F2, and F4 and accepted F3 with a narrower rationale, and the four local repairs are now canonical through superseding Stage-2 `0.1.1` artifacts. No pairwise relation or count was re-adjudicated: the earlier null-control records were left administratively unchanged, while their scientific invariance under AX3 is explicitly `NOT_ADJUDICATED`. The next scientific step is a fresh read-only post-repair sequencing decision, not an automatic pairwise reanalysis. Exact enclosing maintenance identities remain recoverable from Git rather than embedded self-referentially."
    )
    text = require_regex(text,
        r"`LATEST_NUMBERED_PHASE` remains FCP-26 because.*?Exact enclosing maintenance identities remain recoverable from Git rather than embedded self-referentially\.",
        top_narrative,
        "top narrative")

    marker = "TARGETED_REALIZABILITY_STAGE2_RESULT_TREE = b348c91e73e95e552f16a067ed595e0d35ac7fc6\n"
    insertion = marker + (
        f"TARGETED_REALIZABILITY_STAGE2_CURRENT_REPAIR_COMMIT = {REPAIR}\n"
        f"TARGETED_REALIZABILITY_STAGE2_CURRENT_REPAIR_TREE = {REPAIR_TREE}\n"
        f"TARGETED_REALIZABILITY_STAGE2_CURRENT_ADJUDICATION_BLOB = {REPAIRED_ADJ_BLOB}\n"
        f"TARGETED_REALIZABILITY_STAGE2_CURRENT_PROFILE_BLOB = {REPAIRED_PROFILE_BLOB}\n"
        f"TARGETED_REALIZABILITY_STAGE2_CURRENT_HANDOFF_BLOB = {REPAIRED_HANDOFF_BLOB}\n"
        "TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR = CANONICALLY_COMPLETE\n"
    )
    text = require_replace(text, marker, insertion, "stage2 repair identity insertion")

    new_block = f"""POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_SELECTED_ROUTE = R7__EXTERNAL_ADVERSARIAL_AUDIT
NO_IMMEDIATE_NEW_SUBSTANTIVE_SCIENCE = YES__PRE_AUDIT_SEQUENCING_RESULT_PRESERVED_PENDING_FRESH_POST_REPAIR_SEQUENCING
SELECTED_NEXT_OPERATION = POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT = CANONICALLY_COMPLETE__RESPONSE_ACQUIRED_CUSTODY_FROZEN_INDEPENDENTLY_ADJUDICATED_AND_ACCEPTED_FINDINGS_REPAIRED
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_PREREGISTRATION_COMMIT = 063e453c6e0924682d0a09257bcee7e530ec3088
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_PACKET_FREEZE_COMMIT = 99fa6fb51db8ea23a8e065a8f94ef656d7f2cdac
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_EVIDENCE_BASE = b435aa513a72e38b8e50d8cb8bf9d79464d6c15a
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_EVIDENCE_COMPONENT_COUNT = 22
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_FAILED_BINDING_INCLUDED = YES
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_REPAIR_INCLUDED = YES
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_PACKET_QUALIFICATION = PASS
EXTERNAL_AUDITOR_IDENTITY = GROK__USER_REPORTED__MODEL_VERSION_UNEVIDENCED
EXTERNAL_AUDITOR_CONTACTED = YES
EXTERNAL_AUDIT_PROMPT_SENT = YES__USER_EXTERNAL_ACTION__SERVICE_SIDE_TRANSPORT_NOT_INDEPENDENTLY_VERIFIED
EXTERNAL_AUDIT_PACKET_EXPOSED = YES__RETURNED_RESPONSE_SELF_IDENTIFIES_FROZEN_22_FILE_EVIDENCE_UNIVERSE
EXTERNAL_AUDIT_RESPONSE_ACQUIRED = YES
EXTERNAL_AUDIT_RESPONSE_BLOB = {RESPONSE_BLOB}
EXTERNAL_AUDIT_RESPONSE_CUSTODY_COMMIT = {CUSTODY}
EXTERNAL_AUDIT_RESPONSE_CUSTODY_BLOB = {CUSTODY_BLOB}
EXTERNAL_AUDIT_INDEPENDENT_ADJUDICATION_COMMIT = {ADJUDICATION}
EXTERNAL_AUDIT_INDEPENDENT_ADJUDICATION_BLOB = {ADJUDICATION_BLOB}
EXTERNAL_AUDIT_PROJECT_LEAD_FINDINGS = F1_ACCEPTED;F2_ACCEPTED;F3_ACCEPTED_WITH_NARROWER_RATIONALE;F4_ACCEPTED
EXTERNAL_AUDIT_PROJECT_LEAD_MEDIUM_FINDINGS = 2
EXTERNAL_AUDIT_PROJECT_LEAD_LOW_FINDINGS = 2
EXTERNAL_AUDIT_PROJECT_LEAD_CRITICAL_OR_HIGH_FINDINGS = 0
EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR_COMMIT = {REPAIR}
EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR_TREE = {REPAIR_TREE}
EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR_QUALIFICATION = PASS
STAGE2_AX1_AX10_CHANGE_AFTER_AUDIT = NO
STAGE2_A_F_CHANGE_AFTER_AUDIT = NO
FRAMEWORK_IDENTITY_CHANGE_AFTER_AUDIT = NO
FRAMEWORK_STATUS_CHANGE_AFTER_AUDIT = NO
PAIRWISE_RELATION_CHANGE_AFTER_AUDIT = NOT_ADJUDICATED
CONVERGENCE_CREDIT_CHANGE_AFTER_AUDIT = NO
RECURRENCE_CHANGE_AFTER_AUDIT = NO
FRAMEWORK_LEVEL_EMPIRICAL_SELECTION_CHANGE_AFTER_AUDIT = NO
NEXT_EXECUTION_STEP = FRESH_POST_REPAIR_READ_ONLY_SCIENTIFIC_SEQUENCING
NEXT_RECOMMENDED_OPERATION = {NEXT_OP}
NEXT_OPERATION_CLASS = READ_ONLY_SEQUENCING_ADJUDICATION
NEXT_OPERATION_AUTHORIZED = YES__STANDING_PROJECT_LEAD_DELEGATION
NEXT_OPERATION_AUTHORIZATION_BOUNDARY = NONE__NO_NEW_EXTERNAL_ACTION_OR_SCIENTIFIC_MUTATION
NEXT_NUMBERED_PHASE_SELECTED = NO
FCP27_SELECTED = NO
NEXT_SCIENTIFIC_PHASE = NONE__PENDING_FRESH_POST_REPAIR_SEQUENCING
"""
    text = require_regex(text,
        r"POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_SELECTED_ROUTE = R7__EXTERNAL_ADVERSARIAL_AUDIT\nNO_IMMEDIATE_NEW_SUBSTANTIVE_SCIENCE = YES\n.*?NEXT_SCIENTIFIC_PHASE = NONE__NO_IMMEDIATE_NEW_SUBSTANTIVE_SCIENCE\n",
        new_block,
        "current external audit state block")

    bottom_narrative = (
        "The process-matrix Stage-2 external adversarial-audit chain is now complete through response custody, independent Project Lead adjudication, and the bounded accepted-findings repair. Grok is recorded only as the user-reported external auditor; no exact model/version or hidden service metadata is claimed. The response is frozen as received through chat, with the pre-paste raw-byte limitation explicitly preserved. The Project Lead independently accepted F1, F2, and F4 and accepted F3 with a narrower rationale. Superseding Stage-2 `0.1.1` adjudication/profile/handoff artifacts repair the required tables, two source-role issues, and the unauthorized pairwise-invariance gloss without changing AX1–AX10, A–F, framework identity/status, or framework-level empirical selection. No pairwise result, E-count, convergence credit, recurrence slot, empirical target, or FCP-27 selection was adjudicated by the repair. The next operation is a fresh read-only post-repair sequencing decision; any targeted null-control K9 reanalysis would require separate prospective selection and preregistration."
    )
    text = require_regex(text,
        r"The Grok audit and independent adjudication, Finding-007 targeted source re-audit,.*?requires separate real authorization\.",
        bottom_narrative,
        "bottom audit narrative")

    write_lf(path, text)


def patch_readme(repo: Path) -> None:
    path = repo / "README.md"
    text = path.read_text(encoding="utf-8")
    replacement = """## Current scientific frontier

The current scientific frontier is the **externally audited and locally repaired Stage 2 physical-realizability result** for the source-bound process-matrix framework (`FW-PROCESS-MATRIX`). Applied to the prospectively frozen 27-source corpus, it remains a layered rather than binary physicality picture: a general `W`-scope probabilistic/postselected representation is established, while a general deterministic standard-quantum realization and a complete general physical-selection criterion are not established.

Positive realization results remain nonempty for selected classes and implementations, while broad assumption-scoped exclusion boundaries are also nonempty. General composition/globalization closure and general classical-spacetime embedding are not established, and a framework-wide physical-realizability remainder remains unresolved. Concrete implementation evidence remains subclass-only and does not amount to framework-level empirical selection.

The frozen external adversarial audit has now been completed through response custody, independent Project Lead adjudication, and a bounded accepted-findings repair. Four local findings were independently sustained: the missing preregistered Stage-2 output tables, one R0/AX4 source-role inconsistency, one AX9 boundary-context ambiguity, and an out-of-scope pairwise-invariance gloss. Superseding `0.1.1` Stage-2 artifacts repair those defects **without changing any AX1–AX10 or A–F value**. The prior null-control records were not re-adjudicated; whether the new AX3 information is pairwise-relevant remains open. Pairwise comparison, convergence credit, recurrence recomputation, empirical escalation, framework-status change, method change, and FCP-27 remain unselected pending a fresh post-repair sequencing decision.

For the exact live state and authorization boundary, see [`CURRENT_STATE.md`](CURRENT_STATE.md)."""
    text = require_regex(text, r"## Current scientific frontier\n.*?For the exact live state and authorization boundary, see \[`CURRENT_STATE\.md`\]\(CURRENT_STATE\.md\)\.", replacement, "README frontier")
    write_lf(path, text)


def routing_text() -> str:
    return f"""# Post-FW-PROCESS-MATRIX Stage-2 External-Audit Repair — Post-Integration Routing and Navigation Reconciliation

**Version:** 0.1.0  
**Status:** CANONICALLY_COMPLETE  
**Operation ID:** `{ROUTING_OP}`  
**Method context:** FCP Method 0.2.1

## 1. Canonical repaired boundary

```text
PRE_RECONCILIATION_CANONICAL_COMMIT = {REPAIR}
PRE_RECONCILIATION_CANONICAL_TREE = {REPAIR_TREE}
EXTERNAL_RESPONSE_CUSTODY_COMMIT = {CUSTODY}
INDEPENDENT_ADJUDICATION_COMMIT = {ADJUDICATION}
ACCEPTED_FINDINGS_REPAIR_COMMIT = {REPAIR}
ACCEPTED_FINDINGS_REPAIR_TREE = {REPAIR_TREE}
REPAIRED_STAGE2_ADJUDICATION_BLOB = {REPAIRED_ADJ_BLOB}
REPAIRED_STAGE2_PROFILE_BLOB = {REPAIRED_PROFILE_BLOB}
REPAIRED_STAGE2_HANDOFF_BLOB = {REPAIRED_HANDOFF_BLOB}
REPAIR_QUALIFICATION_BLOB = {REPAIR_AUDIT_BLOB}
F1 = ACCEPTED_AND_REPAIRED
F2 = ACCEPTED_AND_REPAIRED
F3 = ACCEPTED_WITH_NARROWER_RATIONALE_AND_REPAIRED
F4 = ACCEPTED_AND_REPAIRED
AX1_AX10_CHANGE = NO
A_F_CHANGE = NO
FRAMEWORK_IDENTITY_CHANGE = NO
FRAMEWORK_STATUS_CHANGE = NO
PAIRWISE_RESULT_CHANGE = NOT_ADJUDICATED
CONVERGENCE_CREDIT_CHANGE = NO
RECURRENCE_RECOMPUTATION = NO
FCP27_SELECTED = NO
```

The scientific result is unchanged. The current controlling Stage-2 artifacts are the superseding `0.1.1` adjudication, profile, and handoff. Historical `0.1.0` artifacts remain immutable provenance.

## 2. Current pairwise boundary

```text
PAIRWISE_NULL_RECORDS_READJUDICATED_IN_STAGE2_OR_REPAIR = NO
PAIRWISE_NULL_RECORDS_MUTATED_IN_STAGE2_OR_REPAIR = NO
PAIRWISE_SCIENTIFIC_INVARIANCE_UNDER_AX3 = NOT_ADJUDICATED
AX3_PAIRWISE_RELEVANCE_TO_PMNC_K9_03 = OPEN
```

No pairwise relation or count is changed by this reconciliation.

## 3. Next scientific decision

```text
NEXT_RECOMMENDED_OPERATION = {NEXT_OP}
NEXT_OPERATION_CLASS = READ_ONLY_SEQUENCING_ADJUDICATION
NEXT_OPERATION_AUTHORIZED = YES__STANDING_PROJECT_LEAD_DELEGATION
TARGETED_NULL_CONTROL_K9_REANALYSIS_SELECTED = NO__MUST_BE_DECIDED_BY_FRESH_SEQUENCING
NEW_SOURCE_SEARCH = NO
FCP27_SELECTED = NO
```

The sequencing decision must independently decide whether AX3 creates enough information gain to justify a separately preregistered targeted null-control K9 pairwise reanalysis. It may also conclude that no immediate substantive science is justified.

## 4. Handoff capsule

<!-- FCP_HANDOFF_CAPSULE_BEGIN -->
```json
{{
  "capsule_schema_version": "0.1.0",
  "operation_id": "{ROUTING_OP}",
  "status": "CANONICALLY_COMPLETE",
  "indexed_scientific_baseline_commit": "{REPAIR}",
  "method_version": "0.2.1",
  "must_read": [
    "CURRENT_STATE.md",
    "{ROUTING_PATH}",
    "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_0_1_0.md",
    "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_CUSTODY_0_1_0.md",
    "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_INDEPENDENT_ADJUDICATION_0_1_0.md",
    "audits/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR_0_1_0.md",
    "audits/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_ADJUDICATION_0_1_1.md",
    "frameworks/causal_process/FW_PROCESS_MATRIX_PHYSICAL_REALIZABILITY_PROFILE_0_1_1.md",
    "handoffs/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_HANDOFF_0_1_1.md",
    "comparisons/FW_PROCESS_MATRIX_VS_NULL_GRQFTSM_METHOD_0_2_1_0_1_0.md"
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
  "next_recommended_operation": "{NEXT_OP}",
  "forbidden_next_actions": [
    "ASSUME_AX3_CHANGES_ANY_PAIRWISE_RELATION_WITHOUT_SEPARATE_PAIRWISE_ADJUDICATION",
    "ASSUME_AX3_LEAVES_PAIRWISE_RELATIONS_SCIENTIFICALLY_INVARIANT_WITHOUT_SEPARATE_PAIRWISE_ADJUDICATION",
    "TARGETED_NULL_CONTROL_K9_REANALYSIS_BEFORE_FRESH_SEQUENCING_SELECTION_AND_PREREGISTRATION",
    "NEW_EXTERNAL_SCIENTIFIC_SOURCE_SEARCH",
    "SOURCE_ADMISSION",
    "FRAMEWORK_STATUS_CHANGE",
    "CONVERGENCE_CREDIT_CHANGE",
    "RECURRENCE_RECOMPUTATION",
    "EMPIRICAL_TARGET_SELECTION",
    "METHOD_CHANGE",
    "FCP27_SELECTION_OR_EXECUTION"
  ]
}}
```
<!-- FCP_HANDOFF_CAPSULE_END -->
"""


def patch_navigation_state(repo: Path, semantic: str) -> None:
    index_path = repo / "meta/FCP_CANONICAL_INDEX.json"
    index = json.loads(index_path.read_text(encoding="utf-8"))
    ps = index["program_state"]
    ps.update({
        "current_handoff_path": ROUTING_PATH,
        "current_operation": ROUTING_OP,
        "current_routing_path": ROUTING_PATH,
        "external_audit_authorized": True,
        "external_audit_packet_exposed": True,
        "external_audit_prompt_sent": True,
        "external_audit_response_acquired": True,
        "external_auditor_contacted": True,
        "external_auditor_identity": "GROK__USER_REPORTED__MODEL_VERSION_UNEVIDENCED",
        "latest_completed_external_audit_chain": "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_INDEPENDENT_ADJUDICATION",
        "latest_completed_maintenance_operation": ROUTING_OP,
        "latest_completed_science_operation": "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR",
        "latest_completed_scientific_commit": REPAIR,
        "latest_completed_scientific_operation": "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR",
        "latest_science_handoff_path": "handoffs/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_HANDOFF_0_1_1.md",
        "next_operation_authorization_boundary": "NONE__STANDING_PROJECT_LEAD_DELEGATION",
        "next_operation_authorized": True,
        "next_operation_class": "READ_ONLY_SEQUENCING_ADJUDICATION",
        "next_recommended_operation": NEXT_OP,
        "post_fw_process_matrix_targeted_realizability_stage2_external_adversarial_audit": "CANONICALLY_COMPLETE__RESPONSE_ACQUIRED_CUSTODY_FROZEN_INDEPENDENTLY_ADJUDICATED_AND_ACCEPTED_FINDINGS_REPAIRED",
        "post_fw_process_matrix_targeted_realizability_stage2_external_audit_response_custody": "CANONICALLY_COMPLETE",
        "post_fw_process_matrix_targeted_realizability_stage2_external_audit_independent_adjudication": "CANONICALLY_COMPLETE",
        "post_fw_process_matrix_targeted_realizability_stage2_external_audit_accepted_findings_repair": "CANONICALLY_COMPLETE",
        "post_fw_process_matrix_targeted_realizability_stage2_external_audit_repair_routing_and_navigation_reconciliation": "CANONICALLY_COMPLETE",
        "post_stage2_external_adversarial_audit": "CANONICALLY_COMPLETE__LOCAL_REPAIRS_INTEGRATED",
        "fw_process_matrix_targeted_realizability_stage2_current_repair_commit": REPAIR,
        "fw_process_matrix_targeted_realizability_stage2_current_repair_tree": REPAIR_TREE,
        "fw_process_matrix_targeted_realizability_stage2_current_adjudication_blob": REPAIRED_ADJ_BLOB,
        "fw_process_matrix_targeted_realizability_stage2_current_profile_blob": REPAIRED_PROFILE_BLOB,
        "fw_process_matrix_targeted_realizability_stage2_current_handoff_blob": REPAIRED_HANDOFF_BLOB,
        "fw_process_matrix_stage2_external_audit_project_lead_critical_or_high_findings": 0,
        "fw_process_matrix_stage2_external_audit_project_lead_medium_findings": 2,
        "fw_process_matrix_stage2_external_audit_project_lead_low_findings": 2,
        "fw_process_matrix_stage2_external_audit_ax_change": False,
        "fw_process_matrix_stage2_external_audit_synthesis_change": False,
        "fw_process_matrix_stage2_external_audit_pairwise_change": "NOT_ADJUDICATED",
    })
    profile = index["read_profiles"]["EXTERNAL_AUDIT"]
    for p in [
        "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_0_1_0.md",
        "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_CUSTODY_0_1_0.md",
        "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_INDEPENDENT_ADJUDICATION_0_1_0.md",
        "handoffs/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_INDEPENDENT_ADJUDICATION_HANDOFF_0_1_0.md",
        "audits/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR_0_1_0.md",
        "audits/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_ADJUDICATION_0_1_1.md",
        "frameworks/causal_process/FW_PROCESS_MATRIX_PHYSICAL_REALIZABILITY_PROFILE_0_1_1.md",
        "handoffs/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_HANDOFF_0_1_1.md",
        ROUTING_PATH,
    ]:
        if p not in profile:
            profile.append(p)
    write_lf(index_path, stable_json_pretty(index))

    reg_path = repo / "meta/FCP_OPERATION_REGISTRY.jsonl"
    records = [json.loads(line) for line in reg_path.read_text(encoding="utf-8").splitlines() if line]
    by_id = {r["operation_id"]: r for r in records}

    def rec(operation_id: str, **kwargs):
        base_record = by_id.get(operation_id, {
            "schema_version": "0.1.0",
            "operation_id": operation_id,
            "display_name": operation_id,
            "operation_class": "UNSPECIFIED",
            "status": "NOT_STARTED",
            "method_version": None,
            "base_commit": None,
            "result_commit": None,
            "routing_commit": None,
            "input_paths": [],
            "output_paths": [],
            "canonical_evidence_paths": [],
            "handoff_path": None,
            "supersedes": [],
            "superseded_by": [],
            "downstream_consumers": [],
            "next_operations": [],
        })
        base_record.update(kwargs)
        by_id[operation_id] = base_record

    rec(
        "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT",
        status="CANONICALLY_COMPLETE__OPENING_PACKET_FROZEN_AND_EXTERNAL_CONTACT_FULFILLED_DOWNSTREAM",
        result_commit="99fa6fb51db8ea23a8e065a8f94ef656d7f2cdac",
        downstream_consumers=["POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDITOR_CONTACT"],
        next_operations=["POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDITOR_CONTACT"],
    )
    rec(
        "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDITOR_CONTACT",
        status="COMPLETED_BY_USER_REAL_AUTHORIZATION_AND_EXTERNAL_ACTION",
        downstream_consumers=["POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_CUSTODY_AND_FREEZE"],
        next_operations=["POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_CUSTODY_AND_FREEZE"],
        canonical_evidence_paths=[
            "governance/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_OPENING_POST_INTEGRATION_ROUTING_0_1_0.md",
            "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_0_1_0.md",
            "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_CUSTODY_0_1_0.md",
        ],
    )
    rec(
        "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_CUSTODY_AND_FREEZE",
        display_name="Post-FW-PROCESS-MATRIX Stage-2 external audit response custody and freeze",
        operation_class="PROVENANCE_CUSTODY",
        status="CANONICALLY_COMPLETE",
        method_version=None,
        base_commit="7e8d98566334e48a6acee278e15f887900c29acd",
        result_commit=CUSTODY,
        routing_commit=None,
        input_paths=[
            "governance/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_OPENING_POST_INTEGRATION_ROUTING_0_1_0.md",
            "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_PACKET_MANIFEST_0_1_0.md",
            "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_PROMPT_0_1_0.md",
        ],
        output_paths=[
            "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_0_1_0.md",
            "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_CUSTODY_0_1_0.md",
        ],
        canonical_evidence_paths=[
            "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_0_1_0.md",
            "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_CUSTODY_0_1_0.md",
        ],
        handoff_path=None,
        supersedes=[], superseded_by=[],
        downstream_consumers=["POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_INDEPENDENT_ADJUDICATION"],
        next_operations=["POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_INDEPENDENT_ADJUDICATION"],
    )
    rec(
        "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_INDEPENDENT_ADJUDICATION",
        display_name="Post-FW-PROCESS-MATRIX Stage-2 external audit independent Project Lead adjudication",
        operation_class="EXTERNAL_AUDIT_ADJUDICATION",
        status="CANONICALLY_COMPLETE",
        method_version="0.2.1",
        base_commit=CUSTODY,
        result_commit=ADJUDICATION,
        routing_commit=None,
        input_paths=[
            "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_0_1_0.md",
            "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_CUSTODY_0_1_0.md",
            "audits/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_ADJUDICATION_0_1_0.md",
            "frameworks/causal_process/FW_PROCESS_MATRIX_PHYSICAL_REALIZABILITY_PROFILE_0_1_0.md",
            "comparisons/FW_PROCESS_MATRIX_VS_NULL_GRQFTSM_METHOD_0_2_1_0_1_0.md",
        ],
        output_paths=[
            "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_INDEPENDENT_ADJUDICATION_0_1_0.md",
            "handoffs/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_INDEPENDENT_ADJUDICATION_HANDOFF_0_1_0.md",
            "governance/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_INDEPENDENT_ADJUDICATION_ROUTING_0_1_0.md",
        ],
        canonical_evidence_paths=[
            "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_RESPONSE_0_1_0.md",
            "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_INDEPENDENT_ADJUDICATION_0_1_0.md",
            "handoffs/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_INDEPENDENT_ADJUDICATION_HANDOFF_0_1_0.md",
        ],
        handoff_path="handoffs/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_INDEPENDENT_ADJUDICATION_HANDOFF_0_1_0.md",
        supersedes=[], superseded_by=[],
        downstream_consumers=["POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR"],
        next_operations=["POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR"],
    )
    rec(
        "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR",
        display_name="Post-FW-PROCESS-MATRIX Stage-2 external-audit accepted-findings repair",
        operation_class="BOUNDED_RESULT_PRESERVING_SCIENTIFIC_AND_METHOD_GOVERNANCE_REPAIR",
        status="CANONICALLY_COMPLETE",
        method_version="0.2.1",
        base_commit=ADJUDICATION,
        result_commit=REPAIR,
        routing_commit=None,
        input_paths=[
            "audits/external/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_ADVERSARIAL_AUDIT_INDEPENDENT_ADJUDICATION_0_1_0.md",
            "audits/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_ADJUDICATION_0_1_0.md",
            "frameworks/causal_process/FW_PROCESS_MATRIX_PHYSICAL_REALIZABILITY_PROFILE_0_1_0.md",
            "handoffs/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_HANDOFF_0_1_0.md",
        ],
        output_paths=[
            "audits/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_ADJUDICATION_0_1_1.md",
            "frameworks/causal_process/FW_PROCESS_MATRIX_PHYSICAL_REALIZABILITY_PROFILE_0_1_1.md",
            "handoffs/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_HANDOFF_0_1_1.md",
            "audits/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR_0_1_0.md",
        ],
        canonical_evidence_paths=[
            "audits/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR_0_1_0.md",
            "audits/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_ADJUDICATION_0_1_1.md",
            "frameworks/causal_process/FW_PROCESS_MATRIX_PHYSICAL_REALIZABILITY_PROFILE_0_1_1.md",
            "handoffs/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_HANDOFF_0_1_1.md",
        ],
        handoff_path="handoffs/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_HANDOFF_0_1_1.md",
        supersedes=[], superseded_by=[],
        downstream_consumers=[ROUTING_OP],
        next_operations=[ROUTING_OP],
    )
    rec(
        ROUTING_OP,
        display_name="Post-FW-PROCESS-MATRIX Stage-2 external-audit repair routing and navigation reconciliation",
        operation_class="REPOSITORY_MAINTENANCE",
        status="CANONICALLY_COMPLETE",
        method_version="0.2.1",
        base_commit=REPAIR,
        result_commit=semantic,
        routing_commit=semantic,
        input_paths=[
            "CURRENT_STATE.md",
            "README.md",
            "audits/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR_0_1_0.md",
            "handoffs/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_HANDOFF_0_1_1.md",
        ],
        output_paths=["CURRENT_STATE.md", "README.md", ROUTING_PATH],
        canonical_evidence_paths=[
            "CURRENT_STATE.md", "README.md", ROUTING_PATH,
            "audits/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR_0_1_0.md",
            "audits/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_ADJUDICATION_0_1_1.md",
            "frameworks/causal_process/FW_PROCESS_MATRIX_PHYSICAL_REALIZABILITY_PROFILE_0_1_1.md",
            "handoffs/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_HANDOFF_0_1_1.md",
        ],
        handoff_path=ROUTING_PATH,
        supersedes=[], superseded_by=[],
        downstream_consumers=[NEXT_OP],
        next_operations=[NEXT_OP],
    )
    rec(
        NEXT_OP,
        display_name="Post-FW-PROCESS-MATRIX Stage-2 external-audit repair scientific sequencing adjudication",
        operation_class="READ_ONLY_SEQUENCING_ADJUDICATION",
        status="SELECTED_NOT_STARTED",
        method_version="0.2.1",
        base_commit=None,
        result_commit=None,
        routing_commit=None,
        input_paths=[
            "CURRENT_STATE.md", ROUTING_PATH,
            "audits/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR_0_1_0.md",
            "audits/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_ADJUDICATION_0_1_1.md",
            "frameworks/causal_process/FW_PROCESS_MATRIX_PHYSICAL_REALIZABILITY_PROFILE_0_1_1.md",
            "comparisons/FW_PROCESS_MATRIX_VS_NULL_GRQFTSM_METHOD_0_2_1_0_1_0.md",
        ],
        output_paths=[],
        canonical_evidence_paths=[
            "CURRENT_STATE.md", ROUTING_PATH,
            "audits/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_ADJUDICATION_0_1_1.md",
            "comparisons/FW_PROCESS_MATRIX_VS_NULL_GRQFTSM_METHOD_0_2_1_0_1_0.md",
        ],
        handoff_path=None,
        supersedes=[], superseded_by=[], downstream_consumers=[], next_operations=[],
    )

    ordered = [by_id[k] for k in sorted(by_id)]
    write_lf(reg_path, "".join(stable_json(r) + "\n" for r in ordered))


def main() -> None:
    repo = Path.cwd().resolve()
    head = run("git", "rev-parse", "HEAD", cwd=repo)
    if head != BASE:
        raise SystemExit(f"target branch baseline mismatch: {head} != {BASE}")
    if run("git", "status", "--porcelain", cwd=repo):
        raise SystemExit("target working tree is not clean")

    run("git", "config", "user.name", "FCP Project Lead Automation", cwd=repo)
    run("git", "config", "user.email", "actions@users.noreply.github.com", cwd=repo)

    patch_current_state(repo)
    patch_readme(repo)
    write_lf(repo / ROUTING_PATH, routing_text())

    run("git", "add", "CURRENT_STATE.md", "README.md", ROUTING_PATH, cwd=repo)
    run("git", "commit", "-m", "Reconcile post-audit Stage-2 repair routing", cwd=repo)
    semantic = run("git", "rev-parse", "HEAD", cwd=repo)
    semantic_tree = run("git", "show", "-s", "--format=%T", semantic, cwd=repo)

    patch_navigation_state(repo, semantic)
    run("python", "tools/fcp_navigation.py", "refresh", "--ref", semantic, cwd=repo, capture=False)
    run("python", "tools/fcp_navigation.py", "check", "--ref", semantic, cwd=repo, capture=False)

    run("git", "add", "meta/FCP_CANONICAL_INDEX.json", "meta/FCP_OPERATION_REGISTRY.jsonl", "meta/FCP_ARTIFACT_REGISTRY.jsonl", cwd=repo)
    run("git", "commit", "-m", "Refresh navigation after Stage-2 audit repair", cwd=repo)
    nav = run("git", "rev-parse", "HEAD", cwd=repo)
    nav_tree = run("git", "show", "-s", "--format=%T", nav, cwd=repo)
    run("python", "tools/fcp_navigation.py", "check", "--ref", semantic, cwd=repo, capture=False)

    with tempfile.TemporaryDirectory(prefix="fcp-wincheck-") as td:
        clone = Path(td) / "repo"
        run("git", "-c", "core.autocrlf=true", "clone", "--no-local", "--branch", TARGET_BRANCH, str(repo), str(clone), capture=False)
        run("python", "tools/fcp_navigation.py", "check", "--ref", semantic, cwd=clone, capture=False)

    print(f"SEMANTIC_COMMIT = {semantic}")
    print(f"SEMANTIC_TREE = {semantic_tree}")
    print(f"NAVIGATION_COMMIT = {nav}")
    print(f"NAVIGATION_TREE = {nav_tree}")
    print("LINUX_NAVIGATION_CHECK = PASS")
    print("WINDOWS_AUTOCRLF_NAVIGATION_CHECK = PASS")
    run("git", "push", "origin", f"HEAD:{TARGET_BRANCH}", cwd=repo, capture=False)


if __name__ == "__main__":
    main()
