I have enough independent reconstruction to issue the audit. Canonical bindings hold; the science is mostly careful; the method is stacked in ways that make the program-level zeros largely predicted rather than discovered.

---

# Independent Adversarial Audit of the Foundational Convergence Program

**Auditor:** Grok  
**Scope:** FCP-1 through FCP-21 plus the prospective truth-orientation clarification  
**Canonical target:** `etblink/Foundational-Convergence-Program`  
**Commit:** `65a42e350888a64bca564cc7ebb68ca357382e01`  
**Tree:** `624db1211e0c17c56b82bc1215e180135f2b4c1c`  
**Parent:** `99a339ec299c7dbc1f1ec3b41139712ed3710dc8`  
**Date of audit:** 2026-08-25  

This is a read-only audit. No repository files were modified. No current FCP conclusion was presumed correct.

---

## A. Executive verdict

**Primary verdict:** `SOUND_WITH_MATERIAL_LIMITATIONS`

FCP through FCP-21 is a scientifically serious comparative-foundations program. It is not cargo-cult documentation. Individual framework readings (AQFT, GPT/OPT, CQM, CST, LQG, Asymptotic Safety, and the GR+QFT+SM baseline) are generally accurate at the cited scope. Negative controls against vocabulary matching, reformulation-as-convergence, target-conditioned “emergence,” and empirical inheritance are real contributions. Independently recomputed recurrence counts match the repository.

It is not, as currently designed, a reliable instrument for discovering what physical reality is like.

The program-level zeros — no independently non-generic multi-framework E1–E4 recurrence, no repeated independent Reduced-NFC support, no independent framework-level E4 — are **correct for the frozen rules and the closed corpus**. They are also **method-dependent and partly tautological**. Reduced NFC was stripped to generic/conditional mathematics, competitor residues were defined as whatever survives generic-math subtraction, and the dual firewall then “discovered” that generic mathematics does not match non-generic residues. That is a good anti-hype filter. It is a poor search procedure for common physical structure.

The “preregistered, framework-neutral” claim is overstated. K1–K10 were frozen 26 minutes after FCP-1, by the same author, after an NFC reduction that had already written the comparison agenda. The keys are usable. They are not blinded.

**Classification of the program-level statement (section 36):**

```text
CORRECT_BUT_SCOPE_LIMITED
METHOD_DEPENDENT
```

Not `INVALID`. Not unqualified `CORRECT`.

---

## B. What FCP is actually testing

FCP’s self-description is: which structures recur independently across viable foundational theories, and which are forced by successful physics.

What it actually tests is narrower:

> After reducing one speculative architecture (NFC) to a generic operational skeleton, and after subtracting from each comparator everything that is generic mathematics, shared lineage, target-conditioned GR/QFT recovery, optional phenomenology, or empirically inherited, does any remaining non-generic structure still match across distinct families at the strength of an explicit isomorphism, functor, controlled limit, or independent empirical discriminator?

That is a legitimate question. It is not the charter question. It is especially not “what is physical reality like?”

The repository is not misleading about its conservatism. It is misleading about neutrality and about what a stack of negative pairwise results can prove. A positive hit under these rules would be scientifically precious. A string of zeros is mostly evidence that the filter is tight.

---

## C. Repository / provenance integrity

### Canonical bindings — PASS

| Binding | Specified | Observed |
|---|---|---|
| Commit | `65a42e350888a64bca564cc7ebb68ca357382e01` | match |
| Tree | `624db1211e0c17c56b82bc1215e180135f2b4c1c` | match |
| Parent | `99a339ec299c7dbc1f1ec3b41139712ed3710dc8` | match |
| Message | `FCP clarify truth-seeking purpose` | match |
| Clarification files | README, Charter, Epistemic Rules only | 3 files, +34/−2 |
| Durable claim rows | 62 through FCP-21 | 62 headings, 62 `ACCEPTED` |
| Canonical branches | `main` only | `main` + `origin/main` |
| K1–K10 blob | `b7ab7f547fa875bd8e63fbb8343f571d7f9fdc00` | frozen from FCP-2 through HEAD |
| E1–E5 blob | `d7ef04becaf26c0f58500aab690e7f0c8adb9998` | frozen from FCP-2 through HEAD |

No tags. No CI. No issues/PRs of scientific record. Single author, 33 commits, 12,320 PDT 2026-08-24 through 13:10 UTC 2026-08-25. About **25,113 lines of markdown in ~25 hours**.

### Provenance findings

**P1. NFC canonical source is not in the public GitHub object graph.**  
`REPOSITORY_INTERNAL_FINDING` + `EXTERNAL_SOURCE_CHALLENGE`  
FCP binds Reduced NFC to `etblink/Nested-Fibrational-Cosmology`, branch `research/foundational-reduction-continuity`, file `research/NFC_FOUNDATIONAL_REDUCTION_CONTINUITY.md`. That branch exists. The continuity file itself states that frozen canonical commit `ed3047c2cbc0abc34d2549dd27754e4d3d05af78` “is not presently in the public GitHub object graph.” Independent check: that commit is absent from the public NFC repo. Current `main` contains essentially README/LICENSE/CITATION after “remove” commits. The NFC books exist as hashes and a Zenodo DOI, not as inspectable Git objects.

**Severity: HIGH.** FCP-3’s “source-bound” comparative object is a same-day diagnostic about a canon the auditor cannot retrieve from GitHub.

**P2. Preregistration is contemporaneous, not blinded.**  
Init (12:21 PDT) already contained the NFC reduction handoff. FCP-1 (12:32), FCP-2 (12:43), FCP-3 (12:59). 26.7 minutes, ~3,000 inserted lines. NFC reduction (12:08 PDT) had already listed the six questions and the comparison dimensions that became K1–K10.

**Severity: HIGH** as a governance claim; **MEDIUM** as science (the keys are still a reasonable checklist).

**P3. Live metadata drift.**  
`HISTORICAL_STATE_DIFFERENCE` vs `LIVE_METADATA_DRIFT`  
README’s “Next scientific task” still describes the FCP-19→FCP-20 recommendation after FCP-21 is integrated. Historical handoffs correctly freeze their own next-task. The live README is stale. FCP-15/16 “remediate live metadata” commits are housekeeping (`NEW_SCIENTIFIC_CLAIMS = 0`), not silent science edits.

**Severity: LOW.**

**P4. Cited 2025–2026 literature is real.**  
Spot-checked: PDG 2026 (Takahashi et al., IJMPA 41, 2630011); LVK GWTC-5 TGR (arXiv:2607.19293, LIGO-P2500781); Yu–Scarani PRA 114, 012202 (2026); Srivastava–Surya arXiv:2603.25503; Bruno–Colafranceschi–Mele–Rovelli arXiv:2603.16999; Eichhorn arXiv:2606.21522; Brunetti–Fredenhagen–Rejzner arXiv:2512.14227; Müller arXiv:2503.01719. These are not fabricated.

**P5. Historical research branches were retired after integration.**  
Consistent with the stated branch-retention rule. Not a defect if exact commits remain reachable from `main`, which they do.

No rewrite of FCP-1–21 science in the purpose-clarification commit. That part of the specification holds.

---

## D. Phase-by-phase findings

### FCP-1 — Null competitor baseline

| Field | Assessment |
|---|---|
| PURPOSE | Source-bind GR+QFT+SM, no deeper ontology |
| SOURCE_BOUNDARY | PDG 2026 + LVK GWTC-5 TGR. Real, high-authority, thin |
| METHOD | Ten-layer protocol; no comparison |
| MAJOR_RESULT | Extraordinarily successful effective package, not a ToE |
| RESULT_SUPPORTED? | Yes, as physics description |
| OVERCLAIM? | Mild (composite unit; EP as `SOURCE_DERIVED`; 168 = TGR subset not full catalog) |
| UNDERCLAIM? | Mild (DM/DE/QG as `OPEN` rather than packaged defects) |
| PROVENANCE_SOUND? | Mostly yes |
| INTERNAL_RULES_FOLLOWED? | Yes |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | Composite-null construction; OPEN-vs-defect asymmetry |
| SEVERITY | MEDIUM methodological / LOW scientific-error |

