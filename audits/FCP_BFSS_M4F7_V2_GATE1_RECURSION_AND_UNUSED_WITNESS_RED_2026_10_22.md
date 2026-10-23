# FCP BFSS — M4F7 V2 Gate #1 diagnosed: two recursive concrete conversions and inappropriate operator witness parameters

**Date:** October 22, 2026 PDT / October 23, 2026 UTC. **Disposition:** `M4F7_V2_GATE1_GENUINE_LEAN_RED__ZERO_PRINCIPAL_ROOTS_ACCEPTED__301_CUMULATIVE`.

## Original CI evidence

[GitHub Actions run #39904538148](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39904538148), job `120253338468`, at workflow commit `343bbd689753647f7a7b3f60d18248ddcc76510d`, `completed/failure`, independently inspected original compiler and workflow job log. Exact source file `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentClosedChargeOperatorV2.lean`, blob `571890437e52ce1a0e2de7267862a8a69f5f00be`.

Original frozen BFSS `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, source blob/hole checks, all qualified parent caches C1/A1/B1/C2/C3/C4 plus newly accepted V1 and required `.olean` closure **all passed**. Fresh `lake env lean -DwarningAsError=true` ran for `21.86s` with peak RSS `7151656 KB`. First Lean errors:

```
FCPM4F7IndependentClosedChargeOperatorV2.lean:83:54: error: maximum recursion depth has been reached
FCPM4F7IndependentClosedChargeOperatorV2.lean:98:5: error: Variable name `hColor` is not explicitly referenced.
FCPM4F7IndependentClosedChargeOperatorV2.lean:99:5: error: Variable name `hGamma` is not explicitly referenced.
FCPM4F7IndependentClosedChargeOperatorV2.lean:100:5: error: Variable name `hJ` is not explicitly referenced.
FCPM4F7IndependentClosedChargeOperatorV2.lean:148:8: error: maximum recursion depth has been reached
```

Both definitions `independentRestrictedClosedGraph` and `independentRestrictedClosedChargeColumn` emitted **clean only-three-permitted-axiom reports**, without `sorryAx`. **Both desired principal theorems** `independentRestrictedClosedChargeColumn_graph_eq` and `independentRestrictedClosedChargeColumn_isClosed` emitted `sorryAx` and are not qualified or accepted. New V2 cache-save step skipped. **Principal ledger stays 301**, not 303.

## Precise proof boundary and design flaw

At line 83 the failed term was
```lean
(show ((0 : Lp E 2 μ), y) ∈
  closure (LinearMap.range ((independentCoreToL2.comp ...).prod ...)) : Set _ from hp)
```
Here `hp : (0,y) ∈ independentRestrictedClosedGraph ...` is a *named submodule membership*, whereas the coercion `Set` and explicit `closure (LinearMap.range ...)` force a large concrete definitional conversion involving original independent BFSS Lp, gauge core, and sixteen charge objects. This is the same converter-burden class previously solved through named alias certificates rather than changing hypotheses or raising `maxRecDepth`.

At line 148, after rewriting operator graph equality, `exact (LinearMap.range ...).isClosed_topologicalClosure` again directly expands the large original concrete independent range expression to check closedness. This should be proved abstractly for a *named* submodule and composed through a qualified named equality.

At lines 98–100, the definition `independentRestrictedClosedChargeColumn` takes `J,hColor,hGamma,hJ` parameters but does **not use them**. This is mathematically unnecessary: the independent partial operator is determined solely by the genuine independent `color,gamma,theta,hCAR,hHermitian` objects; the representation witnesses belong to the **vertical-uniqueness proof for its graph**, not its *definition*. A source-exact correction removes those parameters from the operator definition, while retaining every CAR/Hermitian and J witness in the conditional graph-identity and closedness theorems. Any strict acceptance must verify this is not a change to the underlying operator graph. Do not suppress the unused-variable linter indiscriminately.

## Recovery design, preserving negative knowledge

1. Separate a small *fully abstract* lemma: for a complex submodule `G ≤ X×Y` and vertical uniqueness `∀p∈G, p.1=0 → p.2=0`, prove `G.toLinearPMap.graph=G` using Mathlib `Submodule.toLinearPMap_graph_eq`. Separately prove it is closed from `IsClosed (G:Set _)` using that named graph equality. This avoids elaborating any BFSS-specific `Lp`, `theta`, physical core or graph.
2. Name a frozen *submodule-to-set equality* between the actual independent restricted graph `(range(...)).topologicalClosure` and `closure (range(...) : Set _)` without normalizing the full concrete expression inside the V1 proof. Check the precise Mathlib API using accepted source prior art, and use explicit equality composition.
3. Implement a minimal source-specific V1 vertical certificate with **opaque** named graph and a named equality bridge, not `show ... from hp` on the huge expression. Keep exact independent original CAR/Hermitian and actual `J,hColor,hGamma,hJ` unchanged in *theorem hypotheses*.
4. Make the new independent `LinearPMap` definition J-free. Only the graph-equality/closedness theorems use actual representation-intertwining proof witnesses.
5. Stop on any new compiler first error and avoid cosmetic `exact/simpa` permutations, recursion-depth increases or unwarranted acceptance.

**Scientific boundary:** Successful V2 only constructs a closed partial independent operator with its exact graph. It does not imply density of that operator's domain in the independent physical Hilbert space, physical output membership, Hamiltonian-domain identity or spectrum.

No change to canonical `main`, draft PR #25, original mathematics or strict permitted-axiom set.
