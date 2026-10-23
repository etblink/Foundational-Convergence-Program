# BFSS M4F8 DD Gate #4 — strict red: second output projection recursion

**Date:** October 23, 2026 PDT. **Disposition:** `DD_GATE4_RED__SECOND_OUTPUT_RFL_RECURSION_DEPTH__0_OF_2_ACCEPTED__PRINCIPAL_308_HELD`.

## Original immutable evidence

- [Actions run #40040575000](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40040575000), job `120710427214`, completed/failure on frozen workflow HEAD `ec1e3021659006c39abd5f9e64c15542119aefa9`.
- Exact mathematical leaf `experiments/openai-math-su2-physical-domain/FCPM4F8IndependentE2ConditionalPhysicalDomainDenseDD.lean`, frozen Git blob `1597c59d66368825611ff611c7a9a9924833eadc`.
- Genuine BFSS original mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Immutable source checks, all exact E2/E3/DA/DB object checks, and qualified parent DB cache restoration passed. Gate #3 stale CI text checker was correctly fixed, so this result genuinely tests the Gate #3 proof change.
- Fresh Lean reached the typed original independent graph map/range membership and failed **only at line 86 column 6**, the *second* `rfl` of
```lean
  have hpair : (x, y) = graphMap f := by
    apply Prod.ext
    · change independentInvariantCoreToL2 theta hCAR hHermitian f =
        independentCoreToL2 f.val
      rfl
    · rfl
```
with `error: maximum recursion depth has been reached`. This needlessly asks the kernel to normalize all sixteen original independently defined supercharge components to compare `y` to graphMap's second coordinate.
- Both DD declarations subsequently print `sorryAx`. **Zero roots accepted**; no saved DD cache. Resource line `DD_RESOURCE_TIME 31.55 CPU 104% MAX_RSS_KB 7138236`.
- [Original diagnostic artifact #12539382142](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40040575000/artifacts/12539382142), SHA256 `452f8f71994e86a45b9425366a7c1d87028a6e24fb3e03ff9499d0191fb43189`.

## Engineering/mathematical interpretation

Class **Lean kernel recursion/definitional equality**, not a mathematical counterexample. The pre-existing Gate #2 `whnf` timeout in `exact ⟨f,rfl⟩` was bypassed by Gate #4's explicit map and `LinearMap.mem_range_self`, exposing a new exact proof-engine obstacle.

The E2 **input domain** is the first coordinate of the genuine E2 closed graph. There is no mathematical need to compare the output coordinate of `independentChargeVector` to an unfolded, composed graph map. The next strict candidate should take `graphMap f` itself as graph witness, obtain `(graphMap f).1 ∈ P.domain` from qualified E2, and identify **only the first coordinate** with `independentInvariantCoreToL2 theta hCAR hHermitian f`. If the first-coordinate proof still reduces physics, isolate a generic typed prod/range lemma instead of increasing recursion limits without a structural fix.

Do not change the actual J-free E2, the original invariant smooth core, DA/DB, the source Haar-density premise `hsource`, or the two DD declarations' statements. **Principal strictly accepted BFSS roots remain 308.** Preserve Gate #1, #2, #3 distinct failures. `main`, draft PR #25, and `etblink/math` unchanged.
