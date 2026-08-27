# FW-STRING-M Null Control — Claim-Level Method Remediation Adjudication

**Version:** 0.1.0  
**Status:** REMEDIATED QUALIFIED CONTROL CANDIDATE  
**Method:** FCP Method 0.2.0  
**Canonical parent before preregistration:** `793dd278dabbdc858775472e02b4aaef2bbec5ff`  
**Immutable preregistration commit:** `03e663c32860e6bd40af83678f50b20cfa427195`  
**Superseded Commit 2:** `e91494372416033168336e346fd36af4c92ac4fb`  
**New external scientific sources:** `0`

## 1. Qualification verdict

```text
FW_STRING_M_NULL_CONTROL = QUALIFIED
PROJECT_LEAD_METHOD_REMEDIATION = PASS
METHOD = 0.2.0
PRIMARY_COMPARATOR = FW-NULL-GRQFTSM
PRIMARY_COMPARATOR_ROLE = CR-CB_CONTROL_BASELINE

COMMIT_1_IMMUTABILITY = PASS
PREREGISTRATION_IMMUTABILITY = PASS
FROZEN_EVIDENCE_UNIVERSE = PASS
NEW_EXTERNAL_SOURCES = 0
SOURCE_WINDOW_EXPANSION = 0
NEW_SOURCE_ADMISSION = 0
SOURCE_REGISTER_MUTATION = 0
GREEN_SCHWARZ_PURCHASED_PDF_USED = NO
FINDING007_REJECTED_SOURCE_IMPORT = 0

CLAIM_LEVEL_DECOMPOSITION = PASS
COMPARATOR_ROLE_TYPED_PER_MATERIAL_INFERENCE = PASS
SOURCE_IDS_TYPED_PER_MATERIAL_RELATION = PASS
E5_NOT_USED_AS_RESIDUAL_FALLBACK = PASS
E3_S_E3_M_SECTOR_RECHECK = PASS
RELATION_AND_RESIDUE_SEPARATION = PASS
INDEPENDENCE_TYPED_AT_CLAIM_LEVEL = PASS
TARGET_CONDITIONING_TYPED_AT_CLAIM_LEVEL = PASS
EMPIRICAL_INHERITANCE_CONTROL = PASS
OVERCLAIM_TEST = PASS
OVER_SUBTRACTION_TEST = PASS
NO_SOURCE_EXPANSION = PASS
NO_FCP24_REANALYSIS = PASS
NO_NFC_LOOKAHEAD = PASS
NO_SCALAR_SCORE = PASS
FRAMEWORK_WINNER = NONE
CANONICAL_BASELINE_CONTRADICTION_IDENTIFIED = NO
```

## 2. Why remediation was required

The superseded Commit 2 assigned one Method vector to each full K-coordinate. Several coordinates contained distinct propositions—shared/null-supplied structure, lineage-derived structure, target-conditioned recovery, optional realization, String/M-specific additional commitments, and empirical consequences—with materially different provenance.

That compression created three methodological risks:

1. target conditioning or lineage attached to one subclaim could be incorrectly inherited by unrelated String/M-specific content;
2. E5 could become a fallback merely because both frameworks populate the same K-coordinate;
3. sector/substructure E3 could be missed by requiring recovery of the entire composite null rather than a specific null-sector target.

The replacement comparison fixes all three while leaving the preregistered thresholds unchanged.

## 3. Aggregate remediated result

