# S1V52L9E5A2 — exact original-Fock finite complex weighted CAR contraction: Gate #3 ACCEPTED

**Independent Project Lead verdict:** `L9E5A2_GATE3_PASS__ONE_ACTUAL_ORIGINAL_FOCK_COMPLEX_WEIGHTED_FINITE_CAR_ROOT__L9E4_QUALIFIED_CACHE_HIT__THREE_PERMITTED_AXIOMS_ONLY__205_CUMULATIVE_S1V52_ROOTS`.

## Immutable strict acceptance evidence

- [GitHub Actions run #39558173730](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39558173730), job `119082807793`, **SUCCESS**, at exact workflow/source checkout `7788861a246aecce06d50c5b9276407c7133b2e5`. Run created 2026-10-21 06:52:38 UTC, completed 06:58:26 UTC.
- Accepted source: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L9E5A2FiniteComplexWeightedFockCliffordSquareProbe.lean`, exact Git blob `3fd28d2eca081c03b1546fb987f0a50c8fe09397`.
- Pinned immutable original upstream: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Original source and Pauli preflight passed. Qualified L9E4 cache restored: `bfss-s1v52l9e4-original-fock-real-linear-gamma-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Qualified theorem: `FCP.BFSSS1V52L9E5A2.finiteComplexWeightedFockClifford_square`. The compiler printed **exactly** `[propext, Classical.choice, Quot.sound]` and no `sorryAx` or Lean error; strict marker `S1V52L9E5A2_FINITE_COMPLEX_WEIGHTED_FOCK_SQUARE_1_ROOT_KERNEL_PASS`.
- Qualified compiled .olean cache saved: `bfss-s1v52l9e5a2-complex-weighted-clifford-square-v3-adc7f124-lean4341-d13f23b-Linux-X64`.
- One genuinely new accepted S1V52 root: cumulative **204 → 205**. This is not an original all-vector source specialization and does not create a Clifford algebra homomorphism.

## Precisely what was proven

The generic theorem takes an arbitrary finite index set `s : Finset ι`, arbitrary **complex** coefficient function `c : ι → ℂ`, and arbitrary actual original Fock continuous-linear operators `γ : ι → Fermion 2 →L[ℂ] Fermion 2`, provided their diagonal squares are 1 and distinct generators anticommute. It proves:

```
(∑ i ∈ s, c i • γ i) * (∑ i ∈ s, c i • γ i)
  = (∑ i ∈ s, c i * c i) • (1 : Fermion 2 →L[ℂ] Fermion 2).
```

Proof: Finset induction, explicit noncommutative polynomial expansion and cancellation by the CAR hypotheses, with scalar action fixed at the actual Fock complex-linear operator type.

This is an unconditional **implication** from hypotheses and does not silently assert that every possible `γ` satisfies them. The original `pairedTheta` positive sqrt(2), exact `SourceLabel`, `sourceBlockColorEquiv`, and 48-real original quadratic form are to be addressed in L9E5B.

## Gate #1–#3 negative knowledge

- [Gate #1 RED, run #39556011139](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39556011139): only the `SMulZeroClass ℂ ?m` instance was under-specified at off-diagonal zero. Zero accepted roots.
- [Gate #2 RED, run #39556850528](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39556850528): an explicit expected result type for `smul_zero` did **not** fix the mismatch between generic `SMulZeroClass.toSMul` and `ContinuousLinearMap.instSMul` for genuine Fock operators. Zero roots. See `OPENAI_MATH_BFSS_SU2_S1V52L9E5A2_GATE2_ORIGINAL_FOCK_SMUL_ZERO_INSTANCE_RED_2026_10_21.md`.
- **Gate #3 GREEN:** retain exact complex-weighted finite CAR theorem and operator target. Replace off-diagonal generic `smul_zero` by `apply ContinuousLinearMap.ext; intro ψ`, followed by explicit operator `smul_apply`, `zero_apply`, and scalar-zero equality on the genuine underlying `Fermion 2` module. This prevents instance leakage and avoids overextending `PiLp`.

## Immediate mathematically discriminating next target

L9E5B must now compile an independent root on the **original source real** `Source48Vector`:

```lean
originalFockGammaRealLinear v * originalFockGammaRealLinear v =
  (source48Quadratic v) • (1 : Fermion 2 →L[ℂ] Fermion 2)
```

Use accepted L9E3 normalized pairwise CAR, L9E2 normalized diagonal squares, L9E4 source gamma, this complex CAR helper and independently green L9E5B0 original real-complex operator scaling theorem. Critical boundaries:
- exact original `sourceBlockColorEquiv.symm` label injectivity for off-diagonal cancellation;
- `source48Quadratic_eq_dot` for source real sum-of-squares and no uncontrolled quadratic reduction;
- the source `ℝ` to `ℂ` coefficient map as a separate proven interface;
- the actual `CliffordAlgebra.lift` remains a future distinct gate.

**Repository restrictions:** no merge, no main/PR #25 modification, no changing pinned original math or applying added axioms.
