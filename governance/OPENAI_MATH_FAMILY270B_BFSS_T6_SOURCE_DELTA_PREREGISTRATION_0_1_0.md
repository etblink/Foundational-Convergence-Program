# OpenAI Math Family 270-B BFSS T6 Source-Delta Intake — Preregistration 0.1.0

```text
OPERATION = OPENAI_MATH_FAMILY270B_BFSS_T6_SOURCE_DELTA_INTAKE
STATUS = PREREGISTERED
DATE = 2026-10-07
BASELINE_MAIN = a41bc6101b63140ee2687e0cf67a47ab6be77215
BASELINE_TREE = 91b4df5e6219e7a8e1c7d5664c3cc64fbfc9ae29
ACTIVE_BRANCH = research/openai-math-family270b-t6-source-delta
SCIENTIFIC_MUTATION = 0
SOURCE_REGISTER_MUTATION = 0
K1_K10_MUTATION = 0
CLAIM_LEDGER_MUTATION = 0
UPSTREAM_OPENAI_MUTATION = 0
```

## 1. Purpose

This operation is opened under the canonical FCP evidence-triggered hold after a newly released OpenAI mathematics result and a separately produced Grok verification packet created a plausible `T6 — NEW_EXTERNAL_FALSIFICATION_OR_VERIFICATION_RESULT` trigger concerning a source already used by `FW-STRING-M`.

The target is OpenAI Math Family 270-B:

> *Positive eigenvalues of the relative SU(2) BFSS Hamiltonian*.

The operation asks only whether the new theorem and independent verification packet materially change the evidentiary status of the already-bound 1997 BFSS source, any current String/M claim, or any K1–K10 coordinate.

Registration and adjudication are not promotion. No result is accepted merely because OpenAI released it or because Grok reported that the proof checks.

## 2. Canonical trigger rule

The controlling sequencing artifact is:

`governance/POST_RECURRENCE_DELTA_SCIENTIFIC_SEQUENCING_ADJUDICATION_0_1_0.md`.

Its T6 rule allows reopening when an independent critique, proof, replication, experiment, or formal result targets a current FCP load-bearing proposition strongly enough to change its evidence class or force a bounded re-audit.

This preregistration records only:

```text
T6_TRIGGER_CANDIDATE = YES
T6_TRIGGER_ADJUDICATED = NO
T2_MATERIAL_SOURCE_CHANGE = UNADJUDICATED
FW_STRING_M_RECLASSIFICATION = NOT_AUTHORIZED
```

## 3. Exact source identities

### 3.1 New OpenAI source

Repository: `openai/math`

Pinned repository state observed 2026-10-07:

```text
OPENAI_MATH_MAIN = adc7f1241b42e322a6451854ab7e4b4c146bf78a
OPENAI_MATH_TREE = a8e3481a92772ee311cdc9dd6409cd7b927a3fc1
```

Target path:

`preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/positive-eigenvalues-relative-su2-bfss.pdf`

Git blob:

`cca4d207595c1da59d77ed78b3cce276e509674a`

OpenAI catalogue family:

`270 — Threshold and positive-energy bound states of the BFSS matrix model`

Only the positive-energy SU(2) paper is in scope here. The separate zero-energy threshold-state paper is out of scope.

### 3.2 Existing FCP source under possible correction/strengthening

`SRC-FCP24-NONPERT-BFSS-1997`

Banks, Fischler, Shenker, Susskind, *M Theory As A Matrix Model: A Conjecture*, Phys. Rev. D 55 (1997), arXiv `hep-th/9610043v3`.

This source is already used by FCP-24 across String/M nonperturbative carrier/dynamics claims and K1–K8 reporting.

### 3.3 Independent verification packet

Provider: xAI / Grok.

Preserved verbatim on this branch as:

- `audits/external/GROK_OPENAI_MATH_FAMILY270B_INDEPENDENT_VERIFICATION_REPORT_2026_10_07.md`
- `audits/external/GROK_OPENAI_MATH_FAMILY270B_IDENTITY_CHECKS_2026_10_07.py`

