# BFSS SU(2) G4-K5 — Gate #135 energy-density acceptance 0.1.0

**Date:** 2026-10-09.
**Disposition:** `PASS__PHYSICAL_ENERGY_DENSITIES_FINITE_GAUGE_INVARIANT`.

## Independently verified pinned evidence

- Research branch: `research/openai-math-su2-concrete-potential`.
- Qualified HEAD: `8f27c58840007a6661b127764e50efc147013cff`, parent `9aa42ef9e61a238a0d1598605e7bcb73f49ffe08`.
- G4-K5 source: `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K5ConcreteEnergyDensityProbe.lean`, blob `7ec19abd80c87b729fbf3f53b767dd12ac8b6247`, unchanged across workflow repair.
- Workflow: `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `bc7975ea730f0dca473b78c4d7ac86d786828ce9`.
- [BFSS SU2 Concrete Color Gate #135](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37920623270), run `37920623270`, color-cross job `113787395538`, completed SUCCESS at exact commit.
- Actual compiler call `lake env lean SU2BFSSG4K5ConcreteEnergyDensityProbe.lean` passed after building pinned `OAI.MathematicalPhysics.BFSS.KineticMeasures`.
- Every one of **23** G4-K5 `#print axioms` declarations reports precisely `[propext, Classical.choice, Quot.sound]`, without `sorryAx` or extra axioms.
- Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` unchanged.

## Exact interpretation

For `radialBumpSmoothCore` (already verified **nonzero** and a literal member of the exact SU(2) Gauss `invariantCore`), we have the upstream kinetic, bosonic and fermionic deformed local densities. All are continuous, compactly supported and hence integrable against Euclidean volume on `Boson 2`. The kinetic density is pointwise nonnegative. The three densities are invariant under the exact `pairedGaugeData.boson` action of every SU(2) gauge element, and under `pairedAlgebraData.gaugeAction U` for every color unitary U. Their sum is integrable and SU(2) invariant. Its kinetic integral equals the sum of squared norms of the pinned coordinate derivatives in `FullL2 2`.

The *diagnostic* three-density defined in G4-K5 includes the **whole** kinetic density. In the source `ProfileEnergy.coreEnergyDensity`, the physical variational core-energy density includes **one half** of kinetic density. Therefore the G4-K5 sum must not be mistaken for the Hamiltonian core-energy-density integrand or directly identified with `deformedCoreEnergy`.

## Next scientifically material step

G4-K6 targets an actual variational bound for the same nonzero physical trial state using the **literal source** `ProfileEnergy.coreEnergyDensity` and its integrated identity `coreEnergyDensity_integral`. Specialize the pinned source `coreEnergyDensity_uniform_lower` (valid for N≥2, mass m=1 and h∈(0,1]) to the nonzero physical smooth state and integrate against volume. Use exact `coreToL2_norm_sq` and the already proven `coreToL2 radialBumpSmoothCore = radialBumpL2` to conclude `∃ K≥0, ∀ h∈(0,1], -K * ‖radialBumpL2‖² ≤ deformedCoreEnergy h 1 radialBumpSmoothCore`. Then divide only by the verified **strictly positive** norm squared to obtain a legitimate uniform normalized trial-energy lower bound.

This is a non-sharp source-derived lower estimate for one explicit physical trial state, not any spectral lower bound, numerical result, mass gap or ground-state theorem.

No unapproved changes to main, upstream repo or public PR; next source/workflow should compile under exact pinned dependencies with standard-only axioms. Uncompiled G4-K6 must remain unaccepted until source/commit/CI compiler and axiom reports are independently verified.
