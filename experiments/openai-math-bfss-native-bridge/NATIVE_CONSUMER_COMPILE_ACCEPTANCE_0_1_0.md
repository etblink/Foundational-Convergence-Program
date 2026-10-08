# BFSS native bridge — downstream consumer compiler acceptance 0.1.0

**Status:** \`NATIVE_INTEGRATION_AND_CONSUMER_COMPILED__QUALITY_REDUCTION_NOT_YET_MET\`
**Date:** 2026-10-07
**Upstream pin:** \`openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a\`
**Lean:** v4.34.1; mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`

## Compiler evidence

[FCP native bridge workflow #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37708054630)
compiled branch commit \`d05b17c50b6e0257fe0dd8b22f954504cc0a8517\` in a temporary upstream checkout. It modified only the temporary checkout, not \`openai/math\`.

Exact tested FCP files:
- \`experiments/openai-math-bfss-native-bridge/DeformedChargeNativeAppend.lean\`, appended to pinned \`DeformedCharge.lean\`.
- \`experiments/openai-math-bfss-native-bridge/MassiveMomentsNativeConsumer.lean\`, appended to pinned \`MassiveMoments.lean\`.

Built \`OAI.MathematicalPhysics.BFSS.MassiveMoments\` with the appended bridge and checked both changed Lean source files. Native theorem and downstream axiom reports included only \`[propext, Classical.choice, Quot.sound]\`; no \`sorryAx\` or new axioms.

## Concrete consumer

The new downstream lemma is:

\`\`\`lean
lemma coreForm_eq_deformedCoreEnergy_one_zero (f : SmoothCore N) :
    M.coreForm f = M.deformedCoreEnergy 1 0 f := by
  simp only [coreForm, deformedCoreEnergy]
  simp_rw [M.deformedCoreCharge_one_zero_eq_charge]
\`\`\`

This is a **genuine source-native use** of the bridge: the original energy functional is *equal* to the existing deformed energy at \`(1,0)\`. This is a precise API interoperability improvement and makes the already developed deformed-energy body of results available for specialization. It is **not** proof that downstream source currently breaks without the interface, and does not establish a concrete SU(2) instance.

## Honest negative knowledge

The native append baseline is **264 lines** (compared with **267** for the original standalone source). The 3-line reduction is mostly naming/formatting; the tested consumer adds further lines. This does **not** satisfy the charter's substantive size/maintenance threshold.

An optimized native patch remains a **separate pending step**. Do not promote to upstream PR because a compatible consumer exists. Check opportunities to use upstream strict-pair enumeration lemmas, the finite sum commutation infrastructure, and generic matrix identities rather than simply renaming the full experimental proof.

At this evidence boundary:

\`\`\`
MATH_AND_COMPILATION = PASS
DOWNSTREAM_API_CONSUMER = PASS
UPSTREAM_PATCH_CONCISION = NOT_YET_DEMONSTRATED
UPSTREAM_AUTHOR_PERMISSION = NO
FCP_MAIN_MUTATION = NO
\`\`\`
