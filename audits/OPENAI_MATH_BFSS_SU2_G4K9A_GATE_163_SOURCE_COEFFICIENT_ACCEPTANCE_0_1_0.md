# BFSS SU2 G4-K9A — Gate #163 source coefficient acceptance 0.1.0

**Date:** 2026-10-09 (America/Los_Angeles). **Disposition:** `PASS__SOURCE_MASSLESS_CLIFFORD_COEFFICIENT_CROSSWALK`. **Primary classification:** `SOURCE_DERIVED`; pinned model mathematics only.

## Compiler evidence

- [BFSS SU2 Concrete Color Gate #163](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38008494296), GitHub run `38008494296`, job `114082756794`: completed **SUCCESS**, target commit `8498deb950886dc38a67bded64a1ea937bd19786`, source tree `20a07f0e8c0f388c3e03b1309ad79b930b6e5cb3`, parent `ae171da0352696f8dd0e3f219ee883506c49fc5e`.
- Candidate `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K9ASourceChargeCoefficientCrosswalkProbe.lean`, source blob `5e5f10f4c79f45f4b2bb4d6cdf1dbe71573616dd`.
- Pinned Lean `4.34.1`, `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Warm accepted-source compiled cache restored and validated; separately compiled Gate #159 and #162 proof sources also passed.
- `lake env lean SU2BFSSG4K9ASourceChargeCoefficientCrosswalkProbe.lean` succeeded; the two `#print axioms` outputs are each exactly `[propext, Classical.choice, Quot.sound]` and contain no `sorryAx`. No error.
- Completed in approximately 2m52s, preserving independent accepted-theorem rechecks.

## Exact mathematical acceptance

1. `sourceMasslessPotentialMatrix_eq_neg_pairSum`: for *arbitrary source* `M : AlgebraData N`, the genuine `deformedPotentialMatrix 1 0 x A` is the negative sum of original `BFSSGamma.pairGamma` contractions, with the mass term exactly zero.
2. `sourceMasslessPotentialCoefficient_eq_pairSum`: the actual `deformedPotentialCoefficients 1 0 x α (β,A)` equals a **positive** upper-triangular spatial-pair sum, with spin indices `α,β` in original order. The sign reversal arises from pinned `BFSSGamma.pairGamma_skew` and the original reversed coefficient-index convention; no surrogate algebra is introduced.

Together these resolve the deformed-potential sign/transposition problem on authentic source definitions. This is stronger than checking a numerical gamma representation but weaker than proving original and deformed potential multipliers equal.

## Unproved boundary and next mathematical uncertainty

The literal original `M.bracketMultiplier α x` sums over all *ordered* spatial indices `i,j` and uses `M.gammaTwo i j`, while the now-qualified deformed coefficient is summed only over `i<j` and uses `BFSSGamma.pairGamma`. It remains to prove, from the source `coordinateBracketAll_skew`, `gammaTwo_alt` and the unaltered color coefficients, the exact ordered-pair → upper-triangle identity. No full `deformedPotentialMultiplier 1 0 = bracketMultiplier`, `deformedCoreCharge 1 0 = charge`, `deformedCoreEnergy 1 0 = coreForm`, equality of closed-form domains/operators, spectral equivalence or mass-gap result is accepted here.

FCP records `SRC-FCP24-NONPERT-BFSS-1997` and `SRC-OPENAI-MATH-F270B-BFSS-2026`, with controlling adjudication `audits/OPENAI_MATH_FAMILY270B_BFSS_T6_SOURCE_DELTA_ADJUDICATION_0_1_0.md`. This source-bound comparison changes no framework truth, K1–K10, recurrence or empirical status.

Next scope: G4-K9B establishes the upper-pair source alias and gamma-two identity, and conditionally reduces full source charge and form equivalences to the single explicit potential-multiplier equality. The conditional premise must remain visible; it is not a proved antecedent. No main merge or upstream PR.
