# BFSS SU(2) G4-K2B — exact nonzero Gauss physical L² state scope 0.1.0

**Date:** 2026-10-08
**Status:** `UNCOMPILED_CANDIDATE`; must not be treated as qualified.
**Accepted inputs:** Gate #127 complete six-field `pairedGaugeData`; Gate #128 exact closed Gauss physical subspace; Gate #129 nonzero exact fermion SU(2) singlet and pointwise radial equivariance.

## New mathematical endpoint (single genuine theorem chain)

- Explicit `radialBumpCoefficient r := (Real.smoothTransition (2 - 2 * r^2) : ℂ)`, with center coefficient 1, continuous.
- Continuous radial vacuum section on `Boson 2` with compact support inside the unit closed ball; actual finite-dimensional Euclidean volume.
- Produce literal `radialBumpL2 : FullL2 2`, using `Continuous.memLp_of_hasCompactSupport` and `MemLp.toLp` for p=2.
- Establish almost-everywhere representative identity and **nonzero** L² class by applying `Continuous.ae_eq_iff_eq volume` to rule out an a.e.-zero continuous nonzero-centered section.
- Show in the actual `GaugeCore.lean` definitions that `pairedGaugeData.bosonPullback g radialBumpL2 = pairedGaugeData.fiberAction g radialBumpL2` for every SU(2) g. Match the pinned `Lp.coeFn_compMeasurePreserving` and `ContinuousLinearMap.coeFn_compLp` identities with G4-K2A pointwise invariance and actual Lp representative almost-everywhere equality; do not assume Lp gauge invariance.
- Conclude `radialBumpL2 ∈ pairedPhysicalSpace` and `pairedPhysicalSpace ≠ ⊥`, for the actual pinned upstream Gauss physical Hilbert space.

## Explicit exclusions

An L² state does not, merely by invariance, solve the BFSS Hamiltonian equation, saturate charge, solve its spectral problem, be an energy eigenstate, or satisfy normalizable SUSY vacuum conditions. The program may pursue those separately after this state-space existence result is genuinely compiled. The historical nonzero-l2 endpoint must be reported **unverified** until the compiler and `#print axioms` outputs establish it.

The complete test must run frozen Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; no weakening of the target, shortcuts, `sorry`/`admit`, extra axioms or alternate space. Preserve workflow pins and resource bounds. Submit source, gate acceptance, scope and workflow atomically to research branch and STOP without inspecting next run until owner reports its color.
