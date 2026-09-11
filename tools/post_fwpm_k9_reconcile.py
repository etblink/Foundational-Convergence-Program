from pathlib import Path

STATE = Path('CURRENT_STATE.md')
FRAMEWORK = Path('FRAMEWORK_REGISTER.md')
HANDOFF = Path('handoffs/POST_FW_PROCESS_MATRIX_K9_ROUTING_AND_NAVIGATION_RECONCILIATION_HANDOFF_0_1_0.md')


def replace_once(text: str, old: str, new: str, label: str) -> str:
    count = text.count(old)
    if count != 1:
        raise SystemExit(f'{label}: expected exactly one match, found {count}')
    return text.replace(old, new, 1)


state = STATE.read_text(encoding='utf-8')

state = replace_once(
    state,
    'LATEST_CANONICAL_SCIENTIFIC_OPERATION = POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_REPAIR_SCIENTIFIC_SEQUENCING_ADJUDICATION\nLATEST_CANONICAL_SCIENTIFIC_COMMIT = 599aaa5ebf3f0acfed76946afa787f784bf32662\nLATEST_CANONICAL_SCIENTIFIC_TREE = 7a69b4d6b2d45921502e65e636e5fdd4ee40dbb5\nLATEST_CANONICAL_MAINTENANCE_OPERATION = POST_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE2_EXTERNAL_AUDIT_REPAIR_SCIENTIFIC_SEQUENCING_ROUTING_AND_NAVIGATION_RECONCILIATION',
    'LATEST_CANONICAL_SCIENTIFIC_OPERATION = FW_PROCESS_MATRIX_NULL_CONTROL_K9_TARGETED_PAIRWISE_REANALYSIS\nLATEST_CANONICAL_SCIENTIFIC_COMMIT = 48a047b2ee3757bc076c74fcdf61ca592d17c39a\nLATEST_CANONICAL_SCIENTIFIC_TREE = 8697ea5b2dd1a8e42cf5b51d060fa96fbf5d6f63\nLATEST_CANONICAL_MAINTENANCE_OPERATION = POST_FW_PROCESS_MATRIX_K9_ROUTING_AND_NAVIGATION_RECONCILIATION',
    'latest canonical state header',
)

old_top = """`LATEST_NUMBERED_PHASE` remains FCP-26 because the later FW-CAT, causal-process, method-audit, process-matrix admission-audit, sequencing, null-control, targeted realizability source-strengthening, and physical-selection Stage-2 operations are unnumbered and FCP-27 has not been selected. The repaired `FW-PROCESS-MATRIX` Stage-2 result remains the latest mutating scientific result, with all AX1–AX10 and A–F values preserved after external audit. The latest canonical scientific decision is the fresh post-repair sequencing adjudication: it identifies one bounded new-information dependency and selects a prospective closed-corpus **K9-only null-control pairwise reanalysis preregistration**. No K9 relation has yet been re-adjudicated. The current E2/NONE/unresolved counts, null-subtracted residue, and `PMNC-K9-01` through `PMNC-K9-03` remain exactly the pre-reanalysis baseline. The selected next step is only to freeze outcome-neutral K9 reanalysis rules; new sources, comparator changes, K1–K8 or K10 substantive reopening, convergence credit, recurrence, empirical escalation, and FCP-27 remain forbidden or unselected. Exact enclosing maintenance identities remain recoverable from Git rather than embedded self-referentially."""
new_top = """`LATEST_NUMBERED_PHASE` remains FCP-26 because the later FW-CAT, causal-process, method-audit, process-matrix admission-audit, null-control, targeted realizability, K9 reanalysis, and related operations are unnumbered and FCP-27 has not been selected. The latest mutating scientific result is now the canonically integrated closed-corpus `FW-PROCESS-MATRIX` K9 null-control pairwise reanalysis. It adds `PMNC-K9-04` as a distinct framework-wide `E2_REPRESENTATION` for arbitrary valid process matrices via the source-qualified pre/postselected multi-time standard-QM representation, while retaining `PMNC-K9-01`, `PMNC-K9-02`, and `PMNC-K9-03`. The strict E2 relation count is now 4; `NONE_ESTABLISHED` remains 13 and unresolved remains 1. `PMNC-K9-03` remains unresolved, but its rationale is narrowed because general conditional representability is now established while general deterministic physical realization and a complete physical-selection criterion remain unestablished. The null-subtracted positive core residue remains nonempty with unchanged highest scope and core content; the representation-viability map is strengthened. No E1/E3/E4/E5, empirical, recurrence, non-null, framework-identity, NFC, or FCP-27 consequence is authorized by this result. Exact enclosing maintenance identities remain recoverable from Git rather than embedded self-referentially."""
state = replace_once(state, old_top, new_top, 'top current-state narrative')

