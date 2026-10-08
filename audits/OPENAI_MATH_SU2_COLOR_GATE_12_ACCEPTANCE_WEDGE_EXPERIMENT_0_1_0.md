# Relative SU(2) color — Gate #12 acceptance and wedge-potential experiment 0.1.0

**Date:** 2026-10-07
**Accepted disposition:** \`STRUCTURE_CONSTANT_MATCH_COMPILED_UNDER_PAULI_COLOR_IDENTIFICATION\`
**Pinned external source:** \`openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a\`
**Lean:** v4.34.1; mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`

## Gate #12 exact compiler result

- FCP branch: \`research/openai-math-su2-concrete-potential\`
- Successful commit: \`ec12c13453360bc4b39cb23c39ac1e33f58d3197\`
- Exact [Actions run #12](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37711171645): **SUCCESS**.
- The pinned upstream \`OAI.MathematicalPhysics.BFSS.Core\` module built and the probe compiled.
- All reported theorem axioms, including \`normalizedPauli_trace_epsilon_sum\`, \`normalizedPauli_structureConstant_trace\`, and \`algebraData_structureConstant_of_pauli_color\`, were only \`[propext, Classical.choice, Quot.sound]\`; no \`sorryAx\` and no proof errors.

Precisely proven (conditional API statement):

\`\`\`lean
lemma algebraData_structureConstant_of_pauli_color
    (M : OAI.BFSSQuantum.AlgebraData 2)
    (hcolor : ∀ a : OAI.BFSSQuantum.ColorIndex 2,
      M.color a = normalizedPauli a)
    (a b c : OAI.BFSSQuantum.ColorIndex 2) :
    M.structureConstant a b c = Real.sqrt 2 * epsilon3 a b c
\`\`\`

**Not proven**: existence of the complete \`AlgebraData 2\` with this color map. The existing fields still require \`color_spanning\`, a concrete 9D real gamma representation and 48 fermionic CAR operators, irreducibility, etc.

## Gate #10–11 negative knowledge

Both early attempts imported the pinned upstream local \`OAI.MathematicalPhysics.BFSS.Core\` without first building that module. The error was \`unknown module prefix 'OAI'\`. Run #12 repaired CI by explicitly building the required upstream module. No mathematical proof repair was required by #10–11, because the checker had not reached those lemmas.

## Next candidate — conditional undeformed potential bridge

After Gate #12, the research branch added:

1. \`coordinateBracket_of_pauli_color\`: for \`M\` and \`hcolor\` as above, the *actual pinned* \`M.coordinateBracket x p a\` is \`√2\` times the three-color cross-product component of spatial rows \`x_i\`, \`x_j\`.
2. \`deformedBosonicPotential_one_zero_eq_wedge\`: the pinned \`M.deformedBosonicPotential 1 0 x\` equals the sum over strict spatial pairs of the three squared color minors \`colorWedgeSquared\`.

Targeted source: \`lean/OAI/MathematicalPhysics/BFSS/PotentialBasis.lean\`.

This proof candidate and its updated workflow build **have not yet been compiler-accepted**. The active candidate commit is \`4813abca3748dd0b4cbd6645db5a8884aa6b1c7f\`. Earlier commits \`e84aab1...\` and \`f73a0e2...\` were preparatory and might yield red superseded workflow runs; evaluate the latest commit only.

Upon clean Lean validation (and standard axiom reports), the next decision is whether to discharge \`color_spanning\` concretely or pursue a useful conditional analytic bridge. It would remain incorrect to claim gauge invariance, a concrete fermion representation, or positive eigenvalues from this algebraic identity alone.

**Effects boundary:** No FCP main changes, OpenAI repo mutations, upstream public contributions, or claims of full model instantiation.