The null is a legitimate incumbent for “does X improve on established physics?” It is a stacked competitor for “what is a complete foundation?” The kit may lack a joint state space and a joint dynamics; that absence is scored `OPEN`, while a challenger’s corresponding absence is scored as a missing structure.

### FCP-2 — Key freeze

| Field | Assessment |
|---|---|
| PURPOSE | Freeze K1–K10, M1–M3, E1–E5 before competitor exposure |
| SOURCE_BOUNDARY | FCP-1 only; NFC already in the repo |
| METHOD | Null decomposition + governance freeze |
| MAJOR_RESULT | Coordinates frozen; no score |
| RESULT_SUPPORTED? | Null matrix yes; neutrality no |
| OVERCLAIM? | Yes: “no NFC terminology”; blinded freeze |
| UNDERCLAIM? | No |
| PROVENANCE_SOUND? | Weak as blinding; fine as a file freeze |
| INTERNAL_RULES_FOLLOWED? | Mixed (self-check item 2 fails) |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | NFC-conditioned question selection; E4 incommensurate with E1–E3 |
| SEVERITY | HIGH (locks later zeros) |

This is the load-bearing methodological defect. See §I and §J.

### FCP-3 — Reduced NFC vs null

| Field | Assessment |
|---|---|
| PURPOSE | Bind `K_red=(C,T)` + R1–R10; first pairwise comparison |
| SOURCE_BOUNDARY | Noncanonical NFC reduction; canon not imported |
| METHOD | K-pairing + generic-math subtraction |
| MAJOR_RESULT | E1–E4=0; weak/generic 4; functional 3; none 3 |
| RESULT_SUPPORTED? | Yes, given the reduced object and the rules |
| OVERCLAIM? | Mild (“no nontrivial”; “preregistered”) |
| UNDERCLAIM? | Mild on FIS/BLIN as physical hypotheses |
| PROVENANCE_SOUND? | Weak on NFC canon; sound on null |
| INTERNAL_RULES_FOLLOWED? | Yes, tightly |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | Tautological by construction |
| SEVERITY | HIGH design / LOW execution |

R1–R4, R6, R8–R10 as `GENERIC_MATHEMATICS`: correct. R5/R7 as `VALID_CONDITIONAL`: slightly generous; they are factor-map / capacity bounds. The K4/K9/K10 “discoveries” are intake constraints copied into the verdict.

### FCP-4 — Operational/algebraic split

| Field | Assessment |
|---|---|
| PURPOSE | Kill `FW-OAQ`; bind AQFT, GPTOPT, CQM |
| SOURCE_BOUNDARY | 15 external records; 0 independent empirical |
| METHOD | S1–S6 split criterion |
| MAJOR_RESULT | Three IDs; GPT∥OPT lumped; `FW-CAT` deferred |
| RESULT_SUPPORTED? | Yes |
| OVERCLAIM? | No |
| UNDERCLAIM? | Thin AQFT core; CDP 2011 omitted |
| PROVENANCE_SOUND? | Mixed (reviews heavy) |
| INTERNAL_RULES_FOLLOWED? | Yes |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | Specialist could demand GPT/OPT sublabels |
| SEVERITY | LOW–MEDIUM |

The split is scientifically mandatory. Combining AQFT locality, GPT reconstruction, and CQM compositionality would have been the error.

### FCP-5 — AQFT vs null

| Field | Assessment |
|---|---|
| PURPOSE | Reformulation/extension control |
| SOURCE_BOUNDARY | Five FCP-4 AQFT records only |
| METHOD | Lineage rule; empirical inheritance |
| MAJOR_RESULT | Core reformulation + LCQFT/pAQFT/measurement extras; independent strong/moderate = 0 |
| RESULT_SUPPORTED? | Yes as control |
| OVERCLAIM? | Soft E2 vs FCP-2 map requirement |
| UNDERCLAIM? | DHR, Reeh–Schlieder, modular/split/nuclearity excluded |
| PROVENANCE_SOUND? | Consistent and costly |
| INTERNAL_RULES_FOLLOWED? | Mostly; E2 looser than later phases |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | AQFT ≠ mere rewriting |
| SEVERITY | MEDIUM |

Fair on FCP’s question; unfair on “what is AQFT’s non-generic content?” E2 for K1–K6 without an explicit reconstruction functor is looser than FCP-14 later allowed.

### FCP-6 — NFC vs AQFT residue

| Field | Assessment |
|---|---|
| PURPOSE | Dual subtraction |
| SOURCE_BOUNDARY | FCP-5 residue only; split/nuclearity not imported |
| METHOD | Only AQFT-X may support moderate/strong credit |
| MAJOR_RESULT | E1–E4=0 |
| RESULT_SUPPORTED? | Yes given the residue |
| OVERCLAIM? | No |
| UNDERCLAIM? | FIS test stacked by excluding split property |
| PROVENANCE_SOUND? | Internally yes |
| INTERNAL_RULES_FOLLOWED? | Yes; E2 correctly withheld |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | Residue too small to be “AQFT” |
| SEVERITY | LOW on the negative; MEDIUM on FIS stacking |

The E1–E4 negative would almost certainly survive a richer AQFT packet. The FIS “no analogue” finding is partly a window artifact.

### FCP-7 — GPTOPT baseline

| Field | Assessment |
|---|---|
| PURPOSE | G0–G6 decomposition; QM as special case |
| SOURCE_BOUNDARY | FCP-4 GPT/OPT + Mazurek 2021 |
| METHOD | Axiom-pooling prohibition; axiom-removal countermodels |
| MAJOR_RESULT | Base GPTOPT does not select QM |
| RESULT_SUPPORTED? | Yes |
| OVERCLAIM? | No |
| UNDERCLAIM? | CDP 2011 via review |
| PROVENANCE_SOUND? | Good primaries |
| INTERNAL_RULES_FOLLOWED? | Yes |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | “Reasonable axioms explain QM” — FCP’s reply is right |
| SEVERITY | LOW |

Best scientific phase in the operational block. `BASE GPTOPT + OPTIONAL RECONSTRUCTION AXIOMS != BASE GPTOPT` is exactly right.

### FCP-8 — GPTOPT quantum boundary

| Field | Assessment |
|---|---|
| PURPOSE | Post-quantum theory space; principle incompleteness |
| SOURCE_BOUNDARY | PR, Tsirelson, IC, ML, almost-quantum, Yu–Scarani 2026, Ringbauer 2014 |
| METHOD | Separate allowed / excluded / constrained; no principle stacking |
| MAJOR_RESULT | Experiment narrows; does not uniquely select Q or one principle; L2 not L4 |
| RESULT_SUPPORTED? | Yes |
| OVERCLAIM? | No on IC/ML/AQ |
| UNDERCLAIM? | Local orthogonality, exclusivity, Sainz 2018 omitted |
| PROVENANCE_SOUND? | Right founding papers |
| INTERNAL_RULES_FOLLOWED? | E0–E4 ladder collides with frozen FCP-2 E-classes |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | None that reverse the open verdict |
| SEVERITY | LOW science / MEDIUM labels |

IC, Macroscopic Locality, and almost-quantum are described at actual theorem strength. Yu–Scarani 2026 was checked: some 2-2-2 gaps close, some remain; IC ≠ Q.

### FCP-9 — CST source intake

| Field | Assessment |
|---|---|
| PURPOSE | Bind CST proper; open split candidate |
| SOURCE_BOUNDARY | 16 records including KR 1975, BHS 2009, Müller 2025, CSG/QSG, phenomenology |
| METHOD | C0–C6 layers |
| MAJOR_RESULT | Discrete causal-order core; R2/D2/E2 model-specific; Hauptvermutung OPEN/REFINED |
| RESULT_SUPPORTED? | Yes |
| OVERCLAIM? | No |
| UNDERCLAIM? | Mild (typical CSG non-manifoldlikeness) |
| PROVENANCE_SOUND? | Yes |
| INTERNAL_RULES_FOLLOWED? | Yes |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | None material |
| SEVERITY | LOW |

