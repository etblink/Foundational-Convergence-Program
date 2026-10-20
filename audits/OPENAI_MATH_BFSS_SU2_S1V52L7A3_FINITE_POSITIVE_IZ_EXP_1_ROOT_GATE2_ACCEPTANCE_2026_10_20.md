# S1V52L7A3 — finite original-sign positive-i Z matrix exponential Gate #2 ACCEPTED

**Disposition:** `S1V52L7A3_GATE2_PASS__ONE_FINITE_POSITIVE_I_Z_MATRIX_EXP_ROOT__L7A2_CACHE_RESTORED__PERMITTED_AXIOMS_ONLY__NATIVE_CURVE_TANGENT_OPEN`.

## Strict primary evidence

- [GitHub Actions run #39477035464](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39477035464), job `118815555589`, completed **SUCCESS** at checkout `d21fc111079c26169269e70273bbd65dde7ae162`.
- Exact source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L7A3FiniteZMatrixExponentialBridgeProbe.lean`, blob `e154c4e92e586a5d26e1be4b4c367f06d5a54bbd`.
- Pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original BFSS Core blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Exact-source preflight succeeded.
- Qualified L7A2 cache **restored** from `bfss-s1v52l7a2-source-zy-quaternion-trig-matrix-v1-adc7f124-lean4341-d13f23b-Linux-X64`; all required `.olean` source dependencies and original BFSS Core passed.
- One root `FCP.BFSSS1V52L7A3.finitePositiveIZDiagonal_exp_quaternion` compiled and `#print axioms` returned exactly `[propext, Classical.choice, Quot.sound]`. Validator printed `S1V52L7A3_FINITE_POSITIVE_IZ_EXP_1_ROOT_KERNEL_PASS`, no source compiler error and no `sorryAx`.
- New qualified cache saved `bfss-s1v52l7a3-finite-positive-iz-exp-v2-adc7f124-lean4341-d13f23b-Linux-X64`. Diagnostic artifact `bfss-s1v52l7a3-finite-iz-exp-39477035464` ID `12288259848`.

## Exact theorem boundary

For every real `θ`, the literal matrix exponential of the 2×2 complex diagonal matrix with entries `θ*Complex.I` and `-(θ*Complex.I)` equals the previously qualified original positive-i quaternion matrix `sourceQuaternionColorMatrix ⟨cos θ,sin θ,0,0⟩`. This is the **full matrix**, not merely the upper-left entry. Reuses accepted L7A2 and explicit `Complex.exp_ofReal_mul_I` and real `sin_neg`, `cos_neg`. Does not import historical expensive Gauss/Fock files.

## Red-to-green negative knowledge

[Gate #1 #39475707142](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39475707142) was RED, two unsolved scalar-exp goals after broad `simp`/`ring`; `sorryAx` in the unfinished proof. That did **not** contradict the identity. Gate #2 factored an explicit diagonal function and scalar `Complex.exp` certificates before invoking matrix extensionality, preserving the exact mathematical statement and source hashes. The scoped red-gate audit remains.

S1V52 local accepted ledger increases **85 → 86**.

**Open:** exact equality of native `sourcePlusIGaugeCurve 2 t` with the exponential of the original `pairedAlgebraData.color 2` tangent, after original `θ=t*FCP.BFSSSU2.pauliScale` identification; native Y curve; L7A1 original native quaternion coordinates, L7B source 48 Spin transfer, original all-gauge Euler-to-Spin membership, 16-block group hom, physical manuscript representation, operator domains and BFSS spectrum. Never substitute an abstract SU2 curve or an unproved Pauli scale bridge.

Canonical main, original math upstream and draft PR #25 unchanged. Audit-only commit does not trigger source workflow.
