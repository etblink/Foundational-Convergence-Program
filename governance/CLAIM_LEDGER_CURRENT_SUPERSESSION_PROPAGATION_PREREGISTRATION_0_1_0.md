# Claim Ledger Current Supersession Propagation — Preregistration

**Version:** 0.1.0  
**Operation:** bounded current-state provenance reconciliation  
**Canonical repository:** `etblink/Foundational-Convergence-Program`  
**Canonical base commit:** `43e530c083b0f61c37faaa717e0b3e655b85781c`  
**Canonical base tree:** `3431aa12b625376d42473efabd1103b5401a55c8`  
**Old Claim Ledger blob:** `b070a3fb3f33a1d166d9c2820c5d8e5084af351b`  
**Old durable row count:** `62`

## Frozen purpose

This operation reconciles the durable Claim Ledger with already-canonical scientific results after FCP-21. It performs no new scientific analysis, no new source intake, no framework creation, no new pairwise comparison, no governance revision, no framework scoring, and no FCP-25 selection.

## Existing-row immutability rule

All 62 existing claim rows are frozen in order and content. No existing row may be deleted or reordered. No existing field may change except `status: ACCEPTED -> SUPERSEDED` when a later canonical result genuinely replaces the whole current proposition. Historical scope remains preserved.

## Existing row manifest

```text
FCP1-NULL-001
FCP1-NULL-002
FCP1-NULL-003
FCP1-NULL-004
FCP1-NULL-005
FCP1-NULL-006
FCP1-NULL-007
FCP1-NULL-008
FCP1-NULL-009
FCP1-NULL-010
FCP3-NFC-001
FCP3-CROSS-001
FCP3-CROSS-002
FCP3-CROSS-003
FCP3-CROSS-004
FCP3-CROSS-005
FCP3-CROSS-006
FCP3-CROSS-007
FCP3-CROSS-008
FCP3-CROSS-009
FCP5-AQFT-001
FCP5-AQFT-002
FCP5-AQFT-003
FCP5-AQFT-004
FCP5-AQFT-005
FCP5-AQFT-006
FCP5-AQFT-007
FCP6-CROSS-001
FCP7-GPTOPT-001
FCP7-GPTOPT-002
FCP8-GPTOPT-001
FCP8-GPTOPT-002
FCP9-CST-001
FCP9-CST-002
FCP9-CST-003
FCP10-CST-001
FCP11-CSTNULL-001
FCP11-CSTNULL-002
FCP12-CROSS-001
FCP12-CROSS-002
FCP13-CQMNULL-001
FCP13-CQMNULL-002
FCP14-CQMGPT-001
FCP14-CQMGPT-002
FCP15-LOOP-001
FCP15-LOOP-002
FCP15-LOOP-003
FCP16-LOOPNULL-001
FCP16-LOOPNULL-002
FCP17-NFCLOOP-001
FCP17-NFCLOOP-002
FCP18-META-001
FCP18-META-002
FCP18-META-003
FCP18-META-004
FCP19-AS-001
FCP19-AS-002
FCP19-AS-003
FCP20-ASNULL-001
FCP20-ASNULL-002
FCP21-NFCAS-001
FCP21-NFCAS-002
```

## Supersession taxonomy

Every affected historical row must be classified as exactly one of:

```text
S0_KEEP_CURRENT_ACCEPTED
S1_HISTORICAL_SCOPE_ACCEPTED__CURRENT_SUCCESSOR_ADDED
S2_PARTIAL_CURRENT_SUBCLAIM_SUPERSESSION__OLD_ROW_REMAINS_ACCEPTED
S3_WHOLE_CURRENT_CLAIM_SUPERSEDED__OLD_ROW_STATUS_TO_SUPERSEDED
S4_CORRECTED_CURRENT_INTERPRETATION__OLD_HISTORICAL_ROW_SUPERSEDED
S5_NO_LEDGER_ACTION_REQUIRED
```

Later work alone never implies whole-row supersession. Partial current supersession preserves unaffected historical/current content.

## Post-FCP-21 operation inventory to audit