SHA-256:

```text
GROK_REPORT_SHA256 = 770286f197acfdb2dea869256abba4887a8f82e6f84ce1adc34eb68260e84c86
GROK_IDENTITY_CHECKS_SHA256 = 52c52178f7a14aa4da1a7299636d3b89f73f8af2e92fd7aed4fbe873b0fde5ab
```

The report disposition is evidence to adjudicate, not an FCP verdict.

## 4. Frozen evidence universe

The independent adjudicator may use only:

1. this preregistration;
2. the exact OpenAI Family 270-B manuscript pinned above;
3. the original BFSS 1997 source identified above;
4. the two preserved Grok artifacts above;
5. canonical FCP files at baseline `a41bc6101b63140ee2687e0cf67a47ab6be77215`:
   - `FCP_CHARTER.md`;
   - `EPISTEMIC_RULES.md`;
   - `FRAMEWORK_REGISTER.md`;
   - `CLAIM_LEDGER.md`;
   - `frameworks/string/FCP24_STRING_SOURCE_INTAKE_0_1_0.md`;
   - `frameworks/string/FCP24_STRING_TAXONOMY_GATE_0_1_0.md`;
   - `frameworks/string/FCP24_STRING_K1_K10_BASELINE_0_1_0.md`;
   - `frameworks/string/FCP24_STRING_OPTIONAL_REALIZATION_AND_PHENOMENOLOGY_LEDGER_0_1_0.md`;
   - `governance/POST_RECURRENCE_DELTA_SCIENTIFIC_SEQUENCING_ADJUDICATION_0_1_0.md`.

No broader literature search is authorized. No other OpenAI Math family may be imported. No search for confirmatory String/M literature is permitted.

If the adjudicator finds that one additional source is logically indispensable to assess a dependency, the adjudicator must stop and identify it rather than silently expanding the corpus.

## 5. Questions frozen before adjudication

The adjudication must answer exactly:

1. Does the OpenAI manuscript, at the frozen source scope, establish the theorem attributed to it by the Grok packet?
2. Does the Grok packet constitute an independent technical verification strong enough to satisfy FCP T6, despite the absence of full Lean formalization?
3. Is the claimed contradiction with BFSS 1997 correctly located, semantically matched, and bounded to N=2 / the relative operator?
4. Does the new result materially change the evidentiary status of `SRC-FCP24-NONPERT-BFSS-1997`, and if so how?
5. Does any current `FW-STRING-M` K1–K10 coordinate change? K3 and K4 require explicit answers.
6. Does `FCP24-STRING-002` require:
   - no change;
   - a scoped evidentiary strengthening;
   - a scoped correction/supersession;
   - or a materially different classification?
7. Is canonical T2 also triggered, or is this T6-only?
8. Does any pairwise relation, Reduced-NFC comparison, recurrence result, empirical status, or framework-level conclusion change? The default is NO unless the frozen evidence logically requires otherwise.
9. Is a later source-register / Claim-Ledger reconciliation justified?
10. Is there any technically useful result that could, after separate authorization, warrant an upstream contribution to `openai/math`?

## 6. Independence rule

The adjudicator must not be the Grok lineage that produced the verification packet.

Preferred reviewer: a fresh OpenAI/Codex or other fresh model/human lineage with no prior substantive Family-270 exposure.

The adjudicator must treat:

```text
GROK_VERIFICATION_REPORT != CANONICAL_FCP_FINDING
OPENAI_PUBLICATION != CORRECTNESS_ENDORSEMENT
NO_LEAN_FORMALIZATION != AUTOMATIC_FAILURE
NO_DETECTED_DEFECT != FRAMEWORK_LEVEL_PROMOTION
```

## 7. Mandatory scope guards

The following inferences are forbidden unless independently established by the frozen evidence:

