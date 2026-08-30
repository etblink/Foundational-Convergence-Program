#!/usr/bin/env python3
from __future__ import annotations

import json
import os
import re
import subprocess
import tempfile
from pathlib import Path

BASE = "599aaa5ebf3f0acfed76946afa787f784bf32662"
BASE_TREE = "7a69b4d6b2d45921502e65e636e5fdd4ee40dbb5"
DECISION_BLOB = "2c3d1727981c96392b5bb7b2aeb702645899a35a"
DECISION_OP = "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_REPAIR_SCIENTIFIC_SEQUENCING_ADJUDICATION"
DECISION_PATH = "governance/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_REPAIR_SCIENTIFIC_SEQUENCING_DECISION_0_1_0.md"
ROUTING_OP = "POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_REPAIR_SCIENTIFIC_SEQUENCING_ROUTING_AND_NAVIGATION_RECONCILIATION"
ROUTING_PATH = "governance/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_REPAIR_SCIENTIFIC_SEQUENCING_POST_INTEGRATION_ROUTING_0_1_0.md"
NEXT_OP = "FW_PROCESS_MATRIX_NULL_CONTROL_K9_TARGETED_PAIRWISE_REANALYSIS_PREREGISTRATION"
TARGET_BRANCH = os.environ.get("TARGET_BRANCH", "maintenance/fwpm-post-repair-sequencing-routing")
REPAIR_COMMIT = "1da10fbb5dfad84b294a65a03cbcd911b13ad8fd"
REPAIR_ADJ = "audits/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_PHYSICAL_SELECTION_STAGE2_ADJUDICATION_0_1_1.md"
REPAIR_PROFILE = "frameworks/causal_process/FW_PROCESS_MATRIX_PHYSICAL_REALIZABILITY_PROFILE_0_1_1.md"
NULL_CONTROL = "comparisons/FW_PROCESS_MATRIX_VS_NULL_GRQFTSM_METHOD_0_2_1_0_1_0.md"
NULL_PREREG = "governance/FW_PROCESS_MATRIX_NULL_CONTROL_PREREGISTRATION_0_1_0.md"


def run(*args: str, cwd: Path | None = None, capture: bool = True) -> str:
    p = subprocess.run(args, cwd=cwd, text=True, encoding="utf-8", stdout=subprocess.PIPE if capture else None, stderr=subprocess.STDOUT if capture else None, check=False)
    if p.returncode != 0:
        raise SystemExit(f"command failed ({p.returncode}): {' '.join(args)}\n{p.stdout or ''}")
    return (p.stdout or "").strip()


def replace_once(text: str, old: str, new: str, label: str) -> str:
    n = text.count(old)
    if n != 1:
        raise SystemExit(f"{label}: expected one occurrence, found {n}")
    return text.replace(old, new, 1)


def regex_once(text: str, pattern: str, repl: str, label: str) -> str:
    out, n = re.subn(pattern, repl, text, count=1, flags=re.DOTALL)
    if n != 1:
        raise SystemExit(f"{label}: expected one match, found {n}")
    return out


def write_lf(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text.replace("\r\n", "\n").replace("\r", "\n"), encoding="utf-8", newline="\n")


def stable_json(v) -> str:
    return json.dumps(v, ensure_ascii=False, sort_keys=True, separators=(",", ":"))


def stable_pretty(v) -> str:
    return json.dumps(v, ensure_ascii=False, sort_keys=True, indent=2) + "\n"


