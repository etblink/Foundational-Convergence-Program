# S1V52-M3 — Exact original complexified Clifford image: irreducibility then full Fock endomorphism surjectivity

**Owner classification:** `M3A_STRICT_GATE1_PENDING__256_S1V52_ACCEPTED_ROOTS__M3_FULL_ALGEBRA_IMAGE_OPEN`. This audit records a source-exact mathematical dependency; no root credit from a staged source or an in-progress GitHub workflow.

## What is now accepted and can be safely reused

- Original M2 [Gate #4 #39683000240](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39683000240), job `119509939933`, with exact source blob `fa67dfde6cb6a21a97180797bdf5e917e0b417d2`, source pins, M1 qualified cache, Lean v4.34.1 and pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, full strict axiom whitelist and saved M2 cache. Exactly one new theorem: `originalComplexCliffordFockAlgHom_generator`; 255→**256** roots. The map `originalComplexCliffordFockAlgHom : CliffordAlgebra (source48Quadratic.baseChange ℂ) →ₐ[ℂ] (Fermion 2 →L[ℂ] Fermion 2)` is an accepted definition, not counted as an extra root. All 48 original generator/normalization data agree.
- Original G1A [`SU2BFSSG1APairedThetaProbe`](../experiments/openai-math-su2-concrete-potential/SU2BFSSG1APairedThetaProbe.lean) blob `4f8fbf05a35c1d625746931b7ff0361b7ffc2ec4` accepts `pairedTheta_irreducible` for **every** complex submodule invariant under all 48 source `pairedTheta`. Original L9E2 accepted `originalNormalizedFockMajorana = sqrt(2) • pairedTheta (spinPairEquiv.symm α) A`; source file blob `9d4ca3a4795ab1febfc44fcad90516a3dce22c4e`. L9E4 accepts the exact source-axis `originalFockGammaRealLinear_sourceAxis`.
- Original M1 [Gate #2 #39676946100](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39676946100) accepts a complex-linear equivalence from a **nonzero assumed generator intertwiner** plus independent-module irreducibility; existence of `T₀` remains entirely OPEN.

## First genuinely load-bearing M3A source theorem, now gated

Staged `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52M3AOriginalComplexCliffordActionImageIrreducibilityProbe.lean`, exact Git blob `ca640e2667a1574cca750a76fb8eaab34f5e59a0`:
```lean
originalComplexCliffordFock_image_irreducible
 (W : Submodule ℂ (Fermion 2))
 (hW : ∀ x : CliffordAlgebra (source48Quadratic.baseChange ℂ),
    ∀ w ∈ W, originalComplexCliffordFockAlgHom x w ∈ W) :
 W = ⊥ ∨ W = ⊤
```
This verifies the **actual image algebra** acts irreducibly. For every source `pairedTheta α A`, select its true coordinate vector via `sourceBlockColorAxis (spinPairEquiv α) A`; use the accepted M2 source generator theorem and L9E4 source-axis identity to conclude the original normalized operator preserves `W`. Cancel only the nonzero positive **sqrt(2)** scalar to recover invariance under all 48 `pairedTheta`, then use actual G1A irreducibility.

Only original Fock-space operators and original 48-label map; no relabeled surrogate module, axioms, or invented Clifford matrix algebra. [M3A Strict Gate #1 run #39684512124](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39684512124) pins original M2 and G1A/L9E2 source blobs, requires exact qualified accepted M2 cache, and validates precisely **one prospective theorem** with `propext`, `Classical.choice`, `Quot.sound`. M3A unaccepted until this gate's compilation/axioms/cache all green.

## Target M3B/C — full endomorphism surjectivity (still unproved)

Construct the **actual module structure over** `A = CliffordAlgebra (source48Quadratic.baseChange ℂ)` on original `Fermion 2` by composing M2 `originalComplexCliffordFockAlgHom.toRingHom` with the pinned `ContinuousLinearMap.toLinearMapRingHom`, then using pinned `Module.compHom` (file `Mathlib/Algebra/Module/RingHom.lean`). Verify `IsScalarTower ℂ A (Fermion 2)` with the **same** source ℂ-linear action; avoid inferencing a different action.
- Upgrade M3A's invariant-subspace theorem to a Lean `IsSimpleModule A (Fermion 2)` instance for that exact module action. Check nontriviality and source Fock finite-dimensionality; do not assert merely from an independent theorem with a different typeclass instance.
- Exact pinned `Mathlib/RepresentationTheory/AlgebraRepresentation/Basic.lean`, blob `95aa227d6b65dde77fdfa451bc5ee8d57d8207f6`, has `IsSimpleModule.algebraMap_end_bijective_of_isAlgClosed` for an irreducible module over an algebraically closed ℂ with finite-dimensional underlying ℂ-space. It identifies the **module endomorphism centralizer** with the ℂ scalars, *provided* actual simple-module/scalar-tower hypotheses are checked.
- Exact pinned `Mathlib/RingTheory/SimpleModule/Basic.lean`, blob `b483316a477e936721c4f002b7aa31d398ef4d07`, gives `jacobson_density` and `Module.Finite.toModuleEnd_moduleEnd_surjective` for a semisimple A-module finite over its endomorphism ring. Use the previous centralizer identification to derive surjectivity of actual source `A` action into `Module.End ℂ (Fermion 2)`, then bridge to `Fermion 2 →L[ℂ] Fermion 2` via finite-dimensional continuity. **This surjectivity is the high-value M3 target and is not established by M3A alone.**

An alternative constructive path is explicit 24-mode CAR matrix units, avoiding brute-force `2^48` source basis normalization. Both routes require a typed, kernel-verified theorem. Do not conflate the 48-real source Clifford ↔ exterior **linear** equivalence with algebra/matrix equivalence.

## Beyond M3 — independent manuscript module still truly open

Even surjectivity of original complex Clifford action does not itself construct arbitrary independent irreducible module hom without classification of finite-dimensional simple modules. Then construct `T₀ ` *nonzero*, use M1 to obtain generator-intertwining complex-linear equivalence, prove actual Hilbert unitarity from independent/source self-adjointness and scalar positivity, match original Spin48 unitary and paper `V_h`, transport 16 supercharge smooth invariant cores and closed natural domains, then separately validate manuscript Spin9 and positive-eigenvalue spectral arguments.

Every gate fail-closed: fixed `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, pinned Lean/Mathlib, exact accepted cache and source blobs, whitelist-only `#print axioms`, no `sorryAx`, no automatic CIs from source/audit commits. Scoped branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`; main/upstream/PR #25 unchanged.
