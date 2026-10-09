# BFSS SU(2) G4-K8A — Gate #140 nonzero physical-state Fréchet derivative acceptance 0.1.0

**Date:** October 9, 2026.
**Disposition:** `PASS__NONZERO_REAL_FRECHET_DERIVATIVE_GAUSS_WITNESS`.

## Independently verified frozen evidence

- Research branch: `research/openai-math-su2-concrete-potential`.
- Qualified commit `e4160c00326e61ca75eef44dae5ac18d36777101` (parent `ba9c24b3a24f38448167278315332203658bca6d`).
- Qualified source: `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K8ANonzeroDerivativeProbe.lean`, exact Git blob `0d9bd739a46caecbc7159ec29161c96d7f553c77`.
- Qualified workflow: `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `f8918df07126b7dc65a2615d4aea5b2c4086b2cc`.
- [BFSS SU2 Concrete Color Gate #140](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37936628047), run `37936628047`, color-cross job `113840188998`, completed SUCCESS on the exact qualified commit.
- Actual `lake env lean SU2BFSSG4K8ANonzeroDerivativeProbe.lean` passed.
- All six `#print axioms` declarations report exactly `[propext, Classical.choice, Quot.sound]`, no `sorryAx` or extra axioms. One harmless upstream Mathlib deprecation warning: `EuclideanSpace.norm_single`.
- Pinned Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## What the kernel actually proved

On the exact physical Hilbert lineage, `radialBumpSmoothCore : SmoothCore 2` is not constant: at the origin it is the verified nonzero fermionic singlet vacuum, while at the explicit bosonic configuration `radialFarPoint` (one bosonic coordinate = 2, actual Euclidean norm 2) it vanishes by the pinned smooth radial cutoff. The genuine source-defined Fréchet derivative cannot vanish at every configuration, by pinned `is_const_of_fderiv_eq_zero`:

```lean
FCP.BFSSSU2GaugeG4K8A.radialBumpSmoothCore_exists_nonzero_fderiv :
  ∃ x : Boson 2,
    fderiv ℝ (radialBumpSmoothCore : Boson 2 → Fermion 2) x ≠ 0
```

The point `radialFarPoint` is defined with an EXPLICIT bounded `ColorIndex 2 := ⟨0, by decide⟩`; implicit bare numeric `0` was rejected by Gate #139. No surrogate gauge, weaker state, new hypotheses, alternative Hamiltonian, or custom axioms used.

## Exact scientific boundary

This is a pointwise nonzero real derivative. It is NOT yet nonvanishing of a named pinned `coordinateDerivative` as an L² equivalence class, strict positivity of its integrated kinetic density, or nonvanishing of any **deformed supercharge**. Hence it does not prove positive deformed trial energy, Hamiltonian eigenstates, mass gap, physical BFSS ground state, or validity of a physics model.

## Next targeted stage G4-K8B

Under the SAME pinned types, apply the complete orthonormal basis `EuclideanSpace.basisFun (SpaceIndex × ColorIndex 2) ℝ` and Mathlib `Module.Basis.ext` to the accepted nonzero real Fréchet derivative to show at least one source-defined `coordinateDerivative p.1 p.2 radialBumpSmoothCore` is nonzero at an actual point. Upgrade this to a **nonzero L² class** `coreToL2 (coordinateDerivative ...)` using pinned `coreToL2_ae` and `Continuous.ae_eq_iff_eq` with true Euclidean volume's full support, not single-point measure. Conclude the exact source kinetic density integral is strictly positive from `physicalKineticDensity_integral_exact` and `Finset.sum_pos'`.

G4-K8B is UNCOMPILED until its own Gate demonstrates compiler success and only the standard 3 axioms. Do not infer a nonzero deformed charge from a kinetic nonzero derivative without resolving potential-term cancellation. No main merge, upstream PR or unauthorized external effects.
