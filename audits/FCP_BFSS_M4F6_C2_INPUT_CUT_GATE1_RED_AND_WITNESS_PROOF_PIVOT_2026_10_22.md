# FCP BFSS — M4F6 C2 direct independent input-cut Gate #1 RED and precise proof architecture pivot

**Local date:** October 22, 2026 PDT; CI completed October 23 UTC. **Disposition:** strict RED, 0/1 new principal theorem roots; cumulative strictly accepted ledger remains **297**.

## Original evidence

- [Actions #39889826778](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39889826778), job `120206660997`, completed/failure; research workflow commit `9c925374f14d196e9ef8911d3d021be74cf84f27`.
- Full original BFSS math source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. All provenance, pinned toolchain and accepted M4F5 source closure steps passed.
- The **exact accepted C1 cache** `bfss-fcp-m4f6-paired-source-cut-c1-c217d66c-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64` was restored, with the expected generic lemma, source C1 certificate and independent unrestricted graph `.olean` closure verified.
- Sole failure: fresh compilation of `FCPM4F6IndependentGraphInputCut.lean`, original Git blob `4db1bbd1685555a3c00efd836577186782ff08bb`:
  ```
  FCPM4F6IndependentGraphInputCut.lean:52:8:
    error: maximum recursion depth has been reached
  'FCP.M4F6IndependentGraphInputCut.independentCoreGraph_eq_physicalInputCut'
    depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
  ```
  Line 52 is `exact core_graph_input_cut independentCoreToL2 (independentChargeVector color gamma theta) (independentPhysicalSpace theta hCAR hHermitian)`. Resource wall 32.43 s, RSS 7129936 KB. No C2 proof cache was saved. The transient `sorryAx` belongs to failed elaboration: **NOT accepted**.
- The prior six-declaration M4F6 graph gate had separately hit maximum recursion at the concrete independent/source cut applications; the prior inferred-type diagnostic displayed an independently inferred type for the generic application but its own overall workflow was red and it was not a new accepted root. Do not count it or conflate red infrastructure wrappers with mathematical counterexamples.

## Mathematical classification

The intended J-free theorem says the range of the **literal independent invariant-core** embedding/charge column equals the **literal independent full-core** graph with its independently specified physical input restriction. This is a purely algebraic graph-of-maps restriction identity; neither output physical invariance nor the existence of any J witness is an extra premise. The accepted generic `core_graph_input_cut` uses only set extensionality and witnesses; the actual original C1 source specialization previously compiled strictly. There is **no identified counterexample**, but the concrete independent application is not yet kernel-proved.

## Deliberate next experiment

Instead of increasing maxRecDepth, re-expanding source BFSS objects, or reapplying the same generic theorem through `exact`, stage a **direct witness-level proof** of the *same* exact C2 theorem statement:
```lean
  unfold independentFullCoreGraph independentInvariantCore
  ext p
  constructor
  · rintro ⟨x, rfl⟩
    exact ⟨⟨x.val, rfl⟩, x.property⟩
  · rintro ⟨⟨x, rfl⟩, hx⟩
    exact ⟨⟨x, hx⟩, rfl⟩
```
It follows the already strictly compiled generic witness-level proof, but avoids elaborator unification of the instantiated `core_graph_input_cut` theorem. This is one source-diff-constrained proof patch; no source definitions, original theorem statement or hypotheses are altered.

Isolate one additional self-path strict gate that restores the actual C1 cache and accepts only the exact original theorem name + permitted axioms after fresh compilation and save. Stop at the first genuinely observed diagnostic if this witness proof fails. Remain at 297 until that verdict. Preserve original math, research branch isolation, canonical `main` and draft PR #25.
