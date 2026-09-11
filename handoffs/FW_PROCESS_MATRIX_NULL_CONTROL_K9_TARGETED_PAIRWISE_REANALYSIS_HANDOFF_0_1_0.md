# FW-PROCESS-MATRIX Null-Control K9 Targeted Pairwise Reanalysis — Handoff 0.1.0

```text
OPERATION = FW_PROCESS_MATRIX_NULL_CONTROL_K9_TARGETED_PAIRWISE_REANALYSIS
DATE = 2026-09-10
STATUS = COMPLETE_CANDIDATE_PENDING_QUALIFICATION_AND_INTEGRATION
BRANCH = research/fwpm-null-k9-targeted-reanalysis-canonical
SCIENTIFIC_BASELINE = 6770011acefcc36f57f1492c08ff58f6442ba6f1
RECOVERY_BOUNDARY = e246cb04a081b3682c3540a7be95d11765195a3f
PREREGISTRATION = ad563a933346f83cb13a85b41252c89096f64d55
```

## Result capsule

```text
AX3_PAIRWISE_RELEVANCE = YES
NEW_RECORD = PMNC-K9-04
PMNC-K9-04_RELATION = E2_REPRESENTATION
PMNC-K9-04_SCOPE = S3_FRAMEWORK_WIDE
PMNC-K9-04_BRIDGE = GENERAL_W_PRE_POSTSELECTED_MULTI_TIME_STANDARD_QM_REPRESENTATION
PMNC-K9-04_PHYSICAL_CEILING = PR2_MODEL_BRIDGE
PMNC-K9-04_INDEPENDENCE = IND-N_TARGET_CONDITIONED

PMNC-K9-01 = RETAINED
PMNC-K9-02 = RETAINED
PMNC-K9-03 = RETAINED_UNRESOLVED_WITH_REFINED_REASON

PAIRWISE_E2_COUNT = 4
NONE_ESTABLISHED_COUNT = 13
UNRESOLVED_COUNT = 1
NULL_SUBTRACTED_RESIDUE = NONEMPTY
CORE_RESIDUE_CONTENT = UNCHANGED
RESIDUE_HIGHEST_SCOPE = S3_FRAMEWORK_WIDE
```

## Scientific interpretation

The Stage-2 general-`W` proposition is a real pairwise representation result. It is broader in candidate-domain scope than the earlier selected-class realization result, but weaker in physical status because the pre/postselected construction and probabilistic implementation are load-bearing. The correct action is therefore to add a distinct E2 record rather than broaden or supersede `PMNC-K9-01`.

The framework-wide physical-selection problem remains unresolved. AX3 establishes conditional representability; it does not establish deterministic realization of every process matrix, a complete selector of physically realizable processes, physical equivalence to the null competitor, E3 recovery, empirical selection, or framework identity.

## Provenance note

Two recovery incidents precede the clean preregistration:

1. `0a53c80c3520bc2eda1bbf5d770f804b93b81f05` — preregistration accidentally written on the stale August branch ancestry; no scientific adjudication occurred there and it is superseded.
2. `b4b32308be5c084ba2093bc1876c7df8f7c7bdba` — accidental one-word placeholder added to `main`; immediately removed by `e246cb04a081b3682c3540a7be95d11765195a3f`. The recovery-boundary tree exactly matches the prior scientific baseline tree, so net repository content effect is zero.

The scientifically controlling preregistration is `ad563a933346f83cb13a85b41252c89096f64d55` on clean current ancestry.

## Required next steps

```text
1 = VERIFY_BRANCH_DIFF_IS_OPERATION_SCOPED
2 = VERIFY_NO_SOURCE_UNIVERSE_EXPANSION
3 = VERIFY_RELATION_COUNTS_AND_NONREDUNDANCY
4 = OPEN_PR_AGAINST_CURRENT_MAIN
5 = MERGE_ONLY_EXACT_QUALIFIED_HEAD
6 = AFTER_SCIENTIFIC_INTEGRATION__RUN_SEPARATE_RESULT_PRESERVING_ROUTING_AND_COMPARISON_RECONCILIATION
```

The later reconciliation may update mutable current-state/comparison summaries to the already-decided E2 count and K9 rationale, but it may not reopen science, recompute recurrence, select FCP-27, or alter non-K9 relations.