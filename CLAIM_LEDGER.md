# FCP Claim Ledger

## Current state

**No scientific claims have been entered.** This file currently defines schema and instructions only.

## Claim record schema

Future claims should use the following fields:

| Field | Requirement |
|---|---|
| `claim_id` | stable FCP identifier |
| `title` | short descriptive name |
| `framework_ids` | one or more IDs from `FRAMEWORK_REGISTER.md` |
| `source_ids` | exact supporting source records |
| `claim_text` | precise proposition at declared scope |
| `assumptions` | complete material hypotheses |
| `classification` | exactly one primary allowed classification |
| `canonicity_level` | 1–5 where applicable |
| `weaker_framework_test` | result of Layer 10 |
| `physical_bridge` | explicit bridge or `NONE` |
| `empirical_binding` | explicit evidence/comparator or `NONE` |
| `falsification_condition` | what would defeat or downgrade the claim |
| `countermodels` | references or `NONE` |
| `scope_ceiling` | strongest permitted interpretation |
| `status` | `DRAFT`, `ACCEPTED`, `SUPERSEDED`, or `WITHDRAWN` |
| `supersedes` | prior claim IDs or `NONE` |
| `notes` | optional bounded notes |

## Primary classifications

Only these labels are allowed without amending the governance files:

- `SOURCE_DERIVED`
- `GENERIC_MATHEMATICS`
- `VALID_CONDITIONAL`
- `MODEL_CHOICE`
- `PHYSICAL_BRIDGE`
- `EMPIRICAL`
- `NONFORCED`
- `COUNTERMODELED`
- `OPEN`

## Rules

- One primary classification per claim.
- A claim may not exceed the authority of its sources and bridges.
- Negative and nonforcing results remain preserved when later work supersedes a stronger claim.
- No framework-level score is inferred automatically from individual claim rows.
- No claim may be added during repository initialization.