Among the program’s strongest scientific work. Müller 2025 is read at the author’s own scope. Kleitman–Rothschild, BHS Lorentz compatibility, Rideout–Sorkin family, Everpresent-Lambda as model-specific: all accurate.

### FCP-10 — CST taxonomy

| Field | Assessment |
|---|---|
| PURPOSE | Admit `FW-CST`; supersede umbrella; defer remainder |
| SOURCE_BOUNDARY | Zero new sources |
| METHOD | FCP-4 separation rule |
| MAJOR_RESULT | One scientifically coherent competitor |
| RESULT_SUPPORTED? | Yes |
| OVERCLAIM? | No |
| UNDERCLAIM? | No |
| PROVENANCE_SOUND? | Yes |
| INTERNAL_RULES_FOLLOWED? | Yes |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | None |
| SEVERITY | OBSERVATION / LOW |

Refusing CSG-split, QSG-split, and a catch-all `FW-ORDER` was the conservative and correct move.

### FCP-11 — CST vs null/GR

| Field | Assessment |
|---|---|
| PURPOSE | Additional structure vs target-conditioned reconstruction |
| SOURCE_BOUNDARY | FCP-9/10 + null; 0 new sources |
| METHOD | Independence + supplied-target + generic-order tests |
| MAJOR_RESULT | CST not a GR reformulation; independent strong/moderate = 0; bounded E2/E3 subclaims permitted |
| RESULT_SUPPORTED? | Yes as control |
| OVERCLAIM? | Mild (Cnv-M independence tightening) |
| UNDERCLAIM? | Mild (viability weight of BHS and BD action) |
| PROVENANCE_SOUND? | Yes |
| INTERNAL_RULES_FOLLOWED? | Tightened independence beyond a plain Cnv-M reading |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | “Designed to recover GR, so independent rediscovery is impossible” |
| SEVERITY | MEDIUM scoring / LOW science |

The reconstruction/emergence distinction is valid. Sprinkling into a chosen manifold cannot demonstrate dynamical emergence. Recovering GR can still be evidentially relevant as *viability*. FCP-11 records the math and withholds independent credit. That is coherent for the operative question and underweights reconstruction for the truth-seeking question.

### FCP-12 — NFC vs CST

| Field | Assessment |
|---|---|
| PURPOSE | Dual firewall |
| SOURCE_BOUNDARY | FCP-3 object + FCP-11 residue |
| METHOD | Type distinctions; six survivor tests |
| MAJOR_RESULT | E1–E4=0; E5-only=6; PASS_NON_GENERIC=0 |
| RESULT_SUPPORTED? | Yes |
| OVERCLAIM? | No |
| UNDERCLAIM? | Slight FIS-as-CST-discovery |
| PROVENANCE_SOUND? | Yes |
| INTERNAL_RULES_FOLLOWED? | Yes |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | Weak FIS-cousin via Alexandrov intervals/stems |
| SEVERITY | LOW |

Finite description ≠ spacetime discreteness; observational quotient ≠ order isomorphism; interface ≠ causal order. These are genuine type distinctions.

### FCP-13 — CQM vs null/QM

| Field | Assessment |
|---|---|
| PURPOSE | Reformulation vs residue |
| SOURCE_BOUNDARY | Four CQM sources |
| METHOD | Lineage firewall; toy-model uniqueness |
| MAJOR_RESULT | Six bounded E2 representations; independent strong/moderate=0 |
| RESULT_SUPPORTED? | Yes |
| OVERCLAIM? | No |
| UNDERCLAIM? | Mild on protocol-axiom isolation |
| PROVENANCE_SOUND? | Yes |
| INTERNAL_RULES_FOLLOWED? | Yes |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | None material |
| SEVERITY | LOW |

FHilb/CPM/dagger-compact/purification treatment is accurate. Toy models correctly block uniqueness.

### FCP-14 — CQM vs GPTOPT

| Field | Assessment |
|---|---|
| PURPOSE | Dual subtraction; test FCP-4 separation |
| SOURCE_BOUNDARY | 18 bounded sources; 0 new; E2 remediated in-phase |
| METHOD | Generic / quantum-inheritance / bridge / optional subtraction |
| MAJOR_RESULT | E1–E4=0; bridge real; pairwise E2 withheld; separation preserved |
| RESULT_SUPPORTED? | Yes for the ceiling |
| OVERCLAIM? | First candidate’s E2 was mild overclaim; remediated |
| UNDERCLAIM? | GS-2018 CPT flattened to E5 |
| PROVENANCE_SOUND? | Mixed: bound paper treated as unextractable |
| INTERNAL_RULES_FOLLOWED? | E2 rule OK; extraction too rigid |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | CPT is a third framework, not a missing map |
| SEVERITY | MEDIUM |

Gogioso–Scandolo 2018 defines R-probabilistic theories. It does **not** give a pairwise CQM↔GPTOPT functor. No-E2 is the right classification, for a stronger scientific reason than “map not frozen in the packet.” Refusing to extract a paper that is already `SOURCE_BOUND` is provenance theater.

### FCP-15 — LOOP source intake

| Field | Assessment |
|---|---|
| PURPOSE | Bind one LQG family with CANON/COVAR sublabels |
| SOURCE_BOUNDARY | 13 works; 0 direct empirical |
| METHOD | L0–L6; Outcome B |
| MAJOR_RESULT | Mature kinematics; dynamics/continuum/calibration open |
| RESULT_SUPPORTED? | Yes |
| OVERCLAIM? | Mild |
| UNDERCLAIM? | LQC/GFT not even optional-primary; volume operator via review |
| PROVENANCE_SOUND? | Yes within cap |
| INTERNAL_RULES_FOLLOWED? | Yes |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | Close taxonomy call; K10 emptiness partly by construction |
| SEVERITY | MEDIUM |

Kinematical spectra ≠ observed discreteness; Immirzi as calibration burden; EPRL as fixed-graph bridge; BCMR-2026 strong-limit obstruction: all well controlled. Outcome B is acceptable. LQC exclusion from base is consistent; then “no framework-level discriminator” is partly engineered. CST bound Everpresent-Lambda as sources even while classifying them as model-specific. LOOP did not do the analogous thing for LQC.

### FCP-16 — LOOP vs null/GR

| Field | Assessment |
|---|---|
| PURPOSE | Null/GR subtraction |
| SOURCE_BOUNDARY | Closed FCP-15 packet |
| METHOD | S0–S5 ordered subtraction |
| MAJOR_RESULT | Six-item residue; E1–E4=0; E5-only=9 |
| RESULT_SUPPORTED? | Yes as residue; no as E3 ceiling |
| OVERCLAIM? | No |
| UNDERCLAIM? | E3 of Barrett 2010 / BMP 2009 |
| PROVENANCE_SOUND? | Mixed (packet vs papers) |
| INTERNAL_RULES_FOLLOWED? | Harsher than FCP-11 |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | High on E3 |
| SEVERITY | HIGH |

LOOP-R1–R6 are a fair non-generic residue. Withholding even an E3 *subclaim* for large-spin Regge, after granting CST E3 subclaims to Benincasa–Dowker under analogous “declared assumptions / not framework-wide” logic, is the main fairness defect in the QG block.

### FCP-17 — NFC vs LOOP residue

| Field | Assessment |
|---|---|
| PURPOSE | Dual firewall |
| SOURCE_BOUNDARY | FCP-3 object + LOOP-R1–R6 |
| METHOD | Type distinctions; six survivors |
| MAJOR_RESULT | E1–E4=0; PASS_NON_GENERIC=0 |
| RESULT_SUPPORTED? | Yes given the firewall |
| OVERCLAIM? | Rhetorical implication that this is a result about LOOP |
| UNDERCLAIM? | No |
| PROVENANCE_SOUND? | Yes |
| INTERNAL_RULES_FOLLOWED? | Yes, tautologically |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | Dual firewall |
| SEVERITY | HIGH (method) |

Spin network ≠ NFC carrier; observational quotient ≠ diffeomorphism quotient; LOOP-internal EPRL bridge ≠ NFC↔LOOP map. Types are right. The negative is guaranteed by construction.

### FCP-18 — Program meta-audit

Independently recomputed. See §O.