state = replace_once(
    state,
    'FW_PROCESS_MATRIX_CURRENT_STATUS = SOURCE_BOUND_READY',
    'FW_PROCESS_MATRIX_CURRENT_STATUS = PAIRWISE_COMPARISON_COMPLETE',
    'framework current status',
)

old_counts = """FW_PROCESS_MATRIX_NULL_CONTROL_PAIRWISE_E1_COUNT = 0
FW_PROCESS_MATRIX_NULL_CONTROL_PAIRWISE_E2_COUNT = 3
FW_PROCESS_MATRIX_NULL_CONTROL_PAIRWISE_E3_COUNT = 0
FW_PROCESS_MATRIX_NULL_CONTROL_PAIRWISE_E4_COUNT = 0
FW_PROCESS_MATRIX_NULL_CONTROL_PAIRWISE_E5_COUNT = 0
FW_PROCESS_MATRIX_NULL_CONTROL_NONE_ESTABLISHED_COUNT = 13
FW_PROCESS_MATRIX_NULL_CONTROL_UNRESOLVED_COUNT = 1
FW_PROCESS_MATRIX_NULL_CONTROL_TARGET_CONDITIONED_COUNT = 0"""
new_counts = """FW_PROCESS_MATRIX_NULL_CONTROL_PAIRWISE_E1_COUNT = 0
FW_PROCESS_MATRIX_NULL_CONTROL_PAIRWISE_E2_COUNT = 4
FW_PROCESS_MATRIX_NULL_CONTROL_PAIRWISE_E3_COUNT = 0
FW_PROCESS_MATRIX_NULL_CONTROL_PAIRWISE_E4_COUNT = 0
FW_PROCESS_MATRIX_NULL_CONTROL_PAIRWISE_E5_COUNT = 0
FW_PROCESS_MATRIX_NULL_CONTROL_NONE_ESTABLISHED_COUNT = 13
FW_PROCESS_MATRIX_NULL_CONTROL_UNRESOLVED_COUNT = 1
FW_PROCESS_MATRIX_NULL_CONTROL_TARGET_CONDITIONED_COUNT = 1
FW_PROCESS_MATRIX_NULL_CONTROL_K9_TARGETED_PAIRWISE_REANALYSIS = CANONICALLY_COMPLETE
FW_PROCESS_MATRIX_NULL_CONTROL_K9_RESULT_COMMIT = 48a047b2ee3757bc076c74fcdf61ca592d17c39a
FW_PROCESS_MATRIX_NULL_CONTROL_K9_RESULT_TREE = 8697ea5b2dd1a8e42cf5b51d060fa96fbf5d6f63
FW_PROCESS_MATRIX_K9_NEW_RELATION = PMNC-K9-04__E2_REPRESENTATION
FW_PROCESS_MATRIX_K9_01 = RETAINED
FW_PROCESS_MATRIX_K9_02 = RETAINED
FW_PROCESS_MATRIX_K9_03 = RETAINED_UNRESOLVED_WITH_REFINED_REASON
FW_PROCESS_MATRIX_K9_04 = E2_REPRESENTATION__S3_FRAMEWORK_WIDE__PR2_MODEL_BRIDGE__IND-N_TARGET_CONDITIONED
FW_PROCESS_MATRIX_NULL_SUBTRACTED_CORE_RESIDUE_CHANGE = NONE
FW_PROCESS_MATRIX_REPRESENTATION_VIABILITY_MAP = STRENGTHENED
FW_PROCESS_MATRIX_K9_E3_CHANGE = NONE
FW_PROCESS_MATRIX_K9_EMPIRICAL_CHANGE = NONE
FW_PROCESS_MATRIX_K9_RECURRENCE_EFFECT = NONE"""
state = replace_once(state, old_counts, new_counts, 'process-matrix null-control counts')

