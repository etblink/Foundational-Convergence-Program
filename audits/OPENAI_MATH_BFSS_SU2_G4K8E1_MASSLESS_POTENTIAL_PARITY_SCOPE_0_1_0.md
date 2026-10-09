# BFSS SU(2) G4-K8E1 — source massless-potential parity prerequisites 0.1.0

**Date:** 2026-10-09. **Status:** `UNCOMPILED_CANDIDATE`.

## Research motivation and exact locked state

Gate #149 proves a strict positive interaction alternative `E(1,0)(ψ)>0 ∨ E(2,0)(ψ)>0` on the actual nonzero smooth Gauss physical `radialBumpSmoothCore`, but it cannot decide the physically named h=1 point. Do NOT infer this disjunct without evidence. The pinned `deformedCoreCharge h m α f` is a sum of first-order source kinetic and a source multiplication field, and its two terms could cancel. To attack this with a **property of the specific trial state**, rather than another parameter-sampling trick, test parity under x↦−x.

## Narrow candidate goals

1. Prove pointwise evenness `radialBumpSmoothCore (-x)=radialBumpSmoothCore x` from its literal original `radialVacuumProfile radialBumpCoefficient`, since the latter depends only on `‖x‖`, and `‖-x‖=‖x‖`.
2. For every real h and every α in the literal `SpinIndex`, prove `pairedAlgebraData.deformedRealField h 0 α (-x) = pairedAlgebraData.deformedRealField h 0 α x` by the pinned source `deformedRealField_polarized`; the bilinear bracket term has TWO signs that cancel while the mass-linear term has exactly m=0. No new evenness axiom.
3. Prove the source potential operator acting on the SAME Gauss state is pointwise even, and restate as `MixedEnergy.field` at x and -x using the pinned source `field_apply`. This keeps the fermionic operator/fiber exact, not a scalar surrogate.
4. Print axioms for all four proofs; require **only** `[propext, Classical.choice, Quot.sound]` and a genuinely successful pinned Lean compiler run. This stage does not claim that a full Q or kinetic derivative has a particular parity.

## Required subsequent mathematical obligation

Separately show `MixedEnergy.firstOrder (pairedAlgebraData.kineticSkewSymbol α) radialBumpSmoothCore` is ODD under x↦−x and nonzero in source L² (the latter was already proved Gate #147). Combined with this gate's EVEN potential section, no exact cancellation `Q_α(1,0)ψ=0` is possible, because continuity and full-support Euclidean volume upgrade almost-everywhere vanishing to a pointwise equality; evaluate at x and -x to force K identically zero. Only after that derivation and compiler green may `E(1,0)(ψ)>0` be reported.

## Scope constraints

Same pinned Lean 4.34.1, `openai/math` `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No sorry/admit, extra axioms, surrogate energy, loose gauge, redefinitions, forced parameter values, branch merge or upstream effects. Commit source/workflow/acceptance/scope atomically to current research branch; do not inspect the newly triggered gate before owner supplies its outcome.
