# Concrete relative SU(2) BFSS — first bounded gate 0.1.0

**Status:** FIRST ALGEBRAIC GATE IN LEAN VALIDATION; no concrete model claimed.
**Source date:** 2026-10-07
**Canonical science:** FCP main unchanged. This is a separately branched, experimental mathematical formalization effort.

## Pins / precedents

- Frozen FCP canonical main at start: \`ed4c9b4827fe099f6d6be5dcd52aab7f06b45576\`.
- Pinned OpenAI Math: \`adc7f1241b42e322a6451854ab7e4b4c146bf78a\`.
- Lean v4.34.1; mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`.
- Manuscript: \`preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex\`.
- Relevant OpenAI definitions: \`lean/OAI/MathematicalPhysics/BFSS/Core.lean\`, \`PotentialBasis.lean\`, \`ColorMatrices.lean\`, \`PotentialSquares.lean\`, \`GaugeCore.lean\`.
- Independent abstract supercharge bridge was compiler-verified in FCP at proof commit \`aa60be3b4faa776f4ac8682a9e3222f86288ac11\` and remains **separate**; its result is conditional on \`AlgebraData N\`.

## Explicit scientific target and expected identity

The manuscript defines \`T_a = σ_a / sqrt 2\`, \`Tr(T_a T_b) = δ_ab\`, and \`f_abc = sqrt 2 * ε_abc\`.

OpenAI's pinned Lean potential at \`(h,m)=(1,0)\` is definitionally
\`\`\`
M.deformedBosonicPotential 1 0 x =
  (1/2) * sum_A (sum_{p:i<j} (shiftedPair 1 0 (coordinateBracket x _ A) _ p)^2)
\`\`\`
with mass-tail contributions vanishing. Since \`shiftedPair 1 0 = -coordinateBracket\`, the square removes the minus sign.

The desired *concrete* formula, in the manuscript's color/spatial index convention, is:
\`\`\`
V(x) = sum_{a<b} |x^a ∧ x^b|^2
     = sum_{a<b} sum_{i<j} (x_i^a*x_j^b - x_j^a*x_i^b)^2
\`\`\`
(the wedge norm convention must be explicitly matched).

The finite algebra behind this identity is
\`\`\`
(1/2) * sum_{a=0}^2 (sqrt(2) * sum_{b,c} ε_abc*u_b*v_c)^2
= (u_0*v_1-u_1*v_0)^2 + (u_0*v_2-u_2*v_0)^2
  + (u_1*v_2-u_2*v_1)^2.
\`\`\`

## What the first CI gate actually tests

\`SU2ColorCrossProbe.lean\` formalizes \`ε_abc\`, three cross-product components, and the scalar identity over \`Fin 3\`. It is small enough that the normalization and sign can be independently checked, and requires neither explicit 16-million-dimensional fermion matrices nor concrete gamma matrices.

**Passing this probe is NOT sufficient** for the abstract-to-concrete identification. It establishes only this finite algebraic sublemma.

## Remaining steps and falsifiers

1. Prove the concrete normalized Pauli matrices are Hermitian, traceless, trace-orthonormal, and have \`[T_a,T_b] = i sqrt2 ε_abc T_c\` (explicit sign convention) in the chosen basis. It may be preferable to prove the structure-constant equality directly rather than build full \`AlgebraData 2\` immediately.
2. With that explicit basis or a **clearly conditional** lemma \`hstructure\`, transfer the finite cross identity to \`M.deformedBosonicPotential 1 0\` and the color wedge sum. Any conditional lemma must conspicuously retain its hypothesis.
3. Identify the actual exterior-square norm and basis convention, not just a similar-looking polynomial.
4. Only then investigate Clifford \`B(x)\`, construction of \`AlgebraData 2\`, \`GaugeData\`, invariant smooth core and the manuscript's gauge-invariant form.
5. Before committing to the full positive-eigenvalue theorem, commission a source-first adversarial check of the manuscript's orthogonal interlacing / transverse oscillator exclusion and confinement, independent of our formalization.

A failed normalization, a missing concrete instance, a circular appeal to the manuscript, or intractable downstream prerequisites must be recorded as negative knowledge, not repaired by silently weakening the target.

**Forbidden scope inflation:** no claim of a gauge-invariant relative Hamiltonian, existence of a complete \`AlgebraData 2\`, positivity, compact resolvent, or eigenstates from the first algebra gate.

**Effects boundary:** only this FCP experimental research branch can change. Do not modify OpenAI's repository, file upstream issues/PRs, or change FCP main without fresh owner authorization.