old_next = """TARGETED_K9_PAIRWISE_REANALYSIS_PREREGISTRATION = SELECTED_NOT_STARTED
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
NEXT_RECOMMENDED_OPERATION = FW_PROCESS_MATRIX_NULL_CONTROL_K9_TARGETED_PAIRWISE_REANALYSIS_PREREGISTRATION
NEXT_OPERATION_CLASS = PROSPECTIVE_CLOSED_CORPUS_PAIRWISE_REANALYSIS_PREREGISTRATION
NEXT_OPERATION_AUTHORIZED = YES__STANDING_PROJECT_LEAD_DELEGATION
NEXT_OPERATION_AUTHORIZATION_BOUNDARY = NONE__PREREGISTRATION_ONLY__PAIRWISE_RESULT_STILL_FORBIDDEN_BEFORE_FREEZE
NEXT_NUMBERED_PHASE_SELECTED = NO
FCP27_SELECTED = NO
NEXT_SCIENTIFIC_PHASE = NONE__TARGETED_K9_PREREGISTRATION_SELECTED"""
new_next = """TARGETED_K9_PAIRWISE_REANALYSIS_PREREGISTRATION = CANONICALLY_COMPLETE
TARGETED_K9_PAIRWISE_READJUDICATION = CANONICALLY_COMPLETE
TARGETED_K9_CURRENT_EXISTING_RECORDS = PMNC-K9-01;PMNC-K9-02;PMNC-K9-03;PMNC-K9-04
TARGETED_K9_CURRENT_PAIRWISE_E2_COUNT = 4
TARGETED_K9_CURRENT_NONE_ESTABLISHED_COUNT = 13
TARGETED_K9_CURRENT_UNRESOLVED_COUNT = 1
TARGETED_K9_CURRENT_NULL_SUBTRACTED_RESIDUE = NONEMPTY
TARGETED_K9_CURRENT_RESIDUE_HIGHEST_SCOPE = S3_FRAMEWORK_WIDE
TARGETED_K9_AX3_NEW_LOAD_BEARING_PROPOSITION = SRC-FWPM-REAL-SILVA-MULTITIME-2017__GENERAL_W_CONDITIONAL_POSTSELECTED_REPRESENTATION
TARGETED_K9_PAIRWISE_RESULT = PLUS_ONE_E2_GENERAL_W_CONDITIONAL_POSTSELECTED_REPRESENTATION__K9_03_REMAINS_UNRESOLVED
POST_FW_PROCESS_MATRIX_K9_ROUTING_AND_NAVIGATION_RECONCILIATION = CANONICALLY_COMPLETE
NEXT_EXECUTION_STEP = SEPARATE_POST_K9_SCIENTIFIC_SEQUENCING_ADJUDICATION_IF_AUTHORIZED
NEXT_RECOMMENDED_OPERATION = POST_FW_PROCESS_MATRIX_K9_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_OPERATION_CLASS = READ_ONLY_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_OPERATION_AUTHORIZED = NO
NEXT_OPERATION_AUTHORIZATION_BOUNDARY = SEPARATE_SEQUENCING_DECISION_REQUIRED
NEXT_NUMBERED_PHASE_SELECTED = NO
FCP27_SELECTED = NO
NEXT_SCIENTIFIC_PHASE = NONE__POST_K9_SEQUENCING_NOT_YET_SELECTED"""
state = replace_once(state, old_next, new_next, 'next-task K9 routing block')

old_after = """The process-matrix Stage-2 external-audit chain remains complete through custody, independent adjudication, and accepted-findings repair. A fresh post-repair sequencing decision has now identified a specific pairwise-information delta: AX3 is a source-bound general-`W` conditional/postselected representation proposition of a type that may qualify as E2 against the already-selected null comparator. This does **not** resolve the complete physical-selection question encoded by `PMNC-K9-03`, and it does not establish that any pairwise relation changes. The next operation is therefore only a prospective, closed-corpus, K9-only reanalysis preregistration. Until that preregistration is frozen and separately applied, both pairwise change and pairwise invariance remain unadjudicated."""
new_after = """The process-matrix Stage-2 external-audit chain remains complete through custody, independent adjudication, and accepted-findings repair. The subsequently selected closed-corpus K9 reanalysis is also now canonically complete. AX3 supports one new nonredundant `E2_REPRESENTATION`, `PMNC-K9-04`, at framework-wide representation scope under load-bearing standard-QM/postselection conditioning. The earlier selected-class `PMNC-K9-01` remains distinct and physically stronger at its narrower scope; `PMNC-K9-02` remains `NONE_ESTABLISHED`; and `PMNC-K9-03` remains unresolved because general deterministic or otherwise physically admissible realization and a complete physical-selection criterion are still not established. No recurrence, empirical, non-null, method, or FCP-27 work is selected by this reconciliation. The next scientific operation, if any, requires a separate post-K9 sequencing adjudication."""
state = replace_once(state, old_after, new_after, 'post-K9 explanatory paragraph')

