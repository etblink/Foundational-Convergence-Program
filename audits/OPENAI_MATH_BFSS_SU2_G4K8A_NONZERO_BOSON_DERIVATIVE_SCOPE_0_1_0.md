# BFSS SU(2) G4-K8A — nonzero bosonic Frechet derivative of exact Gauss trial state 0.1.0

**Date:** October 9, 2026.
**Status:** `UNCOMPILED_CANDIDATE`.

## Qualified inputs and scientific necessity

Gate #130 genuinely proves `radialBumpL2 : FullL2 2` nonzero and in the exact Gauss physical subspace. Gate #132 proves the exact representative `radialBumpSmoothCore : SmoothCore 2` is nonzero, compactly supported and a literal member of `pairedGaugeData.invariantCore`; Gate #133 puts its source-defined charge vector in the pinned closed operator graph. Gate #135 provides its kinetic/potential/fermion densities and Gate #138 proves strict deformed trial energy iff at least one actual deformed source supercharge is nonzero. The open scientific obligation is *a nonzero deformed charge*, not another lower bound from the sum-of-squares.

## This bounded target

For the exact accepted smooth physical state `radialBumpSmoothCore`, define a real bosonic configuration `radialFarPoint := EuclideanSpace.single ((0:SpaceIndex),(0:ColorIndex 2)) (2:ℝ)`. Prove its actual Euclidean norm ≥1 by the PINNED `EuclideanSpace.norm_single`. Show `radialBumpSmoothCore 0 ≠ 0` via the verified transported nonzero 24-orbital Fock vacuum and cutoff value 1, while `radialBumpSmoothCore radialFarPoint = 0` via the verified compact radial support cutoff. Prove this real vector-valued function is not constant.

Then assume its Fréchet derivative vanishes everywhere. The exact Mathlib `is_const_of_fderiv_eq_zero` plus actual smoothness implies the function has identical values at these two explicit configurations, contradiction. Conclude:

```lean
∃ x : Boson 2,
  fderiv ℝ (radialBumpSmoothCore : Boson 2 → Fermion 2) x ≠ 0
```

This is a true derivative nonvanishing result on the pinned BFSS state, **not** a surrogate fermion test or a new assumption.

## Stronger still-open obligations

A nonzero Fréchet derivative at some x does not automatically qualify any given coordinate-derivative `coreToL2 (coordinateDerivative i A radialBumpSmoothCore)` as nonzero, without a proven basis decomposition and nonzero-continuous-field-to-nonzero-L² step. Nor does a nonzero kinetic derivative automatically qualify a **deformed** supercharge, because kinetic and potential pieces could cancel. Subsequent bounded stages must prove those claims from actual pinned operators; only then may the K7 strict-positivity iff be invoked. Even strict positivity of this single trial state would not imply a spectral gap, SUSY ground state, energy eigenvector or BFSS model validation.

Preserve Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No sorry/admit/new axioms. Submit source/workflow/acceptance/scope on research branch only. STOP without inspecting newly triggered gate before owner reports color.
