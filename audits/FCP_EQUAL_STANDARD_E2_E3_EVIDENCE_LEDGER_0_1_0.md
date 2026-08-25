# FCP Equal-Standard E2/E3 Six-Framework Reanalysis Evidence Ledger

**Version:** 0.1.0  
**Canonical baseline:** `65a42e350888a64bca564cc7ebb68ca357382e01`  
**Rule specification:** `FCP_EQUAL_STANDARD_E2_E3_RULE_SPECIFICATION_0_1_0.md`  
**Rule freeze SHA-256 before final rescoring:** `d6e477c3295f373c1a9aa9454d1e7bade383456345eb134f61c1f6468e5c8210`

## 0. Score vocabulary

- `E2_NONZERO_BOUNDED`
- `E2_ZERO`
- `E3_NONZERO_BOUNDED`
- `E3_ZERO`
- `UNRESOLVED_UNDER_FROZEN_CORPUS`

A nonzero bounded relation is a relation result, not a framework score, independent-convergence result, or empirical selection result.

## 1. AQFT — E2

**Historical:** bounded nonzero E2 on multiple AQFT↔null-QFT keys.  
**Equal standard:** `E2_NONZERO_BOUNDED`.  
**Changed:** `NO`.  
**Confidence:** `HIGH`.

Support:
- FCP-4/FCP-5 source-bind algebraic representations/GNS machinery and the BFV locally covariant functorial formulation.
- The representation is explicitly model/formulation scoped.
- The relation is predominantly QFT lineage/reformulation and remains zero independent convergence.

Ceiling:
`BOUNDED_REPRESENTATION != WHOLE_FRAMEWORK_EQUIVALENCE`.

Classification:
`NO_DEFECT` in the historical score; cross-phase burden asymmetry remains an application defect.

## 2. CQM — E2

**Historical:** bounded nonzero E2 on K1/K3/K4/K5/K8/K9 in concrete quantum models/named structures.  
**Equal standard:** `E2_NONZERO_BOUNDED`.  
**Changed:** `NO`.  
**Confidence:** `HIGH`.

Support:
- FCP-13 explicitly permits bounded E2 where concrete quantum models provide an explicit structure-preserving representation.
- States/effects/processes and model-specific optional structures are typed and mapped to ordinary quantum structures at declared scope.
- Quantum lineage blocks independent convergence.

Ceiling:
`CONCRETE_QUANTUM_REPRESENTATION != GENERIC_CQM_UNIQUENESS`.

Classification:
`NO_DEFECT` in the historical score.

## 3. GPTOPT row — CQM↔GPTOPT E2

**Historical:** `E2_ZERO`.  
**Equal standard:** `E2_ZERO`.  
**Changed:** `NO`.  
**Confidence:** `MEDIUM_HIGH`.

Support:
- the already-bound Gogioso–Scandolo bridge is real and scientifically substantive;
- direct reinspection is permitted in this task because the source was already bound;
- it constructs common categorical-probabilistic ground and documents translatable structures and material differences;
- the frozen corpus still does not establish the direct pairwise whole-family representation construction required for the FCP-14 K1/K3/K5/K8 E2 claims.

Corrected reason:
`NO_EXPLICIT_PAIRWISE_E2_CONSTRUCTION_AT_DECLARED_SCOPE`, not merely `MAP_NOT_TRANSCRIBED_IN_INTERNAL_PACKET`.

Classification:
historical score `NO_DEFECT`; historical rationale `PROVENANCE_RATIONALE_DEFECT`; burden difference `HISTORICAL_APPLICATION_INCONSISTENCY`.

## 4. CST — E3

**Historical:** selected bounded E3 subrelations.  
**Equal standard:** `E3_NONZERO_BOUNDED`.  
**Changed:** `NO`.  
**Confidence:** `HIGH`.

Principal support:
`SRC-FCP9-CST-BD-2010`.

Scope:
causal-set operator/curvature/action → continuum wave/curvature/action under declared manifoldlike and scale/field assumptions.