STATE.write_text(state, encoding='utf-8')

framework = FRAMEWORK.read_text(encoding='utf-8')
lines = framework.splitlines()
matches = [i for i, line in enumerate(lines) if line.startswith('| `FW-PROCESS-MATRIX` |')]
if len(matches) != 1:
    raise SystemExit(f'FW-PROCESS-MATRIX row: expected exactly one match, found {len(matches)}')
i = matches[0]
lines[i] = "| `FW-PROCESS-MATRIX` | Process-matrix operational framework | source-bound generalizing causal-process meta-framework | `PAIRWISE_COMPARISON_COMPLETE` | Closed-corpus K9 null-control reanalysis is canonically complete. The earlier null control's nonempty bounded `S3_FRAMEWORK_WIDE` residue remains; strict pairwise E2 rises from 3 to 4 by adding `PMNC-K9-04`, a source-qualified framework-wide representation of arbitrary valid `W` into the null comparator's standard quantum/probabilistic operational layer via pre/postselected multi-time states (`PR2_MODEL_BRIDGE`, postselection load-bearing, `IND-N_TARGET_CONDITIONED`). `PMNC-K9-01` remains a distinct physically stronger selected-class `PR3` realization; `PMNC-K9-02` remains `NONE_ESTABLISHED`; and `PMNC-K9-03` remains unresolved with a narrowed physical-selection burden. No E3, empirical selection, recurrence, framework identity, or FCP-27 change follows. |"
FRAMEWORK.write_text('\n'.join(lines) + '\n', encoding='utf-8')

HANDOFF.write_text('''# Post-FW-PROCESS-MATRIX K9 Routing and Navigation Reconciliation — Handoff 0.1.0

```text
OPERATION = POST_FW_PROCESS_MATRIX_K9_ROUTING_AND_NAVIGATION_RECONCILIATION
DATE = 2026-09-10
OPERATION_CLASS = RESULT_PRESERVING_MAINTENANCE
SCIENTIFIC_PARENT = 48a047b2ee3757bc076c74fcdf61ca592d17c39a
SCIENTIFIC_PARENT_TREE = 8697ea5b2dd1a8e42cf5b51d060fa96fbf5d6f63
NEW_SCIENTIFIC_ADJUDICATION = NO
NEW_EXTERNAL_SOURCE_SEARCH = NO
NEW_SOURCE_ADMISSION = NO
RECURRENCE_RECOMPUTATION = NO
FCP27_SELECTION = NO
```

## Reconciled live state

- `CURRENT_STATE.md` now identifies the K9 targeted pairwise reanalysis as the latest canonical scientific operation.
- strict `FW-PROCESS-MATRIX` null-control E2 count is reconciled from 3 to 4;
- `PMNC-K9-04` is recorded as the new framework-wide, target-conditioned `E2_REPRESENTATION`;
- `PMNC-K9-01` and `PMNC-K9-02` remain retained;
- `PMNC-K9-03` remains unresolved with the already-adjudicated narrowed reason;
- null-subtracted positive core residue and highest scope remain unchanged;
- `FW-PROCESS-MATRIX` live register status is reconciled from `SOURCE_BOUND_READY` to `PAIRWISE_COMPARISON_COMPLETE`;
- present-tense routing no longer identifies K9 preregistration/reanalysis as unstarted.

## Next-operation ceiling

```text
NEXT_RECOMMENDED_OPERATION = POST_FW_PROCESS_MATRIX_K9_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_OPERATION_CLASS = READ_ONLY_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_OPERATION_AUTHORIZED = NO
NEXT_NUMBERED_PHASE_SELECTED = NO
FCP27_SELECTED = NO
```

This recommendation is routing only. It neither selects nor begins new science.

## No-change surfaces

`SOURCE_REGISTER.md`, `CLAIM_LEDGER.md`, historical comparison artifacts, Method files, recurrence artifacts, non-K9 pairwise records, empirical ledgers, NFC artifacts, and numbered-phase state are unchanged by this maintenance operation.
''', encoding='utf-8')
