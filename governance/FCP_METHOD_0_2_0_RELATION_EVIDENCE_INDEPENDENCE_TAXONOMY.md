# FCP Method 0.2.0 — Relation, Evidence, Independence and Viability Taxonomy

**Version:** 0.2.0  
**Status:** PROSPECTIVE CANDIDATE

## 1. Relation layer

Relation type answers only: **what relation has actually been established?**

### E1 — `E1_EXACT_STRUCTURAL`

Explicit isomorphism/equivalence preserving all material structure at declared scope.

### E2 — `E2_REPRESENTATION`

Explicit typed map/functor/representation/embedding preserving material structure at declared scope.

Prospective provenance rule:
- an already-bound source may be re-inspected;
- failure to transcribe every mapping datum into a later packet is not scientific absence;
- source support still must actually establish the map.

### E3 — `E3_CONTROLLED_RECOVERY`

Controlled asymptotic/continuum/low-energy/classical/recovery relation with:
- control parameter/regime;
- source and target;
- convergence/asymptotic/error notion;
- validity domain;
- preserved/failed structure;
- calibration status.

Subtypes:
- `E3-S_SUBSTRUCTURE_CONTROLLED_LIMIT`
- `E3-M_MODEL_LEVEL_CONTROLLED_LIMIT`
- `E3-F_FRAMEWORK_LEVEL_CONTROLLED_RECOVERY`
- `E3-P_FULL_PHYSICAL_REALIZATION`

Calibration must be recorded. Detector calibration is not a prerequisite for E3-S/E3-M mathematical validity.

### E4 — `E4_OPERATIONAL_PREDICTIVE_RELATION`

Declared observable predictions are operationally equivalent or materially related over a specified test domain/tolerance.

E4 is **not** identical to empirical selection. The empirical-status axis records whether the relation is inherited, merely compatible, constrained, or discriminating.

### E5 — `E5_FUNCTIONAL_RELATION`

A genuine source-qualified functional/organizational role relation when E1–E4 are not established.

E5 is no longer a catch-all for:
- generic mathematics;
- historical lineage;
- source insufficiency;
- target-conditioning;
- absence of relation.

Those are recorded separately.

Other allowed relation states:
- `NONE_ESTABLISHED`
- `UNRESOLVED_UNDER_FROZEN_CORPUS`

## 2. Independence layer

Independence answers: **how independently was the related structure motivated or derived?**

- `IND-I_INDEPENDENT` — no material direct import/target conditioning/shared derivation that explains the match.
- `IND-Q_QUALIFIED` — partial independence with shared ancestry, later cross-fertilization or common empirical constraints that do not fully determine the relation.
- `IND-N_LINEAGE` — same historical/formal lineage materially explains the match.
- `IND-N_TARGET_CONDITIONED` — one side explicitly reconstructs or is tuned toward the compared target.
- `IND-N_DIRECT_IMPORT` — compared structure is directly imported.
- `IND-N_SHARED_SOURCE` — common source theory/theorem makes the match nonindependent.
- `IND-U_UNRESOLVED`.

A common experimental target does not automatically destroy independence. Record whether the shared empirical input **fixes the allegedly convergent quantity**.

Later cross-fertilization does not retroactively erase independently established earlier motivations; the timeline must be recorded.

## 3. Viability layer

Viability answers: **does the evidence show that the framework can realize/recover physically important structure?**

- `V0_NONE_ESTABLISHED`
- `V1_COMPATIBILITY`
- `V2_POSITIVE_RECOVERY_EVIDENCE`
- `V3_ROBUST_REALIZATION_EVIDENCE`
- `V4_EMPIRICALLY_SUPPORTED_REALIZATION`
- `V-_STRESSED` — material theoretical/empirical pressure against the realization.
- `V-U_UNRESOLVED`

Target-conditioned E3 may legitimately yield `V2` or `V3` while independence remains `IND-N_TARGET_CONDITIONED`.

## 4. Genericity / provenance tags

These tags are nonexclusive.

- `MATHEMATICALLY_GENERIC` — available in substantially weaker mathematics/frameworks.
- `PHYSICALLY_COMMON` — appears in multiple successful physical theories but may still be constraining.
- `HISTORICALLY_INHERITED` — inherited through direct scientific lineage.
- `TARGET_IMPORTED` — supplied by the intended recovery target.
- `FRAMEWORK_SPECIFIC_BUT_NONDISCRIMINATING` — specific content without current competitor discrimination.
- `EVIDENTIALLY_UNINFORMATIVE` — at declared question/scope, carries no differential evidentiary weight.
- `EMPIRICALLY_INHERITED` — observational success belongs to the realized/ancestor theory rather than independently to the framework.

