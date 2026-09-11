from pathlib import Path
import subprocess


def replace_exact(text: str, old: str, new: str, label: str, count: int = 1) -> str:
    actual = text.count(old)
    if actual != count:
        raise SystemExit(f"{label}: expected {count} exact occurrence(s), found {actual}")
    return text.replace(old, new, count)


path = Path("CURRENT_STATE.md")
text = path.read_text(encoding="utf-8")

text = replace_exact(
    text,
    "LATEST_CANONICAL_MAINTENANCE_OPERATION = POST_RECURRENCE_DELTA_DURABLE_PROVENANCE_AND_ROUTING_RECONCILIATION",
    "LATEST_CANONICAL_MAINTENANCE_OPERATION = POST_RECURRENCE_DELTA_SCIENTIFIC_SEQUENCING_ROUTING_AND_NAVIGATION_RECONCILIATION",
    "latest maintenance operation",
)

old_summary = """`LATEST_NUMBERED_PHASE` remains FCP-26 because the later FW-CAT, causal-process, method-audit, process-matrix, pairwise, and recurrence-delta operations are unnumbered and FCP-27 has not been selected. The latest mutating scientific result is the canonically integrated `PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09`. Exact reconstruction corrects the current effective pairwise census from the preregistered provisional expectation of 14 to 15 because both the process-matrix/null slot and the later Reduced-NFC/process-matrix slot postdate the prior 13-slot recurrence epoch; the K9 targeted reanalysis updates the process-matrix/null slot rather than creating a separate current slot. The current Reduced-NFC comparator count is seven. The recurrence-family vector remains R1=0, R2=0, R3=1, R4=1, R5=7, R6=0, R7=1, R8=3, R9=0, R10=0: family support incidence changes, but family count does not. No independent non-generic foundational recurrence, repeated independent support for Reduced NFC, framework-level EMP4, scalar score, or framework winner is established. This maintenance reconciliation appends one durable recurrence-delta row, raising the Claim Ledger from 99 to 100 without rewriting historical rows. FCP-27 remains unselected. Exact enclosing maintenance identities remain recoverable from Git rather than embedded self-referentially."""
new_summary = """`LATEST_NUMBERED_PHASE` remains FCP-26 because the later FW-CAT, causal-process, method-audit, process-matrix, pairwise, and recurrence-delta operations are unnumbered and FCP-27 has not been selected. The latest mutating scientific result remains the canonically integrated `PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09`. Exact reconstruction gives 19 historical pairwise operations, 15 current effective pairwise slots, and seven current Reduced-NFC comparator slots; the recurrence-family vector remains R1=0, R2=0, R3=1, R4=1, R5=7, R6=0, R7=1, R8=3, R9=0, R10=0. No independent non-generic foundational recurrence, repeated independent support for Reduced NFC, framework-level EMP4, scalar score, or framework winner is established. The subsequent canonical read-only `POST_RECURRENCE_DELTA_SCIENTIFIC_SEQUENCING_ADJUDICATION` selects `EVIDENCE_TRIGGERED_HOLD`: no immediate new scientific operation, FCP-27 phase, source search, recurrence reopening, tensor escalation, process-matrix Stage-2 reopening, or empirical escalation is selected. New science requires a named evidence trigger and fresh preregistration. The durable Claim Ledger remains at 100 rows because the sequencing decision creates no new framework-indexed scientific proposition. Exact enclosing maintenance identities remain recoverable from Git rather than embedded self-referentially."""
text = replace_exact(text, old_summary, new_summary, "top summary")