Calibration:
`NOT_ESTABLISHED`.

Independence:
target-conditioned; zero independent-discovery credit.

Classification:
`NO_DEFECT` in the historical bounded E3 score.

## 5. LOOP — E3

**Historical:** `E3_ZERO`.  
**Equal standard:** `E3_NONZERO_BOUNDED`.  
**Changed:** `YES`.  
**Confidence:** `HIGH`.

Principal support:
`SRC-FCP15-LOOP-BARRETT-2010`.

Scope:
large-representation Lorentzian EPRL 4-simplex amplitude → Regge-action phase for declared geometric boundary data.

Calibration:
`NOT_ESTABLISHED`.

Ceilings:
- fixed building block, not continuum 4D GR;
- target-conditioned;
- no complete physical-Hilbert/dynamics equivalence;
- no empirical inheritance.

Counterfactual:
`WOULD_HAVE_CHANGED_UNDER_SAME_RULE_AT_FCP16_TIME = YES`.

Reason:
the source was already bound in FCP-15 before FCP-16. The historical zero followed from a stricter packet-completeness/calibration gate than CST received.

Classification:
`HISTORICAL_APPLICATION_INCONSISTENCY`.

## 6. AS — E3

**Historical:** `E3_ZERO`.  
**Equal standard:** `E3_NONZERO_BOUNDED`.  
**Changed:** `YES`.  
**Confidence:** `MEDIUM_HIGH`.

Principal support:
`SRC-FCP19-AS-GRS-2019`, with already-bound trajectory/realization context including `SRC-FCP19-AS-PR-2024`.

Scope:
selected RG-scale `k` UV/fixed-point → IR/classical/GR-like trajectory relation in declared truncation/implementation.

Calibration:
`NOT_ESTABLISHED` as independent prediction; low-energy parameters can be calibration inputs.

Ceilings:
- selected trajectory only;
- no exact complete-theory fixed-point theorem;
- no complete realistic gravity–matter trajectory;
- no full Lorentzian/unitary recovery;
- target-conditioned;
- no empirical inheritance.

Counterfactual:
`WOULD_HAVE_CHANGED_UNDER_SAME_RULE_AT_FCP20_TIME = YES`.

Reason:
the trajectory sources were already bound in FCP-19 before FCP-20. The historical zero followed from a stricter complete-record/calibration gate than CST received.

Classification:
`HISTORICAL_APPLICATION_INCONSISTENCY`.

## 7. Final matrix

| Framework | Relation | Historical | Equal standard | Changed | Confidence |
|---|---|---|---|---|---|
| CST | E3 | bounded nonzero selected subrelations | `E3_NONZERO_BOUNDED` | NO | HIGH |
| LOOP | E3 | 0 | `E3_NONZERO_BOUNDED` | YES | HIGH |
| AS | E3 | 0 | `E3_NONZERO_BOUNDED` | YES | MEDIUM_HIGH |
| AQFT | E2 | bounded nonzero | `E2_NONZERO_BOUNDED` | NO | HIGH |
| CQM | E2 | bounded nonzero | `E2_NONZERO_BOUNDED` | NO | HIGH |
| GPTOPT (CQM↔GPTOPT pair) | E2 | 0 | `E2_ZERO` | NO | MEDIUM_HIGH |

## 8. Anti-smuggling audit

1. New literature admitted to obtain a preferred score: `NO`.
2. NFC proposition imported into comparator: `NO`.
3. Target-conditioned recovery relabeled independent evidence: `NO`.
4. Source silence equated with scientific nonexistence: `NO`.
5. Packet-extraction failure equated with framework failure: `NO`.
6. Formal allowance promoted to physical realization: `NO`.
7. Inherited structure promoted to independent convergence: `NO`.
8. Same E2 rule applied to all three E2 rows: `YES`.
9. Same E3 rule applied to all three E3 rows: `YES`.
10. Threshold changed after outcomes were seen: `NO`; frozen rule hash recorded above.
11. Historical scores protected for continuity: `NO`.