def patch_current_state(repo: Path) -> None:
    p = repo / "CURRENT_STATE.md"
    text = p.read_text(encoding="utf-8")
    text = replace_once(text,
        "LATEST_CANONICAL_SCIENTIFIC_OPERATION = POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_ACCEPTED_FINDINGS_REPAIR",
        f"LATEST_CANONICAL_SCIENTIFIC_OPERATION = {DECISION_OP}", "latest science op")
    text = replace_once(text,
        "LATEST_CANONICAL_SCIENTIFIC_COMMIT = 1da10fbb5dfad84b294a65a03cbcd911b13ad8fd",
        f"LATEST_CANONICAL_SCIENTIFIC_COMMIT = {BASE}", "latest science commit")
    text = replace_once(text,
        "LATEST_CANONICAL_SCIENTIFIC_TREE = ae3d1fd0c8a561245b66459fa0a7e462bea696e2",
        f"LATEST_CANONICAL_SCIENTIFIC_TREE = {BASE_TREE}", "latest science tree")
    text = replace_once(text,
        "LATEST_CANONICAL_MAINTENANCE_OPERATION = POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_REPAIR_ROUTING_AND_NAVIGATION_RECONCILIATION",
        f"LATEST_CANONICAL_MAINTENANCE_OPERATION = {ROUTING_OP}", "latest maintenance op")

    narrative = (
        "`LATEST_NUMBERED_PHASE` remains FCP-26 because the later FW-CAT, causal-process, method-audit, process-matrix admission-audit, sequencing, null-control, targeted realizability source-strengthening, and physical-selection Stage-2 operations are unnumbered and FCP-27 has not been selected. "
        "The repaired `FW-PROCESS-MATRIX` Stage-2 result remains the latest mutating scientific result, with all AX1–AX10 and A–F values preserved after external audit. The latest canonical scientific decision is the fresh post-repair sequencing adjudication: it identifies one bounded new-information dependency and selects a prospective closed-corpus **K9-only null-control pairwise reanalysis preregistration**. "
        "No K9 relation has yet been re-adjudicated. The current E2/NONE/unresolved counts, null-subtracted residue, and `PMNC-K9-01` through `PMNC-K9-03` remain exactly the pre-reanalysis baseline. The selected next step is only to freeze outcome-neutral K9 reanalysis rules; new sources, comparator changes, K1–K8 or K10 substantive reopening, convergence credit, recurrence, empirical escalation, and FCP-27 remain forbidden or unselected. Exact enclosing maintenance identities remain recoverable from Git rather than embedded self-referentially."
    )
    text = regex_once(text,
        r"`LATEST_NUMBERED_PHASE` remains FCP-26 because.*?Exact enclosing maintenance identities remain recoverable from Git rather than embedded self-referentially\.",
        narrative, "top narrative")

    old_block = r"POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_SELECTED_ROUTE = R7__EXTERNAL_ADVERSARIAL_AUDIT\nNO_IMMEDIATE_NEW_SUBSTANTIVE_SCIENCE = YES__PRE_AUDIT_SEQUENCING_RESULT_PRESERVED_PENDING_FRESH_POST_REPAIR_SEQUENCING\n.*?NEXT_SCIENTIFIC_PHASE = NONE__PENDING_FRESH_POST_REPAIR_SEQUENCING\n"
    new_block = f"""POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_SCIENTIFIC_SEQUENCING_SELECTED_ROUTE = R7__EXTERNAL_ADVERSARIAL_AUDIT
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_REPAIR_SCIENTIFIC_SEQUENCING_ADJUDICATION = CANONICALLY_ACCEPTED_READ_ONLY_DECISION
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_REPAIR_SCIENTIFIC_SEQUENCING_COMMIT = {BASE}
POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_REPAIR_SCIENTIFIC_SEQUENCING_BLOB = {DECISION_BLOB}
NO_IMMEDIATE_NEW_SUBSTANTIVE_SCIENCE = NO__ONE_BOUNDED_K9_PAIRWISE_REANALYSIS_IS_JUSTIFIED
POST_REPAIR_SELECTED_ROUTE = R2__TARGETED_K9_NULL_CONTROL_PAIRWISE_REANALYSIS
TARGETED_K9_PAIRWISE_REANALYSIS_JUSTIFIED = YES
FULL_NULL_CONTROL_RESTAGE_JUSTIFIED = NO
NON_NULL_PAIRWISE_COMPARATOR_SELECTED = NO
NEW_SOURCE_SEARCH_SELECTED = NO
EMPIRICAL_ESCALATION_SELECTED = NO
RECURRENCE_RECOMPUTATION_SELECTED = NO
METHOD_REVISION_SELECTED = NO
TARGETED_K9_PAIRWISE_REANALYSIS_PREREGISTRATION = SELECTED_NOT_STARTED
TARGETED_K9_PAIRWISE_READJUDICATION = NOT_STARTED
TARGETED_K9_CURRENT_EXISTING_RECORDS = PMNC-K9-01;PMNC-K9-02;PMNC-K9-03
TARGETED_K9_CURRENT_PAIRWISE_E2_COUNT = 3
TARGETED_K9_CURRENT_NONE_ESTABLISHED_COUNT = 13
TARGETED_K9_CURRENT_UNRESOLVED_COUNT = 1
TARGETED_K9_CURRENT_NULL_SUBTRACTED_RESIDUE = NONEMPTY
TARGETED_K9_CURRENT_RESIDUE_HIGHEST_SCOPE = S3_FRAMEWORK_WIDE
TARGETED_K9_AX3_NEW_LOAD_BEARING_PROPOSITION = SRC-FWPM-REAL-SILVA-MULTITIME-2017__GENERAL_W_CONDITIONAL_POSTSELECTED_REPRESENTATION
TARGETED_K9_PAIRWISE_RESULT = NONE_NOT_YET_READJUDICATED
NEXT_EXECUTION_STEP = FREEZE_TARGETED_K9_PAIRWISE_REANALYSIS_PREREGISTRATION
NEXT_RECOMMENDED_OPERATION = {NEXT_OP}
NEXT_OPERATION_CLASS = PROSPECTIVE_CLOSED_CORPUS_PAIRWISE_REANALYSIS_PREREGISTRATION
NEXT_OPERATION_AUTHORIZED = YES__STANDING_PROJECT_LEAD_DELEGATION
NEXT_OPERATION_AUTHORIZATION_BOUNDARY = NONE__PREREGISTRATION_ONLY__PAIRWISE_RESULT_STILL_FORBIDDEN_BEFORE_FREEZE
NEXT_NUMBERED_PHASE_SELECTED = NO
FCP27_SELECTED = NO
NEXT_SCIENTIFIC_PHASE = NONE__TARGETED_K9_PREREGISTRATION_SELECTED
"""
    text = regex_once(text, old_block, new_block, "sequencing state block")

    bottom = (
        "The process-matrix Stage-2 external-audit chain remains complete through custody, independent adjudication, and accepted-findings repair. A fresh post-repair sequencing decision has now identified a specific pairwise-information delta: AX3 is a source-bound general-`W` conditional/postselected representation proposition of a type that may qualify as E2 against the already-selected null comparator. This does **not** resolve the complete physical-selection question encoded by `PMNC-K9-03`, and it does not establish that any pairwise relation changes. The next operation is therefore only a prospective, closed-corpus, K9-only reanalysis preregistration. Until that preregistration is frozen and separately applied, both pairwise change and pairwise invariance remain unadjudicated."
    )
    text = regex_once(text,
        r"The process-matrix Stage-2 external adversarial-audit chain is now complete through response custody,.*?any targeted null-control K9 reanalysis would require separate prospective selection and preregistration\.",
        bottom, "bottom narrative")
    write_lf(p, text)


