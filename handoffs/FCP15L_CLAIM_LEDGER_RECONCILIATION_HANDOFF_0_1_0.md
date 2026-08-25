# FCP-15L — Claim-Ledger Reconciliation Handoff

**Version:** 0.1.0  
**Status:** PROVENANCE RECONCILIATION CANDIDATE  
**Branch:** `research/fcp-15-loop-source-intake`  
**Exact FCP-15R base:** `45484a8dd85b3e814d7bf1c0760dbb1f56e335d4`  
**Base tree:** `cdb4cb64a84728a2517ad3a14c69f68f00657323`  
**Pre-backfill `CLAIM_LEDGER.md` blob:** `81329f5557d59c21dab472552f7743b4f058d02c`  
**Frozen comparison-key blob:** `b7ab7f547fa875bd8e63fbb8343f571d7f9fdc00`  
**Frozen equivalence/convergence blob:** `d7ef04becaf26c0f58500aab690e7f0c8adb9998`

## 0. Scope

FCP-15L is provenance reconciliation only. It adds no external scientific source, performs no new framework comparison, assigns no new scientific E1–E5 relation, and does not reopen FCP-6 through FCP-15. Durable rows are reconstructed only from the final qualified repository artifacts already present in the exact FCP-15R tree.

Priority was: final qualified/remediated handoff, then final versioned comparison/baseline/relationship/countermodel artifacts, with live metadata used only for identity/current-state checks.

## 1. Existing-ledger audit

Before FCP-15L the root `CLAIM_LEDGER.md` contains **27** durable rows:

- FCP-1: **10**
- FCP-3: **10**
- FCP-5: **7**

Highest represented scientific phase: **FCP-5**.

Existing claim-ID namespaces:

- `FCP1-NULL-*`
- `FCP3-NFC-*`
- `FCP3-CROSS-*`
- `FCP5-AQFT-*`

FCP-6 through FCP-15 IDs before reconciliation: **0**.

Claim-ID collisions found: **0**.

The historical FCP-1/FCP-3/FCP-5 rows, claim schema, classification vocabulary and final ledger rules are preserved verbatim; FCP-15L inserts the new sections immediately before the existing ledger-wide rules.

## 2. Minimum-durable-claim rule

The central ledger is not a transcript of every handoff. FCP-15L retained only results that define/change a framework, establish a durable positive/negative/taxonomic/empirical-ceiling result, preserve a provenance control needed by later work, or keep a major unresolved burden explicit.

Detailed K-key tables, optional model lists, theorem-by-theorem evidence, and repeated freeze statements remain in their immutable versioned phase artifacts.

## 3. Reconciliation matrix

| Phase | Qualified result reviewed | Existing central row? | New durable row(s) | Omitted/consolidated reason | Provenance deferral |
|---|---|---|---|---|---|
| FCP-6 | No nontrivial Reduced-NFC/AQFT convergence after FCP-5 subtraction; generic/functional survivors and realization/dynamics asymmetries. | No | FCP6-CROSS-001 | FCP-5 AQFT-internal claims already represented; only distinct pairwise result backfilled. | NONE |
| FCP-7 | GPTOPT meta-framework identity/nonselection of QM; composite/dynamics/reconstruction selection burdens. | No | FCP7-GPTOPT-001; FCP7-GPTOPT-002 | G0–G6 details consolidated rather than copied row-for-row. | NONE |
| FCP-8 | Quantum-boundary/composite underdetermination; bounded L2 empirical narrowing without global quantum selection. | No | FCP8-GPTOPT-001; FCP8-GPTOPT-002 | Individual principle/model rows consolidated into boundary and empirical-ceiling claims. | NONE |
| FCP-9 | CST source-bound core and split candidate; continuum/dynamics selection gaps; model-specific empirical ceiling. | No | FCP9-CST-001; FCP9-CST-002; FCP9-CST-003 | Individual estimators/dynamics/phenomenology retained in versioned packet rather than duplicated. | NONE |
| FCP-10 | Historical FW-CAUSAL superseded; FW-CST admitted; adjacent remainder deferred; FCP-9 science unchanged. | No | FCP10-CST-001 | No duplicate FCP-9 physics rows; one taxonomy/provenance row only. | NONE |
| FCP-11 | CST additional commitments vs GR; target-conditioned recovery; dynamics/matter/empirical-selection gaps. | No | FCP11-CSTNULL-001; FCP11-CSTNULL-002 | Exact substructure E2/E3 relations kept as bounded context, not individual central rows. | NONE |
| FCP-12 | No E1–E4 or strong/moderate Reduced-NFC/CST convergence; three unresolved survivor questions. | No | FCP12-CROSS-001; FCP12-CROSS-002 | Key-by-key E5 details remain in versioned relationship ledger. | NONE |
| FCP-13 | CQM lineage-related reformulation/structural refinement with bounded E2 representations; inherited empirical success; optional residue. | No | FCP13-CQMNULL-001; FCP13-CQMNULL-002 | Individual optional packages consolidated into one residue/empirical-ceiling row. | NONE |
| FCP-14 | Real CQM/GPTOPT bridge but E2 not source-qualifiable at current packet; zero independent non-generic convergence; separation preserved. | No | FCP14-CQMGPT-001; FCP14-CQMGPT-002 | Superseded provisional E2 assignments explicitly excluded. | NONE |
| FCP-15 | FW-LOOP Outcome B identity; dynamics/continuum/calibration gaps; no framework-level empirical discriminator. | No | FCP15-LOOP-001; FCP15-LOOP-002; FCP15-LOOP-003 | Named optional models/extensions remain in versioned ledgers, not central base-framework claims. | NONE |

