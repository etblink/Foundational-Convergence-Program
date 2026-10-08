# BFSS SU(2) G3-C — real-to-complex one-particle unitary representation 0.1.0

**Date:** 2026-10-08
**Status:** `G3C_UNCOMPILED_PENDING_CI`

## Accepted baseline and exact sources

[Gate #96](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37817317491) run `37817317491`, job `113449139024`, commit `61b69699079d62fa17527a1cb82183281686250f`, source blob `c90b25156ec4d81ee16e5939cd888cc12cdc33a3`, workflow blob `0527bc0a58e9d6437c1ba4711c488148198d5b65`, all four substantive theorems compiled with only `[propext, Classical.choice, Quot.sound]`.

Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean v4.34.1. Pinned mathlib `Matrix.map_mul`, `Matrix.map_one`, conjugate transpose and the unitary membership predicate are used. **No changes to pins, source packages, resource allocations or accepted proof files.**

## Exact G3-C proof candidate

Embed the verified real `oneParticleMatrix(g) : Matrix (Fin 24) (Fin 24) ℝ` into complex matrices by `Matrix.map (algebraMap ℝ ℂ)`. Prove:
- no spin-pair mixing, correct upstream row-output/column-input color coefficient;
- `U24(1)=I` and `U24(gh)=U24(g)*U24(h)`;
- `U24(g)ᴴ*U24(g)=I`;
- `U24(g)ᴴ=U24(g⁻¹)` and `U24(g)*U24(g)ᴴ=I`;
- an actual `Matrix.unitaryGroup (Fin 24) ℂ` inhabitant for every g and exact `GaugeGroup 2 →* Matrix.unitaryGroup (Fin 24) ℂ` homomorphism.

These are **one-particle** 24-mode results only. They neither constitute a `Fermion 2 ≃ₗᵢ[ℂ]` action on the `2^24` dimensional Fock Hilbert space nor prove creator/annihilator or theta covariance, continuity, vacuum invariance, complete `GaugeData` or any Hamiltonian spectral statement. Actual exterior-algebra / Fock second quantization is next and will require separate proof and source audit.

## Operational rule

Candidate must compile the exact pinned source with no `sorry`, `admit`, `sorryAx`, custom axioms or weakened target. Inspect only on human owner report of new gate GREEN/RED; gate number itself does not certify success. Keep FCP main and upstream read-only. No public PR/issues or scientific K1–K10 changes.
