# S1V52M2 — Gate #2 strict RED: original complex Clifford pure-tensor lift evaluation not reduced

**Status:** `M2_GATE2_RED__SOURCE_NAMESPACE_REPAIRED__ONE_TENSOR_LIFT_EVALUATION_GOAL__0_OF_1_ROOTS__255_CUMULATIVE`.

## Independent strict CI observations

- [M2 Original Complexified Clifford Fock Action Strict Gate #2, run #39680178262](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39680178262), job `119500306643`, head `e5f3748a142a651701f969ef060db7b8102ae4ef`. Compilation failure only; all exact SHA, pinned upstream, environment, qualified M1 cache and actual compiled original real Clifford Fock source prerequisites were green.
- Original frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean v4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Exact candidate blob `05bab46890c37a85a36036977dce91adc40c902b` equals expected/committed/filtered/raw source hash. Original L9E4 gamma source pin was added and passed; **the Gate #1 unresolved originalFockGammaRealLinear error did not recur**.
- Exact first/only new compiler error at source line 57:
```text
SU2BFSSPhysicalDomainS1V52M2OriginalComplexifiedCliffordFockRepresentationProbe.lean:57:39: error: unsolved goals
v : Source48Vector
⊢ (Algebra.TensorProduct.lift (Algebra.ofId ℂ FockOp)
    originalFockCliffordAlgHom originalComplexCliffordFockAlgHom._proof_16)
    (1 ⊗ₜ[ℝ] (CliffordAlgebra.ι Q) v)
  = originalFockGammaRealLinear v
```
- Exact M2 complex-algebra-hom **definition** compiled and `#print axioms originalComplexCliffordFockAlgHom` reported `[propext, Classical.choice, Quot.sound]`. The proposed generator theorem `originalComplexCliffordFockAlgHom_generator` printed `sorryAx`; **0/1** M2 theorem roots qualify. No accepted M2 `.olean`/cache was saved. **S1V52 cumulative remains 255**.
- Existing `simp [originalComplexCliffordFockAlgHom, CliffordAlgebra.toBaseChange_ι, Algebra.TensorProduct.lift_tmul, originalFockCliffordAlgHom_generator]` successfully opened the outer representation and complex Clifford base-change, but left a genuine `Algebra.TensorProduct.lift` application to a pure tensor. Mathlib warned `Algebra.TensorProduct.lift_tmul` and `originalFockCliffordAlgHom_generator` unused in that simplification call; the absence of a rewrite is a proof normalization issue, NOT a mathematical contradiction.

## Source-pinned repair strategy — split the proof at the explicit tensor-product API

Verified pinned file `Mathlib/RingTheory/TensorProduct/Maps.lean`, Git blob `f9fe918d7be97282ae874ea81b1c038bd1f2108b`, contains the exact **`@[simp] theorem Algebra.TensorProduct.lift_tmul`**:
```lean
theorem lift_tmul (f : A →ₐ[S] C) (g : B →ₐ[R] C)
    (hfg : ∀ x y, Commute (f x) (g y))
    (a : A) (b : B) :
    lift f g hfg (a ⊗ₜ b) = f a * g b := rfl
```

Do **not** merely rerun the same unrestricted `simp` in a new CI. In the original M2 generator theorem, prove a **separate explicitly typed pure-tensor equality** with the exact parent maps, then close it with `rw [Algebra.TensorProduct.lift_tmul, map_one, one_mul]` plus accepted original `originalFockCliffordAlgHom_generator v`. Transfer it to the stated complex Clifford generator equality using `simp only [originalComplexCliffordFockAlgHom, AlgHom.coe_comp, Function.comp_apply, CliffordAlgebra.toBaseChange_ι]`. This forces the tensor lift lemma to match a fully elaborated expression rather than waiting for broad simplifier inference. Any residual rewriting issue at Gate #3 must be diagnosed precisely before further attempts.

The exact abstract real Clifford `CliffordAlgebra source48Quadratic`, complexified `CliffordAlgebra (source48Quadratic.baseChange ℂ)`, parent accepted `originalFockCliffordAlgHom`, actual source gamma and source 48 labeling are unchanged. No weakened theorem statement, substitute source representation, extra axioms, `sorry` or synthetic matrix model permitted.

## Scientific boundary

M2 if accepted constructs genuine complex algebra representation and exact generator action; **it does not prove surjectivity** onto `Fermion 2 →L[ℂ] Fermion 2`, which remains the load-bearing M3 goal toward constructing a nonzero intertwiner for the genuinely independent irreducible manuscript module. The accepted M1 result is conditional on such a nonzero intertwiner and proves only complex-linear equivalence, not unitary. Physical smooth cores, sixteen charge operator-domain transport and spectra remain independently open.

Only branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019` modified; canonical `main`, pinned upstream `etblink/math`, and draft PR #25 untouched.
