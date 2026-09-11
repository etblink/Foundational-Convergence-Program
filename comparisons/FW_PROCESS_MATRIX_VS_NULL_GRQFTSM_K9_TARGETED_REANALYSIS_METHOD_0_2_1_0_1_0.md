# FW-PROCESS-MATRIX vs FW-NULL-GRQFTSM — K9 Targeted Reanalysis Delta — Method 0.2.1

```text
OPERATION = FW_PROCESS_MATRIX_NULL_CONTROL_K9_TARGETED_PAIRWISE_REANALYSIS
STATUS = COMPLETE_CANDIDATE
DATE = 2026-09-10
PARENT_COMPARISON = comparisons/FW_PROCESS_MATRIX_VS_NULL_GRQFTSM_METHOD_0_2_1_0_1_0.md
DELTA_SCOPE = K9_ONLY
```

## 1. Controlling delta

This artifact does not rewrite the historical comparison. It records the prospective K9-only delta produced by the separately preregistered closed-corpus reanalysis.

```text
PMNC-K9-01 = RETAIN__E2_REPRESENTATION__S1_MODEL_OR_EXTENSION
PMNC-K9-02 = RETAIN__NONE_ESTABLISHED__S1_MODEL_OR_EXTENSION
PMNC-K9-03 = RETAIN__UNRESOLVED_UNDER_FROZEN_CORPUS__S3_FRAMEWORK_WIDE__RATIONALE_REFINED
PMNC-K9-04 = ADD__E2_REPRESENTATION__S3_FRAMEWORK_WIDE__CONDITIONAL_POSTSELECTED_STANDARD_QM_REPRESENTATION
```

## 2. New record

```text
CLAIM_ID = PMNC-K9-04
K_KEY = K9
RELATION_TYPE = E2_REPRESENTATION
CANDIDATE_SOURCE_IDS = SRC-FWPM-REAL-SILVA-MULTITIME-2017
CANDIDATE_SCOPE = ARBITRARY_FORMALLY_VALID_PROCESS_MATRIX_W
TARGET = FW-NULL-GRQFTSM__STANDARD_QUANTUM_PROBABILISTIC_OPERATIONAL_LAYER
ASSUMPTIONS = A_STDQM;A_POSTSEL
SCOPE_LEVEL = S3_FRAMEWORK_WIDE
PHYSICAL_REALIZATION_STATUS = PR2_MODEL_BRIDGE
VIABILITY_STATUS = V2_POSITIVE_RECOVERY_EVIDENCE
INDEPENDENCE_STATUS = IND-N_TARGET_CONDITIONED
EMPIRICAL_STATUS = EMP0_NONE
RESIDUE_CONTRIBUTION = NONE
```

Material content: arbitrary valid `W` has an equivalent pre/postselected multi-time quantum representation and a probabilistic implementation recipe. This is a genuine relation to the null comparator's quantum operational layer but not a general deterministic realization or complete physical-selection law.

## 3. Nonredundancy rule

`PMNC-K9-04` is not merged with `PMNC-K9-01` because their relation tuples are materially different:

```text
K9-01 = SELECTED_CLASS + TIME_DELOCALIZED_SUBSYSTEM_REALIZATION + PR3 + S1
K9-04 = GENERAL_W + PRE_POSTSELECTED_REPRESENTATION + PR2 + S3 + POSTSELECTION_CONDITIONING
```

The first is scope-narrower and physically stronger. The second is scope-broader and physically weaker/conditional.

## 4. K9-03 rationale refinement

The prior framework-wide selection burden remains unresolved, but AX3 removes one possible source of uncertainty:

```text
GENERAL_W_CONDITIONAL_REPRESENTABILITY = ESTABLISHED
GENERAL_W_DETERMINISTIC_REALIZATION = NOT_ESTABLISHED
GENERAL_COMPLETE_PHYSICAL_SELECTION_CRITERION = NOT_ESTABLISHED
```

Therefore the unresolved burden is no longer properly described as uncertainty about whether arbitrary valid `W` can be represented at all within conditional standard-QM machinery. It is the stronger physical-selection/realization question across realization layers.

## 5. Count delta

```text
E2_REPRESENTATION = 3 -> 4
NONE_ESTABLISHED = 13 -> 13
UNRESOLVED_UNDER_FROZEN_CORPUS = 1 -> 1
```

No other relation type changes in this bounded operation.

## 6. Residue delta

```text
NULL_SUBTRACTED_RESIDUE = NONEMPTY -> NONEMPTY
RESIDUE_HIGHEST_SCOPE = S3_FRAMEWORK_WIDE -> S3_FRAMEWORK_WIDE
CORE_RESIDUE_CONTENT = UNCHANGED
K9_REPRESENTATION_VIABILITY = STRENGTHENED
```

The new E2 relation receives no independent residue credit because the bridge is explicitly target-conditioned and uses standard-QM/postselection machinery. The open K9-03 selection burden remains an open burden, not a positive residue item.

## 7. No-propagation vector

```text
K1_K8 = UNCHANGED
K10 = UNCHANGED
E1 = UNCHANGED
E3 = UNCHANGED
E4 = UNCHANGED
E5 = UNCHANGED
EMPIRICAL = UNCHANGED
RECURRENCE = NOT_RECOMPUTED
NON_NULL_COMPARISONS = UNCHANGED
FCP27 = NOT_SELECTED
```

## 8. Canonicalization requirement

After scientific integration, mutable routing/navigation surfaces and any live comparison summary that still reports the old K9 relation count should be reconciled in a **separate result-preserving maintenance operation**. That later reconciliation may propagate only the already-adjudicated K9 delta above and may not perform new scientific reasoning.