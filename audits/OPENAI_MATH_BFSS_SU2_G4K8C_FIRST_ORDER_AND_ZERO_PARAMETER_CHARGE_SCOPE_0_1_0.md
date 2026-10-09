# BFSS SU(2) G4-K8C — first-order charge nonvanishing and zero-parameter energy 0.1.0

**Date:** 2026-10-09. **Status:** `UNCOMPILED_CANDIDATE`.

## Frozen source-identity lineage

Gate #127 builds the literal N=2 six-field SU(2) `pairedGaugeData` and `pairedAlgebraData` in pinned OpenAI Math. Gates #130/#132 prove the same `radialBumpL2` is nonzero, normalizable and physical, with a nonzero literal `radialBumpSmoothCore ∈ pairedGaugeData.invariantCore`. Gate #133 gives its unique pinned closed-supercharge graph output. Gate #138 proves exact source `deformedCoreEnergy` sum-of-squares nonnegativity and positivity iff a deformed charge L² component is nonzero. Gate #143 establishes one real coordinateDerivative with **nonzero literal L² image** and strictly positive full source `kineticDensity` volume integral.

## Precise new target

1. Invoke pinned `pairedAlgebraData.kineticSkewCore_norm` for every `α : SpinIndex` on the unchanged `radialBumpSmoothCore`, and the accepted `physicalKineticDensity_integral_exact` and strict positive kinetic integral, proving `0 < ‖coreToL2 (MixedEnergy.firstOrder (pairedAlgebraData.kineticSkewSymbol α) radialBumpSmoothCore)‖²`. Conclude each first-order kinetic charge L² image is nonzero.
2. Invoke the exact pinned `pairedAlgebraData.deformedRealField_polarized` with **h=m=0**: `deformedRealField 0 0 α x=0` for all x, α. Use source `deformedCoreCharge` definition and `MixedEnergy.field` to prove its zero-parameter action equals that true source `firstOrder` as a literal `SmoothCore 2` section, rather than as an unrelated approximation.
3. Prove for ALL 16 α that `coreToL2 (pairedAlgebraData.deformedCoreCharge 0 0 α radialBumpSmoothCore) ≠ 0`.
4. Discharge Gate #138 exact iff for h=m=0 with α=0 to conclude `0 < physicalDeformedEnergy 0 0` and positive normalized free trial energy for the same nonzero physical state.

## Critical honesty boundary

The zero-parameter h=m=0 theory has NO interaction or mass potential and is not the physically interacting BFSS case, h=1,m=0, nor a positive-mass deformation. This stage is meaningful as a proof that the source supercharges act nontrivially in an explicit parameter specialization, **not** an interacting-state result, a spectral gap, Hamiltonian eigenvector or supersymmetric ground state. Even a strictly positive trial energy for one state does not establish any spectral lower bound.

Pinned Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No `sorry`/`admit`, axiom changes, surrogates, dependency repins. Commit source/workflow/acceptance/scope only to research branch, and STOP without inspecting automatically triggered gate before the owner reports color.
