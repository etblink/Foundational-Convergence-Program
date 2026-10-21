# S1V52L9E5B — original Fock all-48-real-vector Clifford square: Gate #1 RED

**Independent Project Lead verdict:** `L9E5B_GATE1_RED__ZERO_OF_ONE_ROOTS__BOTH_QUALIFIED_PARENT_CACHES_PASS__THREE_LOCAL_LEAN_CAR_ZERO_FINSET_SUM_AND_COMPLEX_SUM_CAST_DEFECTS__205_CUMULATIVE_ACCEPTED`.

## Exact frozen evidence

- [GitHub Actions run #39560096746](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39560096746), job `119089006221`, **FAILURE** at original workflow/source commit `4bcab8355b52a33560814cd796ab0873a9442f1b`; completed 2026-10-21 07:15:59 UTC.
- Original candidate: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L9E5BOriginalFockAllVectorCliffordSquareProbe.lean`; exact failed source blob `e6b7e671c10b2e57c91e62c8abf671e8619239a7`. Diagnostics artifact `bfss-s1v52l9e5b-fock-real-linear-gamma-39560096746`, id `12328015209`.
- Original immutable upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Full pinned original source preflight, accepted original BFSS/Pauli and Spin(48) Fock source closure, **both independent qualified parent caches L9E5A2 and L9E5B0** and parent .olean validations all passed. Lean reached the exact original square theorem.
- **First causal error, line 68:** `simpa only [if_neg hnot, zero_smul]` yields the original L9E3 CAR equality with RHS `(0 : ℂ) • (1 : Fermion 2 →L[ℂ] Fermion 2)`, not the expected operator `0`. This is the same specific continuous-linear scalar action difference seen in A2 red gates. Repair with an explicit typed two-step equality ending in `zero_smul ℂ (1 : FockOp)`, which the accepted A2 base case has already used.
- **Second error, line 78:** `Finset.sum_univ` is an **unknown identifier** in the pinned environment. The qualified A2 theorem on `(Finset.univ : Finset SourceLabel)` directly matches the `∑ p : SourceLabel` binder after elaboration. Remove unnecessary `simpa only [Finset.sum_univ]`, use that exact qualified theorem.
- **Third error, lines 89–90:** the original source real coefficient square sum remains `∑ p, ↑(v p * v p) = ↑(∑ p, v p * v p)`. The preceding simp already rewrites all summand products via `Complex.ofReal_mul`, but a generic `map_sum` simp argument is unused. The **pinned** Mathlib `Mathlib/Basic/Complex/BigOperators.lean` defines `Complex.ofReal_sum (s : Finset α) (f : α → ℝ)` with the exact needed finite-sum cast equality. Invoke this named lemma explicitly rather than an abstract uninstantiated morphism.
- `#print axioms originalFockGammaRealLinear_sq` contains `sorryAx`. Therefore **0/1 original-source roots qualify**. Accepted S1V52 total remains **205**. No L9E5B cache saved.

## Strict Gate #2 scope and scientific boundary

Preserve verbatim the theorem statement:

```lean
originalFockGammaRealLinear v * originalFockGammaRealLinear v =
  (source48Quadratic v) • (1 : Fermion 2 →L[ℂ] Fermion 2)
```

Keep the exact original 48-real `SourceLabel`, `sourceBlockColorEquiv.symm`, positive sqrt(2) normalized original `pairedTheta` Majorana operators, L9E2 diagonal squares, L9E3 pairwise CAR and already accepted L9E4 linear gamma definition. Make only these three localized Lean repairs, and use `Complex.ofReal_sum` from the **actual pinned Mathlib**; do not assume or invent norm identities.

Compile one isolated, branch- and source-hash-pinned Gate #2 with the exact L9E5A2 and L9E5B0 qualified caches and strict `.olean`/axiom validation. Failure of a notation rewrite is not mathematical counterevidence; success of a generic CAR helper alone is not success of the original BFSS theorem.

No changes to canonical `main`, upstream mathematics, draft PR #25, source conventions, or claims concerning operator domains and the spectral gap.
