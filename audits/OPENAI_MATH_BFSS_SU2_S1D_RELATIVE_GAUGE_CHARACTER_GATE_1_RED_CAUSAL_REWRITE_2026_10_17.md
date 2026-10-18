# BFSS SU2 S1D — source-relative gauge-character Gate #1 first causal RED

**2026-10-17 PDT / 2026-10-18 05:18 UTC.** Classification: `RED__LEAN_RW_MUL_COMM_OVERBROAD_DEPENDENT_MOTIVE__ONE_UNQUALIFIED_ROOT__FOUR_CLEAN_IN_RED_RUN`.

## Immutable evidence

[BFSS SU2 Manuscript Relative Gauge Character #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39099894625), job **117593833544**, head `59f614c77d6a8804ddc4714f4560d5a74adf4cd3`, strict pinned Lean **4.34.1** / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` / upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`. Frozen G1A/G4B/G4H and S1A/S1B proof sources strictly hashed, accepted dependency caches verified. Historical S1A and S1B source theorems were separately kernel rebuilt with only standard axioms: marker `S1A_S1B_EXACT_SCALAR_IMPLEMENTER_CONDITIONAL_PREREQUISITES_KERNEL_PASS`.

The **one** causal Lean error in new S1D source at line **109:33**:
```
rw [hfgh, smul_smul, mul_comm]
-- Tactic rewrite failed: motive is not type correct
-- WithLp.instMulAction 2 ... : MulAction ℂ (WithLp 2 ...)
-- but expected MulAction ℂ (Fermion 2)
```
Unrestricted `rw [mul_comm]` scanned the ambient dependent type `Fermion 2`, and tried to rewrite a dimension/index numeral rather than *only* the two complex scalar coefficients. This is Lean elaboration/motive selection, **not** any evidence against multiplicativity of a relative gauge character.

The S1D output showed `relativeGaugeScalar`, `relativeGaugeScalar_apply`, `relativeGaugeScalar_one`, `relativeGaugeScalar_ne_zero` with only `propext`, `Classical.choice`, `Quot.sound`. **Do not promote** the S1D module or any claimed 'five-root strict pass' from this red gate: `relativeGaugeScalar_mul` printed `sorryAx` under Lean error recovery. There was no importable accepted S1D `.olean` qualified by gate #1.

## Surgical correction

Replace exactly the last broadly-scoped rewrite in the `relativeGaugeScalar_mul` calc:
```lean
rw [hfgh, smul_smul,
  mul_comm (relativeGaugeScalar V hV h)
    (relativeGaugeScalar V hV g)]
```
The theorem statement, genuine source gauge group and Fock representation, Schur argument, candidate 48-theta covariance hypothesis, full group law and nonzero-scalar conclusion remain **unchanged**. Update exact S1D candidate source Git pin and resubmit full strict five-root gate; no weakened axiom check or `sorry` workaround.

## Scientific boundary

The SOURCE result would prove that an alternative *assumed* same-theta-covariance group representation on the same source `Fermion 2` differs from the actual `fermionGaugeLinearEquiv` by a `ℂˣ`-valued scalar character (identity, multiplicativity, nonzero). It neither produces the paper's separate irreducible Clifford representation nor proves its Spin(48) gauge lift. **Even after S1D passes**, elimination of the scalar character for actual SU(2), continuity/group lift orientation, and an independent Hilbert unitary `𝓕 ≃ₗᵢ Fermion 2` are distinct obligations.

Research branch only, draft PR #25 original S3K base unchanged, main and upstream BFSS source untouched.
