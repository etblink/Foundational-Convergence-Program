# BFSS SU(2) G4-K6 — exact integrated normalized physical trial-energy lower bound 0.1.0

**Date:** 2026-10-09
**Status:** `UNCOMPILED_CANDIDATE`.

## Qualified source and state

G4-J Gate #127 literal six-field SU(2) `pairedGaugeData`; G4-K2B Gate #130 nonzero physical `radialBumpL2 : FullL2 2`; G4-K3 Gate #132 the same state as `coreToL2 radialBumpSmoothCore` with a nonzero `invariantCore` witness; G4-K4 Gate #133 its unique supercharge output in the pinned closed graph; G4-K5 Gate #135 its literal continuous, compactly supported, integrable gauge-invariant kinetic/bosonic/fermionic local densities.

## New proof obligations

Using only the frozen upstream `OAI.MathematicalPhysics.BFSS.ProfileEnergy` source and the actual `pairedAlgebraData : AlgebraData 2`, define
`physicalCoreEnergyDensity h m := pairedAlgebraData.coreEnergyDensity h m radialBumpSmoothCore` and
`physicalDeformedEnergy h m := pairedAlgebraData.deformedCoreEnergy h m radialBumpSmoothCore`.
Prove continuity, compact support, Lebesgue integrability, SU(2) gauge invariance and **exact integrated identity** of this upstream **half-kinetic** energy density.

Specialize the genuine upstream `coreEnergyDensity_uniform_lower (hN : 2 ≤ 2)` with mass m=1 to the same nonzero test state. Integrate the lower inequality using `integral_mono`, `coreNormSq_integrable`, `coreToL2_norm_sq`, `radialBumpSmoothCore_toL2` and `coreEnergyDensity_integral`. Exact endpoint:

```lean
∃ K : ℝ, 0 ≤ K ∧ ∀ h : ℝ, 0 < h → h ≤ 1 →
  -K * ‖radialBumpL2‖ ^ 2 ≤ physicalDeformedEnergy h 1
```

Then certify `0 < ‖radialBumpL2‖²` from the *accepted* nonzero L² theorem and derive a uniform normalized Rayleigh trial quotient lower bound `-K ≤ physicalDeformedEnergy h 1 / ‖radialBumpL2‖²`.

## Scientific constraints

This bound is **not** a physical spectral infimum or gap. It is for one explicit nonzero physical test state, inherited from the pinned upstream universal source estimate, not a novel sharp bound; the constant K is not numerically computed. The uniform source theorem applies only to mass m=1 and 0<h≤1. Neither core-energy density nor normalized trial quotient is asserted positive.

Preserve frozen Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; build upstream `ProfileEnergy` as a proper `.olean` before G4-K6 compilation; preserve K5 as importable `.olean`. No new axioms or admit/sorry, no surrogate state or algebra. Only research branch. Stop before inspecting the newly triggered Gate; require independently verified actual compiler/axiom output.
