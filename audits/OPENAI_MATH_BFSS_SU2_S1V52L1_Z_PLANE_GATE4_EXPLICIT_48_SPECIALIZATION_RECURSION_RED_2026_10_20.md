# S1V52L1 Gate #4 — RED: explicit 48-vector specialization still forces recursion

**Disposition:** `L1_GATE4_RED__ABSTRACT_NORM_AND_ORIGINAL_TWO_I_FACTORIZATION_LOCAL_CLEAN__SOURCE48_QUADRATIC_INSTANTIATION_MAX_RECURSION__SPLIT_ACCEPTABLE_ROOTS_FROM_BLOCKER`.

## Primary evidence

- [Run 39400602156](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39400602156), job `118554059140`, **completed FAILURE**, checkout `a5264f464461e77ba9acdb4d4c26ddd178601f72`.
- Exact original source blob `69cd1431de373dda59b82ba4c4fbdecc75beba5f`, original `SU2BFSSPhysicalDomainS1V52L1OriginalZPlaneTwoVectorFactorizationProbe.lean`; permitted original BFSS source and toolchain preflight **PASSED**, accepted S2 cache **RESTORED**, required dependency oleans **PRESENT**. No L1 cache saved.
- Exact first Lean error: `...lean:74:9: error: maximum recursion depth has been reached` on `refine orthogonalUnitLinearCombination_norm (V := Source48Vector) (q := source48Quadratic) (a := sourceBlockColorAxis α 0) ...`.
- Root `orthogonalUnitLinearCombination_norm` compiled locally with `[propext, Classical.choice, Quot.sound]`.
- Root `sourceZPlane_firstVector_unit` failed with `sorryAx` (REJECTED). Explicit real 48-vector specialization did **not** remove the recursion. Its body contains no evidence of mathematical falsehood; the issue remains the concrete elaboration of the imported abstract norm theorem with original `source48Quadratic`.
- Root `sourceZPlane_twoVector_factor` compiled locally with `[propext, Classical.choice, Quot.sound]` for the *fourth independent red gate*. It establishes the exact original positive-i Clifford identity using accepted `sourceAxis_square` and `sourceAxis_anticomm`.
- All L1 gates #1–#4 are RED. Accepted cumulative S1V52 root count remains **49**; unaccepted clean local roots from failed modules may not be counted or reused as qualified dependencies.

## Distinct red-gate lessons

1. Gate #1 `let a` norm-type unification exhausted recursion before quadratic calculation.
2. Gate #2 using literal source axes moved error to concrete `QuadraticMap.map_add`.
3. Gate #3 abstract general quadratic norm **compiled cleanly**, but direct source theorem instantiation exhausted recursion; also exposed a doc-comment parser error, now fixed.
4. Gate #4 explicit `V := Source48Vector`, `q := source48Quadratic`, literal source vectors and separately named obligations **still** exhausted recursion at `refine` application. Parser defect eliminated.

**Strategy change:** STOP monolithic two-/three-root gates combining accepted-in-isolation algebraic statements with the unqualified 48-vector norm bridge. Create an independent strict L1A module containing *only* the known clean generic quadratic identity and exact source Clifford factorization. Qualify them with dedicated source-pinned CI and cache, then separately attack the 48-source norm with a named coordinate formula or transported sum-of-squares geometric lemma (L1B) rather than repeating the abstract theorem application. No unproved hypotheses or substitute 48-vector form. This separates real accepted value from a compiler engineering issue while preserving the open mathematical boundary.

L2 (genuine original `lipschitzGroup source48Quadratic`) cannot be imported/qualified until the source-specific vector norm is strictly proved. S1 star unitarity and S2 evenness are accepted, Lipschitz, full Spin, 16-block lift, exact action and continuity remain open. No canonical main, upstream, PR #25 mutation.