old_route = """NEXT_EXECUTION_STEP = POST_RECURRENCE_DELTA_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_RECOMMENDED_OPERATION = POST_RECURRENCE_DELTA_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_OPERATION_CLASS = READ_ONLY_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_OPERATION_AUTHORIZED = YES__STANDING_PROJECT_LEAD_DELEGATION
NEXT_OPERATION_AUTHORIZATION_BOUNDARY = SEQUENCING_ONLY__NO_SUBSEQUENT_SCIENCE_BEFORE_SELECTION
NEXT_NUMBERED_PHASE_SELECTED = NO
FCP27_SELECTED = NO
NEXT_SCIENTIFIC_PHASE = NONE__POST_RECURRENCE_DELTA_SEQUENCING_PENDING"""
new_route = """POST_RECURRENCE_DELTA_SCIENTIFIC_SEQUENCING_ADJUDICATION = CANONICALLY_ACCEPTED_READ_ONLY_DECISION
POST_RECURRENCE_DELTA_SCIENTIFIC_SEQUENCING_COMMIT = 98e02f288b12948dc382be7c0c23f105dddb801b
SEQUENCING_SELECTION = EVIDENCE_TRIGGERED_HOLD
ACTIVE_SCIENTIFIC_OPERATION = NONE
NEXT_EXECUTION_STEP = READ_ONLY_EVIDENCE_TRIGGER_ASSESSMENT
NEXT_RECOMMENDED_OPERATION = NONE__RESEQUENCE_ON_NAMED_EVIDENCE_TRIGGER
NEXT_OPERATION_CLASS = EVIDENCE_TRIGGERED_READ_ONLY_RESEQUENCING
NEXT_OPERATION_AUTHORIZED = NO__NO_ACTIVE_SCIENTIFIC_OPERATION_SELECTED
NEXT_OPERATION_AUTHORIZATION_BOUNDARY = NEW_SCIENCE_REQUIRES_NAMED_TRIGGER_AND_FRESH_PREREGISTRATION
NEXT_NUMBERED_PHASE_SELECTED = NO
FCP27_SELECTED = NO
NEXT_SCIENTIFIC_PHASE = NONE__EVIDENCE_TRIGGERED_HOLD"""
text = replace_exact(text, old_route, new_route, "current routing block")

old_explain = """The process-matrix Stage-2 external-audit chain, K9 reanalysis, and Reduced-NFC/process-matrix closed-corpus comparison remain canonical. The subsequent program-level recurrence delta is now also canonical. It reconstructs 19 historical pairwise operations, 15 current effective pairwise slots, and seven current Reduced-NFC comparator slots; the recurrence-family vector remains unchanged while support incidence increases. The present maintenance operation propagates that already-canonical recurrence result into durable provenance and live navigation without changing any scientific classification. The next operation is a fresh read-only post-recurrence-delta sequencing adjudication; no FCP-27 operation, source search, empirical escalation, or new science is preselected here."""
new_explain = """The process-matrix Stage-2 external-audit chain, K9 reanalysis, Reduced-NFC/process-matrix closed-corpus comparison, and subsequent program-level recurrence delta remain canonical. The read-only post-recurrence-delta sequencing adjudication is now also canonical and selects an evidence-triggered hold. There is no active scientific operation and no FCP-27, source-search, recurrence, tensor, process-matrix Stage-2, empirical, or NFC-confirmation escalation selected. Scientific work reopens only after a named trigger—such as a stable new framework candidate, material new source, concrete framework-level empirical target, high-discrimination new pair, load-bearing defect, or independent falsification/verification result—and any resulting mutation requires fresh preregistration. The four Category-B recurrence-epoch consistency dockets remain deferred unless one is shown to threaten a current load-bearing result."""
text = replace_exact(text, old_explain, new_explain, "routing explanation")

