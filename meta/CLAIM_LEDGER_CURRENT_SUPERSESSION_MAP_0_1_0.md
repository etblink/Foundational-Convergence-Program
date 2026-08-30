# Claim Ledger Current Supersession Map

**Version:** 0.1.0  
**Status:** qualified-candidate reconciliation map  
**Canonical base:** `43e530c083b0f61c37faaa717e0b3e655b85781c`  
**Canonical base tree:** `3431aa12b625376d42473efabd1103b5401a55c8`  
**Old Claim Ledger blob:** `b070a3fb3f33a1d166d9c2820c5d8e5084af351b`

## 1. Baseline and existing-row manifest

```text
OLD_DURABLE_ROW_COUNT = 62
EXISTING_ROW_MANIFEST = PASS
NO_EXISTING_ROW_DELETION = PASS
NO_EXISTING_ROW_REORDERING = PASS
OLD_NONSTATUS_FIELD_IMMUTABILITY = PASS
STATUS_ONLY_OLD_ROW_MUTATION = PASS
ROWS_MARKED_SUPERSEDED = 0
ROWS_RETAINED_ACCEPTED = 62
```

All 62 pre-existing claim IDs are exactly the preregistered manifest. No old row is deleted, reordered, retitled, reclassified, or textually rewritten. No old status changes are required because every affected old row remains true at its frozen historical scope; current successors are appended where later canonical work changes present interpretation.

## 2. Post-FCP-21 canonical operation inventory

| # | Canonical operation | Ledger disposition | Durable rows |
|---:|---|---|---|
| 1 | truth-seeking purpose clarification | `GOVERNANCE_ONLY` | none |
| 2 | Grok W1–W18 independent adjudication | `NO_DURABLE_CLAIM_CHANGE` | none; later canonical operations carry every still-operative scientific correction |
| 3 | equal-standard E2/E3 reanalysis | `APPEND_DURABLE_CLAIM_ROWS` | shared current LOOP/AS successor rows |
| 4 | Method 0.2.0 prospective revision/activation | `GOVERNANCE_ONLY` | none |
| 5 | audit-evidence canonicalization + NFC provenance synchronization | `MAINTENANCE_ONLY` | none; provenance/reproducibility only, Reduced-NFC comparative object unchanged |
| 6 | targeted source strengthening | `APPEND_DURABLE_CLAIM_ROWS` | `FCP-TSS-AQFT-001`, `FCP-TSS-LOOP-001`, `FCP-TSS-AS-001` |
| 7 | FCP-22 NFC/AQFT prospective reanalysis | `APPEND_DURABLE_CLAIM_ROWS` | `FCP22-NFCAQFT-001` |
| 8 | FCP-23 empirical/no-go discriminator feasibility | `APPEND_DURABLE_CLAIM_ROWS` | `FCP23-EMP-001`, `FCP23-EMP-002` |
| 9 | post-FCP-23 scientific sequencing decision | `SEQUENCING_ONLY` | none |
| 10 | FCP-24 String/M-theory/holography intake and taxonomy | `APPEND_DURABLE_CLAIM_ROWS` | `FCP24-STRING-001` through `003` |
| 11 | post-FCP-24 scientific sequencing decision | `SEQUENCING_ONLY` | none |
| 12 | post-FCP-24 Grok independent adjudication | `NO_DURABLE_CLAIM_CHANGE` | none |
| 13 | FCP-24 Finding-007 targeted source re-audit | `NO_DURABLE_CLAIM_CHANGE` | none; re-audit was nonredundant but produced no material FCP-24 science change |
| 14 | `FW-STRING-M` null control | `APPEND_DURABLE_CLAIM_ROWS` | `FCP-STRINGM-NULL-001` |
| 15 | Reduced NFC / `FW-STRING-M` comparison | `APPEND_DURABLE_CLAIM_ROWS` | `FCP-NFCSTRINGM-001` |
| 16 | post-NFC/String-M scientific sequencing decision | `SEQUENCING_ONLY` | none |
| 17 | Reduced NFC / strengthened AS prospective reanalysis | `APPEND_DURABLE_CLAIM_ROWS` | `FCP-NFCAS-CURRENT-001`, `002` |
| 18 | repository housekeeping/current-state supersession audit | `MAINTENANCE_ONLY` | none |
| 19 | Reduced NFC / strengthened LOOP prospective reanalysis | `APPEND_DURABLE_CLAIM_ROWS` | `FCP-NFCLOOP-CURRENT-001`, `002` |
| 20 | program-level recurrence recomputation | `APPEND_DURABLE_CLAIM_ROWS` | `FCP-REC-001` through `009` |

