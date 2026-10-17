# BFSS SU(2) H5E8AU — original minimal closed source LinearPMap Gate #1 negative knowledge

**Date:** October 17, 2026 (PDT). **Disposition:** `RED__FIRST_CAUSAL_LEAN_PROOF_SUBSTITUTION_MISMATCH__MATHEMATICAL_TARGET_UNCHANGED`.

[H5E8AU Original Minimal Closed Charge Operator #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39055587744) **RED**, job `117462801043`; source/workflow commit `8185a2ccab55f9e5ff0c5e08cf06750b35e8edde`, original candidate source blob `c7c26e577ff4e751876bd9d1ddf88fd3bc3dff1d`.

## Exact first causal failure

- Original pinned BFSS source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; all 16 accepted AD–AT source module dependencies compiled and the strict original-cache pin checks passed.
- At AU line 82, the vertical-zero proof tried:
  ```lean
  rintro ⟨x,y⟩ hp hx
  have hzero : ((0 : FullL2 N),y) ∈ originalMinimalClosedGraph M G := by
    simpa only [hx] using hp
  ```
  Lean reported that `hp : (x,y) ∈ originalMinimalClosedGraph M G` was not the requested `(0,y)∈...` after this attempted simplification. This is a **proof-script substitution mismatch**: mathematical premises already provide `hx : x = 0`. It is not a counterexample to source vertical uniqueness or the claimed operator.
- Every eight printed AU root depended only on `propext`, `Classical.choice`, `Quot.sound`, but **the module had a prior Lean error** and therefore none of the eight are accepted on this run. Compiler outputs must never be cherry-picked after a failed file build.

## Minimal source-exact repair

The follow-up candidate replaces that use of `simpa` with:
```lean
  rintro ⟨x,y⟩ hp hx
  dsimp at hx
  subst x
  exact M.fullClosedGraph_vertical
    (originalMinimalClosedGraph_le_full M G hp)
```
No source algebra, original charge definitions, gamma orientation, domain, physical gauge action, or operator-graph object changed. The repaired source was committed as [`2f031e8c30bdb3614e62d7a4e76c8c65bdc43121`](https://github.com/etblink/Foundational-Convergence-Program/commit/2f031e8c30bdb3614e62d7a4e76c8c65bdc43121), blob `5e6300e7db8d292b6766f5800e20c9a394cc0d69`, with strict workflow pin updated by [`bdbeea85ee1227f5e5946b5d8004a2dd9c456298`](https://github.com/etblink/Foundational-Convergence-Program/commit/bdbeea85ee1227f5e5946b5d8004a2dd9c456298). Gate #2 is an independent compiler test, not presumed successful here.

## Boundaries

AU constructs a true `LinearPMap` from the **literal original `M.chargeVector` gauge-invariant SmoothCore graph closure**, deriving single-valuedness from original `M.fullClosedGraph_vertical`, which does not require historical Gate93 compiled artifacts. AU is **not** itself a proof identifying the independently defined source `G.deformedModelGraph 1 0` or D2B12 alias, and is **not** the original paper's self-adjoint Hamiltonian operator-domain equivalence or its positive-spectrum claim. The separate source-model identification obligation remains, irrespective of AU's outcome.

**Governance:** research S3L branch only, no merge/upstream source edits; no numerical or spectral conclusion promoted.
