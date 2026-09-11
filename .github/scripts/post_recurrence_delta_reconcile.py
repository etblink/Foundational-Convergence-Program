from pathlib import Path


def replace_exact(text: str, old: str, new: str, label: str, count: int = 1) -> str:
    actual = text.count(old)
    if actual != count:
        raise SystemExit(f"{label}: expected {count} exact occurrence(s), found {actual}")
    return text.replace(old, new, count)


# CURRENT_STATE.md
cs_path = Path("CURRENT_STATE.md")
cs = cs_path.read_text(encoding="utf-8")

cs = replace_exact(
    cs,
    "LATEST_CANONICAL_SCIENTIFIC_OPERATION = NFC_REDUCED_VS_FW_PROCESS_MATRIX_PROSPECTIVE_COMPARISON",
    "LATEST_CANONICAL_SCIENTIFIC_OPERATION = PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09",
    "latest scientific operation",
)
cs = replace_exact(
    cs,
    "LATEST_CANONICAL_SCIENTIFIC_COMMIT = ff7724464a293ce52a918b68348c6aa6082b1d22",
    "LATEST_CANONICAL_SCIENTIFIC_COMMIT = 0bebb5167fa3feed630991c9cbfe007dfb519205",
    "latest scientific commit",
)
cs = replace_exact(
    cs,
    "LATEST_CANONICAL_SCIENTIFIC_TREE = 49ac7e64ccdd3aba52d53017e108d0297aa5fe8b",
    "LATEST_CANONICAL_SCIENTIFIC_TREE = 96c79a5b209af757d759102a1bd2cddb28d549f9",
    "latest scientific tree",
)
cs = replace_exact(
    cs,
    "LATEST_CANONICAL_MAINTENANCE_OPERATION = POST_NFC_PROCESS_MATRIX_DURABLE_PROVENANCE_AND_ROUTING_RECONCILIATION",
    "LATEST_CANONICAL_MAINTENANCE_OPERATION = POST_RECURRENCE_DELTA_DURABLE_PROVENANCE_AND_ROUTING_RECONCILIATION",
    "latest maintenance operation",
)

old_para = """`LATEST_NUMBERED_PHASE` remains FCP-26 because the later FW-CAT, causal-process, method-audit, process-matrix, and current pairwise operations are unnumbered and FCP-27 has not been selected. The latest mutating scientific result is the canonically integrated closed-corpus Reduced-NFC ↔ `FW-PROCESS-MATRIX` prospective comparison. Across ten preregistered K-aligned candidates it finds E1=0, E2=0, E3=0, E4=0, E5=5, five `NONE_ESTABLISHED`, zero unresolved, and zero non-generic relations. The five positive roles are generic S0 organizational correspondences only—allowed-domain organization, test-relative equivalence, admissible transformations, operational-interface mediation, and global coherence. No pairwise empirical selection or NFC empirical support follows, and material asymmetry remains nonempty. The earlier process-matrix null control remains E2=4 after the K9 repair with one unresolved physical-selection record and nonempty `S3_FRAMEWORK_WIDE` residue. This maintenance reconciliation appends five already-canonical durable Claim Ledger rows, raising the durable count from 94 to 99 without rewriting any historical row. No recurrence is recomputed here and FCP-27 remains unselected. Exact enclosing maintenance identities remain recoverable from Git rather than embedded self-referentially."""
new_para = """`LATEST_NUMBERED_PHASE` remains FCP-26 because the later FW-CAT, causal-process, method-audit, process-matrix, pairwise, and recurrence-delta operations are unnumbered and FCP-27 has not been selected. The latest mutating scientific result is the canonically integrated `PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09`. Exact reconstruction corrects the current effective pairwise census from the preregistered provisional expectation of 14 to 15 because both the process-matrix/null slot and the later Reduced-NFC/process-matrix slot postdate the prior 13-slot recurrence epoch; the K9 targeted reanalysis updates the process-matrix/null slot rather than creating a separate current slot. The current Reduced-NFC comparator count is seven. The recurrence-family vector remains R1=0, R2=0, R3=1, R4=1, R5=7, R6=0, R7=1, R8=3, R9=0, R10=0: family support incidence changes, but family count does not. No independent non-generic foundational recurrence, repeated independent support for Reduced NFC, framework-level EMP4, scalar score, or framework winner is established. This maintenance reconciliation appends one durable recurrence-delta row, raising the Claim Ledger from 99 to 100 without rewriting historical rows. FCP-27 remains unselected. Exact enclosing maintenance identities remain recoverable from Git rather than embedded self-referentially."""
cs = replace_exact(cs, old_para, new_para, "top current-state summary")