| Field | Assessment |
|---|---|
| PURPOSE | Closed-corpus behavior through FCP-17 |
| SOURCE_BOUNDARY | Zero new sources |
| METHOD | Nine-phase pairwise denominator; 90 key cells |
| MAJOR_RESULT | Independent multi-family E1–E4 recurrence = 0; NFC repeated support = NO; independent E4 = 0; GOVERNANCE_REVIEW = 0 |
| RESULT_SUPPORTED? | Counts yes; governance-optimality no |
| OVERCLAIM? | GOVERNANCE_REVIEW_CANDIDATE=0 overclaims |
| UNDERCLAIM? | Target-conditioned GR recovery as a recurring pattern |
| PROVENANCE_SOUND? | Yes |
| INTERNAL_RULES_FOLLOWED? | Yes |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | Sample too lineage-heavy for a nature-level claim |
| SEVERITY | MEDIUM |

Arithmetic is clean. The self-audit that found no governance defect is the program marking its own homework.

### FCP-19 — AS source intake

| Field | Assessment |
|---|---|
| PURPOSE | Bind one AS framework; evidence ladder |
| SOURCE_BOUNDARY | 18 of 27 reviewed; 0 empirical |
| METHOD | AS-H/RG/TRUNC/ROBUST/MATTER/PHYS/PHEN |
| MAJOR_RESULT | AS-L3 multi-truncation robustness; complete-theory theorem = NO |
| RESULT_SUPPORTED? | Yes for AS-L3 |
| OVERCLAIM? | No |
| UNDERCLAIM? | Donoghue; spectral dimension; trans-Planckian amplitudes |
| PROVENANCE_SOUND? | Yes inside the cap |
| INTERNAL_RULES_FOLLOWED? | Yes |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | High on source selection |
| SEVERITY | MEDIUM–HIGH |

AS-L3 is a fair ceiling. Parametrization dependence (DBOPT 2018) correctly blocks exactifying the critical-surface integer. Bonanno et al. 2020 is bound. Donoghue’s 2020 critique of AS running of \(G,\Lambda\) is neither bound nor listed among excluded candidates. That is not equivalent to “we already have a critical review.”

`ERROR_AT_TIME_OF_FCP_PHASE`: Donoghue 2020 was available.  
Wetterich 1993 as FRG primary is a minor provenance gap (Reuter 1998 is the gravitational application).

### FCP-20 — AS vs null/GR

| Field | Assessment |
|---|---|
| PURPOSE | Null/GR subtraction |
| SOURCE_BOUNDARY | Closed FCP-19 packet |
| METHOD | S0–S5 |
| MAJOR_RESULT | Six-item AS residue; E1–E4=0; E5-only=9 |
| RESULT_SUPPORTED? | Yes as residue; no as E3 ceiling |
| OVERCLAIM? | No |
| UNDERCLAIM? | E3 of UV–IR trajectories |
| PROVENANCE_SOUND? | Mixed, same as FCP-16 |
| INTERNAL_RULES_FOLLOWED? | Same FCP-11 inconsistency |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | High on E3 |
| SEVERITY | HIGH |

AS-R1–R6 are a fair residue. AS is not a GR/QFT reformulation. Pairwise E1/E2/E4 should be 0. E3 could have been a target-conditioned subclaim without independent-convergence credit.

### FCP-21 — NFC vs AS residue

| Field | Assessment |
|---|---|
| PURPOSE | Dual firewall; focused K7 audit |
| SOURCE_BOUNDARY | FCP-3 object + AS-R1–R6 |
| METHOD | Object-type discipline |
| MAJOR_RESULT | E1–E4=0; E5-only=4; NONE=6; PASS_NON_GENERIC=0 |
| RESULT_SUPPORTED? | Yes for type mismatches |
| OVERCLAIM? | “Decisive negative control” |
| UNDERCLAIM? | Weak K7 E5 (“finite controlling data”) refused |
| PROVENANCE_SOUND? | Yes |
| INTERNAL_RULES_FOLLOWED? | Yes, tautologically |
| EXTERNAL_SCIENTIFIC_CHALLENGE? | Dual firewall, not the algebra |
| SEVERITY | HIGH |

Type distinctions:

| Claimed identity | Verdict |
|---|---|
| RG fixed point = finite partition stabilization | **False.** Different objects, different theorems. CM-01/02 hold. |
| UV critical surface = interface capacity | **False.** Predictivity dimension ≠ holographic counting. |
| Relevant direction = novelty bit | **False.** Different vector spaces. |
| RG trajectory = NFC process/viability | **Mostly false as identity.** E5 is the right ceiling; FCP-21 assigned E5 at K3/K4. |
| Physical continuum = categorical colimit | **False as identity.** E5 at K8 is fair. |

These were not discarded too quickly as *identities*. A weaker research hypothesis — both replace an infinite UV specification with finite controlling data plus a completion principle — was slightly over-killed at K7. K1 `NONE` is an artifact: FCP-20 subtracted theory-space as generic carrier, then FCP-21 found no AS carrier to compare with `C`.

### Purpose clarification (commit `65a42e3`)

Prospective only; does not rewrite FCP-1–21. Scientifically inert and governance-open. See §P and finding M12.

---

## E. Scientific correctness findings (ranked)

1. **HIGH — Dual-firewall NFC comparisons are nearly tautological.**  
   `LEVEL_3_METHOD_DEFECT`  
   NFC frozen as generic/conditional math; competitor residue defined as non-generic leftover; then “no match.” Valid as “NFC’s distinctive theorems do not recur.” Invalid as a full architectural-convergence test.

2. **HIGH — E3 closed-packet doctrine is stricter for LOOP/AS than for CST.**  
   `LEVEL_1_IMPLEMENTATION_DEFECT` (inconsistent application) plus `LEVEL_3`  
   FCP-11 awarded E3 subclaims to Benincasa–Dowker. FCP-16/20 withheld E3 from Barrett 2010, BMP 2009, and AS UV–IR trajectories that have control parameter, target, and asymptotic error structure. FCP-18 then treated this as “appropriately discriminating.”

3. **HIGH — NFC canon not publicly retrievable; reduction fairness not independently checkable.**  
   `LEVEL_2_LOCAL_SCIENTIFIC_ERROR` (provenance)  
   If the reduction over-stripped physical NFC commitments, every later NFC comparison inherits the error.

4. **HIGH — Program-level zero-recurrence is scope-limited and should not be read as a theorem about nature.**  
   `LEVEL_3` / `LEVEL_4`  
   Closed corpus through FCP-17 (or 21) is five competitor families plus NFC plus a GR-centered null. Strings/holography, CDT, GFT, tensor networks, and NCG are unaudited.

5. **MEDIUM–HIGH — Donoghue (and spectral-dimension / trans-Planckian amplitude) literature omitted from AS.**  
   `LEVEL_2` + `ERROR_AT_TIME_OF_FCP_PHASE`  
   AS-L3 can stand. The residue’s physical interpretation is less stress-tested than the Euclidean robustness literature FCP did bind.

6. **MEDIUM — Composite null is both comparator and empirical baseline.**  
   `LEVEL_3`  
   Established physics is used as (a) the thing to recover, (b) the thing whose recovery is then subtracted, and (c) the empirical standard. Challengers cannot win K4/K9/K10 without matching the kit, and cannot get independent credit for matching it.

7. **MEDIUM — FCP-5 E2 vs FCP-14 E2 double standard.**  
   `LEVEL_1`  
   Lineage QFT representations received E2 without an explicit functor record; a real CQM/OPT bridge was denied E2 for lack of an extracted map.

8. **MEDIUM — AQFT distinctive theorems amputated by the five-source window.**  
   `LEVEL_2` (under-representation, not mistranslation)  
   DHR, Reeh–Schlieder, modular theory, split/nuclearity. FCP-6 FIS finding is partly downstream.

9. **MEDIUM — LQC exclusion engineers empty LOOP K10.**  
   `LEVEL_3`  
   Keep LQC out of base if you want; bind it as `LOOP-X` the way CST bound Everpresent-Lambda.

