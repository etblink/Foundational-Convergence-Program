# BFSS M4F8 DB conditional physical norm density — Gate #1 negative knowledge

**Date:** October 23, 2026 PDT. **Disposition:** `RED__LEAN_SET_MEMBERSHIP_NORMALIZATION_FINAL_LINE_115__NO_ACCEPTANCE__PRINCIPAL_308_HELD`.

## Frozen original evidence

- [GitHub Actions run #40036816070](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40036816070), original job `120698226019`, completed/failure, source/workflow trigger commit `7e60ab7c1bc1adfb0bbc013c18d2b8760767c169`.
- Original DB candidate `experiments/openai-math-su2-physical-domain/FCPM4F8IndependentConditionalPhysicalCoreDensityDB.lean`, Git blob `64f9c11b160b801666a65fd86f12a6b2f80afdfc`. Parent strict-qualified DA cache `bfss-fcp-m4f8-da-invariant-core-image-be22524e-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored exactly.
- Original source pin `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- All original/candidate provenance checks, qualified ancestor checks, and toolchain restoration passed. Fresh Lean ran 13.35 seconds, MAX_RSS_KB 6991960.
- The **single real compiler error** is at DB line 115 on `simpa only [F.symm_apply_apply] using hcl`:
  ```
  Type mismatch: After simplification, term hcl
    has type (F v) ∈ {w | F.symm w ∈ closure S}
  but is expected to have type
    v ∈ closure (independentInvariantCoreToL2 theta hCAR hHermitian).range
  ```
  The local set-comprehension predicate was not unfolded by the restricted simplifier. It is definitionally the expected membership in `closure S` after applying the fiber-unitary inverse.
- Because compilation failed, the displayed theorem axiom list includes `sorryAx`; **zero theorems accepted**, no successful DB cache save. Diagnostic [artifact #12538085712](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40036816070/artifacts/12538085712), sha256 `8c411a9b2d638786c480fcd150f9f904a40a65d1960350e082c4fa2cdcd6babb`.

## Classification and minimal repair

Class **A: Lean definitional exposure/elaboration**, not an identified mathematical counterexample, divergence or missing Haar density premise. All earlier proof steps elaborated. Expose the actual membership at the final step using

```lean
have hcl := hsourcePhysicalSubset hvsource
change F.symm (F v) ∈ closure S at hcl
simpa only [F.symm_apply_apply] using hcl
```

No change to `hsource`, the theorem's conditional conclusion, independent physical space, imported DA or original mathematical definitions. Candidate remains **prospective** until independent Gate #2 compiles, passes strict theorem-axiom checks, and saves the qualified ancestry cache. Principal accepted BFSS ledger remains **308**. Preserve the red gate and its original logs after any later green. `main`, `etblink/math`, PR #25 unchanged.
