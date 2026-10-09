# BFSS SU(2) G4-K8B — exact coordinate derivative nonzero in FullL2 and positive kinetic integral 0.1.0

**Date:** 2026-10-09.
**Status:** `UNCOMPILED_CANDIDATE`.

## Accepted mathematical foundation

Gate #140 qualifies `radialBumpSmoothCore_exists_nonzero_fderiv`, a genuine nonzero real Fréchet derivative at some configuration for the **same** nonzero, smooth, compactly supported, SU(2) Gauss physical BFSS state. Gates #130–#133 had qualified its nonzero physical Hilbert state, smooth invariant core and closed source supercharge graph; Gate #135 its local kinetic-density continuity, compact support and exact integral identity; Gate #138 the source sum-of-squares criterion for a nonzero deformed supercharge and positive trial energy.

## Target the actual gap, not a substitute

1. Use exactly the pinned `EuclideanSpace.basisFun (SpaceIndex × ColorIndex 2) ℝ` basis to contradict vanishing of all `fderiv ℝ f x (EuclideanSpace.single p 1)` when the full Fréchet derivative at x is already proved nonzero. Source `coordinateDerivative_apply` then produces `∃ p x, coordinateDerivative p.1 p.2 radialBumpSmoothCore x ≠ 0`.
2. Prove a nonzero, continuous, compactly supported source coordinate derivative has a **nonzero actual `FullL2 2` class**. Use the literal `coreToL2_ae`, `Lp.ext_iff` and `Lp.coeFn_zero`; promote a.e.-zero to everywhere-zero only by `Continuous.ae_eq_iff_eq` under the **genuine Euclidean volume measure**, whose open sets have positive measure. A pointwise value alone is NOT an L² argument.
3. Conclude `∃ p, coreToL2 (coordinateDerivative p.1 p.2 radialBumpSmoothCore) ≠ 0`.
4. Via Gate #135 `physicalKineticDensity_integral_exact`, obtain a genuine **strictly positive integrated kinetic density** from the positive squared norm among the finite coordinates.

## Hard boundary

A nonzero kinetic (L²) derivative does NOT show the *deformed* supercharge acts nontrivially, since kinetic and potential terms in `deformedCoreCharge` may cancel. Therefore NO strict full deformed energy, Hamiltonian eigenvalue or mass gap is claimed in this stage. The future nonzero-charge task remains separate and outcome-relevant.

Use frozen Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No new axioms, `sorry`/`admit`, import substitutions, main merge or upstream effects. Single atomic research-branch commit of source/workflow/acceptance/scope; stop BEFORE inspecting the new gate until owner reports the color.
