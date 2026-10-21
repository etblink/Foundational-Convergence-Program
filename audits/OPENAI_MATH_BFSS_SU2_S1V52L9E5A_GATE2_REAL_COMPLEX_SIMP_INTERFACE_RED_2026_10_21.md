# S1V52L9E5A Gate #2 — real/complex Fock scalar normalization: RED

**Verdict:** `L9E5A_GATE2_RED__0_OF_1__L9E4_QUALIFIED_CACHE_HIT__REAL_COMPLEX_SCALAR_CONVERSION_UNDISCHARGED__203_ACCEPTED`.

- [Strict Gate #2 run #39554991939](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39554991939), job `119072583216`, completed **FAILURE** at exact checkout `be8b8492a1af292c987bce295d8ac0bfb340af40`. Candidate source Gate #2 blob `7ab3d9aca6ce0aa253bfe90165ae38378f049659`.
- Immutable upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; pinned Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; original BFSS/Pauli source check passed, qualified L9E4 parent cache HIT, source closure PASS, candidate compilation reached original theorem.
- L9E5A Gate #1 had failed to synthesize `IsScalarTower ℝ FockOp FockOp` and `SMulCommClass ℝ FockOp FockOp` from direct real `smul_mul_smul`. Gate #2 explicitly introduced a local real-to-complex product lemma via pinned `Complex.coe_smul`, complex `smul_mul_smul`, and `Complex.ofReal_mul`. It eliminated the previous direct typeclass failures; the proposed conversion itself remains open.
- **First remaining exact compiler error** at line 56: `simp only [Complex.coe_smul]` **made no progress** attempting to equate `(a:ℝ) • x` with `(a:ℂ) • x` for the actual `Fermion 2 →L[ℂ] Fermion 2` operator. At line 60, `rw [← Complex.ofReal_mul, Complex.coe_smul]` failed after producing the goal `(↑(a*b):ℂ) • (x*y) = (a*b:ℝ) • (x*y)`. A separate `rw [hanti, smul_zero]` failed at line 80 on the real-scalar zero goal. The empty-finset base case was successfully repaired with a **typed** `zero_smul ℝ`.
- `#print axioms` contains `sorryAx`: **zero accepted roots**; no qualified L9E5A cache; accepted S1V52 tally remains **203**. Diagnostics: `bfss-s1v52l9e5a-fock-real-linear-gamma-39554991939`, artifact id `12324914207`.

## Corrected research architecture (not an acceptance claim)

Do NOT add unsupported scalar-tower instances, invent a substitute Fock representation, or repeat the same real/complex rewrite. The original source lives over real 48-vectors; the operator algebra is the **actual complex-linear Fock endomorphism** with already accepted *complex* `smul_mul_smul` from L9E2.

Prove a **separate, explicitly labeled generic theorem with complex weights** `c : ι → ℂ` using the same correct finite induction and CAR, which has no real-versus-complex operator scalar product interface. This theorem is mathematically valid (off-diagonal CAR cancellation does not require weights to be real) but **does not yet prove** the real original BFSS statement. Subsequently construct and independently qualify the exact original coefficient-identification bridge `(v p : ℝ) • Γ_p = ((v p : ℂ)) • Γ_p`, with the actual operator instance and source term—not a presumed simplifier. If this bridge fails or requires a different API, the real original square remains OPEN regardless of any green generic complex theorem.

Before another costly strict gate, stage a standalone source-small complex-weighted proof with its own name, import only already accepted L9E4, and maintain the Gate #1/#2 failed source blobs as exact history. Keep new theorem statements, axiom validator and source pins explicit. No spectral or physical Fock-unitary claims follow.

Canonical `main`, original upstream math and PR #25 remain untouched.
