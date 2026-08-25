# FCP Prospective Comparison Architecture — Method 0.2.0

**Method version:** `0.2.0`  
**Status:** PROSPECTIVE CANDIDATE  
**Historical compatibility:** FCP-1–FCP-21 retain their original semantics.  
**Activation:** only after separate integration authorization.

## 0. Governing principles

> **PRESERVE THE RECORD. REPAIR THE METHOD.**

> **SEPARATE RELATION FROM INDEPENDENCE. SEPARATE VIABILITY FROM EMPIRICAL SELECTION.**

Method 0.2.0 replaces the historical tendency to compress a comparison into a single convergence disposition with a **multi-axis evidence record**.

No scalar framework score is defined.

## 1. Core architecture

Every prospective comparison claim records the following axes independently:

1. `RELATION_TYPE`
2. `EVIDENCE_STRENGTH`
3. `PROVENANCE_STATUS`
4. `SCOPE_LEVEL`
5. `GENERICITY_PROVENANCE_TAGS`
6. `LINEAGE_STATUS`
7. `TARGET_CONDITIONING`
8. `PHYSICAL_REALIZATION_STATUS`
9. `CALIBRATION_STATUS`
10. `VIABILITY_STATUS`
11. `INDEPENDENCE_STATUS`
12. `EMPIRICAL_STATUS`
13. `FRAMEWORK_MATURITY`
14. `OVERCLAIM_TEST`
15. `OVER_SUBTRACTION_TEST`

A positive value on one axis may coexist with a zero/negative/open value on another.

Example:

```text
RELATION_TYPE = E3_CONTROLLED_RECOVERY
TARGET_CONDITIONING = YES
VIABILITY_STATUS = POSITIVE_RECOVERY_EVIDENCE
INDEPENDENCE_STATUS = NONINDEPENDENT_TARGET_CONDITIONED
EMPIRICAL_STATUS = NO_DIRECT_SELECTION
```

This is not contradictory.

## 2. K1–K10 prospective status

### Disposition

`K1_K10 = CLARIFY`

The K1–K10 wording remains substantively useful and no current audit supplies a framework-neutral counterexample requiring a new key or deletion of an existing key.

Prospective controls:

```text
K1_K10_WORDING_NEUTRALITY = SUBSTANTIALLY_YES
K1_K10_PROVENANCE_NEUTRALITY = NO_HISTORICALLY
K1_K10_PROSPECTIVE_BLINDING_CLAIM = FORBIDDEN_UNLESS_ACTUALLY_BLINDED
K1_K10_COMPLETENESS_THEOREM = NO
K1_K10_ORTHOGONALITY_THEOREM = NO
K1_K10_REQUIRED_REPORTING_COORDINATES = YES
```

A future `KEY_EXTENSION_CANDIDATE` still requires:
- a concrete missed comparison dimension;
- a framework-neutral necessity argument;
- affected prior comparisons;
- versioned governance;
- bounded reanalysis authorization.

No key is added or removed in Method 0.2.0.

## 3. Historical ten-layer protocol

The ten historical analysis layers remain useful and are `KEEP`:

- primitive assumptions;
- derived mathematics;
- model choices;
- physical realization;
- dynamics;
- observables;
- empirical predictions;
- falsification;
- selection problems;
- weaker-framework test.

Method 0.2.0 clarifies that these are **analysis layers**, while the axes in §1 are **claim-level reporting metadata**.

## 4. Result classification

The historical primary result labels remain usable but are no longer asked to carry all epistemic consequences.

`SOURCE_DERIVED`, `VALID_CONDITIONAL`, `MODEL_CHOICE`, `PHYSICAL_BRIDGE`, `EMPIRICAL`, `NONFORCED`, `COUNTERMODELED`, and `OPEN` remain.

`GENERIC_MATHEMATICS` is retained as a result/provenance descriptor but is supplemented by the genericity taxonomy in the companion taxonomy file.

A result label does not itself determine:
- independence;
- viability;
- empirical selection;
- framework maturity.

## 5. Scope levels

Every relation is typed at one of:

- `S0_FORMAL_SUBSTRUCTURE`
- `S1_MODEL_OR_EXTENSION`
- `S2_FRAMEWORK_SECTOR`
- `S3_FRAMEWORK_WIDE`
- `S4_CROSS_FRAMEWORK_PHYSICAL`
- `S5_EMPIRICALLY_CALIBRATED_FRAMEWORK`

Promotion requires a new source-qualified argument. A result at S0/S1 cannot be summarized as S3/S4 without an explicit bridge.

## 6. Evidence-strength axis

Evidence strength is scope-local, not a universal ranking between mathematical and empirical modes:

- `ES0_UNSUPPORTED`
- `ES1_SOURCE_BOUND`
- `ES2_PRIMARY_RESULT_OR_SOURCE_DERIVATION`
- `ES3_INDEPENDENT_REPRODUCTION_OR_MULTI_METHOD_ROBUSTNESS`
- `ES4_DIRECT_EMPIRICAL_TEST`

The basis must be stated. `ES4` does not imply framework selection unless the empirical-status axis says so.

## 7. Framework maturity axis

Prospective maturity is descriptive:

- `FM0_DEFINITION_OR_HYPOTHESIS`
- `FM1_FORMAL_STRUCTURE`
- `FM2_MODEL_LEVEL_RESULTS`
- `FM3_MULTI_MODEL_OR_ROBUSTNESS`
- `FM4_PHYSICAL_REALIZATION`
- `FM5_DIRECT_FRAMEWORK_DISCRIMINATOR`

