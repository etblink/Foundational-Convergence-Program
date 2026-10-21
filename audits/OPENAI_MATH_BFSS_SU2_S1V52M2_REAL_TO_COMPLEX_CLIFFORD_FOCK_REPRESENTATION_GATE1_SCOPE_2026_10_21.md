# S1V52M2 — Source real Clifford → complexified original Fock action, precise research scope

**Status:** one new mathematical theorem root PROSPECTIVE until strict Gate #1 succeeds; accepted S1V52 cumulative roots **255** (including M1 Gate #2). No M2 acceptance claimed here.

## Qualified original-source dependencies

- M1 [run #39676946100](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39676946100), job `119489173380`, accepted a generator-wise source Fock *complex-linear equivalence* if a nonzero intertwiner from an independent irreducible module is GIVEN. M1 says nothing about existence or Hilbert-unitary equivalence, not a replacement for the manuscript.
- Earlier original [L9E5C1 Gate #3 run #39564177450](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39564177450) verified `FCP.BFSSS1V52L9E5C1.originalFockCliffordAlgHom : CliffordAlgebra source48Quadratic →ₐ[ℝ] (Fermion 2 →L[ℂ] Fermion 2)` and its pure-vector original generator equality for every original 48-real source vector, with the same strict axiom whitelist.
- Frozen source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Pinned `Mathlib/LinearAlgebra/CliffordAlgebra/BaseChange.lean`, Git blob `44d6e5bc298baf9535b73a8d80d98044c6110b5f`, defines:
```lean
CliffordAlgebra.equivBaseChange (A := ℂ) source48Quadratic :
  CliffordAlgebra (source48Quadratic.baseChange ℂ) ≃ₐ[ℂ]
    ℂ ⊗[ℝ] CliffordAlgebra source48Quadratic
```
  with `CliffordAlgebra.toBaseChange_ι` identifying every pure source vector under complexification; **an algebra equivalence**, unlike the prior merely vector-space Clifford/exterior equivalence.
- The pinned `Algebra.TensorProduct.lift` transports the accepted original real algebra hom into genuine Fock ℂ-linear endomorphisms. This preserves the original source signed Clifford relation; it does not construct any new independent representation.

## M2 precise new target

Staged actual source:
`experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52M2OriginalComplexifiedCliffordFockRepresentationProbe.lean`;
Git blob `38373e7aa2001ca74c1b4909e4b7af2ed9a6b8b0`.

1. Qualified **definition** `FCP.BFSSS1V52M2.originalComplexCliffordFockAlgHom :
   CliffordAlgebra (source48Quadratic.baseChange ℂ) →ₐ[ℂ] (Fermion 2 →L[ℂ] Fermion 2)`.
2. Prospective **one theorem** `originalComplexCliffordFockAlgHom_generator` identifies the true original real generator `ι (source48Quadratic.baseChange ℂ) (1 ⊗ₜ[ℝ] v)` with the already verified original `originalFockGammaRealLinear v` for every source `v`.

Strict gate: [M2 run #39678994513](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39678994513), distinct workflow from M1 with exact M2/C1/M1 source SHA, M1 original accepted compiled cache required, two `#print axioms` declarations checked; only theorem counts as one prospective root. No conclusion until compiler results are inspected and accepted cache saved.

## Actual next existence theorem M3 — avoid mistaking M2 for completion

Prove the complexified source action is **surjective** to all `Module.End ℂ (Fermion 2)`, not only an abstract ℂ-algebra hom to it. Original paired 48-theta source irreducibility `pairedTheta_irreducible` and qualified scalar commutant `L6H5E8AC.pairedTheta_commutant_scalar` are already accepted. In pinned `Mathlib/RingTheory/SimpleModule/Basic.lean`, Git blob `b483316a477e936721c4f002b7aa31d398ef4d07`, `jacobson_density` and `Module.Finite.toModuleEnd_moduleEnd_surjective` provide an exact density-to-surjectivity route if one constructs the generated complex theta algebra's module and proves its centralizer scalar. Pinned `Mathlib/RepresentationTheory/AlgebraRepresentation/Basic.lean`, blob `95aa227d6b65dde77fdfa451bc5ee8d57d8207f6`, has `IsSimpleModule.algebraMap_end_bijective_of_isAlgClosed` given source irreducibility over ℂ and finite-dimensionality. The module-theoretic hypotheses and centralizer/matrix identification MUST be discharged against the actual original Fock action. No claimed complex Clifford matrix equivalence is currently present in pinned Mathlib.

If surjectivity established, combine actual complex Clifford module classification with independent irreducible CAR representation and M1 to **construct** the nonzero intertwiner; thereafter normalize to Hilbert-unitary using self-adjoint original and independent theta. The paper's distinct gauge lift, smooth core, closed supercharge and Hamiltonian domains remain further independent proof obligations, as does spectral confinement. Under no circumstance identify `E := Fermion 2` merely to make the manuscript bridge tautological.

**Governance:** only research branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`, canonical `main`, original pinned `etblink/math`, draft PR #25 untouched. This audit alone triggers no workflow.