```text
K1_K10_KEYS_COMPLETE = 10/10
MATERIAL_CLAIM_RECORD_COUNT = 20

PAIRWISE_E1_RELATION_COUNT = 0
PAIRWISE_E2_RELATION_COUNT = 0
PAIRWISE_E3_RELATION_COUNT = 1
PAIRWISE_E4_RELATION_COUNT = 0
PAIRWISE_E5_RELATION_COUNT = 6
NONE_ESTABLISHED_RELATION_COUNT = 13
UNRESOLVED_RELATION_COUNT = 0

K_KEYS_WITH_E1 = 0
K_KEYS_WITH_E2 = 0
K_KEYS_WITH_E3 = 2
K_KEYS_WITH_E4 = 0
K_KEYS_WITH_E5 = 6

NULL_SUBSUMED_INCIDENCE = 9
GENERIC_OR_LINEAGE_INCIDENCE = 8
TARGET_CONDITIONED_INCIDENCE = 3
TARGET_CONDITIONING_PARTIAL_INCIDENCE = 1
EMPIRICALLY_INHERITED_INCIDENCE = 3
MODEL_OR_REALIZATION_DEPENDENT_INCIDENCE = 20
FW_STRING_M_SPECIFIC_ADDITIONAL_COMMITMENT_INCIDENCE = 6

NULL_SUBTRACTED_RESIDUE = NONEMPTY
RESIDUE_HIGHEST_SCOPE = S3_FRAMEWORK_WIDE
RESIDUE_CORE_STATUS = CORE_OR_FRAMEWORK_LEVEL

DIRECT_FW_STRING_M_EMPIRICAL_DISCRIMINATOR_AFTER_NULL = NO
FRAMEWORK_LEVEL_EMPIRICAL_SELECTION_AFTER_NULL = NO
```

The one E3-S relation spans K4 and K7, so it is counted once as a relation and twice in the K-key-incidence summary.

## 4. E3 remediation result

The earlier E3 zero is partially superseded.

Exact reinspection of the already-bound `SRC-FCP24-FOUNDATION-AGMON-2023` source supports a bounded controlled-recovery relation:

```text
RELATION_ID = SMNC-K4K7-01
RELATION_TYPE = E3_CONTROLLED_RECOVERY
SUBTYPE = E3-S_SUBSTRUCTURE_CONTROLLED_LIMIT
TARGET = EINSTEIN_METRIC_DYNAMICS_SUBSTRUCTURE_OF_NULL_GR
CONTROL_REGIME = E*l_s << 1 / derivative expansion in l_s^2
SOURCE_STRUCTURE = string worldsheet sigma-model beta functions / massless metric-sector effective equations
TARGET_STRUCTURE = Einstein metric field-equation substructure
ERROR_OR_CORRECTION_STRUCTURE = higher-order l_s^2 corrections beyond leading low-energy order
CALIBRATION_STATUS = CAL_NOT_ESTABLISHED
VIABILITY_STATUS = V2_POSITIVE_RECOVERY_EVIDENCE
INDEPENDENCE_STATUS = IND-Q_QUALIFIED
EMPIRICAL_STATUS = EMP1_INHERITED_SUCCESS
SCOPE_LEVEL = S0_FORMAL_SUBSTRUCTURE
```

This is not E3-F or E3-P, is not recovery of the complete GR+QFT+SM composite null, and does not independently inherit GR's empirical credit.

No E3-M is promoted. The frozen compactification and phenomenology sources source-qualify real model realization/recovery evidence, but the control does not bind a complete model-level pairwise record containing every Method-required control/error/preserved-failed/calibration element for a specific null realization target.

Witten's bound strong-coupling/low-energy M-theory relations remain source-qualified String/M structure but immediately recover eleven-dimensional supergravity in declared regimes rather than the canonical four-dimensional null-sector object. They therefore do not create an additional pairwise null E3 relation.

```text
PRIOR_E3_COUNT = 0
REMEDIATED_E3_COUNT = 1
E3_S_COUNT = 1
E3_M_COUNT = 0
E3_F_COUNT = 0
E3_P_COUNT = 0
```

## 5. E5 remediation result

E5 is retained only where a specific material functional/organizational role is source-qualified on both sides and is more than vocabulary or K-key occupancy.

Retained E5 records:

```text
SMNC-K2-01 = representational redundancy/invariance role
SMNC-K3-01 = gauge/representation/interaction transformation organization
SMNC-K4-01 = action/amplitude/field-law dynamics role
SMNC-K5-01 = asymptotic-state/amplitude scattering-observable role
SMNC-K7-01 = low-energy/EFT scale-separation organization
SMNC-K8-01 = consistency constraints restricting admissible data
```