## 4. New claim IDs

- `FCP6-CROSS-001`
- `FCP7-GPTOPT-001`
- `FCP7-GPTOPT-002`
- `FCP8-GPTOPT-001`
- `FCP8-GPTOPT-002`
- `FCP9-CST-001`
- `FCP9-CST-002`
- `FCP9-CST-003`
- `FCP10-CST-001`
- `FCP11-CSTNULL-001`
- `FCP11-CSTNULL-002`
- `FCP12-CROSS-001`
- `FCP12-CROSS-002`
- `FCP13-CQMNULL-001`
- `FCP13-CQMNULL-002`
- `FCP14-CQMGPT-001`
- `FCP14-CQMGPT-002`
- `FCP15-LOOP-001`
- `FCP15-LOOP-002`
- `FCP15-LOOP-003`

## 5. Counts

Historical rows before: **27**.  
Rows added: **20**.  
Total durable rows after: **47**.

Rows added by phase:

- FCP-6: **1**
- FCP-7: **2**
- FCP-8: **2**
- FCP-9: **3**
- FCP-10: **1**
- FCP-11: **2**
- FCP-12: **2**
- FCP-13: **2**
- FCP-14: **2**
- FCP-15: **3**

Primary classifications among added rows:

- `SOURCE_DERIVED`: **4**
- `EMPIRICAL`: **2**
- `NONFORCED`: **7**
- `OPEN`: **7**

Supersession links added: **0**.  
Deferred backfills: **0**.  
Source-ID references across new rows: **117** total references to **57** distinct already-registered source IDs.

## 6. Source/provenance integrity

No external source was searched, retrieved or added for FCP-15L.

Every new `source_ids` value is already present in the frozen `SOURCE_REGISTER.md` at the FCP-15R base. FCP-15L invents no source ID and does not modify the source register.

For phases whose comparison conclusion is an FCP-derived result rather than a proposition stated by one external paper, the row cites the already-registered framework source/binding inputs plus the already-registered FCP-2 governance records that control the inference. FCP-10 additionally uses the registered FCP-9/FCP-10 internal provenance bindings.

`BACKFILL_DEFERRED_INSUFFICIENT_INTERNAL_PROVENANCE`: **0**.

## 7. FCP-14 remediation firewall

FCP-14 is backfilled only from the final qualification-remediated state.

Required preservation:

- `SOURCE_BOUND_BRIDGE = YES`
- `BRIDGE_MEDIATED = YES`
- `E2_NOT_SOURCE_QUALIFIABLE_AT_CURRENT_PACKET = YES`
- E1 = 0
- E2 = 0
- E3 = 0
- E4 = 0
- E5-only = 6
- none = 4
- independent strong convergence = 0
- independent moderate convergence = 0
- `FCP4_FRAMEWORK_SEPARATION = PRESERVED`

`FCP14_PAIRWISE_E2_BACKFILL = 0`.

The superseded provisional E2 labels from the first FCP-14 candidate are not restored.

## 8. FCP-15 firewalls

The FCP-15 rows preserve:

- spin-network/quantum-geometric kinematics != complete dynamics;
- kinematical operator discreteness != directly measured spacetime discreteness;
- graph/combinatorial adjacency != physical spacetime locality;
- a constraint operator != a unique physical history selector;
- spinfoam gluing/fixed-complex amplitudes != continuum GR;
- Regge asymptotics or low-order correlations != complete GR/low-energy recovery;
- refinement != renormalization without a physical scale/coherence map;
- Barbero–Immirzi parameter dependence/fitting != independent prediction;
- loop-inspired phenomenology != framework-level empirical evidence.

No cross-framework E1–E5 result is assigned to `FW-LOOP` in FCP-15L.

## 9. Historical-row and supersession policy

FCP-15L modifies no historical claim wording, classification, source binding, status or supersession field.

New supersession links: **0**.

Later phases are represented as later bounded results rather than silently rewriting earlier rows. No hindsight strengthening or weakening is performed.

## 10. Integrity statement

```text
NEW_SCIENTIFIC_CLAIMS = 0
NEW_EXTERNAL_SOURCES = 0
HISTORICAL_ROWS_MODIFIED = 0
FROZEN_PHASE_ARTIFACTS_MODIFIED = 0
```

The 20 appended rows are durable representations of already-qualified results, not newly performed research.

## 11. Backlog disposition

Every result judged necessary under the minimum-durable-claim rule could be represented from existing registered provenance without inventing a source ID.

```text
CLAIM_LEDGER_RECONCILIATION_REQUIRED = 0
```

No FCP-15R claim row is created because FCP-15R changed live metadata only and introduced no science.

## 12. Qualification contract

Qualification must confirm:

1. exact parent `45484a8dd85b3e814d7bf1c0760dbb1f56e335d4`;
2. exactly two changed paths: `CLAIM_LEDGER.md` and this handoff;
3. the prior ledger content through FCP-5 and the ledger-wide rules remain verbatim;
4. 27 historical rows + 20 backfilled rows = 47 total;
5. all 20 new IDs are unique;
6. all 57 distinct cited source IDs already exist in `SOURCE_REGISTER.md`;
7. no source-register mutation and no new external source;
8. only allowed primary classifications are used;
9. FCP-14 pairwise E2 remains zero and its remediation ceiling is explicit;
10. all FCP-15 kinematics/dynamics/continuum/parameter/empirical firewalls remain intact;
11. every non-ledger scientific/live-metadata artifact remains byte-unchanged by exact two-file diff scope;
12. canonical `main` remains exact FCP-13 and no merge occurs.

> **Preserve results, not theories.**