recent_marker = "NFC_PROCESS_MATRIX_PROSPECTIVE_COMPARISON = CANONICALLY_COMPLETE\n"
recent_replacement = """NFC_PROCESS_MATRIX_PROSPECTIVE_COMPARISON = CANONICALLY_COMPLETE
PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09 = CANONICALLY_COMPLETE
POST_RECURRENCE_DELTA_DURABLE_PROVENANCE_AND_ROUTING_RECONCILIATION = CANONICALLY_COMPLETE
"""
cs = replace_exact(cs, recent_marker, recent_replacement, "recent milestone insertion")
cs = replace_exact(
    cs,
    "NFC_PROCESS_MATRIX_RECURRENCE_IMPACT = INFORMATION_ADDED_NOT_RECOMPUTED",
    "NFC_PROCESS_MATRIX_RECURRENCE_IMPACT = ACCOUNTED_FOR_IN_PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09",
    "NFC process-matrix recurrence impact",
)

recurrence_marker = "PROGRAM_LEVEL_RECURRENCE_RECOMPUTATION = CANONICALLY_COMPLETE\n"
recurrence_replacement = """PROGRAM_LEVEL_RECURRENCE_RECOMPUTATION = CANONICALLY_COMPLETE
PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09 = CANONICALLY_COMPLETE
CURRENT_HISTORICAL_PAIRWISE_OPERATION_COUNT = 19
CURRENT_EFFECTIVE_PAIRWISE_SLOT_COUNT = 15
CURRENT_EFFECTIVE_REDUCED_NFC_PAIRWISE_SLOT_COUNT = 7
RECURRENCE_CANDIDATE_FAMILY_COUNT = 13
RECURRENCE_VECTOR = R1_0__R2_0__R3_1__R4_1__R5_7__R6_0__R7_1__R8_3__R9_0__R10_0
RECURRENCE_FAMILY_COUNT_CHANGED = NO
RECURRENCE_FAMILY_SUPPORT_INCIDENCE_CHANGED = YES
CURRENT_INDEPENDENT_FRAMEWORK_LEVEL_EMP4_SLOT_COUNT = 0
CURRENT_MULTI_FAMILY_EMP4_RECURRENCE_COUNT = 0
REDUCED_NFC_SUPPORTING_RECURRENCE_FAMILY_COUNT = 0
HAS_REDUCED_NFC_ACCUMULATED_REPEATED_INDEPENDENT_SUPPORT = NO
DOES_ANY_INDEPENDENTLY_NONGENERIC_COMMON_STRUCTURE_SURVIVE_ACROSS_MULTIPLE_DISTINCT_FRAMEWORK_FAMILIES = NO
FRAMEWORK_WINNER = NONE
"""
# The marker occurs in more than one historical/current block. Update only its first
# present-tense occurrence; historical prose is intentionally preserved.
if recurrence_marker not in cs:
    raise SystemExit("open dependencies recurrence marker missing")
cs = cs.replace(recurrence_marker, recurrence_replacement, 1)

