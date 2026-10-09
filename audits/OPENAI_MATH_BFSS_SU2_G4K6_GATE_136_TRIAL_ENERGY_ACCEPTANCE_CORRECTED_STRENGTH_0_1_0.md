# BFSS SU(2) G4-K6 — Gate #136 normalized physical trial-energy acceptance 0.1.0

**Date:** October 9, 2026.
**Disposition:** `PASS__SOURCE_DERIVED_UNIFORM_NORMALIZED_TRIAL_ENERGY_LOWER`, with **scientific-strength correction** detailed below.

## Frozen evidence

- Research branch: `research/openai-math-su2-concrete-potential`.
- Qualified exact commit: `08b3eedec1f9ddacf42c70b56284de9cd5fe12dd` (parent `8f27c58840007a6661b127764e50efc147013cff`).
- Source: `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K6PhysicalTrialEnergyLowerProbe.lean`, blob `68cac9dd693947529c8460acf93873ed7b611487`.
- Workflow: `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `5c60d43288a2261607998b8a7dc4c05017d01cf7`.
- [Gate #136](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37925175191), run `37925175191`, color-cross job `113802266516`: SUCCESS on exact qualifying SHA.
- Actual compile `lake env lean SU2BFSSG4K6PhysicalTrialEnergyLowerProbe.lean` passed.
- All 11 `#print axioms` declarations exactly `[propext, Classical.choice, Quot.sound]` (some output wrapped), with no `sorryAx` or added axioms.
- Compiler Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` remained pinned.

## What the kernel proved

For the TRUE nonzero, SU(2) Gauss-invariant smooth `radialBumpSmoothCore` with nonzero `radialBumpL2 = coreToL2 radialBumpSmoothCore`, the literal source `coreEnergyDensity` is continuous, compactly supported and integrable, SU(2)-invariant, and has integral the exact upstream `deformedCoreEnergy`. The Hilbert norm squared is strictly positive. Integration of the pinned `ProfileEnergy.coreEnergyDensity_uniform_lower` yields for mass m=1:

```lean
∃ K : ℝ, 0 ≤ K ∧ ∀ h : ℝ, 0 < h → h ≤ 1 →
  -K ≤ physicalNormalizedTrialEnergy h
```

No spectral theorem, Hamiltonian eigenvector, energy minimizer or mass gap is established.

## SCIENTIFIC CORRECTION: G4-K6 bound is strictly weaker than immediate source sum-of-squares

The pinned `OAI.MathematicalPhysics.BFSS.MassiveMoments.lean` defines

```lean
def deformedCoreEnergy (h m : ℝ) (f : SmoothCore N) : ℝ :=
  (1/16 : ℝ) * ∑ α : SpinIndex,
    ‖coreToL2 (M.deformedCoreCharge h m α f)‖^2
```

Therefore **zero is already a universal lower bound for all smooth-core f and all real h,m**. The K6 constant -K is mathematically correct but non-sharp and does not meaningfully constrain the source-defined positive quadratic form. The acceptance record must NOT market the `-K` bound as a discovery of lower-boundedness beyond the source sum-of-squares. The pointwise uniform lower inequality and its integral specialization remain valid, but the honest conclusion is more modest.

## Truth-seeking next step

G4-K7 formalizes the actual stronger universal nonnegativity, characterizes zero deformed core energy as every deformed charge vector being 0, and gives the precise iff for strict positivity in the same physical trial state: at least one source-defined `coreToL2 (pairedAlgebraData.deformedCoreCharge h m α radialBumpSmoothCore)` must be nonzero. It does **not** assert such a component is nonzero; that is the next genuinely new mathematical obligation.

No additional axioms, change of pinned types, main merge or unapproved upstream PR. The K7 candidate is UNCOMPILED until its own Gate verifies it.