def patch_readme(repo: Path) -> None:
    p = repo / "README.md"
    text = p.read_text(encoding="utf-8")
    old = "The frozen external adversarial audit has now been completed through response custody, independent Project Lead adjudication, and a bounded accepted-findings repair. Four local findings were independently sustained: the missing preregistered Stage-2 output tables, one R0/AX4 source-role inconsistency, one AX9 boundary-context ambiguity, and an out-of-scope pairwise-invariance gloss. Superseding `0.1.1` Stage-2 artifacts repair those defects **without changing any AX1–AX10 or A–F value**. The prior null-control records were not re-adjudicated; whether the new AX3 information is pairwise-relevant remains open. Pairwise comparison, convergence credit, recurrence recomputation, empirical escalation, framework-status change, method change, and FCP-27 remain unselected pending a fresh post-repair sequencing decision."
    new = "The frozen external adversarial audit has now been completed through response custody, independent Project Lead adjudication, and a bounded accepted-findings repair. Four local findings were independently sustained and repaired **without changing any AX1–AX10 or A–F value**. A fresh post-repair sequencing decision now selects one narrowly bounded next scientific operation: preregistration of a closed-corpus K9-only null-control pairwise reanalysis of the new AX3 representation proposition. No K9 relation, relation count, or residue has yet changed; both change and invariance remain unadjudicated until that prospective reanalysis is frozen and executed. Non-null comparison, new source search, convergence credit, recurrence recomputation, empirical escalation, framework-status change, method change, and FCP-27 remain unselected."
    text = replace_once(text, old, new, "README frontier")
    write_lf(p, text)