This axis does not rank truth or theoretical merit.

## 8. Compatibility map

| Historical term | Prospective term | Semantic change | Backward compatible | Historical rescoring required |
|---|---|---|---|---|
| E1 | `E1_EXACT_STRUCTURAL` | retained as relation type | YES | NO |
| E2 | `E2_REPRESENTATION` | retained; provenance transcription clarified | YES | NO |
| E3 | `E3_CONTROLLED_RECOVERY` | retained; scope/calibration separated | YES | NO |
| E4 | `E4_OPERATIONAL_PREDICTIVE_RELATION` + separate `EMPIRICAL_STATUS` | empirical relation split from selection credit | PARTIAL | only if later authorized |
| E5 | `E5_FUNCTIONAL_RELATION` + provenance/genericity tags | no longer residual bucket | PARTIAL | only if later authorized |
| STRONG/MODERATE/WEAK convergence | `RELATION_TYPE` + `INDEPENDENCE_STATUS` + `SPECIFICITY/GENERICITY` + `VIABILITY_STATUS` | scalar-like convergence class decomposed | PARTIAL | only if later authorized |
| COMMON | explicit genericity/provenance tags | disaggregated | NO semantic identity | only if later authorized |
| null competitor | typed comparator role(s) | role made explicit | PARTIAL | NO historical rewrite |
| source-qualified | provenance-state chain | decomposed | PARTIAL | NO |
| zero relation | `NONE_ESTABLISHED`, `UNRESOLVED`, or a lower relation type | distinguishes absence of evidence from negative result | PARTIAL | only if later authorized |

Historical artifacts continue to mean exactly what their versioned rules meant.

## 9. Final architecture matrix

| Dimension | Purpose | Allowed values | Affects independence | Affects viability | Affects empirical credit |
|---|---|---|---:|---:|---:|
| relation type | what relation is established | E1/E2/E3/E4/E5/NONE/UNRESOLVED | indirectly | YES | indirectly |
| evidence strength | how strongly supported at scope | ES0–ES4 | NO | YES | YES |
| provenance status | source/claim/relation qualification | P0–P6 + transcription flag | YES if source dependence matters | YES | YES |
| lineage | historical/derivational ancestry | independent/shared/inherited/direct import/cross-fertilized | YES | NO by itself | NO by itself |
| target conditioning | whether target is supplied/sought | NO/YES/PARTIAL | YES | NO; can be positive | NO by itself |
| genericity | why a recurrence may be nondiagnostic | multi-tag taxonomy | YES | NO by itself | NO by itself |
| physical realization | formal→physical bridge | none/partial/model/framework/calibrated | NO | YES | YES |
| calibration | operational preservation | not applicable/not established/partial/preserved | NO | limits physical interpretation | YES |
| empirical status | observational consequence | none/inherited/compatibility/model constraint/direct discriminator | NO | YES | YES |
| scope level | claim breadth | S0–S5 | limits inference | limits inference | limits inference |
| viability | whether relation supports realizability | none/compatibility/recovery/robust realization/stressed | NO | defining axis | NO |
| independence | independent rediscovery status | independent/qualified/nonindependent/unresolved | defining axis | NO | NO |
| maturity | development level | FM0–FM5 | NO | descriptive | descriptive |

## 10. Governance disposition of historical components

| Component | Disposition | Reason |
|---|---|---|
| truth-seeking supremacy | `KEEP` | already correct; operationalized elsewhere |
| anti-smuggling | `KEEP` | survived audits |
| promotion rules | `KEEP` | survived audits |
| allowed-process vs dynamics | `KEEP` | survived audits |
| physical-realization discipline | `KEEP` | survived audits |
| empirical-inheritance control | `KEEP` | survived audits |
| framework taxonomy discipline | `KEEP` | survived audits |
| countermodels | `KEEP` | add symmetric subtraction test |
| weaker-framework test | `KEEP` | remains useful genericity control |
| exact provenance/versioning | `KEEP` | essential |
| reconstruction vs emergence | `KEEP` | essential |
| assumption/derivation split | `KEEP` | essential |
| optional-extension firewalls | `KEEP` | essential |
| K1–K10 | `CLARIFY` | retain; remove blinding/completeness implication |
| source/provenance semantics | `SPLIT` | source state ≠ transcription ≠ relation status |
| independence architecture | `SPLIT` | relation/viability/independence separated |
| target-conditioned recovery treatment | `REVISE` | preserve positive viability without independence credit |
| genericity terminology | `SPLIT` | common/generic/inherited/uninformative separated |
| E1–E3 | `CLARIFY` | thresholds preserved, semantics made symmetric |
| E4 | `SPLIT` | predictive relation separated from empirical selection |
| E5 | `REVISE` | functional relation only, not residual bucket |
| convergence score language | `DEPRECATE_PROSPECTIVELY` | replaced by vector record; no scalar winner |
| null-baseline role | `SPLIT` | comparator roles typed explicitly |
| anti-over-subtraction | `REVISE` | add symmetric control |
| revision/supersession governance | `REVISE` | operational trigger protocol required |

## 11. No scalar winner

Method 0.2.0 defines no aggregate score and no winner.

A future aggregation scheme would require a separate justification showing:
- commensurability of axes;
- weights independent of desired outcome;
- stability under reasonable weight perturbations;
- value beyond the full vector record.
