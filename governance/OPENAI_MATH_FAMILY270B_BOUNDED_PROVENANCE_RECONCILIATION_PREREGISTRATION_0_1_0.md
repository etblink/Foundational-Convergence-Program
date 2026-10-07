# OpenAI Math Family 270-B — Bounded Provenance Reconciliation Preregistration 0.1.0

```text
DATE = 2026-10-07
OPERATION = OPENAI_MATH_FAMILY270B_BOUNDED_PROVENANCE_RECONCILIATION
STATUS = PREREGISTERED
BASELINE_MAIN = 7e578267575bf4214d57ab8e122f905ca9ec4ef9
BRANCH = maintenance/openai-math-family270b-provenance-reconciliation
OPERATION_CLASS = REPOSITORY_MAINTENANCE
SCIENTIFIC_REOPENING = NO
```

## Purpose

Encode the already accepted Family 270-B T6 result into live FCP provenance without changing the scientific disposition.

Controlling accepted result:

`audits/OPENAI_MATH_FAMILY270B_BFSS_T6_SOURCE_DELTA_ADJUDICATION_0_1_0.md`

Project Lead acceptance:

`audits/OPENAI_MATH_FAMILY270B_BFSS_T6_SOURCE_DELTA_PROJECT_LEAD_ACCEPTANCE_0_1_0.md`

Accepted state:

```text
T6 = CONFIRMED
T2 = NOT_TRIGGERED
FCP24_STRING_002_EFFECT = STRENGTHEN
K1_K10_CHANGE = NONE
PAIRWISE_EFFECT = NO
RECURRENCE_EFFECT = NO
EMPIRICAL_EFFECT = NO
FW_STRING_M_RECLASSIFICATION = NO
```

## Authorized mutations

Only:

1. add one post-FCP-24 source-delta record to `SOURCE_REGISTER.md` for OpenAI Math Family 270-B;
2. add one scoped post-acceptance evidentiary note to `FCP24-STRING-002` in `CLAIM_LEDGER.md`, without changing its historical source list, claim text, classification, assumptions, scope ceiling, or status;
3. preserve the adjudicator's Appendix-A finite-algebra verification candidate as a standalone executable FCP audit artifact;
4. add one reconciliation result artifact documenting exact mutations and invariant checks.

## Historical-window firewall

The new 2026 source is **not** retroactively added to the FCP-24 frozen source corpus.

Therefore the existing `source_ids` field of `FCP24-STRING-002` must remain unchanged. The new source is linked only through a clearly labeled post-acceptance evidence note.

## Forbidden mutations

No edits to:

- historical FCP-24 source-intake, taxonomy, K1–K10, or phenomenology artifacts;
- `FRAMEWORK_REGISTER.md`;
- `CURRENT_STATE.md`;
- K1–K10 values;
- pairwise comparisons;
- recurrence;
- empirical classifications;
- Reduced NFC records;
- FCP-27 sequencing.

No upstream `openai/math` mutation is authorized.

## Acceptance criteria

- exact source identity is preserved;
- the BFSS-1997 contradiction is described as scope-limited, N=2, relative-operator/eigenstate scope;
- the new theorem is described as model-level mathematical strengthening only;
- the framework-wide String/M incompleteness and selection ceiling remains unchanged;
- the standalone finite-algebra script replays successfully;
- no other live scientific record changes.