def routing_text() -> str:
    return f"""# Post-FW-PROCESS-MATRIX Stage-2 External-Audit Repair Sequencing — Post-Integration Routing and Navigation Reconciliation

**Version:** 0.1.0  
**Status:** CANONICALLY_COMPLETE  
**Operation ID:** `{ROUTING_OP}`  
**Method context:** FCP Method 0.2.1

## 1. Canonical sequencing boundary

```text
SEQUENCING_DECISION_COMMIT = {BASE}
SEQUENCING_DECISION_TREE = {BASE_TREE}
SEQUENCING_DECISION_BLOB = {DECISION_BLOB}
SEQUENCING_DECISION = CANONICALLY_ACCEPTED_READ_ONLY_DECISION
SELECTED_ROUTE = R2__TARGETED_K9_NULL_CONTROL_PAIRWISE_REANALYSIS
NO_IMMEDIATE_NEW_SUBSTANTIVE_SCIENCE = NO__ONE_BOUNDED_PAIRWISE_REANALYSIS_IS_JUSTIFIED
FULL_NULL_CONTROL_RESTAGE = NOT_SELECTED
NON_NULL_COMPARATOR = NOT_SELECTED
NEW_SOURCE_SEARCH = NOT_SELECTED
RECURRENCE_RECOMPUTATION = NOT_SELECTED
EMPIRICAL_ESCALATION = NOT_SELECTED
FCP27_SELECTED = NO
```

## 2. Exact current pairwise baseline

```text
TARGET_KEY = K9
TARGET_EXISTING_RECORDS = PMNC-K9-01;PMNC-K9-02;PMNC-K9-03
CURRENT_PAIRWISE_E2_COUNT = 3
CURRENT_NONE_ESTABLISHED_COUNT = 13
CURRENT_UNRESOLVED_COUNT = 1
CURRENT_NULL_SUBTRACTED_RESIDUE = NONEMPTY
CURRENT_RESIDUE_HIGHEST_SCOPE = S3_FRAMEWORK_WIDE
NEW_LOAD_BEARING_STAGE2_PROPOSITION = AX3__SRC-FWPM-REAL-SILVA-MULTITIME-2017
PAIRWISE_READJUDICATION_STARTED = NO
PAIRWISE_RESULT = NONE_NOT_YET_READJUDICATED
PAIRWISE_CHANGE = NOT_ADJUDICATED
PAIRWISE_INVARIANCE = NOT_ADJUDICATED
```

## 3. Next operation

```text
NEXT_RECOMMENDED_OPERATION = {NEXT_OP}
NEXT_OPERATION_CLASS = PROSPECTIVE_CLOSED_CORPUS_PAIRWISE_REANALYSIS_PREREGISTRATION
NEXT_OPERATION_AUTHORIZED = YES__STANDING_PROJECT_LEAD_DELEGATION
NEW_EXTERNAL_SOURCE_SEARCH = FORBIDDEN
NEW_SOURCE_ADMISSION = FORBIDDEN
COMPARATOR_CHANGE = FORBIDDEN
K1_K8_SUBSTANTIVE_READJUDICATION = FORBIDDEN
K10_SUBSTANTIVE_READJUDICATION = FORBIDDEN
K9_READJUDICATION_BEFORE_PREREGISTRATION_FREEZE = FORBIDDEN
PAIRWISE_RESULT_PRECOMMITMENT = FORBIDDEN
```

The preregistration may freeze rules and exact evidence identities only. It may not assign a new E-relation or modify pairwise counts.

## 4. Handoff capsule

<!-- FCP_HANDOFF_CAPSULE_BEGIN -->
```json
{{
  "capsule_schema_version": "0.1.0",
  "operation_id": "{ROUTING_OP}",
  "status": "CANONICALLY_COMPLETE",
  "indexed_scientific_baseline_commit": "{BASE}",
  "method_version": "0.2.1",
  "must_read": [
    "CURRENT_STATE.md",
    "{ROUTING_PATH}",
    "{DECISION_PATH}",
    "{REPAIR_ADJ}",
    "{REPAIR_PROFILE}",
    "{NULL_PREREG}",
    "{NULL_CONTROL}",
    "governance/FCP_METHOD_0_2_0_RELATION_EVIDENCE_INDEPENDENCE_TAXONOMY.md",
    "COMPARISON_PROTOCOL.md"
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
    "K9_PAIRWISE_READJUDICATION_BEFORE_PREREGISTRATION_FREEZE",
    "ASSUME_AX3_CREATES_AN_E2_RELATION",
    "ASSUME_AX3_LEAVES_K9_RELATIONS_UNCHANGED",
    "NEW_EXTERNAL_SCIENTIFIC_SOURCE_SEARCH",
    "SOURCE_ADMISSION",
    "COMPARATOR_CHANGE",
    "K1_K8_SUBSTANTIVE_READJUDICATION",
    "K10_SUBSTANTIVE_READJUDICATION",
    "CONVERGENCE_CREDIT_CHANGE",
    "RECURRENCE_RECOMPUTATION",
    "EMPIRICAL_TARGET_SELECTION",
    "FCP27_SELECTION_OR_EXECUTION"
  ]
}}
```
<!-- FCP_HANDOFF_CAPSULE_END -->
"""


