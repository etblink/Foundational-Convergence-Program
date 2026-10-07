# Family 270-B — Independent BFSS Lean Bridge Review Handoff 0.1.0

**Role:** Independent adversarial mathematical/Lean reviewer and upstream-value evaluator. Fresh conversation preferred.

**Scope:** Read-only against all repositories. Produce a report only; do not fork, branch, commit, open an issue, or open a PR.

## A. Sources

1. Pinned OpenAI source: `https://github.com/openai/math` commit `adc7f1241b42e322a6451854ab7e4b4c146bf78a`.
2. Lean `v4.34.1`, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
3. FCP source: `https://github.com/etblink/Foundational-Convergence-Program`.
4. Branch: `research/openai-math-family270b-lemma21-bridge-audit`.
5. Compiler-qualified **proof commit**, not the later report commit: `aa60be3b4faa776f4ac8682a9e3222f86288ac11`.
6. Proof path: `experiments/openai-math-family270b-lemma21-bridge-audit/Family270BBridgeProbe.lean`.
7. Proof Git blob `9c679976278c617462d37da04f36a66bf7100f4c`.
8. CI: [Audit #24](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37704157463), [#23](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37703763674), [#22](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37703477951), [#20](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37702617483).
9. Branch-local acceptance report: `audits/OPENAI_MATH_FAMILY270B_LEMMA21_BRIDGE_COMPILE_ACCEPTANCE_0_1_0.md`.

## B. Independence order

Before reading our proof or acceptance report, inspect the pinned upstream `Core.lean`, `Kinetic.lean`, `GammaWords.lean`, `PotentialBasis.lean`, `DeformedCharge.lean`, and any other necessary BFSS files.

Independently determine whether the following should mathematically hold under the exact definitions:

- `M.deformedPotentialMultiplier 1 0 x α = M.bracketMultiplier α x`;
- `M.deformedCoreCharge 1 0 α f = M.charge α f`;
- the original `M.coreForm f` energy identity by specialization of `M.averaged_core_energy 1 0 f`.

Record the mathematical verdict *before* inspecting the candidate implementation. Explicitly check ordered vs unordered pairs, `gammaTwo` vs `pairGamma`, the `(β, α)` index reversal, minus signs, factor `1/2`, and `1/16` averaging.

Then read the FCP proof and report. Review every helper and primary theorem, assuming prior agents may have made subtle mistakes despite green CI.

## C. Verification objectives

1. Verify the proof is source-pinned and genuinely compiled, and not an effect of an unrelated upstream revision or weakened hypothesis.
2. Check every relevant theorem's assumptions, including the **abstract** `M : AlgebraData N` fields. Clarify what `#print axioms` does and does not certify.
3. Re-examine actual proof's treatment of symmetry, diagonal terms, gamma skewness/transposition, finite-sum reindexing, color structure constants, scalar casts, and continuous linear maps.
4. Check whether equivalent theorems or pathways **already exist** elsewhere in pinned OpenAI BFSS, not merely with different names.
5. Judge scientific and engineering value of upstreaming the ~267-line standalone proof into a native BFSS module. Is it smaller after idiomatic refactor? Is the new theorem useful beyond a documentation link?
6. Assess whether the purported relationship to Family 270-B Lemma 2.1 is accurate and appropriately qualified. Do **not** equate this conditional algebraic core-form bridge with an end-to-end concrete `SU(2)` formalization, gauge-invariance proof, or spectral theorem.
7. If the contribution is worthwhile, propose the **smallest upstream-native patch architecture** and test requirements, without executing any external effects.
8. Identify any material concerns that would change the recommendation. A finding of modest value, redundancy, or overclaim is welcome.

Do not use `sorry`, `admit`, new axioms, or tacitly weakened statements. Do not claim to have independently compiled anything you did not compile.

## D. Required output

Declare provider/model/session (if available), prior Family 270-B/TFP/FCP exposure, and any persistent-memory influence. Distinguish independent source reasoning from later patch-informed checking.

Return:

- `MATHEMATICAL_VERDICT = VALID | DEFECT | INDETERMINATE`
- `LEAN_VERDICT = VERIFIED_FROM_CI | INDEPENDENTLY_COMPILED | UNVERIFIED | DEFECT`
- `NOVELTY_VERDICT = GENUINE_LINK | DUPLICATE | INDETERMINATE`
- `UPSTREAM_VALUE = WORTH_CONSIDERING | MARGINAL | NOT_WORTHWHILE | INDETERMINATE`
- `SCOPE_CEILING = ...` (plain-language precise limit)
- A concise evidence-based explanation and source pointers for every finding.
- Any minimal corrective patch proposal, **uncommitted**.

The final decision about a public upstream contribution belongs to the human owner and FCP Project Lead; this assignment does not confer upstream authorization.

**Operating maxim:** Protect the quality threshold, not the opportunity.