10. **LOW — FCP-8 E0–E4 ladder collides with frozen FCP-2 E-classes.** Label hazard, not a false physics result.

11. **LOW — README next-task stale; NFC handoff still says `ADMITTED_NOT_AUDITED`.** Historical-artifact vs live-metadata distinction.

12. **OBSERVATION — Individual theorem readings of named sources are generally accurate.** No result-changing howler of the form “IC characterizes Q,” “AQFT derives spacetime,” “AS-L3 is a complete-theory theorem,” or “area spectrum is observed discreteness.”

---

## F. Methodological findings

### Over-subtraction

The central danger named in the audit charge is real.

FCP systematically subtracts:

- common mathematical machinery that *does* carry physical information once independently constrained (RG, quotients, locality, gluing);
- lineage that encodes previously discovered physical constraints (Ashtekar variables, Wilsonian RG, causal structure);
- target-conditioned GR recovery that is still a nontrivial viability test.

Independence is defined so strictly that any realistic modern QG program, all of which build on shared physics, is structurally disqualified from “independent convergence” with GR. That is coherent as anti-rediscovery accounting. It answers a different question from “are these programs being forced toward the same physics?”

**Where exactly:** FCP-11 Cnv-M tightening; FCP-16/20 E3 withholding; FCP-17/21 dual firewall; FCP-18 subtraction of the CST/LOOP/AS GR-recovery pattern as if it were not a recurring structure.

Do not weaken subtraction merely to produce positives. Do record target-conditioned recovery as a first-class scientific category with its own evidential weight, not only as a credit-blocker.

### Under-subtraction

The reverse failure is less severe. FCP is good at refusing:

- shared vocabulary (fixed, finite, local, global, trajectory, completion);
- generic category theory / colimits;
- quotienting;
- process composition as dynamics;
- empirical inheritance.

Semantic-type mistakes are usually caught. The under-subtraction risk is localized: R5/R7 slightly over-credited as NFC-specific conditionals; FCP-5 E2 over-granted; FIS kept as a CST “discovery question.”

`COMMON`, `GENERIC`, and `UNINFORMATIVE` are conflated. A mathematical fact may be common and still scientifically informative when combined with independently motivated physical constraints. FCP treats common ⇒ uninformative too quickly.

### Generic / non-generic

`GENERIC_MATHEMATICS` is defined relative to a “substantially weaker framework,” which in practice means “occurs somewhere in mathematics.” That is the wrong comparison class for a physics program. The right classes are at least:

- generic in pure mathematics;
- generic across physical theories;
- generic given prior physics;
- common but physically constraining.

“Non-generic” drifts among: mathematically uncommon; framework-specific; physically specific; hard to obtain accidentally; independently motivated; empirically constrained. Conclusions depend on that drift. FCP-18’s zero uses the strictest reading.

---

## G. Bias analysis

Intent is not required. Structural bias is.

| Direction | Assessment |
|---|---|
| TOWARD_NFC | Weak. Keys are NFC-question-shaped; FIS kept alive as a discovery question; NFC is the only framework compared five times. Credit, however, almost never flows to NFC. |
| AGAINST_NFC | Strong structurally. Reduction removed K4/K9/K10 at intake; remaining content classified generic; generic earns zero; dual firewall guarantees NFC-negatives. |
| TOWARD_NULL | Strong. Composite incumbent owns dynamics, calibration, and data; incompleteness scored `OPEN`; recovery of the null is then subtracted as non-independent. |
| AGAINST_NULL | Weak. Generic SM/GR machinery is correctly given zero distinctive credit (`FCP1-NULL-010`). Unification failures are not hidden. |
| TOWARD_ESTABLISHED_PHYSICS | Strong as empirical baseline; not as ontology. FCP does not claim GR+QFT+SM is complete. |
| AGAINST_ESTABLISHED_PHYSICS | No. |
| TOWARD_FORMAL_RIGOR | Strong. Maps, error records, closed packets. |
| AGAINST_PHYSICAL_HEURISTICS | Strong. Viability results and reconstruction theorems are systematically down-weighted. |
| TOWARD_NEGATIVE_RESULTS | Strong. The scoring rule makes positives extremely expensive and negatives cheap. |
| TOWARD_POSITIVE_CONVERGENCE | No evidence of cooking positives. FCP-14’s in-phase E2 downgrade is the opposite. |
| TOWARD_SOURCE_CONSERVATISM | Very strong. Closed packets, zero new sources in comparison phases, “do not reconstruct from general knowledge.” |
| TOWARD_MODEL_SPECULATION | No. Optional phenomenology is firewalled well. |

Net directional bias: **against speculative frameworks receiving positive independent-convergence credit**, with NFC uniquely disadvantaged by being both the question-source and the most aggressively reduced object. This is not a secret NFC-validation machine. It is closer to an NFC-husk vs physics demonstration.

---

## H. Framework / source-selection findings

**Sample for program-level conclusions: insufficient.**

Audited: null, Reduced NFC, AQFT, GPTOPT, CQM, CST, LOOP, AS.  
Admitted-not-audited: `FW-STRING`, `FW-TENSOR`, `FW-CAT`.  
Explicitly excluded from LOOP: CDT, GFT, LQC as base.

**Priority by expected information gain** (do not include merely for completeness):

1. **String/holography (`FW-STRING`)** — largest QG program; AdS/CFT is the most important existing E3-like bridge in the field; omitting it while announcing zero multi-family recurrence is the single most serious sample defect.
2. **CDT** — genuine discrete gravitational dynamics with numerical continuum-phase evidence; different from CST and LOOP.
3. **A holographic/tensor-network packet** — directly tests NFC-like interface/capacity themes without NFC vocabulary.
4. **Donoghue-type AS critique + spectral dimension** — stress-test AS-R3, not a new framework.
5. **LQC as LOOP-X** — so K10 emptiness is argued.
6. **GFT** — adjacent to EPRL; optional extension flag was too aggressively zeroed.

Not recommended as next FCP-22 merely to continue the prior roadmap: another Reduced-NFC pairwise against a new residue. That experiment has been run five times. The result is known.

Source packets are generally `ADEQUATE_BOUNDED_PACKET` for the conservative claims made, `TOO_NARROW_FOR_CLAIM` when later used as if they exhausted the framework (AQFT without DHR/split; LOOP without LQC; AS without Donoghue), and not `MATERIALLY_BIASED_PACKET` except the AS-critique gap.

---

## I. K1–K10 audit

The keys are a serious operational checklist. They are not a complete, framework-neutral spanning set, and they were not frozen blind.

**NFC influence (material):**  
NFC reduction’s recommended comparison list is state/process ontology, observation algebra, gauge/quotient, locality/interface, local-to-global, continuum/coarse-graining, dynamics vs admissibility, realization, empirical discrimination. That is K1–K10. FCP-2’s “defined without NFC-specific terminology” check passes lexicographically and fails historically.

**Missing dimensions that would change interpretation:**

| Missing | Effect on existing conclusions |
|---|---|
| Background independence as a first-class key | Would have discriminated CST/LOOP/AS from strings/NFC more cleanly than smearing across K1/K6/K8 |
| Unification / symmetry | SM gauge-group origin remains a Layer-9 leftover, not a comparison coordinate |
| Parameter economy / naturalness | Null’s actual theoretical defects are under-weighted |
| Predictive novelty (not just K10 discriminator) | Recovery of known numbers can look empirically busy; novelty is then subtracted as target-conditioning |
| Measurement problem / probability rule | Null is interpretation-light by fiat; process frameworks cannot be scored on it |
| Ontology | K1 is carrier, then ontology claims are forbidden |
| Computability / constructive content | Relevant to discrete/process programs; absent |
| Mathematical rigidity / no-go structure | Would have given CST/AS/GPT more positive structure than E5 |

Redundancy: K3/K4 split is valuable (allowed vs selected). K5/K9 overlap. K8 is broad.

K4 and K9 are the most discriminating keys in the 90-cell matrix (independently recomputed). K10 is NONE in 9/9 (and 11/11 through FCP-21). K7 was under-sampled until AS; FCP-21 then used it as a negative control rather than a positive RG-convergence test.

