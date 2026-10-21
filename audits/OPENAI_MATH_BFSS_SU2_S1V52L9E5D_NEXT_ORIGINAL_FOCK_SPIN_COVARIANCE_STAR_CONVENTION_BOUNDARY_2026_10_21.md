# L9E5D — next source-exact Clifford/Fock Spin covariance and star-convention boundary

**Research scoping, NOT a qualified theorem:** branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`, frozen upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean 4.34.1.

## Verified inputs

- [L9E5C1 strict Gate #3 SUCCESS](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39564177450) proves `originalFockCliffordAlgHom : CliffordAlgebra source48Quadratic →ₐ[ℝ] (Fermion 2 →L[ℂ] Fermion 2)` and its exact all-source generator action, 2/2 accepted with only `propext, Classical.choice, Quot.sound`. Cumulative S1V52 **208** at that gate. Acceptance audit `OPENAI_MATH_BFSS_SU2_S1V52L9E5C1_ORIGINAL_FOCK_CLIFFORD_UNIVERSAL_LIFT_2_ROOTS_GATE3_ACCEPTANCE_2026_10_21.md`.
- Prior accepted L9E1 `originalNativeSixteenSpinHom_clifford_generator_conj` proves **in the genuine abstract Clifford(48)** that `s_g * ι(v) * star(s_g) = ι(sourceRealMajoranaMatrix g |>.mulVec v)` for the original native SU(2)→Spin(48) group homomorphism.
- Pinned source `SU2BFSSG1APairedThetaProbe.lean` contains `pairedTheta_selfAdjoint` for **actual original Fock operators**, from accepted `majoranaCandidate_selfAdjoint`. L9E2's `originalNormalizedFockMajorana` is the **positive real** factor `sqrt(2)` cast into ℂ acting on that original operator.
- Pinned Mathlib Clifford convention, also invoked in original source `SU2BFSSPhysicalDomainS1V52S1Original48CliffordQuaternionStarUnitarityProbe.lean`, is `CliffordAlgebra.star_ι Q v : star (ι Q v) = -ι Q v`. Thus the Clifford star on an **odd** generating vector is not the naïve self-adjoint star of its normalized Fock image.

## Negative knowledge — DO NOT impose global star preservation

It is generally **wrong** to infer

```lean
star (originalFockCliffordAlgHom x) =
  originalFockCliffordAlgHom (star x)
```

for arbitrary `x : CliffordAlgebra source48Quadratic`. On a generator, the RHS is the negative of the Fock gamma, whereas the underlying original Majorana operator is self-adjoint. A global star-algebra homomorphism is not a consequence of the accepted real `AlgHom`, and imposing it here would conflict with the source Clifford/physical-adjoint conventions for nonzero gamma.

The *even* Clifford/Spin sector is different: conjugating products of an even number of generators removes the odd-minus parity. One may seek an independent star/adjoint compatibility theorem **on the actual even Spin(48) elements**, after exact source operator star APIs and normalization have been verified; do not assume that this is already accepted.

## L9E5D1 — strict gate now checking the correct algebraic precursor

Staged source `SU2BFSSPhysicalDomainS1V52L9E5D1OriginalNativeSpin48FockCliffordAlgebraicCovarianceProbe.lean`. [Isolated strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39565751810), currently **unqualified pending exact compiler/axiom verdict**.

The two exact candidate theorems are:
1. `originalFockCliffordAlgHom_conj_generator`, transporting arbitrary abstract source Clifford conjugation along the accepted Fock `AlgHom`;
2. `originalNativeSpinFock_clifford_generator_covariance`, spelling out the original native SU(2)→Spin(48) conjugation transported to the actual normalized Fock gamma and **actual original source gauge 48×48 matrix**.

They deliberately use

```lean
originalFockCliffordAlgHom (star (s : CliffordAlgebra Q))
```

as the RIGHT factor, **not**

```lean
star (originalFockCliffordAlgHom s).
```

This makes D1 a mathematically sound **algebraic covariance statement** independently of an as-yet-unproved star-preserving/adjoint identity. The latter remains a separate real physical-Fock representation obligation.

## Once D1 qualifies, prioritized original-scoped mathematical work

1. Original-Fock normalized gamma **self-adjointness**: transport the *accepted* `pairedTheta_selfAdjoint` across the true real `sqrt(2)` normalization, exact original label equivalence and continuous-linear operator star. Scope separately from Clifford gamma square.
2. Prove source Clifford-star/Fock-adjoint compatibility only for the **necessary even native Spin(48) elements**, using the exact original block product form, genuine spinGroup star/unitarity and the actual Fock operator multiplication/adjoint. Do not infer a star hom on all of Clifford(48).
3. Independently prove the native group hom into actual original Fock invertible/unitary operators and its full generator-covariance relation, **if** the even-star theorem supplies the inverse/adjoint identification. Only then compare to the pre-existing original physical gauge action, with domain and continuity assumptions explicit.
4. Keep self-adjointness of normalized Majoranas, algebraic Spin conjugation, physical gauge implementers, continuity, unbounded domains, and BFSS spectrum in distinct certified gates. A Fock Clifford realization by itself proves **no** BFSS mass gap.

## Strict scientific and CI governance

Reuse accepted source and .olean caches with immutable source/toolchain SHA checks and `#print axioms` whitelist `[propext, Classical.choice, Quot.sound]`. Save failed gate causes, including infrastructure failures, without counting nonqualified declarations. No modifications to canonical main, immutable upstream math or draft PR #25.
