# BFSS SU2 G4-K8E2 — Gate #157 kinetic oddness acceptance 0.1.0

**Date:** 2026-10-09. **Disposition:** `PASS__SOURCE_KINETIC_PARITY`.

## Verified compiler evidence
- GitHub [BFSS SU2 Concrete Color Gate #157](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37996124320), workflow run `37996124320`, job `114042550527`: SUCCESS.
- Qualified commit `8db617b6922b5f1e7107d5ec00c0f24e4036f4ad`, parent `f99c1efd385e98d2e96efb939ff6b339603b37d7`, tree `a3e2e94f0ae6b01be547e74f1772d317646b5bec`.
- Source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K8E2KineticOddParityProbe.lean`, blob `1b20b65c53d116ab4193fd968c0b559c7afce346`.
- Pinned Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- `lake env lean SU2BFSSG4K8E2KineticOddParityProbe.lean` compiled successfully. The four printed axioms entries — abstract Fréchet parity, source delta parity, abstract first-order parity, actual BFSS kinetic first-order parity — contain ONLY `[propext, Classical.choice, Quot.sound]`. No `sorryAx`. One harmless `ContinuousLinearMap.neg_apply` deprecation warning.

## Accepted source-grounded mathematics
1. An even differentiable real source-typed function has an odd real Fréchet derivative at the opposite point along a fixed coordinate direction.
2. On the SAME physical `radialBumpSmoothCore`, each genuine `MixedEnergy.delta p` is odd pointwise under x ↦ -x.
3. Source `MixedEnergy.firstOrder B` preserves this oddness when B is an x-independent linear symbol.
4. For EVERY spin α, the pinned actual `MixedEnergy.firstOrder (pairedAlgebraData.kineticSkewSymbol α) radialBumpSmoothCore` is odd under x ↦ -x.

Together with previously accepted G4-K8E1 Gate #155 potential parity and G4-K8C Gate #147 first-order L² nonzero, this gives the parity ingredients for source kinetic/potential noncancellation.

## Boundary
No interacting `coreToL2 (deformedCoreCharge 1 0 α ψ) ≠ 0`, no strict interacting trial energy specifically at h=1, no spectrum infimum, ground state or mass gap is established in G4-K8E2.

The next G4-K8E3 candidate proves only nonvanishing as a smooth CORE section, not an L² nonzero equivalence class. A continuity/full-support argument is still required to transfer this to positive trial energy.