```text
POST_FCP21_CANONICAL_OPERATION_COUNT_REVIEWED = 20
POST_FCP21_OPERATIONS_WITH_NEW_DURABLE_ROWS = 10
POST_FCP21_OPERATIONS_WITH_NO_LEDGER_CHANGE = 10
POST_FCP21_OPERATION_INVENTORY = PASS
```

The Grok W1–W18 adjudication is counted independently from the later archival canonicalization that introduced its qualified artifacts into canonical `main`. Its W3/W8 relation defects are durably represented through the equal-standard successor rows; W6/W9/W10 source-pressure consequences are represented through targeted strengthening/current successor rows; W11/W18 current interpretation is represented by Method-0.2.0/current recurrence rows; W2/W12/W14/W15/W16/W17 are governance, naming, documentation or method corrections rather than missing framework-science claims; and W4 was subsequently resolved as provenance reproducibility without changing the Reduced-NFC comparative object. No unique durable scientific proposition remains unrepresented.

The audit-evidence canonicalization/NFC-provenance synchronization is separately counted as maintenance/provenance because it archived the qualified Grok/equal-standard artifacts and registered a publicly inspectable historical NFC pointer while explicitly changing no historical result, Reduced-NFC comparative object, or NFC scientific validity.

The two source-strengthening/equal-standard operations share the LOOP and AS current-successor rows rather than duplicating the same propositions.

## 3. Old-row supersession classification

| Existing claim | Taxonomy | Current disposition |
|---|---|---|
| `FCP6-CROSS-001` | `S2_PARTIAL_CURRENT_SUBCLAIM_SUPERSESSION__OLD_ROW_REMAINS_ACCEPTED` | FCP-22 changes only the FIS/interface current subclaim; unaffected FCP-6 content remains current |
| `FCP16-LOOPNULL-001` | `S2_PARTIAL_CURRENT_SUBCLAIM_SUPERSESSION__OLD_ROW_REMAINS_ACCEPTED` | historical E3-zero packet ceiling is supplemented by later target-conditioned LOOP E3-S/E3-M |
| `FCP20-ASNULL-001` | `S2_PARTIAL_CURRENT_SUBCLAIM_SUPERSESSION__OLD_ROW_REMAINS_ACCEPTED` | historical E3-zero packet ceiling is supplemented by later target-conditioned AS E3-M |
| `FCP17-NFCLOOP-001` | `S2_PARTIAL_CURRENT_SUBCLAIM_SUPERSESSION__OLD_ROW_REMAINS_ACCEPTED` | current Method-0.2.0 atomic decomposition preserves E1-E4 zero but refines E5/NONE content |
| `FCP17-NFCLOOP-002` | `S2_PARTIAL_CURRENT_SUBCLAIM_SUPERSESSION__OLD_ROW_REMAINS_ACCEPTED` | current strengthened LOOP asymmetry is more specific and source-strengthened |
| `FCP21-NFCAS-001` | `S2_PARTIAL_CURRENT_SUBCLAIM_SUPERSESSION__OLD_ROW_REMAINS_ACCEPTED` | current Method-0.2.0 atomic decomposition preserves E1-E4 zero but refines E5/NONE content |
| `FCP21-NFCAS-002` | `S2_PARTIAL_CURRENT_SUBCLAIM_SUPERSESSION__OLD_ROW_REMAINS_ACCEPTED` | current strengthened AS realization asymmetry is more specific and source-strengthened |
| `FCP18-META-001` | `S1_HISTORICAL_SCOPE_ACCEPTED__CURRENT_SUCCESSOR_ADDED` | historical nine-phase zero-recurrence result remains true; current 13-slot successor is `FCP-REC-006` |
| `FCP18-META-002` | `S1_HISTORICAL_SCOPE_ACCEPTED__CURRENT_SUCCESSOR_ADDED` | historical four-slot NFC result remains true; current six-slot successor is `FCP-REC-007` |
| `FCP18-META-003` | `S1_HISTORICAL_SCOPE_ACCEPTED__CURRENT_SUCCESSOR_ADDED` | historical EMP4 bottleneck remains true; current successor is `FCP-REC-005` |
| `FCP18-META-004` | `S0_KEEP_CURRENT_ACCEPTED` | methodological historical claim remains valid and requires no replacement |

