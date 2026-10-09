# BFSS SU(2) G4-K2B — Gate #130 nonzero physical L² acceptance 0.1.0

**Date:** October 8, 2026 America/Los_Angeles; compiler logs stamped October 9, 2026 UTC.
**Disposition:** `PASS__NONZERO_NORMALIZABLE_GAUSS_PHYSICAL_STATE`

## Independently checked frozen evidence

- Research branch `research/openai-math-su2-concrete-potential`.
- Qualified commit `802eff0a02766d29e479115d290638f7e4a7ef0a`.
- Qualified source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K2BNonzeroPhysicalL2Probe.lean`.
- Source blob `d984c4e3831e4d21d7abf5776dbe63b5d190c4ed`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `755891d309b4ce98ad98b8f3eb931dee2f412d6a`.
- [Gate #130 Actions run](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37894319431), run `37894319431`, `color-cross` job `113702059672`, SUCCESS at exact commit above.
- Actual `lake env lean SU2BFSSG4K2BNonzeroPhysicalL2Probe.lean` executed successfully.
- Every one of twelve `#print axioms` reports had exactly `[propext, Classical.choice, Quot.sound]`. No `sorryAx`, other axioms or admitted goals.
- Pinned Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` unchanged.

## Actual accepted mathematical result

The source-defined G4-B/G4-E nonzero invariant fermionic Fock vacuum multiplied by the explicit radial scalar `(Real.smoothTransition (2 - 2*‖x‖²) : ℂ)` defines a continuous compactly supported field on the real BFSS `Boson 2` configuration space. Actual `MemLp 2` was proved, and `radialBumpL2 : FullL2 2` is a genuine element of the PINNED Hilbert L² space. Its nonzeroness follows from the nonzero value at zero together with continuous a.e.-to-everywhere uniqueness for Euclidean volume, **not** from one point being positive measure. The actual upstream `GaugeData.bosonPullback` and `fiberAction` have been shown equal on that L² element for all genuine SU(2) transformations. Hence:

```lean
FCP.BFSSSU2GaugeG4K2B.radialBumpL2_ne_zero
FCP.BFSSSU2GaugeG4K2B.radialBumpL2_mem_physicalSpace
FCP.BFSSSU2GaugeG4K2B.pairedPhysicalSpace_ne_bot
```

All have been compiled with only the three standard axioms. `pairedPhysicalSpace` is definitionally the upstream `pairedGaugeData.physicalSpace`.

**Scientific boundary:** This is existence of a nonzero normalizable state satisfying the algebraic Gauss constraint. It is not a supersymmetric vacuum state, a ground-state eigenvector, Hamiltonian spectral theorem, mass-gap result, or physical prediction. No kinetic/charge operator domain compatibility has been shown.

## G4-K3 next bounded target

The same radial bump is smooth as a function of `‖x‖²`; show its real-to-complex fermionic profile is an actual BFSS `SmoothCore 2` test function, with compact support, whose exact `coreToL2` image equals the accepted `radialBumpL2`, making the pinned `pairedGaugeData.invariantCore` provably nonzero. Then evaluate the source-defined charge quadratic form's existing nonnegativity theorem on this nonzero smooth invariant witness. Do not infer vanishing charge, existence of bound/eigenstate, or a spectral result. G4-K3 only becomes accepted with a full compiler pass and standard-only axiom outputs.

Work on research branch only. No main merge, public PR/upstream changes without explicit human authorization.
