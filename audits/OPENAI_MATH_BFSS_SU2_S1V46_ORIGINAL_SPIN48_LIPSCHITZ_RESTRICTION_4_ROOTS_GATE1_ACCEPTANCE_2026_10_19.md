# S1V46 — Original genuine Spin48-to-Lipschitz48 action and determinant restriction — Gate #1 ACCEPTED

**Project Lead disposition (October 19 PDT / October 20 UTC 2026):** `S1V46_G1_FOUR_SOURCE_SPIN_LIPSCHITZ_RESTRICTION_ROOTS_KERNEL_PASS__S1V45_CACHE_RESTORED__S1V46_CACHE_SAVED__GL_AND_REAL_DET_CHAR_EQ_VERIFIED__SPIN_ORIENTATION_AND_LIFT_OPEN`.

## Strict verification and pins

- [S1V46 Original Spin/Lipschitz Restriction Bridge Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39368389966), job `118450364343`, **SUCCESS**. Strict source/workflow commit `bd172a6b1c30bc8967424c8757a4267d2d626212`, proof source authoring commit `2c5c2bac5adc009a13b1f501f9502e79e7db5cb0`, exact Lean Git blob `580e66b7ea3176cf861c46197cb1ac85db9cc4c4`.
- Original immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Original source and SHA preflight passed; real source labels `Fin 24 × Fin 2 → ℝ` and `source48Quadratic` unchanged.
- Previously strictly qualified S1V45 cache **restored**: `bfss-s1v45-isolated-source48-grade-det-closure-v1-adc7f124-lean4341-d13f23b-Linux-X64`. All expected original qualified `.olean` prerequisites checked nonempty, including Spin-only S1V35/S1V36 and genuine Lipschitz S1V40–S1V45.
- Exact file `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V46OriginalSpinLipschitzRestrictionBridgeProbe.lean` built nonempty `.olean`. Exactly FOUR original namespaced `#print axioms` roots, EACH with only `[propext, Classical.choice, Quot.sound]`; no compiler errors, unknown identifiers, `sorryAx` or proof holes. Strict marker `S1V46_ORIGINAL_SPIN_LIPSCHITZ_RESTRICTION_4_ROOTS_KERNEL_PASS`.
- New qualified compilation cache successfully **saved**: `bfss-s1v46-isolated-source48-spin-lipschitz-bridge-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Diagnostic artifact `bfss-s1v46-spin-lipschitz-bridge-39368389966` preserved by workflow.

## FOUR qualified original-source mathematical roots
1. `FCP.BFSSS1V46.sourceSpin48ToActualLipschitz`: a true multiplicative homomorphism `spinGroup source48Quadratic →* lipschitzGroup source48Quadratic`, using pinned `spinGroup.toUnits` and `spinGroup.units_mem_lipschitzGroup` rather than postulating a new or surrogate lift. Literally the same underlying Clifford unit.
2. `sourceSpin48VectorAction_eq_lipschitz`: for every genuine original-source Spin element and every original real 48-vector, S1V31's chosen unique Clifford-conjugated vector is equal to S1V40's uniquely chosen real Lipschitz-conjugated vector after restriction. Proof via the accepted S1V30 original `ι` injectivity and both authentic pinned conjugation identities. No convenient matrix-label transport is substituted.
3. `sourceSpin48LinearEquiv_eq_lipschitz`: exact equality of accepted S1V34's Spin-only original real GL48 equivalence and the S1V41 genuine Lipschitz GL48 equivalence after this inclusion.
4. `sourceSpin48OriginalRealDetCharacter_eq_lipschitz`: literal equality of original S1V36 Spin determinant character and S1V41 Lipschitz determinant character, on EVERY genuine Spin element via the accepted GL equality.

## Scientific limit and next bounded target
These results **do not** prove orientation `χ(s)=1`; they remove the separate true source representation-identification obstacle. Combining with S1V45's universal actual Lipschitz grade/determinant identity and pinned `spinGroup.involute_eq` (grade fixedness) now reduces orientation to cancellation of a nonzero genuine Clifford unit and faithfulness of the scalar embedding `ℝ → CliffordAlgebra source48Quadratic`.

**Next target S1V47**: establish the requisite scalar-embedding injectivity for the ORIGINAL finite 48-real Clifford algebra, avoiding a false general assertion for Clifford algebras over arbitrary commutative rings. One source-based approach: use accepted injective Clifford generator `FCP.BFSSS1V30.source48_cliffordGenerator_injective` to give `Nontrivial (CliffordAlgebra Q)`, then the field-to-nontrivial-algebra injectivity theorem `RingHom.injective` or `FaithfulSMul.algebraMap_injective` from pinned Mathlib. Work in genuine Clifford **units** using accepted S1V44 scalar-unit map, S1V45 universal parity and pinned Spin evenness. Strictly qualify each bridge before universal det+1, then rewrite by accepted S1V46 character equality and S1V36's exact source character.

Do not infer a continuous normalized SU2→Spin48 lift, topological covering, kernel/parity equivalence, manuscript's separately defined Clifford module/intertwiner, physical closed-operator transfer, or BFSS positive spectrum and mass gap. Canonical FCP scientific program `main` remains separate from experimental BFSS verification branch.

## Repository safeguards
This is an audit-only commit (documentation path-exempt from experimental CI), preserves S1V45 source, S1V46 strict accepted module and exact pins; canonical main, upstream math, and draft PR #25 remain unchanged.