All other old rows are `S0_KEEP_CURRENT_ACCEPTED` or `S5_NO_LEDGER_ACTION_REQUIRED` at this operation's scope.

## 4. Direct and partial supersession maps

```text
DIRECT_SUPERSESSION_MAP = NONE
DIRECT_SUPERSESSION_COUNT = 0
```

No old row is wholly replaced at its declared historical scope, so no old status changes to `SUPERSEDED` are justified.

```text
PARTIAL_CURRENT_SUPERSESSION_MAP =
FCP6-CROSS-001 -> FCP22-NFCAQFT-001
FCP16-LOOPNULL-001 -> FCP-TSS-LOOP-001
FCP20-ASNULL-001 -> FCP-TSS-AS-001
FCP17-NFCLOOP-001 -> FCP-NFCLOOP-CURRENT-001
FCP17-NFCLOOP-002 -> FCP-NFCLOOP-CURRENT-002
FCP21-NFCAS-001 -> FCP-NFCAS-CURRENT-001
FCP21-NFCAS-002 -> FCP-NFCAS-CURRENT-002

PARTIAL_SUPERSESSION_COUNT = 7
```

```text
HISTORICAL_SCOPE_ACCEPTED_MAP =
FCP18-META-001 -> FCP-REC-006
FCP18-META-002 -> FCP-REC-007
FCP18-META-003 -> FCP-REC-005
FCP18-META-004 -> RETAINED_WITHOUT_SUCCESSOR
```

FCP-6/FCP-22 is explicitly claim-sensitive: `CURRENT_NFC_AQFT_SLOT = FCP6_UNAFFECTED_RELATIONS_PLUS_FCP22_DELTA`. Whole-row FCP-6 erasure is forbidden and does not occur.

## 5. New durable row manifest

```text
FCP-TSS-AQFT-001
FCP-TSS-LOOP-001
FCP-TSS-AS-001
FCP22-NFCAQFT-001
FCP23-EMP-001
FCP23-EMP-002
FCP24-STRING-001
FCP24-STRING-002
FCP24-STRING-003
FCP-STRINGM-NULL-001
FCP-NFCSTRINGM-001
FCP-NFCAS-CURRENT-001
FCP-NFCAS-CURRENT-002
FCP-NFCLOOP-CURRENT-001
FCP-NFCLOOP-CURRENT-002
FCP-REC-001
FCP-REC-002
FCP-REC-003
FCP-REC-004
FCP-REC-005
FCP-REC-006
FCP-REC-007
FCP-REC-008
FCP-REC-009
```

```text
ROWS_APPENDED = 24
FINAL_DURABLE_ROW_COUNT = 86
```

## 6. Canonical artifact provenance

The new rows bind only already-canonical science. Principal artifact identities are:

