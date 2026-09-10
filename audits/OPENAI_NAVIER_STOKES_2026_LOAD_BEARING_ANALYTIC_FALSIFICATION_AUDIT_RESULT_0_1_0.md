# OpenAI Navier–Stokes 2026 Load-Bearing Analytic Falsification Audit — Result 0.1.0

```text
OPERATION = OPENAI_NAVIER_STOKES_2026_LOAD_BEARING_ANALYTIC_FALSIFICATION_AUDIT
DATE = 2026-09-10
AUDIT_STATUS = COMPLETE
BASELINE_MAIN = 3833e237b4b4bd424a622f7a00df23afb5552ea9
BASELINE_TREE = d453beb6d884bedc23d2ea77f52ae4f41163099d
OPENAI_COMMIT = f9e8bc5b38b6e212696e8a30e3e91517af887bbd
OPENAI_TREE = a503f07635f200c0f2f9c5361df1fa07f95c4741
OVERALL_VERDICT = LOAD_BEARING_SPINE_SURVIVED_TARGETED_FALSIFICATION
MATERIAL_LOAD_BEARING_DEFECT_FOUND = NO
UNRESOLVED_PREREGISTERED_LOAD_BEARING_NODE = NO
```

## 1. Question adjudicated

This operation did not ask whether the OpenAI Navier–Stokes result should be accepted because a Lean artifact compiles or because earlier correspondence checks were clean. It asked a narrower but more adversarial question:

> Can focused independent reconstruction of the proof's load-bearing analytic minimum cut expose a false step, incompatible parameter system, omitted same-order nonlinear interaction, nonclosing iteration, invalid infinite-sum passage, or material paper/formal mismatch?

The preregistered answer is:

```text
NO SUCH DEFECT WAS FOUND IN A1–A4 OR THE GLOBAL PARAMETER GATE.
```

Because every frozen load-bearing node was independently reconstructed to the level specified by the preregistration, the strongest allowed operation verdict is earned:

```text
LOAD_BEARING_SPINE_SURVIVED_TARGETED_FALSIFICATION
```

This is not equivalent to complete independent verification of every lemma in the 166-page manuscript.

## 2. Node verdict matrix

| node | target | primary adversarial question | verdict |
|---|---|---|---|
| A1 | Theorem 4.6 spine | do all leading-profile constraints admit one common parameter choice with required signs/regularity? | `REPRODUCED_NO_DEFECT_FOUND` |
| A2 | Proposition 7.5/7.6/Cor. 7.8 spine | does the actual divergence-free oscillatory field realize signed stress after nonlinear/curl/cutoff terms? | `REPRODUCED_NO_DEFECT_FOUND` |
| A3 | Proposition 9.6 spine | after recomputing the complete nonlinear residual, does every term lie in the improved class? | `REPRODUCED_NO_DEFECT_FOUND` |
| A4 | Lemma 5.4 / Proposition 9.9 spine | does one final correction schedule give smooth summation, all-jet flatness and preserved blowup? | `REPRODUCED_NO_DEFECT_FOUND` |
| Global | A1–A4 joint system | are all parameter choices jointly feasible in the required choice order? | `REPRODUCED_NO_DEFECT_FOUND` |
| Lean crosswalk | pinned formal dependency graph | do the paper obligations connect to actual proved producers rather than hidden oracles/reselected witnesses? | `PASS` |

## 3. Highest-information findings

### 3.1 A1: profile existence is genuinely simultaneous

The leading-profile construction is not a collage of separately satisfiable properties. The parameter hierarchy is sequential, the final finite-frequency shear integer is chosen after the continuous profile data, the five cumulative moment errors are exactly restored by a concrete finite-dimensional moment inverse, and the strict cone margin survives because the restoration is `O(1/N)` after a positive compact margin has been established.

The pinned formalization closes this into one selected `FinalSlowBase.actualProfile`; `BaseWitnessClosure` proves the retained cone, parameter, matching and initialization properties of that same object.