cs = replace_exact(
    cs,
    "CLAIM_LEDGER_CURRENT_SUPERSESSION = RECONCILED_THROUGH_NFC_PROCESS_MATRIX_COMPARISON_CANONICALLY",
    "CLAIM_LEDGER_CURRENT_SUPERSESSION = RECONCILED_THROUGH_PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09_CANONICALLY",
    "claim ledger supersession status",
)
cs = replace_exact(
    cs,
    "CLAIM_LEDGER_DURABLE_ROW_COUNT = 99",
    "CLAIM_LEDGER_DURABLE_ROW_COUNT = 100",
    "claim ledger durable row count",
)
cs = replace_exact(
    cs,
    "CLAIM_LEDGER_TEMPORAL_CEILING = NFC_REDUCED_VS_FW_PROCESS_MATRIX_PROSPECTIVE_COMPARISON",
    "CLAIM_LEDGER_TEMPORAL_CEILING = PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09",
    "claim ledger temporal ceiling",
)

old_routing = """POST_NFC_PROCESS_MATRIX_DURABLE_PROVENANCE_AND_ROUTING_RECONCILIATION = CANONICALLY_COMPLETE
CLAIM_LEDGER_APPENDED_ROW_COUNT_THIS_OPERATION = 5
CLAIM_LEDGER_NEW_ROW_IDS = FWPM-001;FWPM-NULL-001;FWPM-REAL-001;FWPM-K9-001;FCP-NFCPM-001
NEXT_EXECUTION_STEP = POST_NFC_PROCESS_MATRIX_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_RECOMMENDED_OPERATION = POST_NFC_PROCESS_MATRIX_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_OPERATION_CLASS = READ_ONLY_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_OPERATION_AUTHORIZED = YES__STANDING_PROJECT_LEAD_DELEGATION
NEXT_OPERATION_AUTHORIZATION_BOUNDARY = SEQUENCING_ONLY__NO_SUBSEQUENT_SCIENCE_BEFORE_SELECTION
NEXT_NUMBERED_PHASE_SELECTED = NO
FCP27_SELECTED = NO
NEXT_SCIENTIFIC_PHASE = NONE__POST_NFC_PROCESS_MATRIX_SEQUENCING_PENDING"""
new_routing = """POST_NFC_PROCESS_MATRIX_DURABLE_PROVENANCE_AND_ROUTING_RECONCILIATION = CANONICALLY_COMPLETE
POST_NFC_PROCESS_MATRIX_CLAIM_LEDGER_APPENDED_ROW_COUNT = 5
POST_NFC_PROCESS_MATRIX_CLAIM_LEDGER_NEW_ROW_IDS = FWPM-001;FWPM-NULL-001;FWPM-REAL-001;FWPM-K9-001;FCP-NFCPM-001
PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09 = CANONICALLY_COMPLETE
PROGRAM_LEVEL_RECURRENCE_DELTA_RESULT_COMMIT = 0bebb5167fa3feed630991c9cbfe007dfb519205
PROGRAM_LEVEL_RECURRENCE_DELTA_RESULT_TREE = 96c79a5b209af757d759102a1bd2cddb28d549f9
POST_RECURRENCE_DELTA_DURABLE_PROVENANCE_AND_ROUTING_RECONCILIATION = CANONICALLY_COMPLETE
CLAIM_LEDGER_APPENDED_ROW_COUNT_THIS_OPERATION = 1
CLAIM_LEDGER_NEW_ROW_IDS = FCP-RECDELTA-001
CURRENT_HISTORICAL_PAIRWISE_OPERATION_COUNT = 19
CURRENT_EFFECTIVE_PAIRWISE_SLOT_COUNT = 15
CURRENT_EFFECTIVE_REDUCED_NFC_PAIRWISE_SLOT_COUNT = 7
RECURRENCE_CANDIDATE_FAMILY_COUNT = 13
RECURRENCE_VECTOR = R1_0__R2_0__R3_1__R4_1__R5_7__R6_0__R7_1__R8_3__R9_0__R10_0
RECURRENCE_FAMILY_COUNT_CHANGED = NO
RECURRENCE_FAMILY_SUPPORT_INCIDENCE_CHANGED = YES
REDUCED_NFC_SUPPORTING_RECURRENCE_FAMILY_COUNT = 0
HAS_REDUCED_NFC_ACCUMULATED_REPEATED_INDEPENDENT_SUPPORT = NO
CURRENT_INDEPENDENT_FRAMEWORK_LEVEL_EMP4_SLOT_COUNT = 0
CURRENT_MULTI_FAMILY_EMP4_RECURRENCE_COUNT = 0
FRAMEWORK_WINNER = NONE
NEXT_EXECUTION_STEP = POST_RECURRENCE_DELTA_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_RECOMMENDED_OPERATION = POST_RECURRENCE_DELTA_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_OPERATION_CLASS = READ_ONLY_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_OPERATION_AUTHORIZED = YES__STANDING_PROJECT_LEAD_DELEGATION
NEXT_OPERATION_AUTHORIZATION_BOUNDARY = SEQUENCING_ONLY__NO_SUBSEQUENT_SCIENCE_BEFORE_SELECTION
NEXT_NUMBERED_PHASE_SELECTED = NO
FCP27_SELECTED = NO
NEXT_SCIENTIFIC_PHASE = NONE__POST_RECURRENCE_DELTA_SEQUENCING_PENDING"""
cs = replace_exact(cs, old_routing, new_routing, "current routing block")

