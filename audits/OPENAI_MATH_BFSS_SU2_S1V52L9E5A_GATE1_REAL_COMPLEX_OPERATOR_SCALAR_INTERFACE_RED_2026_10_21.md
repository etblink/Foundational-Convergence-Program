# S1V52L9E5A — Gate #1 finite real-weighted original Fock CAR contraction: RED

**Independent PL classification:** `L9E5A_GATE1_RED__ZERO_OF_ONE_ROOTS__L9E4_CACHE_HIT__REAL_SMUL_MUL_INSTANCE_MISSING__EXPLICIT_COMPLEX_SCALAR_BRIDGE_REQUIRED__203_ACCEPTED_ROOTS`.

- [Strict GitHub Actions run #39553857056](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39553857056), job `119068931287`, completed **FAILURE** at exact workflow checkout `007507e12300bef849218cea7565b5b8dd13faf1`.
- Candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L9E5AFiniteRealWeightedFockCliffordSquareProbe.lean`, exact Gate #1 blob `656f543260497d2c6172350efb846d6f8cc69dfb`.
- Original pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Original BFSS/Pauli, source SHA/toolchain checks and transitive dependencies passed. **Qualified L9E4 original real-linear Fock gamma cache restored and checked**.
- **First causal compiler errors**: line 49 `rw [smul_mul_smul]` with actual `ℝ` coefficients on `FockOp := Fermion 2 →L[ℂ] Fermion 2` required unprovided `IsScalarTower ℝ FockOp FockOp` and `SMulCommClass ℝ FockOp FockOp`. Lines 59–60 repeated those scalar-typeclass failures in two off-diagonal products. These are NOT errors in the source CAR assumptions, and no evidence is presented against the quadratic-square mathematical identity.
- Separate failures: line 63 `rw [hanti ...]; simp` stopped on a real-scalar zero expression; line 68 `simp` left the empty-finset base goal `(0:FockOp) = (0:ℝ) • (1:FockOp)`, despite the availability of a concrete typed zero-scalar lemma. Neither failure is evidence of a mathematical contradiction.
- The `#print axioms` log contains `sorryAx`. **0 new Lean roots qualified**; cumulative S1V52 remains **203**. No accepted L9E5A cache. Failure diagnostics saved as GitHub Actions artifact `bfss-s1v52l9e5a-fock-real-linear-gamma-39553857056` (ID `12324952177`).
- The finite induction architecture and its original real coefficients are retained. Do NOT assume or insert missing real-scalar/ring instances just to satisfy typeclass search.

## Next discriminating correction: real-to-complex scalar product bridge

Pinned Mathlib `Mathlib/LinearAlgebra/Complex/Module.lean` has the concrete certified simp theorem:

```lean
Complex.coe_smul (a : ℝ) (x : E) :
  (a : ℂ) • x = a • x
```

for any `E` with a `Module ℂ` structure. The original normalized Majorana square L9E2 already kernel-qualified `smul_mul_smul` for complex scalars. Rather than ask for absent direct `ℝ` scalar/operator-multiplication instances, prove an explicit local lemma for **the same** original Fock operators:

```lean
(a • x) * (b • y) = (a*b) • (x*y)
```

by transport to `(a:ℂ) • x` and `(b:ℂ) • y` with `Complex.coe_smul`, applying the **existing complex** `smul_mul_smul`, and transporting the result back using the literal real-to-complex multiplication cast. This is a proof-interface repair, not a change to real coefficients or physical normalization. Explicitly use the typed `smul_zero` and `zero_smul ℝ (1:FockOp)` for the remaining normalization/base goals.

The prospective Gate #2 must pin this repaired source blob, reuse exactly qualified L9E4 parent cache, compile the same original generic theorem with no `sorryAx`, and preserve all other strict checks. **No direct all-vector BFSS specialization (L9E5B) or Clifford lift (L9E5C) is certified by this red.**

No changes to original BFSS upstream, canonical `main`, or PR #25.