def patch_navigation(repo: Path, semantic: str) -> None:
    index_path = repo / "meta/FCP_CANONICAL_INDEX.json"
    index = json.loads(index_path.read_text(encoding="utf-8"))
    ps = index["program_state"]
    ps.update({
        "current_handoff_path": ROUTING_PATH,
        "current_operation": ROUTING_OP,
        "current_routing_path": ROUTING_PATH,
        "latest_completed_maintenance_operation": ROUTING_OP,
        "latest_completed_science_operation": DECISION_OP,
        "latest_completed_scientific_operation": DECISION_OP,
        "latest_completed_scientific_commit": BASE,
        "latest_science_handoff_path": DECISION_PATH,
        "post_fw_process_matrix_targeted_realizability_stage2_external_audit_repair_scientific_sequencing_adjudication": "CANONICALLY_ACCEPTED_READ_ONLY_DECISION",
        "post_fw_process_matrix_targeted_realizability_stage2_external_audit_repair_scientific_sequencing_routing_and_navigation_reconciliation": "CANONICALLY_COMPLETE",
        "fw_process_matrix_null_control_k9_targeted_pairwise_reanalysis": "PREREGISTRATION_SELECTED_NOT_STARTED",
        "fw_process_matrix_null_control_k9_targeted_pairwise_reanalysis_preregistration": "SELECTED_NOT_STARTED",
        "fw_process_matrix_null_control_k9_targeted_pairwise_readjudication": "NOT_STARTED",
        "fw_process_matrix_null_control_k9_pairwise_result": "NONE_NOT_YET_READJUDICATED",
        "fw_process_matrix_null_control_k9_pairwise_change": "NOT_ADJUDICATED",
        "fw_process_matrix_null_control_k9_pairwise_invariance": "NOT_ADJUDICATED",
        "fw_process_matrix_null_control_k9_current_pairwise_e2_count": 3,
        "fw_process_matrix_null_control_k9_current_none_established_count": 13,
        "fw_process_matrix_null_control_k9_current_unresolved_count": 1,
        "fw_process_matrix_null_control_k9_current_residue_highest_scope": "S3_FRAMEWORK_WIDE",
        "no_immediate_new_substantive_science": False,
        "targeted_k9_pairwise_reanalysis_justified": True,
        "targeted_k9_pairwise_reanalysis_selected": True,
        "next_operation_authorization_boundary": "NONE__PREREGISTRATION_ONLY__PAIRWISE_RESULT_FORBIDDEN_BEFORE_FREEZE",
        "next_operation_authorized": True,
        "next_operation_class": "PROSPECTIVE_CLOSED_CORPUS_PAIRWISE_REANALYSIS_PREREGISTRATION",
        "next_recommended_operation": NEXT_OP,
    })
    prof = index["read_profiles"].setdefault("COMPARISON", [])
    for q in [DECISION_PATH, ROUTING_PATH, REPAIR_ADJ, REPAIR_PROFILE, NULL_PREREG, NULL_CONTROL]:
        if q not in prof:
            prof.append(q)
    write_lf(index_path, stable_pretty(index))

    reg_path = repo / "meta/FCP_OPERATION_REGISTRY.jsonl"
    records = [json.loads(line) for line in reg_path.read_text(encoding="utf-8").splitlines() if line]
    by = {r["operation_id"]: r for r in records}

    def up(op: str, **kwargs):
        r = by.get(op, {
            "schema_version":"0.1.0","operation_id":op,"display_name":op,"operation_class":"UNSPECIFIED","status":"NOT_STARTED","method_version":None,"base_commit":None,"result_commit":None,"routing_commit":None,"input_paths":[],"output_paths":[],"canonical_evidence_paths":[],"handoff_path":None,"supersedes":[],"superseded_by":[],"downstream_consumers":[],"next_operations":[]
        })
        r.update(kwargs); by[op] = r

    up(DECISION_OP,
       display_name="Post-FW-PROCESS-MATRIX Stage-2 external-audit repair scientific sequencing adjudication",
       operation_class="READ_ONLY_SEQUENCING_ADJUDICATION", status="CANONICALLY_ACCEPTED_READ_ONLY_DECISION",
       method_version="0.2.1", base_commit="9fa13552cde9eee7f8c5e8088565f4623db03d0c", result_commit=BASE, routing_commit=None,
       input_paths=["CURRENT_STATE.md","governance/POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_REPAIR_POST_INTEGRATION_ROUTING_0_1_0.md",REPAIR_ADJ,REPAIR_PROFILE,NULL_PREREG,NULL_CONTROL,"governance/FCP_METHOD_0_2_0_RELATION_EVIDENCE_INDEPENDENCE_TAXONOMY.md","COMPARISON_PROTOCOL.md"],
       output_paths=[DECISION_PATH], canonical_evidence_paths=[DECISION_PATH,REPAIR_ADJ,REPAIR_PROFILE,NULL_CONTROL], handoff_path=DECISION_PATH,
       downstream_consumers=[ROUTING_OP], next_operations=[ROUTING_OP])
    up(ROUTING_OP,
       display_name="Post-FW-PROCESS-MATRIX Stage-2 external-audit repair sequencing routing and navigation reconciliation",
       operation_class="REPOSITORY_MAINTENANCE", status="CANONICALLY_COMPLETE", method_version="0.2.1",
       base_commit=BASE, result_commit=semantic, routing_commit=semantic,
       input_paths=["CURRENT_STATE.md","README.md",DECISION_PATH], output_paths=["CURRENT_STATE.md","README.md",ROUTING_PATH],
       canonical_evidence_paths=["CURRENT_STATE.md","README.md",ROUTING_PATH,DECISION_PATH,REPAIR_ADJ,NULL_CONTROL], handoff_path=ROUTING_PATH,
       downstream_consumers=[NEXT_OP], next_operations=[NEXT_OP])
    up(NEXT_OP,
       display_name="FW-PROCESS-MATRIX null-control K9 targeted pairwise reanalysis preregistration",
       operation_class="PROSPECTIVE_CLOSED_CORPUS_PAIRWISE_REANALYSIS_PREREGISTRATION", status="SELECTED_NOT_STARTED", method_version="0.2.1",
       base_commit=None,result_commit=None,routing_commit=None,
       input_paths=["CURRENT_STATE.md",ROUTING_PATH,DECISION_PATH,REPAIR_ADJ,REPAIR_PROFILE,NULL_PREREG,NULL_CONTROL,"governance/FCP_METHOD_0_2_0_RELATION_EVIDENCE_INDEPENDENCE_TAXONOMY.md","COMPARISON_PROTOCOL.md"],
       output_paths=[],canonical_evidence_paths=["CURRENT_STATE.md",ROUTING_PATH,DECISION_PATH,REPAIR_ADJ,NULL_CONTROL],handoff_path=None,
       supersedes=[],superseded_by=[],downstream_consumers=[],next_operations=[])
    write_lf(reg_path, "".join(stable_json(by[k]) + "\n" for k in sorted(by)))