Withdrawn old K-level E5 assignments:

```text
K1 -> NONE_ESTABLISHED
REASON = generic carrier occupancy alone is not a material functional relation

K6 -> NONE_ESTABLISHED
REASON = inherited Lorentzian target and distinct AdS model-domain content have different provenance and no single source-qualified pairwise functional relation

K9 -> NONE_ESTABLISHED
REASON = existence of realization models and empirical accommodation do not by themselves establish a pairwise functional relation
```

```text
PRIOR_E5_COUNT = 9
REMEDIATED_E5_COUNT = 6
```

The residue does not depend on retaining E5: String/M-only additional content can contribute residue with `RELATION_TYPE = NONE_ESTABLISHED`.

## 6. Residue adjudication

The same six core additional-commitment incidences survive claim-level subtraction:

1. K1 — perturbative-string/string-field plus D-brane and candidate matrix/M-theory carrier family;
2. K2 — declared-domain String/M duality architecture;
3. K3 — String/formulation-specific transformation and interaction structure;
4. K4 — String/SFT/candidate-matrix dynamical content;
5. K7 — String/M strong/weak, dimensional and dual-scale architecture;
6. K8 — String-specific formulation/compactification/duality consistency architecture.

```text
PRIOR_SPECIFIC_RESIDUE_INCIDENCE = 6
REMEDIATED_SPECIFIC_RESIDUE_INCIDENCE = 6
PRIOR_RESIDUE_SCOPE = S3_FRAMEWORK_WIDE
REMEDIATED_RESIDUE_SCOPE = S3_FRAMEWORK_WIDE
```

The S3 statement is bounded to the already source-bound family identity:

> The FCP-24 `FW-STRING-M` family contains material carrier, duality, formulation/transformation, dynamics, scale/duality and consistency commitments not supplied by the weaker GR+QFT+SM control.

It does not assert one universal carrier, one all-background dynamics, one complete nonperturbative definition, one vacuum selector, one generic realization, or that every internal formulation contains every residue item.

K5/K6 distinctive AdS/domain material remains scientifically real but stays model/dual-description scoped and is not promoted to the six-item core-family residue. K9 remains optional target-conditioned realization. K10 remains a model-parameter empirical constraint only.

## 7. Empirical and physical-realization verdict

The original empirical conclusion is upheld:

```text
FOUR_DIMENSIONAL_REALIZATION = MODEL_AND_VACUUM_DEPENDENT
VACUUM_SELECTION = NOT_ESTABLISHED
GENERIC_DYNAMICAL_REALIZATION = NOT_ESTABLISHED
NONEMPTY_NONPERTURBATIVE_CONTENT = YES
UNIVERSAL_COMPLETE_NONPERTURBATIVE_DEFINITION = NO

DIRECT_FW_STRING_M_EMPIRICAL_DISCRIMINATOR_AFTER_NULL = NO
FRAMEWORK_LEVEL_EMPIRICAL_SELECTION_AFTER_NULL = NO
```

The E3-S result increases recovery-relation precision but remains `EMP1_INHERITED_SUCCESS`. The LVK result remains `EMP3_MODEL_OR_PARAMETER_CONSTRAINT` and does not identify cosmic superstrings or select `FW-STRING-M`.

## 8. Claim-level methodological controls

All 20 claim records contain:

```text
CLAIM_ID
K_KEY
FW_STRING_M_PROPOSITION
NULL_PROPOSITION
COMPARATOR_ROLE_USED
SOURCE_IDS
PRIMARY_RESULT_CLASS
RELATION_TYPE
EVIDENCE_STRENGTH
PROVENANCE_STATUS
TRANSCRIBED_IN_CURRENT_PACKET
SCOPE_LEVEL
GENERICITY_PROVENANCE_TAGS
LINEAGE_STATUS
TARGET_CONDITIONING
PHYSICAL_REALIZATION_STATUS
CALIBRATION_STATUS
VIABILITY_STATUS
INDEPENDENCE_STATUS
EMPIRICAL_STATUS
FRAMEWORK_MATURITY
WEAKER_FRAMEWORK_TEST
OVERCLAIM_TEST
OVER_SUBTRACTION_TEST
RESIDUE_CONTRIBUTION
KNOWN_OPEN_BURDENS
```

