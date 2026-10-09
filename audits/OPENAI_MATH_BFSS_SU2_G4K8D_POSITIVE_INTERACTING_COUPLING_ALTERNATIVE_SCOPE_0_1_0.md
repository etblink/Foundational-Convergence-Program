# BFSS SU(2) G4-K8D — positive interacting coupling nonvanishing alternative 0.1.0

**Date:** 2026-10-09. **Status:** `UNCOMPILED_CANDIDATE`.

## Source and qualified foundation

Gate #147 accepted all 16 true source first-order kinetic charge L² images nonzero for the exact previously qualified nonzero smooth SU(2) Gauss-invariant physical trial state `radialBumpSmoothCore`; and strictly positive source trial energy in the free zero-parameter limit h=m=0. The genuine interacting BFSS massless parameter point is h=1,m=0. Positive energy at h=0 cannot silently transfer to h=1 without a no-cancellation argument.

## Bounded new target

Using the same pinned `pairedAlgebraData`, the source theorem `deformedRealField_polarized` with zero mass gives `deformedRealField 2 0 α x = 2 • deformedRealField 1 0 α x`. Transport this to the *exact* `MixedEnergy.field` smooth-core sections using `MixedEnergy.field_apply`, and prove the actual source-level algebraic identity for the unchanged gauge-invariant state:

```lean
pairedAlgebraData.deformedCoreCharge 2 0 α radialBumpSmoothCore +
  MixedEnergy.firstOrder (pairedAlgebraData.kineticSkewSymbol α)
    radialBumpSmoothCore =
  (2 : ℝ) • pairedAlgebraData.deformedCoreCharge 1 0 α radialBumpSmoothCore
```

Map this equality by the actual source `coreToL2`. If both positive-coupling charges vanished as true L² classes, it would force the already certified NONZERO kinetic firstOrder charge L² image to vanish. Contradiction. Conclude FOR EVERY α:

```lean
coreToL2 (pairedAlgebraData.deformedCoreCharge 1 0 α radialBumpSmoothCore) ≠ 0
  ∨ coreToL2 (pairedAlgebraData.deformedCoreCharge 2 0 α radialBumpSmoothCore) ≠ 0
```

Then discharge the existing verified `physicalDeformedEnergy_pos_iff` for α=0 to establish `E(1,0)>0 ∨ E(2,0)>0` on this same genuine Gauss state. THIS IS A TWO-COUPLING ALTERNATIVE; do not falsely label either individual disjunct proved.

## Scientific honesty

This is beyond h=m=0 since **both** couplings are positive and the massless interaction term is present in both. However it does not prove positivity at **h=1 individually**, any positive mass m, an eigenvalue, ground state, spectral bound, BFSS spectral gap, or a physical prediction. A subsequent proof of parity/orthogonality or explicit pointwise nonzero h=1 is required for that stronger conclusion.

Preserve pinned Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No sorry/admit/custom axioms, silent parameter substitution, main merge or upstream effects. Commit source/workflow/acceptance/scope atomically to the research branch and STOP before inspecting the newly triggered gate.