```text
SU2_BFSS_POSITIVE_EIGENVALUES => BFSS_EQUALS_M_THEORY
SU2_RESULT => ALL_N
FINITE_N_RESULT => LARGE_N_MATRIX_THEORY
L2_EIGENVALUES => DISCRETE_ESSENTIAL_SPECTRUM
MODEL_LEVEL_SPECTRAL_RESULT => COMPLETE_NONPERTURBATIVE_STRING_M_DEFINITION
MODEL_LEVEL_CORRECTION => FRAMEWORK_LEVEL_EMPIRICAL_SELECTION
STRING_M_STRENGTHENING => NFC_SUPPORT
```

The distinction between point spectrum and essential spectrum must be preserved.

## 8. Outcome vocabulary

The adjudicator must select exactly one primary disposition:

```text
T6_CONFIRMED__NO_T2__MODEL_LEVEL_STRENGTHENING_ONLY
T6_CONFIRMED__T2_MATERIAL_SOURCE_CHANGE__BOUNDED_RECLASSIFICATION_REQUIRED
T6_CONFIRMED__SOURCE_CORRECTION_ONLY__NO_CURRENT_CLAIM_CHANGE
T6_NOT_ESTABLISHED__PACKET_INSUFFICIENT
MATERIAL_DEFECT__FOLLOWUP_REQUIRED
AUDIT_INCOMPLETE
```

Then report separately:

```text
GROK_VERIFICATION_ACCEPTANCE = YES | PARTIAL | NO
BFSS_1997_CONTRADICTION = DIRECT | SCOPE_LIMITED | APPARENT_ONLY | NONE | UNRESOLVED
K1_CHANGE = YES | NO
K2_CHANGE = YES | NO
K3_CHANGE = YES | NO
K4_CHANGE = YES | NO
K5_CHANGE = YES | NO
K6_CHANGE = YES | NO
K7_CHANGE = YES | NO
K8_CHANGE = YES | NO
K9_CHANGE = YES | NO
K10_CHANGE = YES | NO
FCP24_STRING_002_EFFECT = NONE | STRENGTHEN | SCOPED_CORRECTION | MATERIAL_RECLASSIFICATION
PAIRWISE_EFFECT = YES | NO
RECURRENCE_EFFECT = YES | NO
EMPIRICAL_EFFECT = YES | NO
UPSTREAM_CONTRIBUTION_CANDIDATE = YES | NO
```

## 9. Stop rules

Stop without promotion if:

- the theorem/source correspondence is materially unresolved;
- the Grok packet depends on an unstated theorem of comparable strength;
- a sign/domain/gauge/compactness/representation-theoretic defect threatens the proof;
- the BFSS-1997 contradiction depends on materially mismatched operator definitions;
- the frozen evidence is insufficient to decide T2.

A stop result is scientifically valid.

## 10. Forbidden repository mutations

This operation does not authorize:

- edits to `CURRENT_STATE.md`, `FRAMEWORK_REGISTER.md`, `SOURCE_REGISTER.md`, or `CLAIM_LEDGER.md`;
- edits to historical FCP-24 artifacts;
- K1–K10 reclassification;
- pairwise or recurrence recomputation;
- empirical escalation;
- FCP-27;
- NFC comparison changes;
- merge to `main`;
- fork, branch, issue, or pull request against `openai/math`.

Any accepted finding must first be frozen by a separate independent adjudication artifact. Any durable provenance reconciliation is a later separately bounded operation.

## 11. Upstream-publication boundary

A future fork or pull request to `openai/math` is scientifically appropriate only if this work produces an upstream-useful artifact such as:

- a reproducible proof/formalization improvement;
- a concrete mathematical correction;
- a source-scoped clarification;
- a verification artifact that materially improves the upstream record.

An FCP-local interpretation is not by itself an upstream contribution.

No upstream external effect is authorized by this preregistration.

## 12. Required next deliverable

The next and only scientific deliverable is an independent adjudication:

`audits/OPENAI_MATH_FAMILY270B_BFSS_T6_SOURCE_DELTA_ADJUDICATION_0_1_0.md`

Until that artifact is independently produced and accepted, canonical FCP remains unchanged.
