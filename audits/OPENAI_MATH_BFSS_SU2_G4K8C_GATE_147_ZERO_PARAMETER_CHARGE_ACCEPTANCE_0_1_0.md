# BFSS SU(2) G4-K8C — Gate #147 zero-parameter charge nonvanishing acceptance 0.1.0

**Date:** 2026-10-09. **Disposition:** `PASS__ALL_KINETIC_SPIN_CHARGES_NONZERO_AND_FREE_LIMIT_TRIAL_ENERGY_POSITIVE`.

## Independently verified original artifact

- Branch `research/openai-math-su2-concrete-potential`.
- Qualified exact commit `2efc66d90a4f6f4eb8d95b22df14bbbb076af396`, parent `2a9a6302767ddc90bc3b096e5602036d480d0984`.
- Exact source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K8CZeroParameterChargeProbe.lean`, Git blob `50168eda495f5c59cc2db9d14dce7bfee7e839e7`.
- Exact workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, Git blob `1adda17a21a6dd03d8fd20687a35993b51252fff`.
- [BFSS SU2 Concrete Color Gate #147](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37965115631), run `37965115631`, successful job `113937404625`, exact head and source as above.
- Actual `lake env lean SU2BFSSG4K8CZeroParameterChargeProbe.lean` succeeded, all seven declaration `#print axioms` reports exactly `[propext, Classical.choice, Quot.sound]` (some wrapped across lines); no `sorryAx` or custom axiom. Minor nonblocking deprecation/unused-simp warnings.
- Pinned Lean `4.34.1`; OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Verified mathematical advance

Starting from the accepted strictly positive exact physical kinetic integral (Gate #143), pinned `AlgebraData.kineticSkewCore_norm` proves that for every one of the genuine sixteen `SpinIndex` values α, the nonzero SU(2)-invariant smooth physical radial state obeys

```lean
0 < ‖coreToL2 (MixedEnergy.firstOrder
  (pairedAlgebraData.kineticSkewSymbol α) radialBumpSmoothCore)‖ ^ 2
```

Thus ALL first-order kinetic charge images in the true FullL2 2 are nonzero. At h=m=0 the source-pinned `deformedRealField_polarized` yields exactly zero potential operator field, and the true source `deformedCoreCharge 0 0 α radialBumpSmoothCore` equals the corresponding kinetic firstOrder smooth-core section. Consequently every component is nonzero and the Gate #138 original pinned sum-of-squares `deformedCoreEnergy 0 0` has strictly positive energy and normalized quotient on this SPECIFIC previously certified physical test state.

## Scientific boundary and next bounded test

The strictly positive h=m=0 trial energy is the **zero-interaction/free limit**, not the interacting h=1,m=0 BFSS case, not any h>0,m>0 massive deformation. Strict trial energy for one state is not a Hamiltonian eigenvalue, physical ground state, positive spectral infimum or BFSS gap.

Next G4-K8D UNCOMPILED candidate tests **actual positive-interaction** source charges by using the pinned m=0 potential field's linear coupling dependence: at h=1 and h=2, the exact source core identity is `Q(2,0) + K = 2 • Q(1,0)` where K is the *same* already proved nonzero first-order charge. These two distinct positive-coupling deformed charges cannot both vanish on this SAME physical trial. Therefore for every α at least one of the true FullL2 source charge images is nonzero and by source energy-positivity iff, E(1,0)>0 OR E(2,0)>0. This does NOT establish E(1,0)>0 specifically, does not address m>0, and does not imply a spectral gap.

No branch merge, upstream PR or dependency change authorized.
