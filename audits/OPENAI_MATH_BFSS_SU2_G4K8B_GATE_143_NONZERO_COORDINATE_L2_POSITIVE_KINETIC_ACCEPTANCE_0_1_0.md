# BFSS SU(2) G4-K8B — Gate #143 nonzero L² coordinate derivative and positive kinetic energy acceptance 0.1.0

**Date:** 2026-10-09. **Disposition:** `PASS__NONZERO_COORDINATE_DERIVATIVE_L2_AND_POSITIVE_KINETIC_INTEGRAL`.

## Independently verified frozen evidence

- Research branch `research/openai-math-su2-concrete-potential`.
- Qualified exact commit: `cbd2947515c5777e57d9c756102ad50fc582a45e`; parent `ecd828ed3f48ed519a380c8f50b15215ade4b458`.
- Qualified G4-K8B source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K8BNonzeroCoordinateL2Probe.lean`, exact Git blob `0fb3d20354c86cd014e981123adc504f6babffa7`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, exact blob `9ae5cc9a236ece995899a76ef671ed7e5591b311`.
- [BFSS SU2 Concrete Color Gate #143](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37952345576): run `37952345576`, job `113894063203`, completed SUCCESS at this exact commit.
- `lake env lean SU2BFSSG4K8BNonzeroCoordinateL2Probe.lean` completed successfully. Each of **five** `#print axioms` results exactly `[propext, Classical.choice, Quot.sound]` (some line-wrapped); NO `sorryAx` or new custom axioms.
- Pinned: Lean `4.34.1`, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact accepted claims

Starting from Gate #140's nonzero real Fréchet derivative of the original concrete nonzero smooth SU(2) Gauss-invariant physical state, the accepted Gate #143 applies the complete, PINNED Euclidean coordinate basis and explicitly resolves the continuous-to-linear-map coercion using `ContinuousLinearMap.coe_coe`. It proves `∃ p x, coordinateDerivative p.1 p.2 radialBumpSmoothCore x ≠ 0`. With full support of Euclidean volume and `Continuous.ae_eq_iff_eq`, it upgrades the pointwise continuous-section result to the ACTUAL source-defined `FullL2 2` class:

```lean
∃ p : SpaceIndex × ColorIndex 2,
  coreToL2 (coordinateDerivative p.1 p.2 radialBumpSmoothCore) ≠ 0
```

Thus a strictly positive summand appears in the exact Gate #135 pinned `kineticDensity_integral` sum-of-squares identity:

```lean
0 < ∫ x : Boson 2, physicalKineticDensity x
```

No single-point measure conflation occurred: the proof passes through almost-everywhere uniqueness plus continuity on full-support Euclidean volume.

## Scientific scope and next step

This is a strict POSITIVE **KINETIC** integral for the explicitly proved Gauss-invariant nonzero physical state. It does not prove the total deformed energy positive. In each deformed supercharge, kinetic first-order and potential fields may cancel. The next K8C proposal applies pinned `pairedAlgebraData.kineticSkewCore_norm`: every one of the sixteen first-order charge L² norms squared is half the strictly positive kinetic sum, hence every first-order charge is nonzero. Next specialize the source `deformedRealField_polarized` to h=m=0, where the source potential field vanishes. Prove the exact zero-parameter deformed charge equals its kinetic firstOrder charge and thus has nonzero L² image for every α; invoke the Gate #138 iff to prove strictly positive **trial** energy only at the free h=m=0 limit. This is not interacting BFSS (h=1,m=0) and no spectral gap.

The K8C candidate is UNCOMPILED until its own gate passes. No main merge, repin, upstream PR/issue, substitution or unapproved external effects.
