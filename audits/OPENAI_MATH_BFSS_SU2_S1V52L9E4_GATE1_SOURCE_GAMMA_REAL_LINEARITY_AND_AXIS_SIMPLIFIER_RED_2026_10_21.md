# S1V52L9E4 — Original Fock 48-real linear gamma map and source-axis action: Gate #1 RED

**Independent disposition:** `L9E4_GATE1_RED__0_OF_1_ROOT__L9E3_QUALIFIED_PAIRWISE_CAR_CACHE_HIT__FOUR_SOURCE_PROOF_NORMALIZATION_GOALS__202_ACCEPTED_ROOTS`.

## Exact immutable verification

- [Strict CI run #39548325103](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39548325103), job `119051491029`, completed FAILURE at workflow commit `acbab0f0c3f5a93b7ca6af8fa345b95bd66456f0`.
- Candidate source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L9E4OriginalFockRealLinearCliffordGeneratorMapProbe.lean`, blob `ca938f798e418884e17c9d8303aa64a3ec2b77a0`.
- Pin checks for original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` passed. Qualified parent L9E3 HIT `bfss-s1v52l9e3-original-fock-pairwise-clifford-car-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Exact original Fock normalized gamma finite-sum `originalFockGammaRealLinear : Source48Vector →ₗ[ℝ] (Fermion 2 →L[ℂ] Fermion 2)` elaborated to its additivity and scalar goals; no source type mismatch in chosen target. Candidate theorem `originalFockGammaRealLinear_sourceAxis` reached all source-axis branches.
- Four Lean **unsolved goals**, proof engineering only:
  1. At line 42, `map_add'`, compiler goal `∑ x, (v x + w x) • Γ_x = (∑ p, v p • Γ_p) + (∑ p, w p • Γ_p)`. `simp only [Pi.add_apply, add_smul, Finset.sum_add_distrib]` did not reduce inside the binder. Use explicit `Finset.sum_congr` and distributivity.
  2. At line 45, `map_smul'`, compiler goal `∑ x, (c • v x) • Γ_x = ∑ x, (((RingHom.id ℝ) c * v x) • Γ_x)`. Real scalar multiplication and the identity ring hom reduce to the same real multiplication, but previous simp did not normalize them. Use explicit real multiplication/unfolding and `change` or targeted `simp [Pi.smul_apply, smul_eq_mul]`.
  3. At line 72, off-axis `hzero` needs an explicit `if p = sourceBlockColorLabel α A then 1 else 0 = 0`, using `hneq : p ≠ sourceBlockColorLabel α A` in the **correct direction**.
  4. At line 71, after `hzero`, the off-axis sum term remains `0 • Γ = 0`, not discharged by `simp only [hzero, zero_smul]`; use separate proof of real zero-scalar action with ordinary `simp` or exact `zero_smul ℝ`.

- The theorem's reported axioms include `sorryAx` because these goals remain. No qualified L9E4 cache; **202 S1V52 accepted roots unchanged**. Diagnostic artifact `bfss-s1v52l9e4-fock-real-linear-gamma-39548325103`, ID `12322877751`.

## Planned targeted correction

Preserve the exact original 48-label source finite sum, the real-linear-map target type, original positive sqrt(2) normalized pairedTheta and theorem statement. Prove `map_add'` by an explicitly typed sum of two real scalar multiples and `Finset.sum_add_distrib`, and `map_smul'` by reducing real scalar multiplication through `Pi.smul_apply` and identity scalar field, without unfolding original Fock operators. On source axes, normalize `Pi.single_apply` and prove off-axis index inequality in the concrete displayed direction; use `simp [hzero]` or `zero_smul` explicitly for the vanished summand.

No evidence of a counterexample to original-Fock Clifford generator linearity. All-vector quadratic identity, actual CliffordAlgebra lift, original Fock unitary Spin(48) implementation, continuity and BFSS spectral results remain **OPEN**. Main, immutable upstream, and PR #25 untouched.