| Operation | Canonical artifact | Blob |
|---|---|---|
| Grok W1–W18 adjudication | `audits/FCP_GROK_W1_W18_ADJUDICATION_0_1_0.md` | `71e5badc3327ef25802a247531b053fd7a254a3a` |
| equal-standard E2/E3 | `audits/FCP_EQUAL_STANDARD_E2_E3_ADJUDICATION_0_1_0.md` | `44eba6d79b06a96c67cfd6dd78cf3a0af6d45df1` |
| audit canonicalization / NFC provenance sync | `governance/FCP_AUDIT_EVIDENCE_CANONICALIZATION_0_1_0.md` | `c3f89e5bb06e25a8d25187a952fb76bb2afa35f6` |
| targeted strengthening | `audits/FCP_TARGETED_SOURCE_STRENGTHENING_ADJUDICATION_0_1_0.md` | `ad527b6c40e258110d4c2ac23e77ebcddc8b529d` |
| FCP-22 | `comparisons/FCP22_NFC_REDUCED_VS_STRENGTHENED_AQFT_METHOD_0_2_0_0_1_0.md` | `bdd99d3fc46b22e24771905e3587ad0e5e5fa23e` |
| FCP-23 | `audits/FCP23_EMPIRICAL_NO_GO_DISCRIMINATOR_FEASIBILITY_ADJUDICATION_0_1_0.md` | `f2a034e55c14e73db34cbfe15566457aea9e5ce2` |
| FCP-24 | `frameworks/string/FCP24_STRING_TAXONOMY_GATE_0_1_0.md` | `205975e97e7126f425374a4c3598acf01ed4c98b` |
| String/M null | `comparisons/FW_STRING_M_VS_NULL_GRQFTSM_METHOD_0_2_0_0_1_0.md` | `7cd7bc3ccaf8f13cc2e756e9cee7816a49695f8e` |
| NFC/String-M | `comparisons/NFC_REDUCED_VS_STRING_M_METHOD_0_2_0_0_1_0.md` | `a3185d58614e28a99c128c4fa4fee44e1e80811d` |
| NFC/AS | `comparisons/NFC_REDUCED_VS_STRENGTHENED_AS_METHOD_0_2_0_0_1_0.md` | `f8a78bed134d36e1cea5cd90de29447f0348cb5a` |
| NFC/LOOP | `comparisons/NFC_REDUCED_VS_STRENGTHENED_LOOP_METHOD_0_2_0_0_1_0.md` | `a379a8dbe42ecb5404bbd5fe2240591f1cb5d6f6` |
| recurrence | `meta/PROGRAM_LEVEL_RECURRENCE_RECOMPUTATION_METHOD_0_2_0_0_1_0.md` | `441d6d10f9bf12c74a1f1dbe90d2b95c5b077be7` |

## 7. Source and framework validation

Every `source_ids` token in the 24 new rows is an exact ID already present in `SOURCE_REGISTER.md`; every `framework_ids` token resolves to the current Framework Register.

```text
NEW_SOURCE_REGISTER_ROWS = 0
UNKNOWN_SOURCE_ID_REFERENCES = 0
SOURCE_ID_INTEGRITY = PASS
NEW_FRAMEWORK_IDS = 0
UNKNOWN_FRAMEWORK_ID_REFERENCES = 0
FRAMEWORK_ID_INTEGRITY = PASS
```

Internal artifacts are referenced only in `notes`/this map by operation, commit/path/blob; they are not invented as source IDs.

## 8. Recurrence propagation map

```text
RECURRENCE_CURRENT_DENOMINATOR_ROW = FCP-REC-001
TARGET_CONDITIONED_RECOVERY_RECURRENCE_ROW = FCP-REC-002
LINEAGE_REFORMULATION_RECURRENCE_ROW = FCP-REC-003
GENERIC_E5_RECURRENCE_ROW_OR_ROWS = FCP-REC-004
EMPIRICALLY_INHERITED_RECURRENCE_ROW = FCP-REC-005
ZERO_R1_R2_ROW = FCP-REC-006
REDUCED_NFC_REPEATED_SUPPORT_ROW = FCP-REC-007
MATERIAL_ASYMMETRY_ROW = FCP-REC-008
RECURRENT_OPEN_BURDEN_ROW = FCP-REC-009
```

The vector remains exactly: 13 recurrence families; R1=0, R2=0, R3=1, R4=1, R5=7, R6=0, R7=1, R8=3, R9=0, R10=0; independent framework-level EMP4 slots=0; multi-family EMP4 recurrence=0; Reduced-NFC supporting recurrence families=0; repeated independent Reduced-NFC support=`NO`.