```text
TRUTH_SEEKING_PURPOSE_CLARIFICATION
FCP_GROK_W1_W18_INDEPENDENT_ADJUDICATION
EQUAL_STANDARD_E2_E3_REANALYSIS
METHOD_0_2_0_ACTIVATION
AUDIT_EVIDENCE_CANONICALIZATION_AND_NFC_PROVENANCE_SYNCHRONIZATION
TARGETED_SOURCE_STRENGTHENING
FCP22_NFC_AQFT_PROSPECTIVE_REANALYSIS
FCP23_EMPIRICAL_NO_GO_DISCRIMINATOR_FEASIBILITY
POST_FCP23_SCIENTIFIC_SEQUENCING_DECISION
FCP24_STRING_THEORETIC_HOLOGRAPHIC_INTAKE_AND_TAXONOMY
POST_FCP24_SCIENTIFIC_SEQUENCING_DECISION
POST_FCP24_GROK_INDEPENDENT_ADJUDICATION
FCP24_FINDING007_TARGETED_SOURCE_REAUDIT
FW_STRING_M_NULL_CONTROL
NFC_STRING_M_COMPARISON
POST_NFC_STRING_M_SCIENTIFIC_SEQUENCING_DECISION
NFC_AS_PROSPECTIVE_REANALYSIS
REPOSITORY_HOUSEKEEPING_AND_CURRENT_STATE_SUPERSESSION_AUDIT
NFC_LOOP_PROSPECTIVE_REANALYSIS
PROGRAM_LEVEL_RECURRENCE_RECOMPUTATION
```

The inventory treats the qualified Grok W1–W18 adjudication as a distinct scientific/method audit even though its artifacts entered canonical `main` later through audit-evidence canonicalization. It separately records that canonicalization/NFC-provenance synchronization as a provenance/maintenance operation because it restored public inspectability and registered an archival pointer without changing the Reduced-NFC comparative object or adjudicating NFC scientific validity.

Each operation will be classified as one of `APPEND_DURABLE_CLAIM_ROWS`, `CURRENT_SUPERSESSION_ONLY`, `APPEND_AND_SUPERSEDE`, `NO_DURABLE_CLAIM_CHANGE`, `GOVERNANCE_ONLY`, `MAINTENANCE_ONLY`, or `SEQUENCING_ONLY`.

## Frozen scientific carry-forward requirements

The reconciliation must preserve: FCP-6/FCP-22 partial supersession; equal-standard target-conditioned LOOP and AS E3 corrections without independent convergence; current NFC/AS and NFC/LOOP Method-0.2.0 pairwise results; String/M taxonomy/null/NFC comparison results; FCP-23 bounded no-discriminator result; and the canonical program-level recurrence vector.

## Integrity rules

- Every new `source_ids` entry must already exist in `SOURCE_REGISTER.md`.
- Every new `framework_ids` entry must already exist in `FRAMEWORK_REGISTER.md`.
- Internal canonical artifact provenance belongs in `notes` and the reconciliation map, not as invented source IDs.
- Artifact duplication does not create claim multiplication.
- Claim-row count is not a recurrence denominator or framework score.
- Exactly one existing primary classification is used per new row.
- `SCALAR_FRAMEWORK_SCORE = FORBIDDEN` and `FRAMEWORK_WINNER = NONE`.
- The final appended-row count is not preregistered.

## Write and stop boundary

Commit 1 adds only this file. Commit 2 may change only `CLAIM_LEDGER.md`, `CURRENT_STATE.md`, `meta/CLAIM_LEDGER_CURRENT_SUPERSESSION_MAP_0_1_0.md`, `audits/CLAIM_LEDGER_CURRENT_SUPERSESSION_PROPAGATION_ADJUDICATION_0_1_0.md`, and `handoffs/CLAIM_LEDGER_CURRENT_SUPERSESSION_PROPAGATION_HANDOFF_0_1_0.md`.

No remote publication, integration, branch cleanup, post-recurrence sequencing, new scientific phase, or FCP-25 work is authorized.
