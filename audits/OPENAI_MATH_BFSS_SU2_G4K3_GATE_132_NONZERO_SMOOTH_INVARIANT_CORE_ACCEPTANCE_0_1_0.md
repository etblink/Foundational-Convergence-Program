# BFSS SU(2) G4-K3 — Gate #132 actual nonzero invariant smooth core acceptance 0.1.0

**Date:** October 9, 2026 (Actions timestamps UTC).
**Disposition:** `PASS__NONZERO_SMOOTH_GAUSS_INVARIANT_CORE_WITNESS`.

## Frozen verified source/run identity

- Branch `research/openai-math-su2-concrete-potential`.
- Accepted repair commit `999da0f811aeb25dcaae6ac9063de9fc1a888080`, parent `26ad22d22d00d62c3b67fbbc93b6e73aad6de10c`.
- Source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K3NonzeroSmoothInvariantCoreProbe.lean`, Git blob `683656d0dae0df23a0482144b27785c6e3da8a79`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `d7a69d9b07474b57b5e3dd809c6db58f32f8d064`.
- [BFSS SU2 Concrete Color Gate #132](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37898597884): run `37898597884`, job `113715617740`, completed SUCCESS at qualified source commit.
- `lake env lean SU2BFSSG4K3NonzeroSmoothInvariantCoreProbe.lean`: actual completed Lean compiler SUCCESS.
- `#print axioms` for all nine new definitions/theorems: exactly `[propext, Classical.choice, Quot.sound]`. No `sorryAx`, `sorry`, custom axioms, weakened requirements, or replacement types.
- Frozen compiler/dependencies: Lean `4.34.1`, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## What is now proved

G4-K2B Gate #130 already supplied a truly normalizable and nonzero `radialBumpL2 : FullL2 2` in the exact upstream Gauss-invariant subspace of the six-field `pairedGaugeData`. G4-K3 Gate #132 proves the same radial profile is infinitely differentiable in its **squared-norm** argument, compactly supported, and is the `toFun` of a literal upstream `SmoothCore 2` `TestFunction` with:

```lean
coreToL2 radialBumpSmoothCore = radialBumpL2
radialBumpSmoothCore ≠ 0
radialBumpSmoothCore ∈ pairedGaugeData.invariantCore
radialBumpInvariantCore ≠ 0
```

It also proves pointwise equivariance of that witness and specializes the general upstream nonnegative `pairedAlgebraData.coreForm` statement. This is an **actual explicit nonzero smooth Gauss-invariant test state**, not only abstract existence of a subspace.

## Scientific interpretation/boundary

This result makes our concrete state an admissible source-defined smooth test section on which the BFSS supercharges and quadratic form act. It does NOT prove that the state is annihilated by those charges, is an eigenstate, minimizes energy, belongs to a closed-charge graph domain by theorem (although that follows by a separate direct graph argument), or establishes a BFSS spectrum or mass gap.

## Next bounded objective

G4-K4 attempts that precise missing **graph-domain certificate** for this particular nonzero physical state. Use the pinned `AlgebraData.fullCoreGraph` and `fullClosedGraph` (the latter a topological closure), prove an exact pair `(radialBumpL2, pairedAlgebraData.chargeVector radialBumpSmoothCore)` belongs to both. Invoke the pinned `fullClosedGraph_unique` and `fullClosedGraph_pairing` for this actual vector. Unroll the exact 16-term quadratic form identity, without claiming strict positivity or vanishing. No new operator or axiom.

No main merge, upstream PR/issue, dependency changes or unknown gate inspection before owner reports color.
