# OpenAI Navier–Stokes 2026 External Review and Response Intake — Preregistration 0.1.0

```text
OPERATION = OPENAI_NAVIER_STOKES_2026_EXTERNAL_REVIEW_AND_RESPONSE_INTAKE
STATUS = PREREGISTERED
DATE = 2026-09-10
BASELINE_MAIN = de51ef31b86993034e93be56a7b2cff468ffdb66
BASELINE_TREE = 33694b6b5c5f9b59d752d1a69014b702585e571f
PRIOR_SOURCE_INTAKE = COMPLETE
PRIOR_FORMAL_REPRODUCIBILITY = PASS
PRIOR_HUMAN_CORRESPONDENCE_AUDIT = NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND
PRIOR_LOAD_BEARING_FALSIFICATION_AUDIT = LOAD_BEARING_SPINE_SURVIVED_TARGETED_FALSIFICATION
OPENAI_PINNED_COMMIT = f9e8bc5b38b6e212696e8a30e3e91517af887bbd
OPENAI_PINNED_TREE = a503f07635f200c0f2f9c5361df1fa07f95c4741
PUBLIC_SEARCH_CUTOFF = 2026-09-10
```

## 1. Purpose

This operation asks what materially new information has emerged from independent public scrutiny of OpenAI's 2026 forced Navier–Stokes blowup result after release on 2026-09-08.

The operation is not another internal proof audit. It is an external-evidence intake designed to identify public evidence that could rationally increase or decrease confidence in the claimed theorem or change its official publication/recognition status.

The central question is:

> Has any independent expert, journal/referee process, formal-verification effort, or official institution produced a technically substantive confirmation, critique, defect allegation, erratum, counterexample, or status change that materially bears on the OpenAI theorem?

## 2. Source admissibility hierarchy

Sources will be classified by origin before any substantive conclusion is drawn.

### Class A — direct technical primary sources

Highest evidentiary value:

- a mathematician's own technical note, preprint, public proof check, or detailed written critique;
- a journal, editor, referee, or publisher statement establishing submission/publication/review status;
- a Clay Mathematics Institute statement or official Millennium Prize status page;
- an independently maintained formalization or machine-checking artifact that directly tests the theorem or a disputed lemma;
- an explicit erratum or revision by the authors that changes mathematical content.

### Class B — attributable expert statements

Admissible but weaker than Class A:

- a named expert's technically specific public statement quoted in a reputable source;
- conference/seminar notes with enough detail to identify the mathematical claim under discussion.

A generic statement such as 'interesting', 'promising', 'I have not checked it', or 'looks plausible' is not technical confirmation.

### Class C — secondary reporting

Useful for discovery and provenance only unless it contains attributable expert technical content. Includes news reporting, institutional summaries, and science media.

### Class D — self-authored / same-organization material

OpenAI explanations, interviews, announcements, repository updates, or same-organization formal checks are source material about the claim and its revisions, but do not count as independent external review.

### Class E — informal social/community commentary

Social media, forums, Reddit, anonymous posts, and unsourced claims may be used for discovery but cannot independently establish a mathematical defect, confirmation, consensus, publication status, or official recognition.

## 3. Required response classes

Every materially relevant external item must receive one primary classification:

```text
CONFIRMATORY_TECHNICAL_REVIEW
PARTIAL_TECHNICAL_CONFIRMATION
CRITICAL_BUT_UNRESOLVED
MATERIAL_DEFECT_ALLEGED
MATERIAL_DEFECT_CONFIRMED
ERRATUM_OR_REVISION
INDEPENDENT_FORMAL_VALIDATION
JOURNAL_OR_REFEREE_STATUS_CHANGE
OFFICIAL_CLAY_STATUS_CHANGE
PRIORITY_OR_PROVENANCE_DISPUTE
NO_NEW_TECHNICAL_CONTENT
DISCOVERY_ONLY
```

A source may receive secondary tags, but the primary class must state what evidence it actually contributes.

## 4. Technical defect threshold

A criticism may alter the prior positive FCP audit status only if it identifies a concrete mathematical obligation and supplies enough detail to reproduce the concern.

Minimum defect docket fields:

```text
TARGET_STATEMENT_OR_LEMMA
CLAIMED_FAILURE_MODE
SOURCE_OF_OBJECTION
REPRODUCIBLE_ARGUMENT_OR_COUNTEREXAMPLE
PAPER_LOCATION
LEAN_LOCATION_IF_APPLICABLE
IMPACT_IF_TRUE
CURRENT_REPRODUCTION_STATUS
```

A vague allegation, dislike of the proof strategy, priority dispute, authorship dispute, or absence of peer review does not constitute a mathematical defect.

If a concrete objection targets one of the previously audited A1–A4 nodes or a formalized auxiliary lemma, the operation must preserve the objection verbatim enough for provenance and open a bounded follow-up defect docket rather than silently overturning the earlier audit.

## 5. Confirmation threshold

Independent confirmation is graded conservatively.

```text
FULL_INDEPENDENT_HUMAN_VERIFICATION
```

requires an identified independent expert or group to state that they have checked the proof at a level sufficient to endorse its correctness, preferably with a technical record.

```text
PARTIAL_TECHNICAL_CONFIRMATION
```

may be assigned when an expert checks only a named portion, mechanism, estimate, or formal correspondence.

Media descriptions of experts being impressed, intrigued, optimistic, or unable to find an error are not automatically confirmation.

## 6. Consensus rule

This operation may not infer global mathematical consensus from:

