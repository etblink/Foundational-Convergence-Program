# BFSS SU(2) color Gate #20 — complex-spanning acceptance 0.1.0

**Date:** 2026-10-07

**Accepted result:** `TRACELESS_COMPLEX_PAULI_SPANNING_COMPILED__REAL_HERMITIAN_COEFFICIENTS_PENDING`

## Reproducible evidence

- Research branch: `research/openai-math-su2-concrete-potential`
- Exact compiler/workflow commit: `2008e9f0be00a0b1d093b52753efc3a03c5f594f`
- [Actions Gate #20](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37713429570): SUCCESS
- Pinned source: `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`
- Both upstream `OAI.Analysis.CharacterCriterion.Pauli` and `OAI.MathematicalPhysics.BFSS.PotentialBasis` built in an ephemeral checkout.
- `pauli_eq_native_pauli` and `nativePauli_complex_span_traceless` compiled and printed standard axioms only: `[propext, Classical.choice, Quot.sound]`, without `sorryAx`.

## What was proven

OpenAI's native `KirchbergRordam.Pauli.coeff_sum` reconstructs any complex 2×2 matrix from the four Pauli basis elements (including identity). `Matrix.trace X = 0` removes the identity coefficient; `pauli_eq_native_pauli` translates the other three basis elements to FCP's already verified SU(2) ordering. Thus any traceless *complex* 2×2 matrix has a three-Pauli expansion with *complex* coefficients.

## Critical remaining assumption

`OAI.BFSSQuantum.AlgebraData 2.color_spanning` needs real coefficients for *Hermitian* traceless matrices. That is **not implied by complex spanning alone without a reality proof**. Next establish, for Hermitian `X`, that `Pauli.coeff a.succ X` has vanishing imaginary part using the trace of the product of Hermitian matrices. Then rescale coefficients by `√2` to obtain an actual `color_spanning` field for normalized `T_a`.

Neither a complete `AlgebraData 2` nor the gauge, gamma, theta, CAR/irreducibility, Hamiltonian, or spectral conclusions has been constructed.

**Effects:** FCP experimental branch only; FCP main and OpenAI math unchanged. No public upstream PR.
