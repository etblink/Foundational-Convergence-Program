# BFSS SU(2) H5E8AH — exact original source full-charge parity acceptance (0.1.0)

**Date:** October 17, 2026 PDT.  
**Disposition:** `PASS__FULL_ORIGINAL_SOURCE_SUPERCHARGE_PARITY_CONJUGATION__SEVEN_KERNEL_AXIOM_CLEAN_ROOTS`.  
**Mathematical scope:** *Original upstream* `AlgebraData.charge` on the actual original `SmoothCore N`, conjugated by the *constructed original smooth parity map*, paired with the true valid source `oppositeGamma` algebra data. The source `FullL2 N` parity unitary, SU2 physical invariant subspace, **restricted closed** 16-charge graph, normalized associated self-adjoint Hamiltonian **domain**, independent manuscript `Cl(48)`/Spin(48) gauge realization, global Spin(9) isotypy, positive eigenvalues, and BFSS spectral gap are **not** proved by this source-core gate.

## Immutable strict CI evidence

- [Original Charge Parity #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39035516580), GitHub run `39035516580`, head `45a20b27fa52505d2ba9d7d7b973f04f8b4aff55`, strict source proof job `117404424302`, `SUCCESS` (created `2026-10-17T13:11:06Z`, completed `13:14:33Z`).
- Exact source candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8AHOriginalSourceChargeParityConjugationProbe.lean`, Git blob `c2e280e5ae1d541f21ef870b86dbea01f7253f99`. Matching candidate-hash workflow source at accepted head; evidence artifact `bfss-su2-opposite-gamma-39035516580`, ID `12101239318`.
- Frozen original source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, qualified original G1A/Fock/Core cache closure. The strict job **recompiled** the AD, AE, AF, AG input source files **in pinned dependency order** (not merely inferred their acceptance from status colors) and compiled AH last.
- Seven AH roots each printed only `[propext, Classical.choice, Quot.sound]` as axioms, with **no `sorryAx` or Lean `error:`**. Exact end-of-job marker: `L6H5E8AH_ORIGINAL_SOURCE_FULL_CHARGE_PARITY_KERNEL_CLEAN_PASS`.

### Exact accepted theorem

```lean
FCP.BFSSSU2PhysicalDomainL6H5E8AH.originalCharge_parityConjugate
    {N : ℕ} (M : AlgebraData N) (α : SpinIndex) :
    (oppositeGamma M).charge α =
      (originalSmoothParity (N := N)).comp
        ((M.charge α).comp (originalSmoothParity (N := N)))
```

Since `originalSmoothParity_involutive` was independently accepted in AF, the right side is actual `P Qα(γ) P⁻¹` on the source `SmoothCore N`. The target `oppositeGamma M` is the real valid source data structure from AD with `gamma i = -M.gamma i`, color and fermion fields unchanged and gamma bivectors unchanged.

### Seven kernel-audited AH declarations

All in `FCP.BFSSSU2PhysicalDomainL6H5E8AH`:

1. `parityConjugation`: a **complex-linear endomorphism on actual smooth-core complex-linear operators**, sending `T ↦ P.comp (T.comp P)`, not a formal substitution in a string.
2. `parityConjugation_comp`: actual multiplicativity `Ad_P(T.comp U) = (Ad_P T).comp (Ad_P U)`, using certified `P²=id`.
3. `parityConjugation_fermionDerivative`: the literal `fermionAction β A ∘ coordinateDerivative i A` monomial is parity-odd. This uses original AG Fréchet derivative and AF fiberwise fermion parity.
4. `parityConjugation_fermionPositionPair`: the literal `fermionAction β A ∘ position i B ∘ position j C` monomial is parity-even, by two independent original position sign reversals.
5. `parityConjugation_originalKineticPart`: the **complete original triple space/color/spin sum** with `-Complex.I` coefficient is parity-odd, using complex-linearity and `map_sum`.
6. `parityConjugation_originalCubicPart`: the **complete original sixfold** `(1/2) f x x γ^{ij} θ` sum is parity-even.
7. `originalCharge_parityConjugate`: combines the literal original `M.charge α = Kα+Cα` of qualified AE with its independent `oppositeGamma` sign behavior, preserving **all source matrix/index/sign conventions**.

## Historical failure chain: two reds were interface failures, not physical contradictions

- [Original Charge Parity #1 red](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39034683252), proof job `117402052244`, source/workflow head `a5c09cced292237a3caf2c75b8c895c3c196b4b0`: all pinned prerequisite AD–AG files recompiled, but at AH line 55 `map_smul'` failed `c • P(T(Pf)) = (RingHom.id ℂ) c • P(T(Pf))`. This is an *identity-ring-homomorphism notation normalization* in the nested endomorphism linear map, not a mathematical issue. Downstream AH roots contained `sorryAx` and were unqualified. Fixed [`ac165a3f`](https://github.com/etblink/Foundational-Convergence-Program/commit/ac165a3fe2a6ae885abac6e36e77586d53f45a1b) by explicitly simplifying `RingHom.id_apply`.
- [Original Charge Parity #2 red](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39035169852), job `117403431629`, head `60421f176b1c73cf89bd0ae471fb723d0af8649b`: `parityConjugation` and `parityConjugation_comp` passed, but two pointwise helper lemmas at AH lines 84 and 97 tried `simpa only [parityConjugation,...] using hv`; Lean did not unfold the newly bundled `LinearMap` application into `P(T(Pf))`. The math was correct; exact pointwise `hv` already existed. Their failed roots and downstream proofs contained `sorryAx`. Fixed [`ffdc025f`](https://github.com/etblink/Foundational-Convergence-Program/commit/ffdc025f3820877894505ddb839e0cd3ac920448) by `change P(T(Pf)) = ± T f` before `simpa [P²=id]`, with source-hash workflow pin [`45a20b27`](https://github.com/etblink/Foundational-Convergence-Program/commit/45a20b27fa52505d2ba9d7d7b973f04f8b4aff55).
- [Original Charge Parity #3 green](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39035516580) qualifies all seven stated roots under the frozen source and kernel axioms.

**Reusable engineering lesson:** implement linearity and multiplicativity of source operator conjugation *once*, then transport qualified monomials with `map_sum`. Do **not** manually elaborate the gigantic literal sixfold Fock-operator expression, assume new Clifford/gauge equalities, or trust goal reduction of a bundled `LinearMap` to unfold itself inside an undirected `simpa`. `change` at the exact function application resolves the two stubborn source-interface elaboration failures without modifying the theorem.

## Remaining independent mathematics

Next source analytic bridge: build a genuine unitary involution `P₂ : FullL2 N ≃ₗᵢ[ℂ] FullL2 N` induced by bosonic inversion with invariant Euclidean Lebesgue measure, and prove `P₂ (coreToL2 f) = coreToL2 (originalSmoothParity f)`, not just `P` on test functions. Verify `P₂` commutes with the actual original SU(2) gauge action and preserves `GaugeData.invariantCore`. Then transport the **restricted physical** 16-charge graph, its closure, the `(1/16)‖chargeVector‖²` form and its associated **self-adjoint operator with full domain**.

Separately, the manuscript gives an *abstract* Cl(48) fermion module and Spin(48) lift and only fixes `{γ^i,γ^j}=2δij` without the source ninefold volume sign. A separate exact Clifford-model unitary intertwiner, source orientation/phase/gamma reconciliation and global Spin(9) spectral argument remain independent; source AH cannot discharge them.

No modification to original `etblink/math`, pin, canonical main, accepted source files, PR #25 base/merge/draft.