### 3.2 A2: signed correction does not misuse positive square roots

The fixed leading stress uses positive amplitudes inside a strict cone. Later signed stress corrections are obtained by linear response around those positive amplitudes and therefore may have either sign. The exact curl correction makes the field divergence-free, and the covariance expansion retains the previous-field interaction, curl interaction and the complete square of the new velocity.

Finite-head mismatch of the desired cross identity is retained as a literal defect and controlled by finite support rather than silently declared zero.

### 3.3 A3: the nonlinear residual actually closes with margin

For `kappa_s=10^-5` and the worst admissible `sigma=1/5`, reconstructed dominant gains are approximately

```text
particular wave:      0.40000
signed wave:          0.39999
mean/debt transfer:   0.49998
bar residual:         0.17000
rank/defect:          0.89996
required cycle gain:  0.10000
```

The formal arithmetic ledger agrees, but the audit did not stop there. The actual `CorrectionAnalyticStep.step` recomputes the nonlinear updated residual and mean system, and its native wave inputs are produced from the current residual, exact field identities, explicit support and the constructed finite moment repair. The desired outgoing invariant is not present as an input oracle.

### 3.4 A4: the infinite construction has the correct quantifier order

One diagonal schedule is selected before the final derivative-order/flatness queries. It is locally finite for `q>0`, so smoothness does not depend on differentiating a merely conditionally convergent infinite series. For every fixed jet order, the derivative loss is independent of correction stage while the stage gain tends to infinity.

The nonlinear residual transfer includes the quadratic tail self-interaction. The proof compares the final field to one late finite stage instead of summing infinitely many fixed-stage flat-error constants.

Most importantly, the pinned final chain closes the potential field-reselection loophole:

```text
LocalResidualFlatness.selected_schedule
  -> one exact a with SelectedSchedule + ThreeCutBounds + AllResidualJetRates
  -> LocalScheduleWitness.selected_compact_candidate hs
  -> LocalPaper.properties_of_schedule hs hr
  -> PaperLocalization.local_theorem_with_compact_candidate
```

The compact whole-space candidate and the quantitative local residual theorem therefore use the same diagonal schedule and same local fields.

### 3.5 Global parameter gate: no circularity found

The compatible order is:

```text
profile hierarchy
  -> exact finite profile repair
  -> freeze profile/cone
  -> primary geometry thresholds
  -> fixed kappa_s and initial sigma
  -> fixed cycle recurrence
  -> actual finite-stage physical estimates on one qbig
  -> one final diagonal cutoff schedule
  -> final fields / force extension.
```

Derivative-order-dependent losses affect only how late a finite comparison stage must be chosen; they do not require reselection of the final field.

## 4. Failure modes explicitly attacked and not found

The audit attempted, among others, the following failure mechanisms:

1. mutually incompatible A1 small/large parameter inequalities;
2. singular five-moment repair matrix;
3. loss of strict stress-cone positivity after exact moment restoration;
4. hidden A1↔A2 circularity;
5. signed-stress construction requiring a square root of a negative target;
6. omitted curl or cutoff contribution in the covariance;
7. omitted same-order nonlinear term in the A3 residual;
8. arithmetic gain smaller than the claimed `+0.1` cycle improvement;
9. finished residual estimate supplied as a wave-input oracle;
10. stage-dependent derivative loss outrunning iteration gain;
11. a new cutoff schedule selected for each derivative order;
12. illegitimate termwise differentiation of a non-locally-finite series;
13. infinite summation of fixed-stage flat-error constants;
14. tail self-interaction `(e·grad)e` omitted from residual transfer;
15. infinite corrections cancelling the protected blowup core;
16. formal local theorem and compact candidate using different diagonal schedules;
17. A1–A4 individually valid but jointly parameter-infeasible.

None produced a material defect under the frozen evidence universe.

## 5. What this result establishes

The operation supports the following bounded scientific statements:

