# BFSS SU(2) G4-K3 — explicit nonzero Gauss-invariant smooth core 0.1.0

**Date:** 2026-10-08
**Status:** `UNCOMPILED_CANDIDATE`
**Predecessors:** Gate #127 six-field exact `pairedGaugeData`; Gate #128 concrete closed physical Hilbert space; Gate #129 nonzero invariant fermionic vacuum/pointwise radial profiles; Gate #130 actual nonzero normalizable SU(2) physical state `radialBumpL2`.

## New theorem obligations

Prove on the pinned source types that the Gate #130 real radial smooth cutoff `Real.smoothTransition (2 - 2*‖x‖²)` is infinitely differentiable on the exact `Boson 2` (via `contDiff_norm_sq ℝ` and the upstream `Real.smoothTransition.contDiff`), lifts to a `ℂ` coefficient and smooth `Fermion 2` profile, and has already verified compact support.

Construct a literal `SmoothCore 2` source-defined `TestFunction` with this vector profile and prove:
- `coreToL2 radialBumpSmoothCore = radialBumpL2` for the exact existing physical state;
- `radialBumpSmoothCore ≠ 0`;
- `radialBumpSmoothCore ∈ pairedGaugeData.invariantCore` via the actual `physicalSpace.comap coreToL2`;
- a packaged `radialBumpInvariantCore : pairedGaugeData.invariantCore` is nonzero;
- the resulting smooth core section satisfies upstream pointwise equivariance;
- existing upstream `pairedAlgebraData.coreForm_nonneg` applies to this **nonzero** smooth invariant test state.

## Explicit limits

This is a nonzero smooth Gauss-compatible test state, **not** an energy eigenstate or supersymmetric zero-charge solution. Nonnegative `coreForm` is a source lemma true for all smooth-core vectors and does not show it is positive, zero, minimized, finite spectral gap, self-adjoint spectral information, or a BFSS physical prediction. Treat each stronger assertion as a separate open obligation.

Use pinned Lean `4.34.1`, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No `sorry`/`admit`, extra axioms, alternate Hilbert types, action changes, dependency edits, commits to main or public upstream effects. Push one atomic source+workflow+acceptance+scope commit and STOP without inspecting its new gate until owner reports the color.
