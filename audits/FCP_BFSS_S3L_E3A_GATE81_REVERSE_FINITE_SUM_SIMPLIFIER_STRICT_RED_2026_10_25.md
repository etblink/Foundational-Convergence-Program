# FCP BFSS S3L E3A Gate81 — source product-index sixfold sum direction strict RED

**2026-10-25 PDT / GitHub Actions finished 2026-10-26T03:44:18Z. Independently verified red; zero new accepted roots.**

## Primary immutable evidence
- [Gate81 run #40265068937](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40265068937), job `121385563534`, head `0bb8347ad0eb972b52d0078d2399be52e3772dcb`, completed/failure. Exact frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- All 125 original source-verified binary ancestors, source importer smoke, and seven recovered K2D1/K2D2/K2D3/E1A/E1B/E1C/E1D original source `.olean` strict recompilations passed under `-DwarningAsError=true` and exact `{propext, Classical.choice, Quot.sound}` axiom restrictions. These roots are previously accepted requalifications, not new root increments. Their independent genuine compiled archive: [artifact `12626182375`](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40265068937/artifacts/12626182375).
- E3A real source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5K2E3ANativeProductIndexTransportProbe.lean`, Git blob `692c59df73cda4e7ee1c30add1b76a46cbe32175`. Target introduces native `SpaceIndex × (SpaceIndex × (ColorIndex 2 × (ColorIndex 2 × (ColorIndex 2 × SpinIndex))))` with no relaxation of original physics.
- Single first source theorem `FCP.BFSSSU2PhysicalDomainS3L5K2E3A.originalSixfold_nested_eq_product` failed at **line 39 column 2**:
```
error: `simp` made no progress
'FCP.BFSSSU2PhysicalDomainS3L5K2E3A.originalSixfold_nested_eq_product'
depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
```
Source proof was `simp only [Fintype.sum_prod_type']`, the **incorrect expansion orientation**: the actual product-index sum is on the right, and Mathlib's `Fintype.sum_prod_type'` rewriting left-to-right specializes to a sum over product labels. It cannot rewrite the left nested sum. This is a tactic orientation issue, not recursion or a counterexample.
- Original compiler separately reported theorem `FCP.BFSSSU2PhysicalDomainS3L5K2E3A.sourceComm_originalProductSixfold_of` **with exactly permitted axioms and no `sorryAx`**. It proves the one-product-index commutator transport under a visible pointwise premise by application of accepted `sourceComm_one_weighted_sum_of`. However, this declaration is not counted as newly accepted: whole target source failed, and no verified complete E3A archive `.olean` exists.
- Core source E3A target compiled failed with exit 1. Diagnostic [artifact `12626311928`](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40265068937/artifacts/12626311928). No original cubic commutator/sourceCubicCharge equivalence was attempted; Gate81 +0 roots, accepted net new series still **75**.

## Exact library evidence and narrow next test
- Independently inspected the **pinned exact Mathlib source** `Mathlib/Data/Fintype/BigOperators.lean` at Mathlib commit `d13f23b723b8a846827a245b89c10fc7d3f11612`, Git blob `917939a39bc342d238acc0cebaee1ef3bce5f100`, lines 270–283.
- It defines `Fintype.sum_prod_type` from `@[to_additive Fintype.sum_prod_type]` of the original product sum `∏ x, f x = ∏ x, ∏ y, f (x,y)`. The `Fintype.sum_prod_type'` variant is the uncurried analogue whose normal orientation also rewrites the product sum to nested sums, but its form does not match the nested-to-product goal as previously passed to simplification.
- Gate82: introduce a distinct **proof-only recovery** for the original E3A source, changing *only* `simp only [Fintype.sum_prod_type']` to `simp only [Fintype.sum_prod_type]`. The latter handles the exact RHS product-index summation with an uncurried function; by repeated simp rewriting over all five nested binary product layers it should reduce to the original left nested sixfold sum. This is a specific proposal verified against the pinned library direction but still needs actual Lean compilation. Mechanical source check: exact byte-identical theorem statements for BOTH E3A roots; exact one proof tactic changed; source hash pins and genuine `.olean` required.
- Preserve seven accepted original ancestry compiler objects and logs; compile full original E3A under proof-only recovery using original module basename and the same strict axiom/compilation policy. Do not recompile or retry original large E2A literal expressions. Any red result must be diagnosed at its **first compiler error**, including any residual product `Prod` field projection discrepancy; never claim success from `#print axioms` alone.
- If Gate82 green, exactly **two new roots** E3A: (a) native sixfold sum ↔ product label sum and (b) product-index commutator transport; generic transport plus original finite-index equivalence do NOT establish the concrete original full cubic commutator or any full Spin(9) covariance and BFSS eigenstate existence.

Canonical FCP `main`, draft PR #25 and frozen original source unchanged.