Do not silently change historical scores. Prospectively: add novelty and background-independence as versioned keys, or admit that K1–K10 privilege operational/relational architectures.

---

## J. E1–E5 audit

E1–E3 form a coherent mathematical ladder. E4 is not the same kind of thing. E5 is a parking lot.

- **E1** exact structural: appropriately strict.
- **E2** functorial/representation: conceptually right; the explicit-map burden is right; application oscillates (loose in FCP-5, theatrical in FCP-14, withheld in FCP-16 even for standard textbook maps).
- **E3** controlled limit: the right notion for QG recovery; FCP-2’s error/calibration record is demanding but legitimate; applying it more harshly to LOOP/AS than CST is not.
- **E4** empirical: not commensurate with E1–E3. Strong convergence as “E1 or E2 or E3 or sufficiently specific E4” mixes same-structure with same-numbers. “Sufficiently specific” is undefined. Shared empirical absence is correctly not E4 (FCP-21 CM-14).
- **E5** functional analogy: too broad, then split rhetorically into weak-convergence vs no-credit even though both earn zero framework-specific credit.

Requiring an explicit source-bound E2 map does **not** unfairly downgrade real equivalence when the map is written down (CQM↔FHilb). It does unfairly downgrade when the map exists in a bound paper and is not copied into an FCP markdown file.

E3’s error-control burden is unavailable for many legitimate foundational limits. The right move is E3 *subclaim* with a stated remainder, which FCP-11 did and FCP-16/20 refused.

Strong/moderate criteria are well defined and consistently *reported* as zero. The consistency is partly because independence was read as a hard bar on Cnv-M, which is stricter than the frozen text.

Provenance ceilings at FCP-14/16/20/21: `NOT SOURCE-QUALIFIED != PROVED ABSENT` is stated and then the zeros travel into meta-conclusions as if they were absences. FCP-18 is more careful than the README headlines.

---

## K. Countermodel audit

Countermodels are FCP’s best anti-overclaim mechanism. They generally satisfy their premises. They are often schematic rather than fully constructed, which is acceptable for type-mismatch claims and weaker for dynamical claims.

**They work:**  
FCP-9 C4 (Hauptvermutung, both directions). FCP-7 Hardy continuity-removal and min/max tensors. FCP-8 PR-box and almost-quantum. FCP-15 kinematical spectrum ≠ observation. FCP-19 truncation ≠ complete theory. FCP-21 CM-01–08 on K7 vocabulary. `NULL OPEN PROBLEM != COMPETITOR SOLUTION` applied to CST, LOOP, and AS.

**They do not work as advertised when they launder process ceilings:**  
FCP-16 C16/C17 and FCP-20 CM-14 treat “packet lacks a transcribed E3 record” as if it were mathematical independence. FCP-14 C10 treats “we didn’t extract GS-2018” as a scientific witness.

**Asymmetry:** packets are one-sided against framework overclaim, not against FCP over-subtraction. No countermodel of the form “target-conditioned reconstruction can still be moderate evidence.” That is a meta-bias, not a false witness.

Toy vs physical: KR generic posets, compact categories outside QM, and min/max tensors are the right kind of weaker-framework fact. They refute logical implication, not “one interpretation.” Existence of a countermodel generally does justify the downgrade *of the strong claim they target*. It does not justify assigning NONE rather than E5, or independent-convergence zero rather than Cnv-M.

---

## L. Empirical-strategy audit

FCP is too structurally focused for its stated ultimate purpose.

- Independent framework-level E4 = 0/9 (0/11 through FCP-21). That is correctly identified as the most universal bottleneck.
- There is no route from structural recurrence to a risky prediction. Recurrence, if it occurred, would still sit at E1–E3 until someone does K10 work that FCP does not schedule.
- The program could spend indefinitely comparing formal architectures. FCP-18–21 is already that pattern.
- Existing constraints not integrated as discriminators: LQC bounce phenomenology; AS spectral dimension and collider/Planck-suppressed amplitudes; CST Everpresent-Lambda as a parameterized test (bound, then parked); string/holography black-hole entropy and AdS/CFT correlators; gravitational-wave echo/Lorentz-violation searches as comparator tests rather than null-only confirmations.

Do not lower evidentiary standards. Change the research sequence: one discriminating prediction program is worth more than FCP-22 as another NFC pairwise.

Empirical programs with highest discrimination efficiency right now:

1. Hold-out tests that a base framework *must* pass if its distinctive residue is physical (not optional phenomenology).
2. AS: whether Euclidean FP evidence implies Lorentzian unitarity/amplitudes (Donoghue-type).
3. LOOP: whether LQC is a consequence of base LQG or an extra assumption — then test it.
4. CST: whether any dynamics selects manifoldlike 3+1 rather than KR-generic posets.
5. GPT: complete tomography beyond the Mazurek loophole, still not as framework-selection of GPTOPT itself.

---

## M. Reduced-NFC-specific audit

At the exact admitted FCP scope, Reduced NFC is:

- a coherent finite relational/operational architecture;
- **primarily generic mathematics** after name erasure (FCP’s own classification, and I agree);
- physically under-specified (no selected dynamics, no general calibration, no foundational discriminator);
- reduced in a way that was fair as a numerology firewall (τ=4, arity 3, triality, finite reality, ToE) and **not independently shown** to be fair as a scientific reduction of the frozen canon, because the canon is not in the public Git object graph;
- framed at a higher abstraction level than CST/LOOP/AS, so pairwise mismatch is partly a type mismatch of frameworks, not of physics;
- still a source of useful questions (congruence of effective descriptions, interface sufficiency, globalization obstructions) even if the framework lacks support.

What survives: the anti-smuggling discipline, the K3/K4 split, and the six questions as research prompts. What does not survive: NFC as a physical theory, NFC as independently recurrent structure, NFC as a ToE.

I am not validating NFC. I am not debunking a physical NFC that was never admitted. The admitted object is a husk. Comparing the husk to QG residues and announcing non-convergence is not a test of Nested Fibrational Cosmology as originally claimed; it is a test of generic operational mathematics against non-generic QG structure.

---

## N. Null-baseline audit

`GR + QFT + SM, no deeper ontology` is a fair null for incremental improvement. It is an unfair null for foundational replacement.

Problems that are real:

- Mixing three theories into one competitor.
- Treating incompleteness as neutral (`OPEN`) while treating challenger incompleteness as `MISSING_STRUCTURE`.
- Inherited empirical advantage (correctly not transferred as competitor E4 — FCP gets this right — but still decisive on K10).
- Mismatched abstraction: a phenomenological bundle vs single architectures.
- Failure to include EFT/QG expectations explicitly (Donoghue EFT gravity, effective field theory of GR) as part of the null rather than as a missing UV completion scored open.
- Unfair burden: challengers must beat a kit on every sector and may not count matching the kit.

A better null, prospectively (do not rewrite history):

```text
N0  — GR+QFT+SM as tested EFT, including known incompleteness as part of the specification
N1  — GR+QFT+SM + “some UV completion exists but is not selected”
N2  — effective quantum gravity (Donoghue) as the conservative QG null
```

Score each competitor against N0 for empirical increment, N2 for QG-specific increment, and never against a fused object that owns all successes and none of the unification failures.

---

## O. Program-level recurrence audit

Independently reconstructed from comparison files, not from FCP-18 summaries.

**Nine-pairwise denominator: confirmed** (FCP-3, 5, 6, 11, 12, 13, 14, 16, 17).  
**NFC pairwise denominator: confirmed** (FCP-3, 6, 12, 17).  
**90 key cells: confirmed.** Q2=13, Q3=4, I4=1, E5=45, NONE=27.

Every in-scope pairwise file states independent strong = 0 and independent moderate = 0. Independent framework-level E4 = 0. NFC E1–E4 = 0 in all four (five with FCP-21) pairs.

FCP-21 does not change FCP-18 headlines. It slightly strengthens the negative NFC result.

**Target-conditioned GR recovery is the live near-miss.** CST has qualified bounded E3; LOOP and AS have real recovery programs withheld at provenance. If that pattern counted as recurrence, the count would not be zero. FCP-18 subtracts it by rule. Adding AS makes the subtraction more consequential, not obsolete.