```text
PINNED_FORMAL_ARTIFACT_REPRODUCIBILITY = PASS
TARGET_AND_ENDGAME_CORRESPONDENCE = SUPPORTED_BY_TARGETED_HUMAN_AUDIT
A1_LEADING_PROFILE_SPINE = REPRODUCED_NO_DEFECT_FOUND
A2_OSCILLATORY_STRESS_SPINE = REPRODUCED_NO_DEFECT_FOUND
A3_RESIDUAL_IMPROVEMENT_SPINE = REPRODUCED_NO_DEFECT_FOUND
A4_INFINITE_SUMMATION_FLATNESS_SPINE = REPRODUCED_NO_DEFECT_FOUND
GLOBAL_PARAMETER_CONSISTENCY = REPRODUCED_NO_DEFECT_FOUND
LEAN_LOAD_BEARING_DEPENDENCY_CROSSWALK = PASS
LOAD_BEARING_ANALYTIC_SPINE = SURVIVED_TARGETED_INDEPENDENT_FALSIFICATION
```

The combined evidence is materially stronger than the prior formal-replay or theorem-correspondence results alone because this audit independently attacked the analytic junctions most capable of invalidating the construction.

## 6. Epistemic ceiling and residual uncertainty

The following remain explicitly unestablished:

```text
FULL_166_PAGE_INDEPENDENT_HUMAN_PROOF_REDERIVATION = NO
EVERY_AUXILIARY_LEMMA_INDEPENDENTLY_REPROVED = NO
INDEPENDENT_EXTERNAL_EXPERT_REFEREE_ACCEPTANCE = NOT_ESTABLISHED
GLOBAL_MATHEMATICAL_CONSENSUS = NOT_ESTABLISHED
CLAY_RECOGNITION = NOT_ESTABLISHED
UNFORCED_3D_NAVIER_STOKES_BLOWUP = NOT_ESTABLISHED
PHYSICAL_REALIZATION_OR_EMPIRICAL_VALIDATION = NOT_ESTABLISHED
```

The dominant residual uncertainty has therefore shifted. It is no longer a specific open defect in the preregistered A1–A4 spine. It is the possibility of an error in a deeper auxiliary analytic lemma not independently rederived line-by-line in this bounded audit, despite the facts that:

- the pinned Lean derivation has independently replayed under its declared axiom ceiling;
- the target/endgame correspondence was independently checked;
- the high-leverage analytic spine survived the present adversarial reconstruction.

A future concrete critique of an auxiliary lemma would still have priority over this positive audit result and would warrant a new targeted defect docket.

## 7. Overall adjudication

```text
AUDIT_STATUS = COMPLETE
A1 = REPRODUCED_NO_DEFECT_FOUND
A2 = REPRODUCED_NO_DEFECT_FOUND
A3 = REPRODUCED_NO_DEFECT_FOUND
A4 = REPRODUCED_NO_DEFECT_FOUND
GLOBAL_PARAMETER_GATE = REPRODUCED_NO_DEFECT_FOUND
LEAN_DEPENDENCY_CROSSWALK = PASS
OVERALL_VERDICT = LOAD_BEARING_SPINE_SURVIVED_TARGETED_FALSIFICATION
MATERIAL_LOAD_BEARING_DEFECT_FOUND = NO
```

## 8. FCP consequence ceiling

This result is a separately bounded generic-mathematics/provenance result. It has no authority in this operation to alter:

```text
ACTIVE_K9_CLOSED_CORPUS = UNCHANGED
FW_PROCESS_MATRIX_K9 = UNCHANGED
FRAMEWORK_REGISTER = UNCHANGED
K1_K10 = UNCHANGED
E1_E5 = UNCHANGED
RECURRENCE = UNCHANGED
EMPIRICAL_CREDIT = NONE
PHYSICAL_CANONICITY_CREDIT = NONE
NFC_CREDIT = NONE
FCP27_SEQUENCE = UNCHANGED
CURRENT_STATE = UNCHANGED
```

No inference from this Navier–Stokes result to NFC or any other foundational framework is licensed without a separately named physical/theoretical bridge.