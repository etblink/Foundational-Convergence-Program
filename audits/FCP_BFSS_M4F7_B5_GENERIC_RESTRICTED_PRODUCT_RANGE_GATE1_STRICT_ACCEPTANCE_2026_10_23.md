# FCP BFSS — M4F7 generic restricted product graph range and closure inclusion Gate #1: strict acceptance

**Independently verified:** October 23, 2026 UTC (October 23 PDT). **Disposition:** `M4F7_B5_GENERIC_RESTRICTED_PRODUCT_RANGE_GATE1_2_OF_2_SUPPORTING_THEOREMS_STRICT_ACCEPTED__PRINCIPAL_302_UNCHANGED`.

## Source and strict original GitHub Actions evidence

[GitHub Actions run #39919002146](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39919002146), job `120299390090`, complete/success for entire workflow and all mandatory steps. The Project Lead independently fetched the original complete compiler and action logs rather than inferring the result from an externally reported color.

- Workflow source/head commit `0437ff8dec0dd3f7da4e7d4bf2f945b06985e0b1`; pinned genuine original BFSS source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; qualified original provenance and exact candidate Git blob checks passed.
- Candidate `experiments/openai-math-su2-physical-domain/FCPM4F7GenericRestrictedProductRangeInclusion.lean`, Git blob `8329a1f0d77c1a9d1639c8bfc0d1fd1c5206fa70`. Source imports only pinned Mathlib and has no concrete BFSS L², fermion, physical-core, charge, gamma, theta, or J definitions.
- Fresh strict `lake env lean -DwarningAsError=true` created the genuine `.olean`, validated **exactly two** named `#print axioms` reports, each depending only on `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`, errors or unexpected Lean warnings.
- Original decisive log:
```text
M4F7_B5_GENERIC_GATE1_PINNED_GENERIC_ONLY_SOURCE_PASS
M4F7_B5_GENERIC_GATE1_PINNED_TOOLCHAIN_PASS
M4F7_B5_GENERIC_GATE1_TWO_GENERIC_NAMED_RESTRICTED_RANGE_INCLUSION_SUPPORT_ROOTS_STRICT_PASS_NO_BFSS {
 'FCP.M4F7GenericRestrictedProductRangeInclusion.restricted_product_range_le_named':
  {'Classical.choice', 'Quot.sound', 'propext'},
 'FCP.M4F7GenericRestrictedProductRangeInclusion.restricted_product_closure_le_named':
  {'Classical.choice', 'Quot.sound', 'propext'}
}
DIAG_RESOURCE_TIME 4.27 CPU 102% MAX_RSS_KB 2452684
Cache saved with key:
bfss-fcp-m4f7-generic-restricted-product-range-8329a1f0-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
The original source compiler and resource diagnostic artifacts were uploaded.

## Precisely accepted mathematical content

For arbitrary complex-linear maps `a:X→ₗ[ℂ]Y`, `b:X→ₗ[ℂ]Z`, any source submodule `S:Submodule ℂ X`, and an opaque named graph submodule `G:Submodule ℂ (Y×Z)` under the separately supplied `hG:G=LinearMap.range(a.prod b)`, the first theorem proves:

```lean
LinearMap.range ((a.comp S.subtype).prod (b.comp S.subtype)) ≤ G
```

The second theorem concludes the exact native submodule topological closure inclusion of that same restricted product range in `G.topologicalClosure`. Both proofs are general and use no BFSS-specific equality, physical-input predicate or source charge theorem. The first follows by lifting a graph-range witness `x:S` to `(x:X)`. The second applies Mathlib's `Submodule.topologicalClosure_mono`.

**Accounting:** two generic supporting theorem roots qualified, **zero new principal BFSS roots**. Cumulative accepted principal count **302**.

## Negative knowledge and next exact obligation

- Previously verified B5 Gate #1 failed before Lean at a B4 cache-version path-list mismatch.
- B5 Gate #2 fixed cache version and reached Lean, exposing missing source namespace openings and a recursion failure converting A3 native graph membership to a redundant local `G` closure alias.
- B5 Gate #3 corrected source namespaces and removed local alias, but reached a genuine **concrete C2 full set-equality** specialization recursion at `exact hp`. All three original B5 gates remain unaccepted and must not be retrospectively treated as proof.
- The newly accepted abstract lemmas give a different route: specialize the second abstract inclusion to `a=independentCoreToL2`, `b=independentChargeVector color gamma theta`, `S=independentInvariantCore theta hCAR hHermitian`, `G=independentFullCoreGraph color gamma theta`, with exactly the already accepted **A1** native submodule alias equality `FCP.M4F6IndependentLiteralAliasBoundary.independentFullCoreGraph_eq_actualRange` used as `hG`. This bypasses **C2's concrete physical-input set equality entirely**. The resulting inclusion is mathematically the A3 raw-restricted closure into the unrestricted named independent closure; verify that the imported generic argument and unfolding the *outermost A3 definition only* do not reintroduce conversion recursion.
- Subsequent B5 vertical uniqueness is only a **supporting named-membership certificate**, because accepted V1 already proves the literal restricted graph's vertical uniqueness. Do not count a new principal root until a truly novel independent closed `LinearPMap` graph equality and closedness passes strict verification.
- Open scientific obligations: actual J-free independent closed charge `LinearPMap`, exact physical-input graph identification, true independent physical Hilbert domain density, physical output membership of sixteen charges, source physical operator/domain and Hamiltonian equality, spectral boundary and BFSS mass-gap question.

No changes to canonical `main`, unmerged draft PR #25, pinned original BFSS mathematics, or previously accepted artifacts. **Truth and negative knowledge over CI color.**
