# S1V52M2 — Gate #3 RED: algebra tensor lift rewrite proof-argument/transparency mismatch

**Disposition:** `M2_GATE3_RED__ONE_RW_LIFT_TMUL_PROOF_ARGUMENT_ELABORATION_MISMATCH__SOURCE_COMPLEX_ALGHOM_VALID__M2_0_OF_1_ACCEPTED__S1V52_255`.

## Independently verified strict evidence
- [M2 strict Gate #3 run #39681824921](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39681824921), job `119505942192`, source/workflow head `16c3cf8df5a05dc4cd2e224988e24a6c93e3aef8`: red at fresh Lean proof compilation. Earlier checkout, exact original source SHA preflight, immutable pinned original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, qualified M1 cache and original source compiled dependency checks all passed.
- Gate #3 new source blob `f1c4b8481111d4bf8f13a0017076938769fbfe59` verified identical to expected/committed/filtered/raw hashes.
- The real new `FCP.BFSSS1V52M2.originalComplexCliffordFockAlgHom` compiled with `[propext, Classical.choice, Quot.sound]`.
- Exactly one new compiler error at source **line 65**, within the named `hpure` tensor evaluation:
```text
Tactic `rewrite` failed: Did not find an occurrence of the pattern
  (Algebra.TensorProduct.lift ?f ?g ?hfg) (?a ⊗ₜ[?m.79] ?b)
in the target expression
  (Algebra.TensorProduct.lift (Algebra.ofId ℂ FockOp)
    originalFockCliffordAlgHom ⋯)
    (1 ⊗ₜ[ℝ] (CliffordAlgebra.ι Q) v)
  = originalFockGammaRealLinear v
```
The compiler also emits a decisive *implicit-transparency diagnostic*: the lambda `fun _a _x => Algebra.commutes _a (originalFockCliffordAlgHom _x)` has a raw equality type under the elaborator, but the rewrite engine expects an instance of `Commute ((Algebra.ofId ℂ FockOp) x) (originalFockCliffordAlgHom y)`. Their mathematical content agrees; matching this dependent proof argument failed under the tactic's **implicit** transparency, despite having a valid original algebra hom.
- The `originalComplexCliffordFockAlgHom_generator` declaration reports `sorryAx` downstream. **No M2 theorem root or cache accepted; S1V52 still 255.**

## Negative knowledge — why Gate #3 did not close Gate #2

Gate #2 [run #39680178262](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39680178262) left the pure tensor lift goal after one broad `simp`. Gate #3 isolated `hpure` but attempted `rw [Algebra.TensorProduct.lift_tmul, map_one, one_mul]` and the exact dependent commutativity proof argument prevented pattern matching. Repeating a renamed `rw` or another untyped simplifier on this same term is low-information and should be avoided.

Verified immutable pinned Mathlib file `Mathlib/RingTheory/TensorProduct/Maps.lean` Git blob `f9fe918d7be97282ae874ea81b1c038bd1f2108b` defines:
```lean
@[simp]
theorem Algebra.TensorProduct.lift_tmul
 (f : A →ₐ[S] C) (g : B →ₐ[R] C)
 (hfg : ∀ x y, Commute (f x) (g y)) (a : A) (b : B) :
 lift f g hfg (a ⊗ₜ b) = f a * g b := rfl
```
The right side is **definitionally equal** to the pure-tensor evaluation in the actual original source algebra hom. Use elaborator **definitional reduction** instead of reconstructing the dependent proof term in a rewrite.

## Minimal Gate #4 candidate

Replace the failed `hpure` helper and its `rw` by a proof that first simplifies the **outer Clifford base change** with `simp only [originalComplexCliffordFockAlgHom, AlgHom.coe_comp, Function.comp_apply, CliffordAlgebra.toBaseChange_ι]`, then uses `change` to state the canonical `(Algebra.ofId ℂ FockOp) 1 * originalFockCliffordAlgHom (CliffordAlgebra.ι Q v) = originalFockGammaRealLinear v` directly. The fact `lift_tmul` is definitionally `rfl` should permit this `change` without matching the commutativity proof argument. Finish using `map_one`, `one_mul`, and the kernel-qualified original `originalFockCliffordAlgHom_generator`.

A mismatch at `change` itself would be valuable *negative knowledge*: it means the particular source `lift` is not reducible at that transparency despite the theorem proof, and suggests instead assigning an explicit named and typed commutativity witness shared by the original algebra-hom definition and its pure-tensor evaluation lemma. Do not keep running blind simplification gates.

Keep the entire genuine 48-source real quadratic form, original complex Fock operator algebra, Clifford base change, every generator label and normalization. Strict source SHA, qualified M1 cache, fresh separate workflow and cache, `propext, Classical.choice, Quot.sound` only, no `sorryAx`. Main, frozen original mathematics, and PR #25 untouched.

## Scientific boundary
M2 alone only constructs the actual complexified Clifford **action**, not the full image/surjectivity. A separate M3 endomorphism-algebra surjectivity theorem remains necessary before trying to construct a nonzero intertwiner from the independent manuscript module; further Hilbert-unitarity and smooth/closed physical domain transport are independent obligations.
