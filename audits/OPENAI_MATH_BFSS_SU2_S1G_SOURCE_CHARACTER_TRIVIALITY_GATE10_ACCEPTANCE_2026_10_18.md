# S1G: exact original SU(2) relative source gauge character triviality — accepted

**Date:** 2026-10-18 PDT. **Disposition:** `STRICT_KERNEL_PASS__ELEVEN_ROOTS__SOURCE_EXACT_SU2__STATED_48_THETA_COVARIANCE_CONDITIONAL__NO_PAPER_SPIN48_LIFT`.

## Acceptance artifact and provenance

- [Exact Source Character Triviality **Gate #10**](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39136594830), run `39136594830`, job `117702240475`, completed **SUCCESS**.
- Qualified candidate HEAD `c89c5dd582da28830281cf4c85636622d41c8986`.
- Exact S1G source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1GExactSourceRelativeCharacterTrivialityProbe.lean` **Git blob `e1fe07f84e4a1427b5b4d2b534bb32644e87b203`**, pinned and checked in job log with `RELATIVE_CHARACTER_S1E_S1F_S1G_SOURCE_BLOB_PINS_VERIFIED`.
- Source math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Qualified Euler dependency H5E8Y restored by exact source-pinned cache `bfss-s1g-euler-source-v1-adc7f124-lean4341-f0683ba2-Linux-X64-069ce9730c96a299fce3555748b1cc72081566564a46fef01452d02773aca367`, itself built under Gate #9 after immutable-baseline verification of **69** source modules and **59** successful compiled missing modules.
- Same Gate #10 recompiled/audited S1A/S1B, S1D (5 roots), S1E (6 roots), S1F (6 roots), then S1G's **11 roots**, with the marker `S1G_EXACT_SOURCE_SU2_CHARACTER_TRIVIALITY_11_ROOTS_KERNEL_PASS`.
- S1G roots: `source_quarter_angle`, `source_quarter_y_matrix`, `source_quarter_z_matrix`, `source_z_diag_neg_zero`, `source_z_diag_neg_one`, `source_y_angle_neg`, `original_source_yquarter_z_swap`, `original_source_zquarter_y_swap`, `original_source_z_flip`, `original_source_y_flip`, `original_relativeGaugeScalar_trivial`. Every printed axiom set was a subset of `{propext, Classical.choice, Quot.sound}`; no `sorryAx`.

## Precise proven implication

For `V : GaugeGroup 2 →* (Fermion 2 ≃ₗ[ℂ] Fermion 2)` and its **explicit** assumption `hV` that `V g` sends the actual original 48 paired Majorana generators according to the accepted source SU(2) color adjoint action, the source-relative scalar `relativeGaugeScalar V hV g` equals `1` for **every** `g : GaugeGroup 2`.

The derivation uses the original source `+i` parameterized Pauli Y/Z curves, quarter-turn witnesses, inverse conjugation, already accepted half-parameter multiplication and inversion, and the strictly qualified source ZYZ Euler factorization. It does not postulate a continuous character, perfectness of an unrelated group, a new `SU2` interface, or an impersonal surrogate action.

Together with the accepted S1D `relativeGaugeScalar_apply`, this gives pointwise equality `V g v = fermionGaugeLinearEquiv g v`; an independent direct `LinearEquiv` / `MonoidHom` equality lemma can be exposed to later manuscript-module transport.

## Negative knowledge and error taxonomy

1. S1D Gate #1: failed overbroad scalar `rw` touched the literal `Fermion 2` type. Gate #2 solved by pinning explicit scalar multiplication arguments.
2. S1E Gate #1: audit regex erroneously overescaped and failed **after** Lean proof success; Gate #2 fixed audit; not a theorem error.
3. S1F Gate #6: `SeminormedRing (ColorMatrix 2)` instance missing, mismatched `NormedSpace.exp_add_of_commute` multiplication instance, plus mis-indentation of `W` local name; Gate #9 fixed using `open scoped Matrix.Norms.L2Operator`, local restricted normed algebra, corrected tactic indentation. Six roots strictly green.
4. S1G Gate #7: `EXACT_ACCEPTED_SOURCE_EULER_OLEAN_MISSING`. Cache artifact absent; no S1G Lean elaboration attempted. Do **not** invent Euler lemma or claim missing proof.
5. S1G Gate #9: accepted source Euler rebuilt *successfully*, with 59 missing source modules compiling, then S1G Lean elaboration failed: two `ring` commands after `simp` had already closed their goals, and two repeated `rw` commands after a first quarter-turn rewrite replaced both sides. Gate #10 removed exactly these four commands, preserving statements and conventions.

These incidents are distinct: CI infrastructure, missing dependency closure, matrix-instance elaboration, and redundant tactics. None constitutes a counterexample to the proven source SU(2) identities.

## Explicit nonclaims and next boundary

**NO proof of** construction of the independent manuscript real Clifford `Cl(48)` irreducible spinor module, its `Spin(48)` lift, its complex-linear/unitary identification with the existing source `Fermion 2`, matched Majorana generators on that independent module, smooth-domain/intertwined 16-supercharge equality, or infinitely many positive point eigenvalues of the original paper Hamiltonian.

The S1G theorem has an **assumed covariant V on the source module**, not an unconditional proof of such V on any external paper module. Neither this accepted character theorem nor other green CI validates the complete physical spectrum or a mass gap.

Governance: research branch `research/openai-math-su2-s3l-combined-rotation`; draft PR #25 remains unmerged with no changes to `main` or original upstream source. The S1G workflow is manual-only after Gate #10 launch to avoid expensive irrelevant PR repeats.