## 9. Duplicate-claim audit

The 24 appended rows represent distinct durable propositions, not repeated artifact surfaces. Equal-standard and targeted-strengthening results share current successor rows where their scientific propositions overlap. Routing, maintenance, sequencing, Grok custody/adjudication with no material accepted scientific change, and Finding-007's no-material-FCP24-change result produce no artificial claim rows.

```text
ARTIFACT_DUPLICATION != CLAIM_MULTIPLICATION
CLAIM_ROW_COUNT != RECURRENCE_DENOMINATOR
CLAIM_ROW_COUNT != FRAMEWORK_SCORE
DUPLICATE_CURRENT_CLAIM_CONTROL = PASS
SCALAR_FRAMEWORK_SCORE = FORBIDDEN
FRAMEWORK_WINNER = NONE
```

## 10. Post-FCP-21 inventory completeness reconstruction

Independent Project Lead review found that the first candidate's 18-operation manifest omitted the distinct qualified Grok W1–W18 adjudication and the later audit-evidence canonicalization/NFC-provenance synchronization operation. Reinspection of canonical history and the canonicalization record yields 20 macro-operations. Neither omitted operation creates a new durable science row: the Grok adjudication's still-operative scientific consequences are already carried by subsequent equal-standard, Method-0.2.0, targeted-strengthening, current pairwise and recurrence rows, while the provenance synchronization explicitly changed reproducibility only.

```text
POST_FCP21_OPERATION_INVENTORY_RECONSTRUCTION = PASS
GROK_W1_W18_INDEPENDENT_ADJUDICATION_INCLUDED = YES
AUDIT_EVIDENCE_CANONICALIZATION_AND_NFC_PROVENANCE_SYNCHRONIZATION_INCLUDED = YES
GROK_W1_W18_LEDGER_DISPOSITION = NO_DURABLE_CLAIM_CHANGE
NFC_PROVENANCE_SYNCHRONIZATION_LEDGER_DISPOSITION = MAINTENANCE_ONLY
POST_FCP21_CANONICAL_OPERATION_COUNT_REVIEWED = 20
POST_FCP21_OPERATIONS_WITH_NEW_DURABLE_ROWS = 10
POST_FCP21_OPERATIONS_WITH_NO_LEDGER_CHANGE = 10
NEW_DURABLE_ROWS_REQUIRED_BY_INVENTORY_RECONSTRUCTION = 0
FINAL_DURABLE_ROW_COUNT = 86
```

## 11. Bounded `FCP23-EMP-002` remediation qualification

Independent Project Lead review identified one implementation defect in the appended FCP-23 model/parameter-constraint row: an `EMPIRICAL` primary label conflicted with the canonical `EMP0_NONE` status, and the compound proposition's source set omitted required CST obstruction/escape and AS scattering/spectral provenance. The durable proposition itself, the 86-row architecture, supersession map, recurrence vector, and routing remain unchanged; the post-FCP-21 operation inventory is separately reconstructed above.

```text
FCP23_EMP_002_PRIMARY_CLASSIFICATION = VALID_CONDITIONAL
FCP23_EMP_002_EMPIRICAL_STATUS = EMP0_NONE
FCP23_EMP_002_DIRECT_EMPIRICAL_BINDING = NONE
FCP23_EMP_002_SOURCE_SET_COMPLETENESS = PASS
FCP23_EMP_002_SOURCE_ID_COUNT = 12
FCP23_EMP_002_COMPOUND_PROPOSITION_PROVENANCE = PASS
FCP23_EMP_002_CST_PROVENANCE = PASS
FCP23_EMP_002_AS_PROVENANCE = PASS
SOURCE_ID_EXISTS = PASS
SOURCE_SET_ADEQUATELY_SUPPORTS_THE_ROW = PASS
SUPERSESSION_MAP_CHANGED = NO
POST_FCP21_OPERATION_INVENTORY_RECONSTRUCTED = YES
RECURRENCE_VECTOR_CHANGED = NO
FINAL_DURABLE_ROW_COUNT = 86
```

