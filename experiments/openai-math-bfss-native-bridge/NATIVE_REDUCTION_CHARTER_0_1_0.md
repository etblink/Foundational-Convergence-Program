# Native BFSS bridge reduction — quality-gated experiment 0.1.0

**Status:** DESIGNED, NOT YET NATIVELY COMPILED
**Date:** 2026-10-07
**Branch:** \`research/openai-math-bfss-native-bridge\`
**Parent:** Independently accepted research branch \`research/openai-math-family270b-lemma21-bridge-audit\` at \`69444c65044414509b57e5f2c49d862d89ec565f\`
**Frozen upstream:** \`openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a\`
**Lean/mathlib:** 4.34.1 / \`d13f23b723b8a846827a245b89c10fc7d3f11612\`
**Compiler-verified proof:** \`experiments/openai-math-family270b-lemma21-bridge-audit/Family270BBridgeProbe.lean\`, blob \`9c679976278c617462d37da04f36a66bf7100f4c\`, run [#24](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37704157463).

## Objective

Find the smallest upstream-native BFSS interface that *earns* maintenance:

1. \`M.deformedPotentialMultiplier 1 0 x α = M.bracketMultiplier α x\`.
2. \`M.deformedCoreCharge 1 0 α f = M.charge α f\`.
3. \`M.coreForm f = (1/2)*gradient_energy + integral(deformedBosonicPotential 1 0 + deformedFermionField 1 0)\`.

No new analytic or concrete SU(2) claim. Preserve \`M : AlgebraData N\`. Do not add axioms, \`sorry\`, \`admit\`, weakened hypotheses, or circular lemma import.

## Native integration candidates

**Preferred:** append the essential helpers and main lemmas inside \`lean/OAI/MathematicalPhysics/BFSS/DeformedCharge.lean\`, under existing \`namespace OAI.BFSSQuantum.AlgebraData\`, where existing \`deformedCoreCharge_apply\` and \`averaged_core_energy\` live. Confirm where the current namespace closes and whether helper placement introduces a circular dependency.

**Fallback:** one sibling \`lean/OAI/MathematicalPhysics/BFSS/UndeformedBridge.lean\` importing \`DeformedCharge.lean\`, if direct addition would make a central file disproportionately long or harm import organization. A sibling is not intrinsically a smaller contribution.

The experimental source is 267 lines, including debug \`#print axioms\` and commentary. Hiding the existing ~200+ proof lines in a separate file is NOT an acceptable size reduction.

## Proof-reduction opportunities, ordered by safety

1. Delete experiment prefix from theorem names and remove internal-only debugging commands from the *candidate patch*, retaining axiom checks in FCP's validation harness.
2. Reuse proven upstream finite-sum and strict-pair conversion lemmas if their statements and orientations match. Do not invent an upstream dependency or claim one exists.
3. Consolidate redundant helper steps where Lean elaboration remains bounded. **Known negative knowledge:** the initial monolithic coefficient/multiplier expansion timed out even at two million heartbeats. Preserve the modular coefficient→multiplier→charge→form structure.
4. Avoid a family-number association in public API or comments; theorem names should communicate the exact \`(1,0)\` specialization only.
5. Measure both patch LOC and imported/modified files; a 267→250-line cosmetic rename is not a successful reduction.
6. Check whether the core-form specialization is a genuinely useful adjacent public lemma, not merely proof-coverage inflation.

## Validation protocol

A native candidate is not accepted just because the old standalone proof compiled.

1. Build its native Lean file(s) in an **ephemeral** checkout of pinned OpenAI source in CI; never push that checkout.
2. Confirm proof-compilation and standard \`#print axioms\` for all three interfaces. \`sorryAx\` forbidden.
3. Check statement equality against the already compiled research theorems (not just the printed informal formulas).
4. Repeat a dependency/duplication lookup at the same pin. Check comments and syntax for clarity.
5. Record an honest before/after diff, line count, runtime/elaboration bounds, and real downstream use.
6. Obtain a fresh diff-focused review. Recommend upstream action only after explicit human authorization.

## Stop rules

- \`NO_UPSTREAM_ACTION\` remains controlling, regardless of what local experiments prove.
- If native proof remains large and no meaningful consumer or structural simplification emerges, retain the original independently verified artifact and do not pursue a PR on momentum alone.
- If the complete concrete SU(2) track later supplies an actual consumer, that can update utility assessment. This is not a reason to delay or distort either track.
- Changes to FCP canonical science, FCP main, or \`openai/math\` are outside this experiment.

**Operating test:** protect the quality threshold, not the opportunity.
