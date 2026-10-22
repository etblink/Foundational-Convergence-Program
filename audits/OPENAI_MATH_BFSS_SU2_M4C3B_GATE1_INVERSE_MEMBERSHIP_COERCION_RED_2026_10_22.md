# FCP BFSS SU(2) — M4C3B Gate #1 RED: inverse-membership transported unitary coercion

**Project local date:** October 22, 2026 PDT.  
**Disposition:** `M4C3B_GATE1_RED__ONE_INVERSE_UNITARY_COERCION_REWRITE__ZERO_OF_ONE_ROOTS__277_CUMULATIVE`.

## Direct original runner evidence

- [Strict run #39746770398](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39746770398), job `119717063796`, completed **failure**.
- Workflow/source head `5a5b944c29dcbd9097120d8e30d168ad25b450d4`, research branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- Candidate `FCPIndependentPhysicalUnitary.lean`, original Git blob `1cc5f1a78ba44f1f8aa6456dfce71a2b2de55fbe`.
- Upstream source pin `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. All immutable-source, toolchain, accepted M4C3 parent-cache, and `.olean` ancestor checks passed.
- Candidate Lean compilation gave one compiler error at `FCPIndependentPhysicalUnitary.lean:49:14`. Since the first new linear-equivalence definition did not compile, all four declared roots reported `sorryAx`. No qualified M4C3B cache was saved, and **zero** additional theorem roots were accepted. Cumulative count remains 277.
- The strict gate uploaded its original diagnostics before terminating.

## Exact localized error

```text
FCPIndependentPhysicalUnitary.lean:49:14: error: Type mismatch: After simplification, term
  Subtype.prop v
has type
  ↑v ∈ pairedGaugeData.physicalSpace
but is expected to have type
  (fiberTransport J) ((fiberTransportUnitary J).symm ↑v) ∈ pairedGaugeData.physicalSpace
```

The original inverse membership witness used `simpa only [(fiberTransportUnitary J).apply_symm_apply]`. The proposition still displayed `fiberTransport J`, which the restricted `simp` did not unfold to the full-L² unitary. The accepted M4C2 final definition has the exact same forward map; this gate did not discover any contradiction in the physical Hilbert equivalence.

## Gate #2 constrained proof repair

Replace the single fragile simplification with a named equality from M4C2:

```lean
have hright :
    (fiberTransportUnitary J) ((fiberTransportUnitary J).symm v.val) = v.val :=
  (fiberTransportUnitary J).apply_symm_apply v.val
exact hright.symm ▸ v.prop
```

This transports membership across the inverse identity using kernel conversion of the accepted `fiberTransportUnitary` and `fiberTransport` definitions. It changes no theorem statement, source gauge representation, norm bound, inverse, or scientific claim. The exact source-only repair commit is `4ae05cf35605ab63e189f9314ff7a5a9038f9d09`, new Lean blob `5dc225ed1e9433451ba1aeda11fc50ba9feb110f`, **not yet qualified** at the time of this audit.

Gate #2 must restore the qualified M4C3 v2 parent cache; prove the four exact declarations under `-DwarningAsError=true` and the axiom whitelist `propext, Classical.choice, Quot.sound`, reject `sorryAx`, confirm `.olean` output and source hashes, and save a distinct qualified cache only on strict pass.

The remaining obligations remain separately scoped: manuscript combined fixed-action presentation, invariant smooth compact core, sixteen closed supercharge graphs/domains, normalized source/manuscript self-adjoint Hamiltonian, Spin(9) and positive point eigenvalues. No physical spectral claim follows from this candidate.

Governance: never modify the pinned original mathematics, canonical `main`, existing qualified M4C3 parent, draft PR #25 or Issue #28. No speculative rerun of Gate #1.
