# BFSS SU2 G4-K8E2 — original kinetic oddness scope 0.1.0

**Date:** 2026-10-09. **Status:** `UNCOMPILED_CANDIDATE`. Research branch only.

## Accepted prerequisite

Gate #155, exact commit `abafed10947b9145c9558b4bd896aa0839876abd`, successfully established evenness of the original, smooth, Gauss-invariant BFSS SU2 radial test state and the massless source potential section for all h. Gate #147 independently compiled L²-nonvanishing of ALL genuine source first-order kinetic spin-charge components on the same state.

## Frozen target for this bounded stage

Derive the ODD kinetic parity with no surrogate operators:

1. Abstract, real `fderiv` of a differentiable even Fermion 2-valued function is odd on any fixed bosonic direction; source-ground this in the pinned Mathlib chain rule.
2. Instantiate to original `radialBumpSmoothCore` through its established `contDiff` and `physicalSmoothRadialState_even`, giving pointwise oddness of every real source `MixedEnergy.delta p` section.
3. Keep a general source-typed `B : SpaceIndex × ColorIndex 2 → Fermion 2 →L[ℝ] Fermion 2` abstract to sum the directional oddness through the exact `MixedEnergy.firstOrder` operator. The coefficients do not depend on x.
4. Specialize to the actual original `pairedAlgebraData.kineticSkewSymbol α` for every spin α. Print and verify axiom dependencies for all four declarations.

This stage does NOT yet infer nonzero interacting h=1 source charge: to conclude that, an additional separate proof must use source `coreToL2` and the pointwise continuous state to turn a hypothetical zero L² charge into a pointwise zero smooth section, then combine even/odd parity to contradict Gate #147's nonzero kinetic L² image.

## Acceptance requirements

Only pinned Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Real compiler PASS on exact source commit; every theorem's `#print axioms` limited to `[propext, Classical.choice, Quot.sound]`. No `sorry`, `admit`, new axioms, additional operators, alternative supercharge, modification of state/couplings, CI bypass, or unapproved upstream changes.

The source is a prospective proof candidate, not precompiled. Stop after commit and CAS branch push; do not inspect next workflow until owner reports color.
