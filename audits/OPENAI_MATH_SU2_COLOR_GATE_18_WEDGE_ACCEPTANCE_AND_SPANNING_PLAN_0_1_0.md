# BFSS SU(2) color — Gate #18 wedge acceptance and spanning plan 0.1.0

**Status:** \`CONDITIONAL_CONCRETE_WEDGE_POTENTIAL_COMPILED__PAULI_SPANNING_IN_PROGRESS\`
**Date:** 2026-10-07
**Frozen upstream:** \`openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a\`
**Lean:** 4.34.1; **mathlib:** \`d13f23b723b8a846827a245b89c10fc7d3f11612\`
**FCP branch:** \`research/openai-math-su2-concrete-potential\`

## Gate #18 compiler acceptance

- **Successful** [Actions run #18](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37712840592), exact source commit \`19e6a802528bbc65cdab31897ffd4c05fdc08cf6\`.
- Compiled upstream \`OAI.MathematicalPhysics.BFSS.PotentialBasis\` in a disposable pinned checkout and then the FCP Lean probe.
- \`coordinateBracket_of_pauli_color\` and \`deformedBosonicPotential_one_zero_eq_wedge\` both report exactly \`[propext, Classical.choice, Quot.sound]\`, with no \`sorryAx\`.

**Actual theorem:** for \`M : OAI.BFSSQuantum.AlgebraData 2\` **under the explicit hypothesis** \`∀ a, M.color a = normalizedPauli a\`, and \`x : Boson 2\`,

\`\`\`
M.deformedBosonicPotential 1 0 x =
  ∑ p : BFSSGamma.SpatialPair,
    ((x (p.1.1,0) * x (p.1.2,1) - x (p.1.1,1) * x (p.1.2,0))^2 +
     (x (p.1.1,0) * x (p.1.2,2) - x (p.1.1,2) * x (p.1.2,0))^2 +
     (x (p.1.1,1) * x (p.1.2,2) - x (p.1.1,2) * x (p.1.2,1))^2)
\`\`\`

This is an exact, conditional identification of the pinned OpenAI BFSS bosonic potential and the concrete squared spatial/color wedge expression. It is **not** an unconditional construction of the full \`AlgebraData 2\`, a proof of a concrete Hamiltonian, or a proof of positive eigenvalues.

## Error history worth preserving

- Gates #13–14 were intermediate commits while introducing the potential and its upstream module dependency.
- Gate #15 compiled the \`coordinateBracket\` bridge but had a final equality mismatch in the wedge theorem.
- Gate #16's attempted \`simpa only [epsilon3_contraction, colorWedgeSquared]\` did not close the goal.
- Gate #17's direct \`rw [Fin.sum_univ_three]\` failed to match the unexposed upstream \`ColorIndex 2\` finite sum.
- Gate #18 exposed the definitional \`Fin 3\` index with \`change\` and then used a three-component polynomial identity. It compiled without any admitted axioms.

## Next scoped obligation: the color spanning field

In pinned \`OAI.MathematicalPhysics.BFSS.Core\`, \`AlgebraData 2\` requires \`color_spanning\`: every traceless **Hermitian** complex 2×2 matrix must have a decomposition in the three normalized Pauli matrices with **real coefficients**. We have independently verified Hermiticity, zero trace, pairwise trace orthonormality, and normalized commutators, but **not** this spanning field.

Source research found an existing upstream theorem \`OAI.KirchbergRordam.Pauli.coeff_sum\` in \`lean/OAI/Analysis/CharacterCriterion/Pauli.lean\` establishing full 4-Pauli-basis completeness for arbitrary complex 2×2 matrices. The next FCP experiment reuses that theorem:

1. Identify \`pauli a\` with the native \`Pauli.e a.succ\`, for \`a : Fin 3\`.
2. Show trace zero kills the identity-basis coefficient.
3. Thus obtain the three-color decomposition with **complex** coefficients.
4. Subsequently show each coefficient is real if \`X.IsHermitian\`, and rescale by \`√2\) to construct the exact \`color_spanning\` field.

The new Lean probe and CI updates were submitted sequentially:
- proof commit \`2ca7d7ec19a22e6d4139b5eca62dd284c08676f9\`,
- workflow dependency build commit \`2008e9f0be00a0b1d093b52753efc3a03c5f594f\` — **active candidate for next CI assessment**.

The new complex-spanning result is **not compiler-accepted yet** and must not be stated as proven until CI passes. If the native Pauli import imposes outsized compilation cost or incompatibility, consider a local explicit finite-matrix proof instead.

## Scientific and effects boundaries

This color-basis work is finite-dimensional algebra, not a concrete proof of the 16 real gamma matrices, 48 theta/CAR operators on a \`2^24\`-dimensional fermion module, irreducibility, gauge symmetry, or spectral positivity. Neither FCP main nor OpenAI upstream may be mutated; no public PR is authorized.