- a small number of positive expert comments;
- media repetition of the same source;
- OpenAI's own confidence;
- Lean kernel acceptance;
- absence of a public counterexample within two days of release;
- social-media sentiment.

`GLOBAL_MATHEMATICAL_CONSENSUS = ESTABLISHED` is unavailable in this operation unless the evidence is extraordinarily strong and broadly representative. The default remains `NOT_ESTABLISHED`.

## 7. Official-status rule

Clay Mathematics Institute status is determined only from Clay's own materials. Journal/referee/publication status is determined only from the relevant journal, publisher, authors' explicit submission record where independently verifiable, or bibliographic publication record.

The theorem's forced nature remains a hard semantic guard:

```text
UNFORCED_3D_NAVIER_STOKES_BLOWUP = NOT_ESTABLISHED
```

unless a separate source actually proves the unforced claim.

## 8. Search window and discovery method

The public search is frozen to information available through 2026-09-10.

Discovery will search broadly for:

- mathematicians named in technical reactions;
- explicit theorem/lemma critiques;
- independent proof checks;
- independent Lean/formalization efforts;
- errata/revisions to the paper or repository after release;
- journal/publication/referee developments;
- Clay status changes;
- technically relevant seminar notes or mathematical discussion;
- provenance/priority disputes only insofar as they affect source attribution, not theorem correctness.

Search results will be deduplicated by underlying source. Ten articles repeating one expert quote count as one evidentiary item.

## 9. Frozen prior-state handling

The following prior results remain standing unless this operation finds qualifying contrary evidence:

```text
OPENAI_NAVIER_STOKES_2026_FORMAL_STATUS = INDEPENDENT_FORMAL_REPRODUCIBILITY_PASS
TARGET_AND_ENDGAME_CORRESPONDENCE = SUPPORTED_BY_TARGETED_HUMAN_AUDIT
LOAD_BEARING_ANALYTIC_SPINE = SURVIVED_TARGETED_INDEPENDENT_FALSIFICATION
FULL_166_PAGE_INDEPENDENT_HUMAN_PROOF_REDERIVATION = NO
GLOBAL_MATHEMATICAL_CONSENSUS = NOT_ESTABLISHED
CLAY_RECOGNITION = NOT_ESTABLISHED
UNFORCED_3D_NAVIER_STOKES_BLOWUP = NOT_ESTABLISHED
```

External criticism cannot retroactively erase prior reproducibility facts. It may instead add a new conflicting finding requiring adjudication.

## 10. FCP isolation

This operation has no authority to:

- alter the active K9 closed corpus;
- alter FW-PROCESS-MATRIX K9;
- add or remove any FCP framework;
- change K1–K10;
- assign E1–E5 convergence credit;
- recompute recurrence;
- assign empirical or physical-canonicity credit;
- infer support for NFC;
- open or sequence FCP-27;
- rewrite CURRENT_STATE.md, FRAMEWORK_REGISTER.md, CLAIM_LEDGER.md, or recurrence artifacts.

Any later navigation or source-register reconciliation must be a separate maintenance operation after the intake result is frozen.

## 11. Execution order

```text
PHASE_0 = VERIFY_CANONICAL_BASELINE_AND_FREEZE_PROTOCOL
PHASE_1 = DISCOVER_PUBLIC_RESPONSES
PHASE_2 = RESOLVE_PRIMARY_SOURCES_AND_DEDUPLICATE
PHASE_3 = TECHNICAL_RESPONSE_ADJUDICATION
PHASE_4 = PUBLICATION_REFEREE_AND_CLAY_STATUS_CHECK
PHASE_5 = CHECK_FOR_AUTHOR_ERRATA_OR_PINNED_ARTIFACT_CHANGES
PHASE_6 = BUILD_EXTERNAL_RESPONSE_LEDGER
PHASE_7 = ASSESS_INFORMATION_GAIN_AND_RESIDUAL_UNCERTAINTY
PHASE_8 = FREEZE_RESULT_AND_HANDOFF
```

## 12. Overall verdict vocabulary

The operation must end with one of:

```text
EXTERNAL_REVIEW_NO_MATERIAL_NEW_TECHNICAL_EVIDENCE
EXTERNAL_REVIEW_PARTIAL_CONFIRMATION_WITHOUT_CONSENSUS
EXTERNAL_REVIEW_MIXED_WITH_OPEN_TECHNICAL_OBJECTIONS
EXTERNAL_REVIEW_MATERIAL_DEFECT_DOCKET_REQUIRED
EXTERNAL_REVIEW_OFFICIAL_STATUS_CHANGED
AUDIT_INCOMPLETE
```

If both confirmation and criticism exist, the verdict must preserve both rather than averaging them into a vague confidence score.

## 13. Stop / escalation rules

Immediately open a bounded defect docket and stop positive-status promotion if a reproducible external objection appears to establish any of:

1. a false load-bearing estimate;
2. an incompatible parameter requirement;
3. a missing same-order nonlinear term;
4. a formal statement materially weaker than the paper theorem;
5. an unjustified infinite-limit or smooth-extension step;
6. a concrete counterexample to an asserted lemma;
7. a proof hole concealed by an unacknowledged axiom/assumption.

Do not stop merely for priority/authorship controversy, peer-review absence, media skepticism, or nontechnical criticism.

## 14. Required deliverables

1. this preregistration;
2. external-response source ledger;
3. technical-response adjudication record;
4. official-status and errata check;
5. final external-review intake result;
6. bounded handoff identifying the highest-value next evidence target.
