# FCP-18 — Program Meta-Audit Scope and Method

**Version:** 0.1.0  
**Status:** CLOSED-CORPUS META-AUDIT CANDIDATE  
**Exact parent:** `bf8169b912b98a896ae4ba5e498e7e19a32b0be0`  
**Parent tree:** `506d3d914daafabb766e671316d6640882884949`  
**New external scientific sources:** 0

## 0. Purpose

FCP-18 audits how the already-frozen Foundational Convergence Program behaved through FCP-17. It does not add a framework, change governance, reopen external literature, rescore frameworks, or infer a winner.

The controlling question is:

> **What has the frozen FCP method actually learned about discrimination, recurrence, provenance ceilings, empirical selection, and Reduced-NFC support after repeated application?**

The governing principle remains:

> **Preserve results, not theories.**

## 1. Closed corpus

FCP-18 uses only already-versioned FCP artifacts through the exact FCP-17 parent. No web search, literature search, new external source, empirical-data acquisition, or framework intake occurs.

Frozen governance:

- K1–K10 blob: `b7ab7f547fa875bd8e63fbb8343f571d7f9fdc00`
- E1–E5 blob: `d7ef04becaf26c0f58500aab690e7f0c8adb9998`

Frozen FCP-17 input:

- commit: `bf8169b912b98a896ae4ba5e498e7e19a32b0be0`
- tree: `506d3d914daafabb766e671316d6640882884949`
- handoff blob: `f9be53f3a563c64878fc105799102cb5a04e1ab2`
- claim-ledger blob: `33febe0720857629b7cd1fb16e08297ef894139f`
- durable rows before FCP-18: **51**

## 2. Phase inventory

The primary FCP phase roles through FCP-17 are:

| Phase | Meta-audit role | Included in nine-phase pairwise denominator? |
|---|---|---|
| FCP-1 | `NULL_BASELINE` | no |
| FCP-2 | `GOVERNANCE` | no |
| FCP-3 | `PAIRWISE_COMPARISON` — Reduced NFC vs null | yes |
| FCP-4 | `SOURCE_INTAKE` + `FRAMEWORK_TAXONOMY` — AQFT/GPTOPT/CQM split | no |
| FCP-5 | `PAIRWISE_COMPARISON` — AQFT vs null/QFT | yes |
| FCP-6 | `PAIRWISE_COMPARISON` — Reduced NFC vs AQFT | yes |
| FCP-7 | `SOURCE_INTAKE` / comparative baseline — GPTOPT | no |
| FCP-8 | `EMPIRICAL_BOUNDARY` — GPTOPT post-quantum theory space | no; retained for E4 audit |
| FCP-9 | `SOURCE_INTAKE` + taxonomy candidate — CST | no |
| FCP-10 | `FRAMEWORK_TAXONOMY` — canonical FW-CST | no |
| FCP-11 | `PAIRWISE_COMPARISON` — CST vs null/GR | yes |
| FCP-12 | `PAIRWISE_COMPARISON` — Reduced NFC vs CST | yes |
| FCP-13 | `PAIRWISE_COMPARISON` — CQM vs null/QM | yes |
| FCP-14 | `PAIRWISE_COMPARISON` + `PROVENANCE_REMEDIATION` — CQM vs GPTOPT | yes |
| FCP-15 | `SOURCE_INTAKE` — FW-LOOP | no |
| FCP-15R | `LIVE_METADATA_CONTINUITY` | no |
| FCP-15L | `CLAIM_RECONCILIATION` | no |
| FCP-16 | `PAIRWISE_COMPARISON` — LOOP vs null/GR | yes |
| FCP-16 continuity/integration work | `LIVE_METADATA_CONTINUITY` | no |
| FCP-17 | `PAIRWISE_COMPARISON` — Reduced NFC vs LOOP residue | yes |

Therefore:

`PAIRWISE_PHASE_DENOMINATOR = 9`.

The nine phases are FCP-3, FCP-5, FCP-6, FCP-11, FCP-12, FCP-13, FCP-14, FCP-16, and FCP-17.

`REDUCED_NFC_PAIRWISE_DENOMINATOR = 4` — FCP-3, FCP-6, FCP-12, FCP-17.

FCP-8 is an empirical-boundary adjunct and is not silently counted as a tenth convergence comparison.

## 3. Anti-double-counting rule

The audit unit is never a raw claim row or paper count. Repeated rows, sources, subformulations, and target-recovery calculations are not independent observations merely because they are numerous.

Do not double count:

- AQFT/QFT reformulation lineage;
- CQM/ordinary-QM reformulation lineage;
- classical-GR lineage in CST or LOOP recovery;
- shared quantum targets in CQM/GPTOPT;
- generic quotient/category/graph/process mathematics;
- LOOP-CANON and LOOP-COVAR as separate independent framework families;
- multiple results within one target-conditioned recovery program;
- empirical success inherited from GR/QM/QFT;
- optional phenomenology as base-framework evidence.