def main() -> None:
    repo = Path.cwd().resolve()
    if run("git","rev-parse","HEAD",cwd=repo) != BASE:
        raise SystemExit("baseline mismatch")
    if run("git","status","--porcelain",cwd=repo):
        raise SystemExit("working tree dirty")
    run("git","config","user.name","FCP Project Lead Automation",cwd=repo)
    run("git","config","user.email","actions@users.noreply.github.com",cwd=repo)
    patch_current_state(repo); patch_readme(repo); write_lf(repo/ROUTING_PATH, routing_text())
    run("git","add","CURRENT_STATE.md","README.md",ROUTING_PATH,cwd=repo)
    run("git","commit","-m","Reconcile post-repair Stage-2 sequencing routing",cwd=repo)
    semantic = run("git","rev-parse","HEAD",cwd=repo)
    semantic_tree = run("git","show","-s","--format=%T",semantic,cwd=repo)
    patch_navigation(repo, semantic)
    run("python","tools/fcp_navigation.py","refresh","--ref",semantic,cwd=repo,capture=False)
    run("python","tools/fcp_navigation.py","check","--ref",semantic,cwd=repo,capture=False)
    run("git","add","meta/FCP_CANONICAL_INDEX.json","meta/FCP_OPERATION_REGISTRY.jsonl","meta/FCP_ARTIFACT_REGISTRY.jsonl",cwd=repo)
    run("git","commit","-m","Refresh navigation after post-repair sequencing",cwd=repo)
    nav = run("git","rev-parse","HEAD",cwd=repo); nav_tree=run("git","show","-s","--format=%T",nav,cwd=repo)
    run("python","tools/fcp_navigation.py","check","--ref",semantic,cwd=repo,capture=False)
    with tempfile.TemporaryDirectory(prefix="fcp-win-") as td:
        clone=Path(td)/"repo"
        run("git","-c","core.autocrlf=true","clone","--no-local","--branch",TARGET_BRANCH,str(repo),str(clone),capture=False)
        run("python","tools/fcp_navigation.py","check","--ref",semantic,cwd=clone,capture=False)
    print(f"SEMANTIC_COMMIT = {semantic}")
    print(f"SEMANTIC_TREE = {semantic_tree}")
    print(f"NAVIGATION_COMMIT = {nav}")
    print(f"NAVIGATION_TREE = {nav_tree}")
    print("LINUX_NAVIGATION_CHECK = PASS")
    print("WINDOWS_AUTOCRLF_NAVIGATION_CHECK = PASS")
    run("git","push","origin",f"HEAD:{TARGET_BRANCH}",cwd=repo,capture=False)

if __name__ == "__main__":
    main()
