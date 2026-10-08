# BFSS SU(2) F5-G1 — Gate #83 formal acceptance 0.1.0

**Date:** 2026-10-08  
**Disposition:** `PASS__EXACT_CONCRETE_DEFORMED_BOSONIC_POTENTIAL_WEDGE_AND_NONNEG_KERNEL_VERIFIED`

## Immutable acceptance evidence

- FCP research branch: `research/openai-math-su2-concrete-potential`.
- Qualified compiler HEAD `d55ffb529f710c60109deb67c1eff26fd68738fe`.
- Source `experiments/openai-math-su2-concrete-potential/SU2BFSSConcretePotentialProbe.lean`; Git blob `6eaf5edc3e700bec24767944efba18fba76164d0`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`; blob `ddfc7d87c685a9d7a9048c80da3595d77759903a`.
- OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1.
- [Gate #83](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37769189603), run `37769189603`, job `113284211059`. Run HEAD matches; completed success for run/job and compilation step. Log confirms `lake env lean SU2BFSSConcretePotentialProbe.lean` successful.

## Exact Lean axiom reports

```text
'FCP.BFSSSU2Potential.concrete_structureConstant' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2Potential.concrete_coordinateBracket' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2Potential.concrete_potential_one_zero_eq_wedge' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2Potential.concrete_potential_one_zero_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx`, new custom axiom, compiler error or changed upstream structure. Earlier accepted Gate #82 constructed `FCP.BFSSSU2Full.concreteAlgebraData : OAI.BFSSQuantum.AlgebraData 2`.

## Mathematically certified facts

- `concreteAlgebraData.structureConstant a b c = Real.sqrt 2 * epsilon3 a b c` for every color label.
- `concreteAlgebraData.coordinateBracket x p a` is the `√2`-normalized actual 3D color cross-product for every bosonic configuration and spatial pair.
- The **actual upstream** `concreteAlgebraData.deformedBosonicPotential 1 0 x` (massless, h=1) is the sum, over strict spatial pairs, of exactly three squared 3-color wedge minors.
- This exact massless bosonic potential is pointwise nonnegative for all `x : OAI.BFSSQuantum.Boson 2`.

The conditional `M.color=normalizedPauli` premise of the original color-only identity is genuinely discharged by Gate #82's constructed model, not assumed.

## Boundaries, source checks, next useful test

This does **not** establish a strictly positive potential away from the origin, classical coercivity, Hamiltonian positivity, a spectral gap, gauge invariance, or positive eigenstates. In particular, classical SU(2) commuting/collinear color configurations yield flat directions. The pinned upstream `OAI.MathematicalPhysics.BFSS.PotentialBasis` includes `AlgebraData.deformed_potential_average` with the exact coefficient `1/16`; evaluating that theorem for the constructed model, along with formally checking the single-color zero locus, would clarify the physical-facing scope without claiming a spectral result.

The FCP original research gate requires source-first inspection and warns against replacing the manuscript's oscillator exclusion/confinement proof by a positivity argument. The `POSITIVE_EIGENVALUE_STRESS_TEST_FREEZE_0_1_0.md` specifies independent source-review preconditions. Existing first-review adjudication is favorable but explicitly not a Lean proof of the spectral theorem.

The canonical FCP model-level T6 result and all K1–K10 statuses remain unchanged; no FCP main or upstream writes, public PR or issue. Continue on research branch only and await human GREEN/RED for future submitted compiler gates before inspecting them.

**Operating principle:** discover what is true, not accumulate green checks.