old_explain = """The process-matrix Stage-2 external-audit chain and K9 reanalysis remain canonical. The post-K9 sequencing decision is also canonical and selected the now-completed Reduced-NFC/process-matrix closed-corpus comparison. That comparison adds five independent-origin but mathematically generic S0 E5 organizational relations and five `NONE_ESTABLISHED` records, while E1–E4, non-generic relations, pairwise empirical selection, and NFC empirical support remain zero/absent. The present maintenance operation propagates the already-canonical process-matrix program and this new pairwise result into durable provenance and live navigation without recomputing recurrence. The next operation is a read-only sequencing adjudication; no recurrence or other science is preselected here."""
new_explain = """The process-matrix Stage-2 external-audit chain, K9 reanalysis, and Reduced-NFC/process-matrix closed-corpus comparison remain canonical. The subsequent program-level recurrence delta is now also canonical. It reconstructs 19 historical pairwise operations, 15 current effective pairwise slots, and seven current Reduced-NFC comparator slots; the recurrence-family vector remains unchanged while support incidence increases. The present maintenance operation propagates that already-canonical recurrence result into durable provenance and live navigation without changing any scientific classification. The next operation is a fresh read-only post-recurrence-delta sequencing adjudication; no FCP-27 operation, source search, empirical escalation, or new science is preselected here."""
cs = replace_exact(cs, old_explain, new_explain, "current routing explanation")
cs_path.write_text(cs, encoding="utf-8", newline="\n")


# CLAIM_LEDGER.md
cl_path = Path("CLAIM_LEDGER.md")
cl = cl_path.read_text(encoding="utf-8")
old_sentence = "The post-NFC/process-matrix durable-provenance reconciliation appends five already-canonical process-matrix and pairwise rows, yielding **99 durable rows through the Reduced-NFC ↔ FW-PROCESS-MATRIX prospective comparison**."
new_sentence = old_sentence + " The post-recurrence-delta durable-provenance reconciliation appends exactly one current recurrence row, yielding **100 durable rows through `PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09`**."
cl = replace_exact(cl, old_sentence, new_sentence, "claim ledger current-state summary")
if "## FCP-RECDELTA-001" in cl:
    raise SystemExit("FCP-RECDELTA-001 already exists")