**Verdict on the program-level statement:**

```text
CORRECT_BUT_SCOPE_LIMITED
METHOD_DEPENDENT
```

Not `UNDERPOWERED` as FCP stated it (`NO_AT_CURRENT_CLOSED_CORPUS`). Underpowered if treated as a theorem about nature. Not `PARTIALLY_INVALID`: the zeros recompute. Not `INVALID`.

---

## P. Truth-seeking strategic assessment

**If the real objective is to uncover physical reality, is continuing FCP currently one of the best uses of research effort?**

```text
YES_BUT_ONLY_AS_ONE_PARALLEL_TRACK
```

with a required method revision before any FCP-22 NFC pairwise.

FCP is unusually strong as an anti-hype and anti-smuggling discipline. It is unusually weak as an engine of empirical or mathematical discovery. The purpose clarification after FCP-21 is useful as a reminder and dangerous as an ungoverned override.

On the clarification itself:

- “Seek truth about reality” is aspirational, not operational, unless tied to procedures (when to reopen packets, when to add keys, when to abandon a subtraction rule).
- It does not conflict with earlier governance if it remains prospective.
- It does create vague discretion. “FCP methodology is revisable” without a revision protocol is a loophole.
- Safeguard: any appeal to truth-seeking supremacy that would change a frozen classification must (i) name the obstructing rule, (ii) show a concrete inference the rule blocked, (iii) version the change, (iv) rerun affected phases, (v) not silently rewrite historical rows.

Making the clarification after FCP-21 is a mild hindsight/governance concern, not a scientific rewrite. It looks like a response to the worry that 21 negative phases had become self-justifying. That worry is legitimate. The clarification does not by itself fix the instrument.

**Do not abandon FCP.** The firewalls listed in §Y are worth keeping.  
**Do not continue FCP-22 as “next admitted framework, then NFC pairwise.”** That is path dependence, not truth-seeking.

---

## Q. Blind spots

Things the repository authors apparently did not consider, or considered and parked:

1. That subtracting generic math from both sides can delete the only shared physical layer.
2. That preregistration in the same sitting is not blinding.
3. That a husk-NFC vs residue-QG design predicts the NFC zeros.
4. String/holography as the highest-information missing family.
5. Donoghue as the principal external AS critic.
6. LQC as the only LOOP sector with observational contact.
7. EFT quantum gravity as a better QG null than “no UV completion.”
8. That E4 is not a rung on the E1–E3 ladder.
9. That countermodel packets never test FCP over-subtraction.
10. That 25k lines in 25 hours is a different epistemic genre from a multi-year literature program, even if the physics citations check out.
11. AdS/CFT as the field’s actual existence proof of a controlled gravitational limit — the thing E3 is supposed to capture.
12. Whether “independence” should include “independently derived from shared empirical constraints.” FCP uses historical/source independence almost exclusively.

---

## R. Strongest arguments that FCP is too conservative

Steelmanned:

Successful physics really does force a cluster of structures: relativistic causality, local degrees of freedom, gauge redundancy, renormalization-group organization, a dynamical metric in the IR, quantum kinematics with a composition rule, and calibrated observables. Several independent research programs recover pieces of that cluster, often with hard theorems (BHS Lorentz compatibility, BD operators, large-spin Regge, AS multi-truncation FPs, GPT reconstructions of QM under extra axioms, AdS/CFT). FCP’s independence and target-conditioning rules reclassify almost all of that as “not counting.” If the goal is to see what nature is telling us, FCP is looking away from the signal and scoring the looking-away as methodological virtue. A method that cannot award moderate credit to a controlled GR limit is too conservative to serve truth-seeking.

I agree with much of this as a critique of *scoring*, not of the underlying distinctions.

---

## S. Strongest arguments that FCP is not conservative enough

Steelmanned:

E5 analogies are still recorded as “relations.” Closed packets freeze incompleteness and then let “not source-qualified” function as a soft existence claim about possible future maps. AS-L3 is a robustness pattern, not a theorem, and is carried into FCP-21 as a residue *item*. Bounded E2 for AQFT and CQM still looks like structure even after independence is denied. The purpose clarification could reopen frozen rules. Without string theory in the sample, the program still talks in program-level language. A truly conservative program would have stopped at “this packet, these zeros, no global inference.”

Partly right. FCP-18’s scope language is better than the README’s atmosphere.

---

## T. Strongest arguments that FCP is biased toward NFC

Steelmanned:

NFC suggested the questions; the questions became K1–K10; NFC is compared at every residue; FIS/Congruence/Viability are kept alive as “discovery questions” in theories that did not pose them; the whole program exists because of an NFC reduction; the purpose clarification protects revisability just when NFC has lost. Even negative attention is privilege.

There is question-selection privilege. There is not result privilege. NFC does not win any comparison. Confusing those is a mistake.

---

## U. Strongest arguments that FCP is biased against NFC

Steelmanned:

The reduction removed every physically distinctive claim, classified the rest as generic, forbade generic credit, compared the husk to non-generic QG residues, and announced that NFC does not recur. No other framework was reduced that aggressively before comparison. The canon isn’t even public. Five pairwise zeros were then read as “no repeated independent support,” which was the intake premise.

This is the stronger bias case. I give it HIGH confidence as a structural fact, not as a claim of bad faith.

---

## V. Alternative methodology

**Prediction-first, then structure.**

1. For each framework, preregister one risky, framework-level observable (not optional phenomenology) against a declared EFT/GR+QFT null.
2. Use no-go theorems (KR generic posets, min/max tensors, almost-quantum, BCMR strong-limit obstruction, parametrization dependence of AS relevant directions) as first-class constraints, not only as countermodels to overclaim.
3. Score GR-recovery as viability evidence with an explicit target-conditioning tag, not as zero.
4. Keep FCP’s anti-smuggling rules for promotion to ontology.
5. Do not compare NFC until a physical realization map exists, or compare only the six questions as questions against the literature, not `K_red` as a theory.
6. Include string/holography and CDT before any further program-level recurrence claim.
7. Independent Bayesian/MDL comparison on empirical likelihood plus parameter count, even if crude.

**Would this reach materially different conclusions?**  
Yes. CST and LOOP would look like incomplete but nontrivial discrete-geometry programs with viability evidence, not as E5-only relative to GR. AS would look like a well-evidenced hypothesis with a unitarity/Lorentzian gap, not as E5-only plus a six-item residue. NFC would likely not enter the first round at all. The “zero independent multi-family recurrence” headline would be replaced by “several QG programs are constrained toward GR-like IR structure by different routes; none is empirically selected.” That is closer to the actual state of knowledge.

This is a path-dependence test. FCP’s path produced zeros. The alternative path produces a structured incomplete-QG landscape. Both can be honest. They are not the same claim about reality.

---

## W. Priority remediation matrix

