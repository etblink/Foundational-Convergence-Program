# BFSS SU(2) G4-K5 — concrete source-bound gauge-invariant energy densities 0.1.0

**Date:** 2026-10-09
**Disposition:** `UNCOMPILED_CANDIDATE`.
**Qualified foundation:** Gate #127 exact six-field SU(2) `pairedGaugeData`; Gate #130 nonzero normalizable `radialBumpL2 ∈ pairedGaugeData.physicalSpace`; Gate #132 explicit nonzero `radialBumpInvariantCore`; Gate #133 exactly identified unique closed supercharge-graph output.

## Mathematical obligation

For that **same** concrete nonzero physical smooth test state, specialize the exact upstream
`OAI.MathematicalPhysics.BFSS.KineticMeasures` and
`OAI.MathematicalPhysics.BFSS.CovariantFields`:

- `kineticDensity radialBumpSmoothCore`;
- `pairedAlgebraData.bosonicDensity h m radialBumpSmoothCore`;
- `pairedAlgebraData.fermionicDensity h m radialBumpSmoothCore`.

Prove all three are continuous, compactly supported and integrable on the literal `Boson 2` Euclidean volume. The kinetic density is nonnegative. The actual `pairedGaugeData.invariantCore_*Density` source theorems must establish SU(2) invariance, and the `*_unitary` versions must establish invariance under source-defined `pairedAlgebraData.gaugeAction U` for every color unitary U. The combined three-density is integrable and SU(2) invariant. Recover the precise kinetic integral identity as the sum of squared `coreToL2 (coordinateDerivative ...)` norms.

## What it can and cannot mean

Success yields well-defined finite and gauge-invariant local energy quantities for **one explicitly proved nonzero physical test state**, as a source-bound specialization rather than an original kinetic theorem. It does NOT prove a numerical energy, strict positivity, zero energy, a Hamiltonian eigenvector, infimum, spectral gap, normalizable supersymmetric ground state, or any empirical prediction. Fermionic energy density and sum are not assumed nonnegative.

Do not relax the full exact pinned source types, scope, or compilation standard. Use Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Must check every `#print axioms` only `[propext, Classical.choice, Quot.sound]`, no `sorryAx`. Single atomic source/workflow/audit/scope commit on research branch; do not touch main, PRs or upstream; stop before inspecting new Gate until human owner reports color.