row = """

## FCP-RECDELTA-001 — Current recurrence census expands to 15/7 while the 13-family vector and zero Reduced-NFC support remain invariant

- `framework_ids`: `FW-NFC-RED`, `FW-NULL-GRQFTSM`, `FW-AQFT`, `FW-CST`, `FW-CQM`, `FW-GPTOPT`, `FW-LOOP`, `FW-AS`, `FW-STRING-M`, `FW-PROCESS-MATRIX`
- `source_ids`: `SRC-FCP2-KEYS-001`, `SRC-FCP2-EQUIV-001`, `SRC-FCP3-COMP-001`, `SRC-FCP3-NFC-BIND-001`, `SRC-FW-CAT-STAGE1-ORESHKOV-COSTA-BRUKNER-2012`, `SRC-FWPM-REAL-SILVA-MULTITIME-2017`
- `claim_text`: The closed-corpus program-level recurrence delta reconstructs 19 historical pairwise operations, 15 supersession-adjusted current effective pairwise slots, and seven current Reduced-NFC comparator slots. The process-matrix/null current slot adds bounded lineage/target-conditioned E2 and inherited-success/burden support, while the Reduced-NFC/process-matrix slot adds five generic E5 incidences. The recurrence candidate-family count remains 13 with `R1..R10 = 0,0,1,1,7,0,1,3,0,0`; family support incidence changes but family count does not. No independent non-generic foundational recurrence, repeated independent support for Reduced NFC, framework-level EMP4, scalar framework score, or framework winner is established.
- `assumptions`: exact canonical corpus through merge `0bebb5167fa3feed630991c9cbfe007dfb519205`; the process-matrix K9 reanalysis updates rather than duplicates the process-matrix/null current slot; genericity, lineage, target-conditioning, empirical-inheritance, anti-double-counting, physical-bridge and calibration controls remain binding.
- `classification`: `NONFORCED`
- `canonicity_level`: current program-level recurrence epoch and census; no framework truth canonicity claimed.
- `weaker_framework_test`: the five new Reduced-NFC/process-matrix positives remain mathematically generic E5 roles, and process-matrix/null E2 agreement is lineage/target explained; neither supplies independent non-generic foundational recurrence.
- `physical_bridge`: no new common multi-family physical bridge; process-matrix selected realizations remain bounded and Reduced NFC receives no bridge by analogy.
- `empirical_binding`: `CURRENT_INDEPENDENT_FRAMEWORK_LEVEL_EMP4_SLOT_COUNT = 0`; `CURRENT_MULTI_FAMILY_EMP4_RECURRENCE_COUNT = 0`; `REDUCED_NFC_SUPPORTING_RECURRENCE_FAMILY_COUNT = 0`.
- `falsification_condition`: discovery of a missing/duplicated current pairwise slot, a source-qualified non-generic independent E1–E4 recurrence, qualifying repeated Reduced-NFC support across distinct comparator families, or a compulsory calibrated EMP4 discriminator would require revision.
- `countermodels`: the K9 reanalysis demonstrates why repeated operations on one pair do not create extra current slots; the NFC/process-matrix comparison demonstrates that additional generic E5 incidence can increase recurrence-family support without creating a new recurrence family or supporting NFC.
- `scope_ceiling`: historical operations 19; current effective slots 15; current Reduced-NFC slots 7; recurrence-family count 13; R1=0; R2=0; R5=7; Reduced-NFC supporting recurrence families 0; framework-level EMP4 slots 0; no framework winner or scalar score.
- `status`: `ACCEPTED`
- `supersedes`: `FCP-REC-001`; `FCP-REC-007` for present-tense denominator/repeated-support scope only; all historical rows remain accepted at their original evidence epochs.
- `notes`: canonical scientific provenance: `audits/PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09_ADJUDICATION_0_1_0.md` from merge `0bebb5167fa3feed630991c9cbfe007dfb519205`; the preregistered provisional expectation of 14 current slots was explicitly corrected to 15 by exact reconstruction rather than forced to fit expectation.
"""
cl = cl.rstrip() + row + "\n"
cl_path.write_text(cl, encoding="utf-8", newline="\n")

