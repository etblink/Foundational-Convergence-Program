# Post-FW-CAT Ledger-Reconciliation Scientific Sequencing — Preregistration 0.1.0

## Identity

```text
OPERATION_ID = POST_FW_CAT_LEDGER_RECONCILIATION_SCIENTIFIC_SEQUENCING_ADJUDICATION
OPERATION_CLASS = READ_ONLY_SEQUENCING_ADJUDICATION
CANONICAL_BASE = b547ecb058c008df5edc29f4dd20a755762a0f44
CANONICAL_BASE_TREE = 4862d287f61ed5e74e09e5cd44ecfd504712025b
METHOD = FCP_0_2_0
NEW_SOURCE_SEARCH = NO
SOURCE_REGISTER_MUTATION = NO
FRAMEWORK_REGISTER_MUTATION = NO
CLAIM_LEDGER_MUTATION = NO
PAIRWISE_REANALYSIS = NO
RECURRENCE_RECOMPUTATION = NO
EXTERNAL_AUDITOR_CONTACT = NO
FCP27_SELECTION_DURING_EVIDENCE_GATHERING = NO
ARCHIVAL_FILE_MOVES = NO
```

## Purpose

Select the single highest-information next FCP operation now that FW-CAT Stage 2, the 93-row durable Claim Ledger reconciliation, Biswas metadata repair, and post-reconciliation routing/navigation are canonical and internally coherent.

The operation is read-only. It may select and specify one next operation but may not execute that operation.

## Frozen candidate routes

```text
R1 = NEW_EXTERNAL_ADVERSARIAL_AUDIT
R2 = RECURRENCE_PRECONDITION_DOCKET_EXECUTION
R3 = FCP27_NEW_SUBSTANTIVE_SCIENCE
R4 = REPOSITORY_LIVE_WORKING_SET_ARCHIVE_POLICY
R5 = NO_IMMEDIATE_OPERATION
```

No sixth route may be invented because an available route is inconvenient or scores poorly.

## Current fixed facts

```text
LATEST_NUMBERED_PHASE = FCP-26
LATEST_COMPLETED_SCIENCE = FW_CAT_TAXONOMY_GATE_STAGE2
LATEST_COMPLETED_EXTERNAL_AUDIT = POST_FCP25_GROK_AUDIT
CLAIM_LEDGER_DURABLE_ROW_COUNT = 93
CLAIM_LEDGER_TEMPORAL_CEILING = FW_CAT_TAXONOMY_GATE_STAGE2
BISWAS_METADATA_DOCKET = COMPLETE
OPEN_RECURRENCE_EPOCH_DOCKET_COUNT = 4
FCP26_STAGE2 = NOT_JUSTIFIED_AT_CURRENT_CANONICAL_SCOPE
FCP27_SELECTED = NO
```

The current scientific corpus contains substantial canonical work completed after the last external audit, including broader-holographic taxonomy, FCP-26 Stage 1, FW-CAT Stage 1 and Stage 2, and their durable-ledger propagation.

## Decision criteria

Routes are judged qualitatively. No scalar score or weighted compensation is permitted.

```text
C1_INFORMATION_VALUE
  How much independent error-detection, discrimination, or decision-quality improvement would the route provide now?

C2_DEPENDENCY_CORRECTNESS
  Is the route actually due now, or is it a prerequisite only for some later operation?

C3_NOVELTY_AND_REDUNDANCY
  Would the route examine materially new canonical content rather than repeat an already settled window?

C4_CONTAMINATION_AND_FLEXIBILITY_RISK
  Does the route minimize opportunities for result-directed reinterpretation, framework rescue, or retrospective target selection?

C5_READINESS
  Are the necessary canonical inputs already stable enough to execute the route prospectively?

C6_MINIMUM_SCIENTIFIC_COMMITMENT
  When routes have similar value, prefer the one that adds less unearned substantive structure.

C7_REPOSITORY_LEVERAGE
  Does the route materially improve the program's ability to remain adaptive, auditable, and navigable without substituting housekeeping for science?
```

## Hard ordering rules

1. A fresh external adversarial audit is favored when a materially expanded canonical scientific window exists since the previous audit and the live ledger/routing state is clean enough for an auditor to inspect without avoidable provenance noise.
2. A recurrence-precondition docket remains deferred until a recurrence epoch is independently justified unless the docket itself blocks present interpretation.
3. FCP-27 is not selected merely to continue numbering; it requires a concrete scientific object/question with higher current information value than audit or maintenance alternatives.
4. Repository archival/retirement can be valuable, but it may not outrank higher-value science unless current repository scale or path clutter is already blocking reliable scientific work.
5. `NO_IMMEDIATE_OPERATION` remains admissible if every active route is premature or redundant.

## Route-specific admissibility conditions

### R1 — fresh external adversarial audit

Must be prospective, packet-bound, and independent of desired outcomes. It must expose the current canonical scientific state, not merely ask whether prior FCP conclusions are correct. It should specifically invite detection of:

- source-scope overreach;
- framework-taxonomy mistakes;
- false independence or recurrence credit;
- empirical-level inflation;
- hidden double counting or lineage contamination;
- unjustified zero-target/no-go conclusions;
- stale or contradictory durable-ledger rows;
- current-state / canonical-artifact disagreement;
- missing comparator or alternative explanations;
- methodological defects introduced after the previous audit.

### R2 — recurrence-precondition docket execution

Admissible now only if one of the four Category-B dockets currently distorts live scientific interpretation independently of a future recurrence recomputation.

### R3 — FCP-27

Admissible only if a concrete next scientific primitive-basis question is already source-ready and prospectively better than independent audit.

### R4 — repository live-working-set archive policy

Admissible as a governance operation if active-tree scale or historical clutter now materially impairs navigation, execution safety, or scientific adaptation. Any selected policy must preserve Git provenance, canonical referents, immutable content identity, and navigation resolution before file retirement/movement.

### R5 — no immediate operation

Admissible if no route clears the above burdens.

## Evidence window

Only canonical repository evidence at `b547ecb058c008df5edc29f4dd20a755762a0f44` may be used. No new web/source search is permitted.

Primary evidence includes:

- `CURRENT_STATE.md`
- `CLAIM_LEDGER.md`
- `FRAMEWORK_REGISTER.md`
- `SOURCE_REGISTER.md`
- `meta/FCP_CANONICAL_INDEX.json`
- `meta/FCP_OPERATION_REGISTRY.jsonl`
- `audits/POST_FCP25_GROK_INDEPENDENT_FINDING_ADJUDICATION_0_1_0.md`
- `governance/POST_FCP25_GROK_POST_ADJUDICATION_RECONCILIATION_AND_ROUTING_0_1_0.md`
- broader-holographic Stage-2 artifacts
- FCP-26 Stage-1 artifacts
- FW-CAT Stage-2 artifacts
- post-FW-CAT sequencing decision
- post-FW-CAT ledger/metadata reconciliation audit and handoff
- post-ledger routing artifact.

## Outcome space

```text
A = R1_SELECTED
B = R2_SELECTED
C = R3_SELECTED
D = R4_SELECTED
E = R5_SELECTED
```

## Stop boundary

The adjudication may select one route and define its bounded opening conditions. It may not contact an external auditor, execute a recurrence docket, open FCP-27, move/archive files, or modify any scientific claim.

Truth over momentum; auditability over convenience; adaptation without historical amnesia.