Consequences are not automatic:
- `MATHEMATICALLY_GENERIC` usually reduces independent foundational significance but may remain scientifically useful.
- `PHYSICALLY_COMMON` may be important even when not discriminating.
- `HISTORICALLY_INHERITED` blocks independent-rediscovery credit but not representation/viability credit.
- `TARGET_IMPORTED` blocks independent-discovery credit for the recovered target but not controlled-recovery viability.
- `FRAMEWORK_SPECIFIC_BUT_NONDISCRIMINATING` is substantive theory content, not evidence of selection.
- `EVIDENTIALLY_UNINFORMATIVE` is question-relative and must not erase the underlying result.
- `EMPIRICALLY_INHERITED` blocks independent empirical selection credit.

## 5. Physical realization

- `PR0_NONE`
- `PR1_INTERPRETIVE`
- `PR2_MODEL_BRIDGE`
- `PR3_FRAMEWORK_BRIDGE`
- `PR4_OPERATIONALLY_CALIBRATED`

No mathematical relation is promoted to physical equivalence beyond its PR level.

## 6. Calibration

- `CAL_NA`
- `CAL_NOT_ESTABLISHED`
- `CAL_PARTIAL`
- `CAL_PRESERVED`

Calibration is orthogonal to mathematical E1–E3 validity and controls physical/empirical promotion.

## 7. Empirical status

- `EMP0_NONE`
- `EMP1_INHERITED_SUCCESS`
- `EMP2_COMPATIBILITY_WITH_DATA`
- `EMP3_MODEL_OR_PARAMETER_CONSTRAINT`
- `EMP4_DIRECT_FRAMEWORK_DISCRIMINATOR`
- `EMP-NEG_DIRECT_TENSION`
- `EMP-U_UNRESOLVED`

`EMPIRICAL_SELECTION` requires an `EMP4`-level discriminator or a separately justified equivalent. Merely reproducing a successful target normally yields `EMP1` or `EMP2`.

## 8. Source / provenance state

Use a chain plus an orthogonal transcription flag:

- `P0_SOURCE_NOT_IDENTIFIED`
- `P1_SOURCE_EXISTS`
- `P2_SOURCE_BOUND`
- `P3_SOURCE_INSPECTED`
- `P4_CLAIM_EXTRACTED`
- `P5_CLAIM_SOURCE_QUALIFIED`
- `P6_RELATION_SOURCE_QUALIFIED`

Orthogonal:
- `TRANSCRIBED_IN_CURRENT_PACKET = YES/NO`

Therefore:

`SOURCE_BOUND_BUT_NOT_TRANSCRIBED != SOURCE_NOT_BOUND`

and:

`PACKET_EXTRACTION_FAILURE != SCIENTIFIC_ABSENCE`.

Use `UNRESOLVED_UNDER_FROZEN_CORPUS` when the frozen corpus cannot responsibly support either a positive relation or a scientific negative.

## 9. Symmetric overclaim / over-subtraction test

Every material relation candidate must answer both:

### `OVERCLAIM_TEST`
What stronger conclusion is blocked by model choice, scope, genericity, target-conditioning, missing physical bridge, calibration or evidence?

### `OVER_SUBTRACTION_TEST`
What positive source-qualified content would be lost if the relation were reduced to “generic,” “inherited,” “target-conditioned,” “non-independent,” or zero?

A relation may receive zero independent credit and still survive as:
- a valid E2/E3 relation;
- positive viability evidence;
- a framework-specific result;
- a useful physical compatibility result.

## 10. Independence example patterns

### Reformulation
`E2 + IND-N_LINEAGE + V1/V2 + EMP1`

### Target-conditioned controlled recovery
`E3 + IND-N_TARGET_CONDITIONED + V2/V3 + EMP0/EMP1`

### Independently derived structural match
`E1/E2/E3 + IND-I + non-generic tags absent or bounded`

### Same successful empirical target
`E4 + EMP1/EMP2` unless the framework forces a discriminator.

## 11. Anti-collapse rule

Never infer automatically:

```text
RELATION_EXISTS -> INDEPENDENT
INDEPENDENT -> TRUE
VIABILITY -> EMPIRICAL_SELECTION
GENERIC -> UNIMPORTANT
NONINDEPENDENT -> NO_RELATION
TARGET_CONDITIONED -> NO_POSITIVE_EVIDENCE
NO_CURRENT_DISCRIMINATOR -> FRAMEWORK_FALSE
NULL_INCOMPLETE -> FRAMEWORK_TRUE
```