# Maintenance audit is result-preserving and records candidate blobs after patch.
import subprocess
claim_blob = subprocess.check_output(["git", "hash-object", "CLAIM_LEDGER.md"], text=True).strip()
state_blob = subprocess.check_output(["git", "hash-object", "CURRENT_STATE.md"], text=True).strip()
audit = f"""# Post-Recurrence-Delta Durable Provenance and Routing Reconciliation — 0.1.0

**Operation:** `POST_RECURRENCE_DELTA_DURABLE_PROVENANCE_AND_ROUTING_RECONCILIATION`  
**Status:** QUALIFIED MAINTENANCE CANDIDATE  
**Scientific base:** `0bebb5167fa3feed630991c9cbfe007dfb519205`  
**Scientific base tree:** `96c79a5b209af757d759102a1bd2cddb28d549f9`

## Purpose

Propagate the already-canonical `PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09` result into the durable Claim Ledger and mutable live routing state without changing any scientific classification or rewriting historical recurrence artifacts.

## Mutation boundary

`CLAIM_LEDGER.md` changes only by updating its current-state count/ceiling prose and appending one durable row, `FCP-RECDELTA-001`. `CURRENT_STATE.md` changes only on present-tense scientific/routing surfaces needed to recognize the canonical recurrence delta and route to a fresh read-only sequencing adjudication. `FRAMEWORK_REGISTER.md`, `SOURCE_REGISTER.md`, comparison artifacts, prior recurrence artifacts, and FCP-18 artifacts are untouched.

## Result

```text
CLAIM_LEDGER_OLD_DURABLE_ROW_COUNT = 99
CLAIM_LEDGER_APPENDED_ROW_COUNT = 1
CLAIM_LEDGER_NEW_ROW_IDS = FCP-RECDELTA-001
CLAIM_LEDGER_NEW_DURABLE_ROW_COUNT = 100
CLAIM_LEDGER_TEMPORAL_CEILING = PROGRAM_LEVEL_RECURRENCE_DELTA_2026_09

CURRENT_HISTORICAL_PAIRWISE_OPERATION_COUNT = 19
CURRENT_EFFECTIVE_PAIRWISE_SLOT_COUNT = 15
CURRENT_EFFECTIVE_REDUCED_NFC_PAIRWISE_SLOT_COUNT = 7
RECURRENCE_CANDIDATE_FAMILY_COUNT = 13
RECURRENCE_VECTOR = R1_0__R2_0__R3_1__R4_1__R5_7__R6_0__R7_1__R8_3__R9_0__R10_0
RECURRENCE_FAMILY_COUNT_CHANGED = NO
RECURRENCE_FAMILY_SUPPORT_INCIDENCE_CHANGED = YES
REDUCED_NFC_SUPPORTING_RECURRENCE_FAMILY_COUNT = 0
CURRENT_INDEPENDENT_FRAMEWORK_LEVEL_EMP4_SLOT_COUNT = 0
FRAMEWORK_WINNER = NONE
FCP27_SELECTED = NO
```

## Exact candidate blobs

```text
CLAIM_LEDGER_BLOB = {claim_blob}
CURRENT_STATE_BLOB = {state_blob}
```

## Qualification

```text
SCIENTIFIC_RESULT_CHANGE = NONE
E1_E5_CHANGE = NONE
RECURRENCE_FAMILY_CLASSIFICATION_CHANGE = NONE
EMPIRICAL_ESCALATION = NONE
FRAMEWORK_ID_CHANGE = NONE
SOURCE_ADMISSION = NONE
HISTORICAL_ROW_REWRITE = NONE
CLAIM_LEDGER_APPEND_ONLY_FOR_DURABLE_ROW = PASS
FRAMEWORK_REGISTER_WRITE_COUNT = 0
SOURCE_REGISTER_WRITE_COUNT = 0
NEXT_OPERATION_CLASS = READ_ONLY_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_OPERATION = POST_RECURRENCE_DELTA_SCIENTIFIC_SEQUENCING_ADJUDICATION
FCP27_SELECTED = NO
```
"""
Path("audits/POST_RECURRENCE_DELTA_DURABLE_PROVENANCE_AND_ROUTING_RECONCILIATION_0_1_0.md").write_text(audit, encoding="utf-8", newline="\n")
