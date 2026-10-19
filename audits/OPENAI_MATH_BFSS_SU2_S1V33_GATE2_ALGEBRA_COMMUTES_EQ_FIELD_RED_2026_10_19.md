# BFSS S1V33 Strict Gate #2 RED — spurious .eq on Algebra.commutes equality

**2026-10-19 PDT, Project Lead.** **Status:** `S1V33_G2_RED__G1_INVERSE_AND_SMUL_MUL_REPAIRS_EFFECTIVE__FIRST_REAL_SCALAR_EMBED_ROOT_COMPILED__SECOND_AND_THIRD_SORRYAX_REJECTED__NO_CACHE`.

[Original S1V33 Quadratic Isometry Strict Gate #2 run #39341978426](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39341978426), job `118365467336`, FAILURE on workflow commit `31c34518c0a7fbead6cd6241b214d0665c892b55`, actual new source SHA1 `e66c1a1e8a417eb400ddb047ae9fdb0e4c80ae14`.

Immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` source hashes PASSED. The accepted S1V32 `bfss-s1v32-isolated-real-linear-spin48-group-action-v1-adc7f124-lean4341-d13f23b-Linux-X64` cache HIT and original `.olean` presence passed. Candidate compiler finished with only this new first causal error:

```text
SU2BFSSPhysicalDomainS1V33Original48SpinQuadraticIsometryProbe.lean:59:41:
error(lean.invalidField): Invalid field `eq`: The environment does not contain `Eq.eq`
  Algebra.commutes a ↑u
of type
  (algebraMap ℝ C) a * ↑u = ↑u * (algebraMap ℝ C) a
```

Follow-up unsolved goal precisely `↑u * (algebraMap ℝ C) a * ↑u⁻¹ = (algebraMap ℝ C) a * (↑u * ↑u⁻¹)`, fixed by rewriting using the equality from `Algebra.commutes` directly, then associativity. The original proof incorrectly called `(Algebra.commutes a (u : C)).eq` as if the commutation relation were a structure. The pinned API instead returns the desired **equality** itself.

**Minimal intended repair:** replace
```lean
rw [← (Algebra.commutes a (u : C)).eq, mul_assoc]
```
with
```lean
rw [← (Algebra.commutes a (u : C)), mul_assoc]
```
No theorem statements, type, original source representation, Clifford conjugation convention or axiom whitelist change.

The first root `FCP.BFSSS1V33.source48_real_clifford_scalar_injective` printed only `[propext, Classical.choice, Quot.sound]` again. The second `source48_spin_conjugation_fixes_real_scalar` and third `sourceSpin48VectorAction_preserves_sourceQ` printed **`sorryAx`**, so the 3-root gate REJECTED them. First Gate #1 inverse and smul_mul' errors did not recur, proving those targeted repairs worked as changes to elaboration, NOT that the entire source qualified. No strict success marker nor saved S1V33 cache.

**Next:** minimal proof edit, exact new blob in only the S1V33 workflow's SHA pin, start changed Strict Gate #3. Then require three original roots all whitelist axioms, no compiler errors/sorryAx, exact `S1V33_ALL_ORIGINAL_SOURCE_SPIN48_QUADRATIC_ISOMETRY_3_ROOTS_KERNEL_PASS`, and real cache save `bfss-s1v33-isolated-source48-spin-quadratic-isometry-v1-adc7f124-lean4341-d13f23b-Linux-X64`. If new error, diagnose actual causal Lean output before revision. Spin→SO real quadratic isometry group packaging, determinant +1, Spin covering, normalized global lift, unitary manuscript Fock intertwiner and BFSS spectral gap remain OPEN. No modifications to main, draft PR #25 or original pinned math.
