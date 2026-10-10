# BFSS SU2 G4-K9C — Gate #168 source ordered-pair coefficient acceptance 0.1.0

**Date:** 2026-10-09, America/Los_Angeles (GitHub UTC 2026-10-10). **Disposition:** `PASS__SOURCE_ORDERED_PAIR_COEFFICIENT`. **Evidence class:** `SOURCE_DERIVED_LEAN_KERNEL_QUALIFIED`.

## Compiler qualification

- [BFSS SU2 Concrete Color Gate #168](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38010633389), run `38010633389`, job `114089556336`, conclusion `SUCCESS`.
- Exact source commit `e0d7a9bfc43cb721f6acaa62db41dcd76a4ad6df`, tree `251e39efd12fad2306ed5b0de0828f6fc3178b6e`. File `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K9COrderedPairCoefficientProbe.lean`, blob `de0c447a73990b1beb271fb2afc14dc5b4e20318`.
- OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean `4.34.1`. The workflow independently recompiles exact accepted G4-K8E3, G4-K8E4, G4-K9A and G4-K9B prerequisites, all passed; source cache integrity checks also passed.
- The exact `lake env lean SU2BFSSG4K9COrderedPairCoefficientProbe.lean` step succeeded. Every one of the five new `#print axioms` outputs is exactly `[propext, Classical.choice, Quot.sound]`, with no `sorryAx` or compiler error.

## Accepted theorems (all source-typed)

1. `FCP.BFSSSU2GaugeG4K9C.symmetricZeroDiagonal_halfDoubleSum_eq_upper`: an explicit finite-sum theorem, assuming a symmetric real summand vanishing on diagonal; half ordered sum equals strict upper-triangle sum.
2. `FCP.BFSSSU2GaugeG4K9C.sourceOrderedCoefficient_symmetric`: original BFSS `coordinateBracketAll * gammaTwo` product symmetric in the two spatial indices because each factor is antisymmetric.
3. `FCP.BFSSSU2GaugeG4K9C.sourceOrderedCoefficient_diagonal_zero`: original source diagonal summand vanishes.
4. `FCP.BFSSSU2GaugeG4K9C.sourceOriginalOrderedCoefficient_eq_upper`: original source 1/2 all-ordered spatial sum equals the original source upper-triangle contraction.
5. `FCP.BFSSSU2GaugeG4K9C.sourceMasslessCoefficient_eq_halfOriginalOrdered`: the genuinely defined massless `deformedPotentialCoefficients 1 0 x α (β,A)` equals the corresponding original half-weighted full ordered spatial contraction.

The source coefficient identity applies to original `M : AlgebraData N`, any `N` on the mathematically defined source types, not only an artificially created SU(2) model or chosen radial trial. It is a coefficient identity, **not yet the equality of complete continuous linear potential multipliers**.

## Exact remaining operator-level task / independent review

Prove or disprove, using original source definitions and no extra assumptions,
```lean
∀ {N : ℕ} (M : AlgebraData N) (α : SpinIndex) (x : Boson N),
  M.deformedPotentialMultiplier 1 0 x α = M.bracketMultiplier α x
```
by converting the original `bracketMultiplier` operator sum into source `M.cliffordLinear` at the G4-K9C-qualified coefficients. The deformed side is definitionally `cliffordLinear` at `deformedPotentialCoefficients`, so all remaining uncertainty concerns finite-sum regrouping through actual source `theta` operators, operator-scalar coercions and field indices. The accepted G4-K9B `sourceCharge_eq_of_potentialAgreement` and `sourceCoreForm_eq_of_potentialAgreement` remain **CONDITIONAL** until that exact multipler equality is discharged.

Independent Grok review is authorized as a source-level mathematical adversarial derivation, not a substitute for pinned kernel compilation; repository is read-only for Grok pending separate owner authorization. User intends to send handoff. Accordingly this acceptance is audit-only: no next proof candidate is launched in this commit and no following gate should be inspected until owner reports a new color.

## FCP physics claims unchanged

The source register `SRC-FCP24-NONPERT-BFSS-1997` and `SRC-OPENAI-MATH-F270B-BFSS-2026`, the independently adjudicated Family-270B T6 source-delta and `FCP24-STRING-002` remain governing reference context. This math identity does not establish equivalence of selected closed quadratic-form domains and self-adjoint Hamiltonians, a global gap, empirical BFSS, the large-N conjecture or framework-level credibility. **No new axioms or physical hypotheses**.
