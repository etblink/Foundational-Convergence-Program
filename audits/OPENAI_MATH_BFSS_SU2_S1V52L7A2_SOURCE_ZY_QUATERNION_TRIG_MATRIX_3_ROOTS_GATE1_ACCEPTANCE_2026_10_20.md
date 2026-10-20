# S1V52L7A2 — original positive-i quaternion Z/Y trigonometric matrices, strict Gate #1 ACCEPTED

**Disposition:** `L7A2_GATE1_PASS__THREE_EXACT_SOURCE_QUATERNION_MATRIX_ROOTS__L7A0_CACHE_RESTORED__PERMITTED_AXIOMS_ONLY__NATIVE_CURVE_EQUALITY_OPEN`.

## Independently verified strict evidence

- [GitHub Actions run #39473831841](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39473831841), job `118804528605`, completed SUCCESS on checkout `aa0e05d069e84eee96ee30ad846507f82be663e3`.
- Exact candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L7A2SourceZYQuaternionTrigonometricMatrixProbe.lean`, Git blob `7f91fc7bc1370f7e43fcc3ce2226c1c066bdb411`.
- Immutable pinned original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, BFSS Core original source blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, Lean 4.34.1, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact-source preflight passed.
- Qualified L7A0 cache `bfss-s1v52l7a0-native-zy-firstrow-transport-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored; exact accepted upstream/source `.olean` dependencies checked. All three compiled fresh:
  1. `FCP.BFSSS1V52L7A2.sourcePositiveIZQuaternionMatrix`
  2. `FCP.BFSSS1V52L7A2.sourcePositiveIYQuaternionMatrix`
  3. `FCP.BFSSS1V52L7A2.sourcePositiveIZQuaternion_exp_first`
- All three `#print axioms` reports were **exactly** `[propext, Classical.choice, Quot.sound]`. Strict validator emitted `S1V52L7A2_SOURCE_ZY_QUATERNION_MATRIX_3_ROOTS_KERNEL_PASS`, no error or `sorryAx`.
- New accepted cache saved `bfss-s1v52l7a2-source-zy-quaternion-trig-matrix-v1-adc7f124-lean4341-d13f23b-Linux-X64`; diagnostic artifact `bfss-s1v52l7a2-finite-matrix-39473831841`, artifact ID `12289325974`.

## Precisely accepted theorem scope

At any real angle `θ`, the literal accepted original-positive-i quaternion color matrix `sourceQuaternionColorMatrix ⟨cos θ,sin θ,0,0⟩` equals the complex diagonal matrix `diag(cos θ+i sin θ,cos θ-i sin θ)`. For `⟨cos θ,0,sin θ,0⟩`, the corresponding matrix is the original-sign real rotation with **positive** top-right sine and negative bottom-left sine. Its Z top-left complex entry equals `Complex.exp ((θ:ℂ)*Complex.I)`.

These are unconditional **finite matrix/quaternion algebra** facts. They do **not** prove that any original `sourcePlusIGaugeCurve (color) t` equals the quaternion matrix at `θ=t*FCP.BFSSSU2.pauliScale`. Original native gauge-curve matrix exponent evaluation and the heavy historical H5E8R/T imports are distinct unqualified L7A1 obligations; no fabricated equivalent replacement counts. In particular no global native SU2→Spin(48) hom, original action or continuity, manuscript Clifford/Fock module equivalence, or BFSS spectral result follows from this gate.

S1V52 qualified local-root total rises **82 → 85**. Keep accepted original Z/Y Spin-family membership (L3/L6) independent from actual native curve transfer.

Canonical main, pinned upstream and draft PR #25 unchanged. Audit only; no CI trigger.
