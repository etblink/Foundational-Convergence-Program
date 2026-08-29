# Post-FW-CAT Stage-2 Scientific Sequencing — Preregistration 0.1.0

## Identity

```text
OPERATION_ID = POST_FW_CAT_STAGE2_SCIENTIFIC_SEQUENCING_ADJUDICATION
OPERATION_CLASS = READ_ONLY_SEQUENCING_ADJUDICATION
CANONICAL_BASE = 709f2b86369fa25bfad9dc32b1b32a576048fba2
METHOD = FCP_0_2_0
NEW_SOURCE_SEARCH = NO
SOURCE_REGISTER_MUTATION = NO
FRAMEWORK_REGISTER_MUTATION = NO
CLAIM_LEDGER_MUTATION = NO
PAIRWISE_REANALYSIS = NO
RECURRENCE_RECOMPUTATION = NO
EXTERNAL_AUDITOR_CONTACT = NO
FCP27_SELECTION_DURING_EVIDENCE_GATHERING = NO
```

## Purpose

Select the single highest-information, dependency-correct next FCP operation after canonical completion of FW-CAT Stage 2. The decision must use only the current canonical repository state and must not create new scientific evidence.

## Frozen candidate routes

```text
R1 = POST_FW_CAT_PROGRAM_LEDGER_AND_METADATA_RECONCILIATION
R2 = RECURRENCE_PRECONDITION_DOCKET_EXECUTION
R3 = NEW_EXTERNAL_ADVERSARIAL_AUDIT
R4 = FCP27_NEW_SUBSTANTIVE_SCIENCE
R5 = NO_IMMEDIATE_OPERATION
```

No sixth route may be invented because one of these routes scores poorly.

## Decision criteria

Routes are adjudicated qualitatively; no scalar score is permitted.

```text
C1_DEPENDENCY_CORRECTNESS
  Does the route repair a prerequisite whose staleness could distort later interpretation?

C2_CONFIRMED_DEFECT_OR_EXPLICIT_DOCKET
  Is the route grounded in an already canonical defect, stale authority, or docket rather than convenience?

C3_INFORMATION_VALUE
  Would completing the route materially improve the reliability or discriminatory power of the next substantive decision?

C4_CONTAMINATION_AND_REANALYSIS_RISK
  Does the route avoid reopening settled science or creating result-directed flexibility?

C5_READINESS
  Are the required inputs already canonical and sufficient to execute the route without speculative source search?

C6_MINIMUM_COMMITMENT
  Among routes with comparable value, prefer the one that makes the fewest new scientific commitments.
```

## Hard ordering rules

1. A confirmed live governance/authority defect that is a prerequisite to reliable downstream interpretation outranks optional new science when it can be repaired without reopening science.
2. A docket explicitly reserved for a future recurrence epoch is not promoted merely because it is old.
3. A new external adversarial audit should not knowingly audit a stale durable ledger if a bounded canonical-only repair can first remove that avoidable noise.
4. FCP-27 may be selected only if a concrete substantive question has higher present information value than the maintenance/audit routes and does not merely continue numbering for momentum.
5. `NO_IMMEDIATE_OPERATION` is admissible if no active route is earned.

## Evidence set

The adjudication may read only canonical repository artifacts, including:

- `CURRENT_STATE.md`
- `CLAIM_LEDGER.md`
- `meta/FCP_CANONICAL_INDEX.json`
- `audits/POST_FCP25_GROK_INDEPENDENT_FINDING_ADJUDICATION_0_1_0.md`
- `governance/POST_FCP25_GROK_POST_ADJUDICATION_RECONCILIATION_AND_ROUTING_0_1_0.md`
- `governance/BROADER_HOLOGRAPHIC_STAGE2_POST_INTEGRATION_ROUTING_0_1_0.md`
- FCP-26 Stage-1 canonical artifacts and routing
- FW-CAT Stage-2 canonical artifacts and routing

## Outcome space

```text
A = R1_SELECTED
B = R2_SELECTED
C = R3_SELECTED
D = R4_SELECTED
E = R5_SELECTED
```

## Stop boundary

The sequencing operation may select and specify one next operation but may not execute it. It may not contact Grok, mutate the Claim Ledger, repair metadata, execute recurrence dockets, open FCP-27, or change any scientific result.

Truth-seeking, provenance discipline, and minimum necessary commitment control the decision.