## 11. Post-FCP-25 current-state extension through FW-CAT Stage 2

This extension is an append-only current-supersession inventory. It does not alter the 20-operation post-FCP-21 inventory above or any historical claim-row disposition.

| Canonical operation family after FCP-25 | Ledger disposition | Durable rows |
|---|---|---|
| Post-FCP-25 Grok audit/adjudication/reconciliation | `NO_DISTINCT_NEW_ROW` | none; operative consequences are governance/dockets and later canonical science |
| Broader holographic Stage 1 source intake | `SOURCE_INTAKE_ONLY` | none |
| Broader holographic Stage 2 taxonomy | `NO_FRAMEWORK_INDEXED_NEW_ROW` | none; no `FW-HOLO`, no new framework, no substantive `FW-STRING-M` change |
| Post-holography sequencing/routing/navigation | `SEQUENCING_OR_MAINTENANCE_ONLY` | none |
| FCP-26 Stage 1 delta empirical screen | `APPEND_DURABLE_CLAIM_ROW` | `FCP26-EMP-001` |
| Post-FCP-26 sequencing/publication housekeeping | `SEQUENCING_OR_MAINTENANCE_ONLY` | none |
| FW-CAT Stage 1 source intake | `SOURCE_INTAKE_ONLY` | none |
| FW-CAT Stage 2 taxonomy/K1/empirical ceiling | `APPEND_DURABLE_CLAIM_ROWS` | `FWCAT-001`, `FWCAT-002`, `FWCAT-003` |
| Post-FW-CAT routing/navigation and read-only sequencing | `SEQUENCING_OR_MAINTENANCE_ONLY` | none |

```text
PRE_EXTENSION_DURABLE_ROW_COUNT = 89
ROWS_APPENDED_BY_THIS_EXTENSION = 4
CURRENT_DURABLE_ROW_COUNT = 93
CURRENT_DURABLE_TEMPORAL_CEILING = FW_CAT_TAXONOMY_GATE_STAGE2
DIRECT_SUPERSESSION_MAP_CHANGE = NONE
PARTIAL_SUPERSESSION_MAP_CHANGE = NONE
RECURRENCE_VECTOR_CHANGE = NONE
CONVERGENCE_CREDIT_CHANGE = NONE
```

The four new rows supplement current durable coverage without changing any earlier row's historical scope. Broader-holography results remain fully canonical in their own artifacts despite creating no artificial framework-indexed Claim Ledger row.


## 12. Post-FW-CAT external audit and OBJ-CAT-11 current correction

The canonical external audit and independent adjudication identified one material local science defect in the `OBJ-CAT-11` existing-framework mapping. The separately preregistered bounded re-adjudication corrected only criterion G and the dependent disposition, leaving the historical Stage-2 row intact at its original scope.

```text
PRE_CORRECTION_DURABLE_ROW_COUNT = 93
ROWS_APPENDED_BY_THIS_CORRECTION = 1
CURRENT_DURABLE_ROW_COUNT = 94
CURRENT_DURABLE_TEMPORAL_CEILING = FW_CAT_OBJ_CAT_11_EXISTING_FRAMEWORK_MAPPING_BOUNDED_READJUDICATION

PARTIAL_CURRENT_SUPERSESSION_MAP_EXTENSION =
FWCAT-001 -> FWCAT-004

FWCAT_001_HISTORICAL_STATUS = ACCEPTED_AT_ORIGINAL_STAGE2_SCOPE
FWCAT_001_CURRENT_OBJ_CAT_11_MAPPING = SUPERSEDED_BY_FWCAT_004
FWCAT_002 = UNCHANGED
FWCAT_003 = UNCHANGED_IN_SCIENTIFIC_CONTENT
RECURRENCE_VECTOR_CHANGE = NONE
CONVERGENCE_CREDIT_CHANGE = NONE
```

The correction is partial and present-tense only: umbrella removal, verdict B, K1–K10 noninstantiation, and the quantum-switch implementation result all survive. The current counts are three existing-framework assignment objects, six nonframework remainders, and three deferred remainders, with `OBJ-CAT-11` in the deferred set.
