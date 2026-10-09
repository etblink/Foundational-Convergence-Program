# BFSS SU(2) G4-K8D — Gate #149 positive interacting coupling alternative acceptance 0.1.0

**Date:** 2026-10-09. **Disposition:** `PASS__SOURCE_INTERACTING_CHARGE_NONZERO_AT_H1_OR_H2`.

## Independently verified compiler and provenance

- Research branch: `research/openai-math-su2-concrete-potential`.
- Qualified commit: `6df04ece82b60ee24899040b953c8de194adce4a`; parent `a2aacaef3200b06076cfe2b290a046905e7df894`.
- Source: `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K8DPositiveCouplingAlternativeProbe.lean`, Git blob `6b2402e1c1364ae7cc48b908fccfee01ee741972`.
- Workflow: `.github/workflows/openai-math-su2-concrete-potential.yml`, Git blob `4c9acc97a95ceaceaeab8f35be897daef479eb91`.
- [BFSS SU2 Concrete Color Gate #149](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37970965894), run `37970965894`, job `113957164999`, complete SUCCESS at the exact commit.
- `lake env lean SU2BFSSG4K8DPositiveCouplingAlternativeProbe.lean` succeeded. All **five** `#print axioms` declarations have exactly `[propext, Classical.choice, Quot.sound]`; none depends on `sorryAx` or any nonstandard axiom. One harmless unused-simp warning.
- Pinned: Lean 4.34.1; OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Certified mathematical scope

On the original nonzero smooth, SU(2) Gauss-invariant BFSS N=2 trial `radialBumpSmoothCore` with unchanged 24-orbital / 48-Majorana fermion space, the source's zero-mass potential `deformedRealField h 0` scales linearly in h. The original `deformedCoreCharge` operators satisfy, for every spin α:

```lean
pairedAlgebraData.deformedCoreCharge 2 0 α radialBumpSmoothCore +
  MixedEnergy.firstOrder (pairedAlgebraData.kineticSkewSymbol α)
    radialBumpSmoothCore =
  (2 : ℝ) • pairedAlgebraData.deformedCoreCharge 1 0 α radialBumpSmoothCore
```

The first-order kinetic term has previously accepted nonzero source `FullL2 2` image (Gate #147). If BOTH interacting charge images vanished in L², this identity and the genuine source additive `coreToL2` map would force that kinetic image to vanish: contradiction. Therefore `Q_α(1,0)ψ ≠ 0 ∨ Q_α(2,0)ψ ≠ 0` as a real source L²-class nonvanishing **for EACH α**. The exact source positive-energy iff (Gate #138) yields `E(1,0)>0 ∨ E(2,0)>0` for the SAME state.

The user must NOT be told which disjunct holds. This is not proof that h=1 specifically yields positive trial energy, nor that the energy infimum is strictly positive. It does not establish any eigenstate, vacuum, gap or BFSS spectral theorem.

## Next bounded prospective test

G4-K8E1 attempts to exploit the actual radial test state and potential-field parity: `ψ(-x)=ψ(x)`, and at zero mass the pinned `deformedRealField_polarized` is quadratic in x, hence `V_{h,0}(-x)=V_{h,0}(x)` for all real h. This yields parity of the actual potential multiplication SmoothCore section. The later, separate obligation is that the **source** kinetic first-order section is odd and nonzero; combining oddness with evenness would prevent exact cancellation at h=1 specifically. This prospective candidate is UNCOMPILED; no h=1 conclusion is accepted here.

No main merge, upstream issue/PR, dependency repin, or other external effects.