An independently recurring foundational structure must survive the frozen independence, genericity, target-conditioning and empirical-inheritance controls.

## 4. Descriptive denominators

FCP-18 uses three explicit denominator types.

### D1 — Pairwise phase incidence

Nine pairwise phases. Used for questions such as whether an E2/E3 provenance condition or empirical-inheritance control materially occurred in a phase.

Phase-incidence flags may be nonexclusive and therefore need not sum to nine.

### D2 — K-key cells

All nine pairwise phases applied K1–K10, giving:

`PAIRWISE_KEY_CELL_DENOMINATOR = 90`.

K-key summaries remain descriptive. They are not weights or scores.

### D3 — Framework-family empirical incidence

Used where one scientific source family is carried through multiple later comparisons. For example CST model-specific phenomenology is one family-level empirical condition, not a new independent observation each time it is inherited by FCP-12.

## 5. E-class meta-codes

For the K1–K10 discrimination matrix:

- `Q2` — at least one explicit bounded E2 subrelation is qualified at that key;
- `Q3` — at least one explicit bounded E3 subrelation is qualified at that key;
- `I4` — empirical equivalence/success exists only through a shared or inherited concrete model and is not independent framework-level E4;
- `E5` — strongest positive pairwise relation is functional/generic E5;
- `NONE` — no positive pairwise relation at the relevant framework scope.

`Q2`, `Q3`, and `I4` do **not** imply independent convergence. FCP-5/FCP-13 demonstrate lineage-qualified E2; FCP-11 demonstrates target-conditioned E2/E3; FCP-5 K9 demonstrates inherited empirical equivalence.

## 6. E2/E3 provenance-status method

FCP-18 preserves the distinction between scientific relation and FCP provenance qualification.

Material phase-level statuses include:

- `QUALIFIED_E2_PRESENT`
- `QUALIFIED_E3_PRESENT`
- `NOT_SOURCE_QUALIFIABLE_AT_CURRENT_PACKET`
- `LINEAGE_OR_REFORMULATION_CONTROL`
- `GENERIC_MAPPING_ONLY`
- `TARGET_CONDITIONED`
- `NO_PAIRWISE_COUNTERPART_OR_DIVERGENCE`
- `NOT_APPLICABLE`

These flags may overlap. For example, an E2 relation may be qualified yet lineage-related; an E3 relation may be qualified yet target-conditioned.

Permanent rule:

> **NOT SOURCE-QUALIFIED != PROVED ABSENT.**

Likewise:

> **A VALID ASYMPTOTIC RESULT MAY FAIL FCP E3 WITHOUT BEING SCIENTIFICALLY INVALID.**

## 7. Reduced-NFC repeated-support burden

FCP-18 asks:

`HAS_REDUCED_NFC_ACCUMULATED_REPEATED_INDEPENDENT_SUPPORT?`

A `YES` requires all of:

1. materially the same Reduced-NFC structure;
2. recurrence in at least two distinct comparator families;
3. independence from common lineage or shared target;
4. survival of generic-mathematics subtraction;
5. a non-generic pairwise relation;
6. strongest relation at least E1/E2/E3 or sufficiently specific E4;
7. adequate frozen provenance.

E5 analogy, repeated open questions, repeated absence of dynamics, or repeated realization deficits do not satisfy the burden.

## 8. Method self-critique rule

Negative outcomes do not count as methodological success merely because they are negative. The audit asks whether the method distinguishes different scientific situations:

- genuine additional structure;
- reformulation/lineage;
- generic mathematics;
- target-conditioned recovery;
- model/extension structure;
- physical-realization asymmetry;
- empirical inheritance;
- unresolved discovery questions.

FCP-14 is treated as an explicit self-correction test. The initial bridge-mediated E2 overclaim was lowered during qualification because the packet lacked the required map. The remediation is evidence about method behavior and does not erase the original qualification failure.

FCP-11, FCP-13, FCP-16 and FCP-17 are additional controls: the rules permit bounded E2/E3 when explicit records exist, separate high E-class from independence, and withhold stronger labels when provenance is incomplete.

## 9. No rescoring

Forbidden:

- framework totals;
- weighted keys;
- E-class point conversion;
- claim-row voting;
- leaderboard or rank order;
- winner;
- undeclared-prior Bayes factors.

Counts in FCP-18 are audit statistics only and always carry their denominator/scope.

## 10. Stop flags

At the candidate stage the audit is required to set, from evidence:

- `GOVERNANCE_REVIEW_CANDIDATE`
- `PRIOR_RESULT_REMEDIATION_CANDIDATE`

A positive flag records a future task only. FCP-18 may not enact remediation or governance revision.
