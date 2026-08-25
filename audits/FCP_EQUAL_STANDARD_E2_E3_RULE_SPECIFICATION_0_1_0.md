# FCP Equal-Standard E2/E3 Rule Specification

**Version:** 0.1.0  
**Status:** FROZEN BEFORE FINAL RESCORING  
**Canonical baseline:** `65a42e350888a64bca564cc7ebb68ca357382e01`  
**Canonical tree:** `624db1211e0c17c56b82bc1215e180135f2b4c1c`  
**Scope:** same-corpus reanalysis only; no source strengthening; no method redesign.

## 0. Governing constraint

> **SAME CORPUS. SAME RELATION. SAME BURDEN. ACCEPT WHATEVER RESULT FOLLOWS.**

The rules below operationalize the already-frozen FCP-2 E2/E3 architecture for this bounded reanalysis. They do not replace or amend `FCP_EQUIVALENCE_AND_CONVERGENCE_RULES_0_1_0.md`.

Historical packet-transcription requirements are treated as provenance implementation choices, not additional scientific predicates, unless the frozen FCP-2 rule itself requires them.

## 1. Equal E2 standard

`E2_FUNCTORIAL_REPRESENTATION` may be assigned at a declared bounded scope if and only if the already-bound corpus supports an **explicit source-defined representation/translation construction** between the source and target structures being compared.

The reanalysis record must identify:

1. the declared source structure/domain;
2. the declared target structure/codomain;
3. the source-defined map, functor, representation, embedding, realization, or equivalent typed construction;
4. the material structure preserved for the exact claim;
5. material structure not established as preserved;
6. faithfulness, fullness, invertibility, or analogous properties **where relevant to the claim**;
7. physical/observable scope and any model/extension restriction;
8. the scope ceiling.

Operational consequences:

- The construction may be reconstructed directly from an original source that was already formally bound before this task.
- Absence of a transcription of the construction inside a historical internal FCP packet does **not**, by itself, defeat E2.
- A source-bound statement that two traditions are related, bridged, share vocabulary, or admit a common encompassing formalism does **not**, by itself, establish an E2 map between the compared structures.
- Concrete/model/extension-specific E2 is allowed and must remain explicitly bounded; it may not be promoted to whole-family equivalence.
- Lineage-related or inherited representation can qualify as E2 while receiving zero independent-convergence credit.
- Generic mathematics alone receives no E2 framework-specific credit.
- Source silence or packet omission is not scientific nonexistence.

Disposition:
- `E2_NONZERO_BOUNDED` when all required positive conditions hold at a declared scope.
- `E2_ZERO` when the already-bound corpus contains no explicit source-defined pairwise representation construction at the declared scope.
- `UNRESOLVED_UNDER_FROZEN_CORPUS` when the already-bound record is materially ambiguous or unavailable.

`E2_EQUAL_STANDARD_FROZEN = YES`

## 2. Equal E3 standard

`E3_CONTROLLED_LIMIT` may be assigned at a declared bounded scope if and only if the already-bound corpus supports a **source-defined controlled limit, asymptotic regime, approximation, continuum regime, low-energy/classical regime, or analogous recovery procedure** connecting a source quantity/structure to a declared target quantity/structure.

The reanalysis record must identify:

1. the control/limit parameter or explicitly controlled regime;
2. the source quantity/structure;
3. the target quantity/structure;
4. the demonstrated convergence, asymptotic, approximation, scaling, or error relation;
5. the hypotheses and validity domain;
6. structures that survive and structures not shown to survive;
7. physical-calibration status as `PRESERVED`, `NOT_ESTABLISHED`, or `NOT_APPLICABLE`;
8. the scope ceiling.

Operational consequences:

- A mathematically controlled asymptotic theorem/expansion may satisfy the convergence/error requirement even when it does not supply detector calibration.
- FCP-2 requires calibration status to be recorded; **lack of preserved calibration does not erase an otherwise valid mathematical E3 relation**. It limits the physical interpretation and blocks any unsupported framework-wide or empirical promotion.
- Qualitative statements such as “becomes GR,” “has a classical regime,” “is semiclassical,” or “flows to the IR” without a source-defined control/recovery relation do not qualify.
- Selected substructure-level E3 is allowed; it may not be promoted to full dynamics, full continuum emergence, full physical realization, or framework equivalence.
- Target-conditioned E3 remains a positive controlled-recovery/viability relation but receives zero independent-discovery credit under the historical independence rule.
- Model/truncation/fixed-building-block E3 may qualify only at that exact model/truncation/building-block scope.
- Source silence or packet omission is not scientific nonexistence.

Disposition:
- `E3_NONZERO_BOUNDED` when all required positive conditions hold at a declared scope.
- `E3_ZERO` when the already-bound corpus lacks a controlled recovery relation satisfying the conditions.
- `UNRESOLVED_UNDER_FROZEN_CORPUS` when the already-bound record is materially ambiguous or unavailable.

`E3_EQUAL_STANDARD_FROZEN = YES`

## 3. Independence and empirical controls remain frozen

This task does not revise the historical independence taxonomy.

Therefore:

- `E2_NONZERO_BOUNDED` does not imply independent convergence.
- `E3_NONZERO_BOUNDED` does not imply independent convergence.
- target-conditioned recovery remains zero independent-discovery credit for this task.
- inherited/reformulation relations remain zero independent-discovery credit.
- no E4 result can be created without already-bound independent empirical evidence satisfying the frozen E4/K10 burden.

## 4. Anti-smuggling freeze

Before scoring:

- `NEW_EXTERNAL_SCIENTIFIC_SOURCE_ADMISSION = 0`
- `NEW_AS_CRITICISM_OR_PHYSICAL_REALIZATION_SOURCE = 0`
- `NEW_AQFT_SPLIT_NUCLEARITY_SOURCE = 0`
- `NEW_LQC_OR_LOOP_X_SOURCE = 0`
- `K1_K10_REVISION = 0`
- `E1_E5_REDESIGN = 0`
- `INDEPENDENCE_TAXONOMY_REVISION = 0`
- `NULL_BASELINE_REVISION = 0`
- `HISTORICAL_SCORE_PRESERVATION = NOT_AN_OBJECTIVE`
- `NFC_PROTECTION = NOT_AN_OBJECTIVE`
- `PRIOR_CONVERGENCE_ZERO_PROTECTION = NOT_AN_OBJECTIVE`

## 5. Freeze declaration

This rule specification was fixed before final framework-by-framework rescoring. Any later artifact in this bounded task must apply it without changing its thresholds in response to observed framework outcomes.