The comparator role is claim-local. Recovery-target, empirical-incumbent, control-baseline and qualified foundational-competitor inferences are no longer pooled under one K-key label.

`TARGET_CONDITIONED_INCIDENCE = 3` counts exactly `SMNC-K6-01`, `SMNC-K9-01`, and `SMNC-K9-02`, for which `TARGET_CONDITIONING = YES`. `SMNC-K4K7-01` is the sole `PARTIAL` case.

`MODEL_OR_REALIZATION_DEPENDENT_INCIDENCE = 20` records that every String/M-side claim is bounded by a formulation, background, coupling/domain, compactification or model context at its declared claim scope. It does not classify every claim as an optional realization layer.

## 9. Baseline and source screens

```text
CANONICAL_BASELINE_CONTRADICTION_IDENTIFIED = NO
TARGETED_BASELINE_REPAIR_REQUIRED = NO
FCP24_REANALYSIS_REQUIRED = NO
NULL_BASELINE_REANALYSIS_REQUIRED = NO
SOURCE_REPAIR_REQUIRED = NO
NEW_SOURCE_REQUIRED = NO
```

No frozen-source reinspection contradicts the canonical FCP-24 or FCP-1/FCP-2 scientific baseline. No rejected Finding-007 source was imported.

## 10. Framework-register consequence candidate

Because one bounded control remains complete and qualified after remediation:

```text
FW_STRING_M_STATUS_CANDIDATE = PAIRWISE_COMPARISON_COMPLETE
```

The null row may identify this remediated null control as its latest bounded comparison candidate. No other framework row may change.

## 11. Downstream readiness

The remediated control now supplies a cleaner input for any later pairwise work because null/shared E5 roles, one genuine controlled-recovery relation, optional model layers, and String/M-only residue are explicitly separated.

```text
NFC_STRING_M_COMPARISON_READINESS = READY
RECURRENCE_IMPACT = INFORMATION_ADDED_NOT_RECOMPUTED
NEXT_RECOMMENDED_OPERATION = PROJECT_LEAD_REVIEW_AND_INTEGRATION_DECISION
FCP25_SELECTED = NO
```

`READY` is scientific readiness only. No NFC source was inspected and no downstream comparison is started.

## 12. Downstream firewall

```text
NFC_STRING_M_COMPARISON_STARTED = NO
NFC_AS_REANALYSIS_STARTED = NO
NFC_LOOP_REANALYSIS_STARTED = NO
RECURRENCE_RECOMPUTATION_STARTED = NO
CLAIM_LEDGER_PROPAGATION_STARTED = NO
BROADER_HOLOGRAPHIC_SOURCE_INTAKE_STARTED = NO
NEW_EMPIRICAL_NO_GO_PHASE_STARTED = NO
FCP25_STARTED = NO
```

## 13. Final verdict

> **THE PROJECT LEAD METHOD REMEDIATION PASSES. CLAIM-LEVEL DECOMPOSITION CHANGES THE PAIRWISE RELATION LEDGER BUT NOT THE CENTRAL NULL-SUBTRACTION RESULT: ONE BOUNDED E3-S EINSTEIN-METRIC RECOVERY RELATION IS NOW SOURCE-QUALIFIED, SIX STRICT E5 FUNCTIONAL RELATIONS SURVIVE, THIRTEEN MATERIAL CLAIMS HAVE NO QUALIFYING PAIRWISE RELATION, AND THE SAME SIX CORE STRING/M-SPECIFIC ADDITIONAL COMMITMENTS SURVIVE AT A BOUNDED S3 FAMILY SCOPE. NO DIRECT STRING/M FRAMEWORK EMPIRICAL DISCRIMINATOR OR FRAMEWORK-LEVEL EMPIRICAL SELECTION IS ESTABLISHED.**
