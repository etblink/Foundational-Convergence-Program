# BFSS SU(2) F5-G3 — each individual Clifford potential multiplier vanishes on single-color sector

**Date:** 2026-10-08. **Status:** `F5_G3_SUBMITTED_UNCOMPILED`.

## Authority

Pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1. FCP research branch `research/openai-math-su2-concrete-potential`.

Accepted Gate #82: the actual `AlgebraData 2` inhabitant `FCP.BFSSSU2Full.concreteAlgebraData`. Gate #83: massless `deformedBosonicPotential 1 0` equals the explicit quartic SU(2) wedge sum. Gate #85: successful run `37771564834`, job `113292158288`, proof source commit `4a5e1534bbe1c67b12ce17f0398bd68cc8432871`: exact `1/16` sum of nonnegative squared norms of `deformedPotentialMultiplier 1 0 x α z` vanishes when `∀ i a, a ≠ (0 : Fin 3) → x(i,a)=0`.

## Bounded kernel targets

1. Using `Finset.sum_eq_zero_iff_of_nonneg` and the nonzero factor `(1/16 : ℝ)`, prove **pointwise for any spin label α, fermion vector z** that `concreteAlgebraData.deformedPotentialMultiplier 1 0 x α z = 0` when x has support in color 0.
2. By continuous linear map extensionality, conclude `concreteAlgebraData.deformedPotentialMultiplier 1 0 x α = 0` as an actual complex continuous linear operator for every α. This is the exact **pinned upstream operator definition** instantiated with the accepted model.

This step applies the previously verified upstream average theorem, and must not change the model, operator definition, normalization, or single-color premise.

## Scientific limits and forward routing

This is about the **potential Clifford multiplier**, not the Hamiltonian's fermionic *linear* coupling, kinetic term, transverse oscillator, gauge invariance, or spectral gap. Does not prove classical noncoercivity globally or falsify the positive-eigenvalue manuscript. No mass-gap/theory-of-everything claims, K1–K10 changes, FCP main or upstream writes, public issue/PR, new axioms or `sorry`.

Print both exact kernel axioms, require only `[propext, Classical.choice, Quot.sound]`; commit one CI candidate and stop without inspecting its new workflow until the human owner reports GREEN/RED. After F5-G3, pause further elementary formalization and prioritize source-first gauge/physical-model review.