# Add one recent-milestone token adjacent to the exact recurrence-delta/maintenance pair.
old_milestone = """PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09 = CANONICALLY_COMPLETE
POST_RECURRENCE_DELTA_DURABLE_PROVENANCE_AND_ROUTING_RECONCILIATION = CANONICALLY_COMPLETE"""
new_milestone = """PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09 = CANONICALLY_COMPLETE
POST_RECURRENCE_DELTA_DURABLE_PROVENANCE_AND_ROUTING_RECONCILIATION = CANONICALLY_COMPLETE
POST_RECURRENCE_DELTA_SCIENTIFIC_SEQUENCING_ADJUDICATION = CANONICALLY_ACCEPTED_READ_ONLY_DECISION
POST_RECURRENCE_DELTA_SCIENTIFIC_SEQUENCING_ROUTING_AND_NAVIGATION_RECONCILIATION = CANONICALLY_COMPLETE"""
text = replace_exact(text, old_milestone, new_milestone, "recent milestone")

path.write_text(text, encoding="utf-8", newline="\n")
state_blob = subprocess.check_output(["git", "hash-object", "CURRENT_STATE.md"], text=True).strip()

audit = f"""# Post-Recurrence-Delta Scientific Sequencing Routing and Navigation Reconciliation — 0.1.0

**Operation:** `POST_RECURRENCE_DELTA_SCIENTIFIC_SEQUENCING_ROUTING_AND_NAVIGATION_RECONCILIATION`
**Status:** QUALIFIED MAINTENANCE CANDIDATE
**Scientific sequencing base:** `98e02f288b12948dc382be7c0c23f105dddb801b`
**Scientific sequencing base tree:** `b7bcf4e641d44db15c39f034acd87d8378e56bef`

## Purpose

Propagate the already-canonical read-only post-recurrence sequencing decision into the mutable routing surface. No scientific result is changed and no successor science is manufactured by maintenance.

## Canonical sequencing result preserved

```text
SEQUENCING_SELECTION = EVIDENCE_TRIGGERED_HOLD
ACTIVE_SCIENTIFIC_OPERATION = NONE
FCP27_SELECTED = NO
NEW_EXTERNAL_SOURCE_SEARCH_SELECTED = NO
RECURRENCE_REOPENED = NO
PROCESS_MATRIX_STAGE2_REOPENED = NO
EMPIRICAL_ESCALATION_SELECTED = NO
TENSOR_FRAMEWORK_ESCALATION_SELECTED = NO
CATEGORY_B_RECURRENCE_CONSISTENCY_DOCKETS_PROMOTED = NO
NEXT_SCIENTIFIC_MUTATION = REQUIRES_NAMED_TRIGGER_AND_FRESH_PREREGISTRATION
```

## Mutation boundary

```text
CURRENT_STATE_WRITE_COUNT = 1
CLAIM_LEDGER_WRITE_COUNT = 0
FRAMEWORK_REGISTER_WRITE_COUNT = 0
SOURCE_REGISTER_WRITE_COUNT = 0
SCIENTIFIC_ARTIFACT_WRITE_COUNT = 0
PAIRWISE_ARTIFACT_WRITE_COUNT = 0
RECURRENCE_ARTIFACT_WRITE_COUNT = 0
EMPIRICAL_RESULT_WRITE_COUNT = 0
FCP27_SELECTION = 0
```

The Claim Ledger remains at 100 durable rows because the sequencing decision adds no distinct current framework-indexed scientific proposition.

## Exact candidate identity

```text
CURRENT_STATE_BLOB = {state_blob}
```

## Qualification

```text
SEQUENCING_RESULT_CHANGED = NO
SCIENTIFIC_RESULT_CHANGE = NONE
E1_E5_CHANGE = NONE
RECURRENCE_VECTOR_CHANGE = NONE
EMP4_CHANGE = NONE
FRAMEWORK_WINNER_CHANGE = NONE
NEXT_ROUTE = READ_ONLY_EVIDENCE_TRIGGER_ASSESSMENT
MAINTENANCE_QUALIFICATION = PASS
```
"""
Path("audits/POST_RECURRENCE_DELTA_SCIENTIFIC_SEQUENCING_ROUTING_AND_NAVIGATION_RECONCILIATION_0_1_0.md").write_text(audit, encoding="utf-8", newline="\n")
