# BFSS SU2 G4-K9C — ordered-pair source coefficient launch 0.1.0

**Date:** 2026-10-09 (America/Los_Angeles). **Status:** `UNCOMPILED_CANDIDATE`. **Parent:** Gate #164 success, exact commit `87e78a95ed7bbca790180fb120f11b08746f0ea4`, source tree `3c89cfde791a36c42d3b21fb152e9c388babb738`, new K9B source blob `3bc2712a1c56e86e9e996dcee3052409e23a2e73`, Gate #164 acceptance audit commit `57545a3e0bddfb5e624e8ead6edce0e7dd76babb`.

## Scientific objective

Discharge the only nontrivial spatial-pair index conversion remaining before potential-multiplier equality. Gate #163 compiled source-definitional sign/transpose matching; Gate #164 proved source upper-pair/gammaTwo aliases, exact kinetic cancellation and conditional whole-core charge/form equivalences. Their conditional hypotheses **remain unproved**.

The original source `AlgebraData.bracketMultiplier` uses all ordered spatial `i,j` with factor 1/2, source `coordinateBracketAll` and `gammaTwo`. Source `AlgebraData.deformedPotentialMultiplier 1 0` uses only `BFSSGamma.SpatialPair` (strict i<j) and the already-qualified source `deformedPotentialCoefficients`. Original `coordinateBracketAll` and `gammaTwo` are each antisymmetric in the spatial pair. Their product is symmetric and has zero diagonal, implying the exact finite-sum parity identity.

## Candidate theorem chain / acceptability

1. `symmetricZeroDiagonal_halfDoubleSum_eq_upper`: abstract fully typed finite real sum identity, with all required symmetry and zero-diagonal assumptions explicit.
2. `sourceOrderedCoefficient_symmetric`: discharge the symmetric product premise from literal source `coordinateBracketAll_skew` and `gammaTwo` definition.
3. `sourceOrderedCoefficient_diagonal_zero`: discharge the diagonal premise from the actual `gammaTwo` definition.
4. `sourceOriginalOrderedCoefficient_eq_upper`: specialize generic identity to exact original BFSS source coefficients for any `AlgebraData N`.
5. `sourceMasslessCoefficient_eq_halfOriginalOrdered`: use compiled G4-K9B upper coefficients to show source massless deformed coefficient equals one-half of original entire spatial ordered-pair contraction.

Require compiler confirmation under pinned Lean `4.34.1`, `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, all five axiom reports exactly `[propext, Classical.choice, Quot.sound]` and no `sorryAx`. Preserve frozen source G4-K8E3 / K8E4 / K9A / K9B independent checks and compiled proof cache.

## After acceptance, not yet implied

Next operator-level task is reordering `AlgebraData.bracketMultiplier`'s B,C,β,A sums and grouping the exact fermionic `theta` operators, so this indexed equality becomes the unconditional `M.deformedPotentialMultiplier 1 0 x α = M.bracketMultiplier α x`. Only then may G4-K9B's conditional whole-core charge/form results become unconditional. Even that is not an equality of closed Hamiltonian domains or spectral theory.

FCP sources: `SRC-FCP24-NONPERT-BFSS-1997`, `SRC-OPENAI-MATH-F270B-BFSS-2026`, FCP T6 independent source-delta adjudication and `FCP24-STRING-002`. No framework, physical realization, large-N, empirical or mass-gap promotion. No main merge, upstream PR or new axiom. Do not inspect triggered CI before owner-reported color.
