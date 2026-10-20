# S1V52L7A3 Gate #1 — RED: incomplete scalar exponential normalization

**Disposition:** `L7A3_GATE1_RED__L7A2_CACHE_RESTORED__SOURCE_PINS_PASS__SCALAR_EXP_NORMALIZATION_UNSOLVED__SORRYAX__ZERO_ROOTS_ACCEPTED`.

- [GitHub Actions run #39475707142](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39475707142), job `118810984870`, completed **failure** on checkout `4301dccf610f2c2f672be0f3fb66b3157678df24`.
- Candidate source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L7A3FiniteZMatrixExponentialBridgeProbe.lean`, exact Git blob `9f77a7501f626cd666b11dd32c24ab1d3b2dfcb0`.
- Immutable original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original BFSS Core blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` verified. Previously accepted L7A2 cache restored exactly: `bfss-s1v52l7a2-source-zy-quaternion-trig-matrix-v1-adc7f124-lean4341-d13f23b-Linux-X64`; all required accepted `.olean` artifacts present.
- First and only actual theorem compiler failure at **line 40:67**: unsolved `(0,0)` and `(1,1)` goals `NormedSpace.exp (↑θ * Complex.I) = Complex.I * Complex.sin ↑θ + Complex.cos ↑θ` and `NormedSpace.exp (-(↑θ * Complex.I)) = -(Complex.I * Complex.sin ↑θ) + Complex.cos ↑θ`. `ring` cannot rewrite an analytic `NormedSpace.exp` to `Complex.exp`, nor can it discharge real/complex trigonometric transports by polynomial normalization alone. Unused simp warnings are secondary.
- The incomplete declaration's `#print axioms` includes `sorryAx`; **0 accepted L7A3 roots**. The aggregate S1V52 local acceptance count stays **85**. No new accepted L7A3 cache.

## Project Lead repair decision

Retain the full original theorem statement, original positive-`i` diagonal and exact quaternion matrix. Repair at the correct abstraction boundary: use qualified L7A2 `sourcePositiveIZQuaternionMatrix`; separately convert diagonal `NormedSpace.exp` via pinned `Matrix.exp_diagonal`, `Pi.exp_def` and `Complex.exp_eq_exp_ℂ`, then prove the positive and negative scalar complex exponent identities with `Complex.exp_ofReal_mul_I` and `cos_neg`/`sin_neg`. Finish by matrix extensionality. Do not blindly increase recursion limits, rewrite all original source fields, or assume `exp(iθ)` without proof. Re-pin the modified source Git blob and use a fresh strict Gate #2 cache key.

This source-level lemma alone will **not** establish that `sourcePlusIGaugeCurve` equals the finite quaternion matrix; that still requires exact original `pairedAlgebraData.color` tangent identification. No all-native SU(2)→Spin(48), original Fock action, or spectral conclusion.

Canonical `main`, original `etblink/math` and draft PR #25 unchanged; this audit is documentation-only.