| ID | Finding | Level | Severity | Confidence | Could change prior result? | Recommended action |
|---|---|---|---|---|---|---|
| W1 | Dual-firewall NFC comparisons tautological | 3 | HIGH | HIGH | NFC pairwise headlines: no. Their interpretation: yes | METHOD_REDESIGN |
| W2 | K1–K10 NFC-conditioned / unblinded freeze | 3 | HIGH | HIGH | Not historical scores; prospective key set | PROSPECTIVE_GOVERNANCE_REVIEW |
| W3 | E3 LOOP/AS vs CST inconsistency | 1 | HIGH | HIGH | FCP-16/20 E3 subclaims: yes. Independent convergence: no | LOCAL_REANALYSIS |
| W4 | NFC canon not in public Git | 2 | HIGH | HIGH | All NFC phases if reduction was unfair | SOURCE_PACKET_EXTENSION |
| W5 | String/holography unaudited at program level | 4 | HIGH | HIGH | FCP-18 global atmosphere: yes. Closed-corpus zeros: no | FRAMEWORK intake, not NFC pairwise |
| W6 | Donoghue / d_s omitted from AS | 2 | MEDIUM–HIGH | HIGH | AS-L3: no. AS-R3 interpretation: maybe | SOURCE_PACKET_EXTENSION |
| W7 | Composite null + OPEN-vs-defect asymmetry | 3 | MEDIUM | HIGH | K4/K9/K10 narrative: yes. Empirical SM/GR facts: no | METHOD_REDESIGN |
| W8 | FCP-5 vs FCP-14 E2 standard | 1 | MEDIUM | HIGH | FCP-5 labels: yes. Independent AQFT convergence: no | LOCAL_REANALYSIS |
| W9 | AQFT window amputates DHR/split | 2 | MEDIUM | MODERATE | FCP-6 FIS: maybe. E1–E4 NFC/AQFT: unlikely | SOURCE_PACKET_EXTENSION |
| W10 | LQC exclusion engineers empty LOOP K10 | 3 | MEDIUM | HIGH | K10: maybe. Base LOOP identity: no | SOURCE_PACKET_EXTENSION |
| W11 | Target-conditioned GR recovery under-weighted | 3 | MEDIUM | HIGH | Cnv-M if independence is relaxed | PROGRAM_META_AUDIT |
| W12 | Purpose clarification ungoverned | 3 | MEDIUM | MODERATE | Future phases only | PROSPECTIVE_GOVERNANCE_REVIEW |
| W13 | FCP-14 bound paper treated as unextractable | 1 | MEDIUM | HIGH | Pairwise E2: no (CPT is third framework). Label: yes | DOCUMENTATION_CLARIFICATION |
| W14 | FCP-8 E-label collision | 1 | LOW | HIGH | No scientific result | DOCUMENTATION_CLARIFICATION |
| W15 | README next-task stale | 1 | LOW | HIGH | No | DOCUMENTATION_CLARIFICATION |
| W16 | COMMON conflated with UNINFORMATIVE | 3 | MEDIUM | MODERATE | E5-to-credit promotions: maybe | METHOD_REDESIGN |
| W17 | Countermodels one-sided vs over-subtraction | 3 | LOW | MODERATE | No single phase reversal | PROGRAM_META_AUDIT |
| W18 | GOVERNANCE_REVIEW_CANDIDATE=0 overclaim | 1 | MEDIUM | HIGH | FCP-18 meta-row: yes | PROGRAM_META_AUDIT |

---

## X. What should happen next?

Prioritized sequence. Do not assume FCP-22 continues the prior roadmap.

1. **Publish the frozen NFC canon** (Git objects or the stated bundle) so FCP-3’s reduction can be checked. If it cannot be published, downgrade every NFC pairwise to `NONCANONICAL_DIAGNOSTIC`.
2. **Stop NFC pairwise comparisons** until NFC has a physical realization map or the admitted object is explicitly retired as a theory and kept as a question list.
3. **E3 subclaim pass for LOOP and AS**, matching FCP-11’s BD treatment. Do not convert to independent convergence.
4. **Bind Donoghue and one spectral-dimension paper** into AS without raising AS-L3.
5. **Bind LQC as LOOP-X** with an empirical-back-projection prohibition.
6. **Source-intake `FW-STRING` / holography before any new program-level recurrence claim.** AdS/CFT is the E3 existence proof the method has been starving.
7. **CDT intake** as a discrete-dynamics comparator, not as LOOP or CST.
8. **Govern the truth-seeking supremacy clause** with an explicit revision protocol.
9. **One empirical discrimination workstream** in parallel: pick the single cheapest framework-level test (likely AS unitarity/amplitudes or CST manifold-selection under a named dynamics), and run it outside the pairwise-NFC machine.
10. Only then consider a redesigned comparison in which target-conditioned recovery has a positive viability grade and generic-but-physically-constraining structure is not scored as zero.

---

## Y. Bottom line

**Given everything found, what should researchers who genuinely want to uncover physical reality do next?**

Keep FCP’s firewalls. They are the part that survives:

- kinematical spectra are not observations;
- fitted parameters are not predictions;
- reconstruction from a supplied target is not dynamical emergence;
- reformulation is not independent discovery;
- RG flow is not physical time;
- a truncation fixed point is not a complete-theory theorem;
- shared vocabulary is not shared structure;
- the null’s open problems are not evidence for a replacement;
- IC and Macroscopic Locality do not uniquely select quantum theory;
- CST is a real additional discrete-causal proposal, not a GR rewrite;
- LOOP and AS are real additional QG programs, not GR notation;
- Reduced NFC, as admitted, is not a physical theory.

Do not keep FCP’s research sequence. Comparing a generic operational husk to successively subtracted QG residues will continue to yield zeros, and those zeros will continue to be mistaken for a result about nature.

The actual state of knowledge, as far as this audit can see, is ordinary and important:

> Established GR+QFT+SM is an extraordinarily successful EFT with known incompleteness. Several serious QG and reconstruction programs add non-generic structure and recover GR/QM-like behavior under extra assumptions. None is empirically selected at framework level. Nested Fibrational Cosmology, at the reduced scope FCP admitted, does not currently supply a competing physical dynamics, realization, or discriminator. Convergence of independently motivated non-generic structure has not been shown in this corpus. That is not evidence that no deeper reality exists, and it is not evidence that FCP has found the absence of one.

Seek truth about reality by putting the distinctive residues under empirical and no-go pressure, publishing the NFC source so the reduction can be checked, and bringing holography into the sample before claiming anything program-level about “what recurs.”

---

## Self-audit (required checks)

1. **Too harsh?** The tautology charge can be over-read. Reducing NFC’s numerology was honest, and “no dynamics / no calibration / no discriminator” would remain even of a less reduced NFC. Correction: the tautology is in treating those absences as comparative discoveries, not in the absences themselves.
2. **Too charitable?** 25k lines in 25 hours means I cannot have checked every citation’s local use. I verified existence of the 2025–2026 sources and the load-bearing theorems I relied on. Residual risk: subtle mis-paraphrase in un-audited ledgers. I did not let volume substitute for correctness.
3. **Mainstream privilege?** I treated SM/GR empirical success as real and unification completeness as unearned. That is not prestige bias.
4. **Novelty privilege?** I did not try to save NFC, CST, LOOP, or AS. The recommendation to intake strings is information-gain, not glamour.
5. **Absence vs lack of evidence?** Repeatedly tagged packet ceilings as ceilings. FCP’s own prose is better than its headlines; I used the headlines as the claim under test.
6. **Formal rigor vs physical truth?** This was the spine of the audit. FCP has rigor. Rigor is not truth.
7. **Empirical success vs completeness?** Named as a null-design defect.
8. **Penalize unfinished theories?** FCP is careful; I noted where unfinishedness was scored as a defect for challengers and as `OPEN` for the null.
9. **Too much latitude because speculative?** AS-L3 is fair; Donoghue gap is the counterweight. LOOP kinematics credited; LQC not smuggled.
10. **Same abstraction?** No. NFC is a skeleton; LOOP/AS/CST are physical programs. FCP compares them anyway. I treated that as a framework-level mismatch.
11. **Later knowledge?** 2026 papers were available at phase time. Donoghue 2020 was available and omitted: `ERROR_AT_TIME_OF_FCP_PHASE`, not later-literature hindsight.
12. **Would a competent advocate recognize the account as technically fair?** CST, LQG, AS, GPT, CQM, and AQFT advocates should recognize the characterizations even where they reject the scoring. An NFC advocate of the *unreduced* canon would not recognize FCP’s object as NFC; that is FCP’s explicit firewall, and it is the point of finding W1/W4.

Corrections incorporated above: E3 CST/LOOP asymmetry raised to HIGH; GS-2018 classified as a third framework rather than a missing map; K7 weak analogy noted as minor underclaim, not a missed E1–E4; purpose clarification treated as mild governance risk, not a scientific rewrite.

---

No framework was selected as true. Current evidence is inadequate to discriminate a UV completion. Several approaches remain viable. FCP cannot presently discriminate among them at E1–E4, and that is partly because of the instrument. The important next questions are empirical and no-go questions about the distinctive residues, plus holography as the missing comparator.

**Preserve results, not theories. Seek truth about reality.** FCP’s results worth preserving are the firewalls and the framework residues. The theory not worth preserving is that a stack of dual-firewall zeros has told us what does not recur in nature.