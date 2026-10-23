# FCP BFSS — B5 Gate #3 red at concrete C2 restricted-range membership conversion

**Date:** October 23, 2026 UTC/PDT. **Disposition:** `B5_GATE3_CACHES_AND_NAMESPACES_PASS__INDEPENDENT_CONCRETE_RANGE_MEMBERSHIP_CONVERSION_RECURSION_RED__NO_SUPPORTING_CERTIFICATE__PRINCIPAL_302_UNCHANGED`.

## Independently verified original evidence

[GitHub Actions run #39917611368](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39917611368), job `120294708236`, exact source/workflow commit `a3b34329bc4cb36d8ca44774e1d1c597f10cdab8`, both completed/failure. The original full job log and Lean compiler output were independently read.

- All exact immutable original BFSS source preflights `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` passed, pinned Lean `4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` restored.
- All original-qualified parents C1–C4, V1, A3, B4 imported as actual previously saved `.olean` files. The previously missing B4 cache and the A3 qualified cache **both restored by exact keys**. Corrected source namespaces elaborated, with no unresolved `pairedAlgebraData` or `pairedTheta` identifiers.
- The frozen new candidate `experiments/openai-math-su2-physical-domain/FCPM4F7NamedRestrictedVerticalB5SubmoduleInclusion.lean`, blob `60c6c56889cc36395645f03aaa20ade56bd3734e`, has the byte-identical Gate #1 theorem proposition and unchanged final B4 application.
- Fresh strict `lake env lean -DwarningAsError=true` ran. The sole Lean error was:
```text
FCPM4F7NamedRestrictedVerticalB5SubmoduleInclusion.lean:74:12:
error: maximum recursion depth has been reached
```
at the **concrete independent graph membership conversion**:
```lean
rw [← FCP.M4F6IndependentGraphInputCut.independentCoreGraph_eq_physicalInputCut
  color gamma theta hCAR hHermitian]
exact hp
```

The goal after C2's equality expects membership in its fully instantiated independent `LinearMap.range` expression, whereas `hp` arose from `Submodule.topologicalClosure_mono` after unfolding the named A3 restricted graph. The statement is mathematically the same restriction, but elaborating equality of the *large concrete* independent charge/core/product expressions requires a deep conversion and hits Lean's recursion limit. This is the *first actual downstream C2 conversion error* after successful namespace and B4 cache corrections; not an independent mathematical counterexample. The axiom report contains `sorryAx`, no new qualified B5 cache saved. Compiler resource `DIAG_RESOURCE_TIME 29.40 CPU 97% MAX_RSS_KB 7102620`.

## Scientific decision and negative knowledge

Gate #1 had pre-Lean B4 cache path-version mismatch; Gate #2 had missing source namespace identifiers and `change ... ∈ G.topologicalClosure at hy` recursion for a redundant concrete local `G`. Gate #3 removed these but **concrete C2 set-equality specialization still forces recursion** at `exact hp`. Combined with previous A2 direct Set closure equality `unfold/exact` and `rfl` reds, this constitutes a repeated **large BFSS specialization conversion boundary**. Stop literal concrete set-equality tactic permutations: do not rerun `change`, `simpa`, `rfl` or merely boost `maxRecDepth`; do not count red theorem or any partial axiom report.

A different, objectively motivated mathematical proof route is to establish a **separate generic restricted range inclusion in a named full range** for arbitrary complex-linear `a,b`, opaque core submodule `S`, and opaque named graph submodule `G` with a *separately accepted submodule equality* `hG:G=range(a.prod b)`. The generic proof takes a restricted product-range witness and maps it to a full product-range witness, **without involving the physical-input predicate or C2's enormous set-level equality**. Generic mathematics must be strictly accepted before specializing to actual independent `independentCoreToL2`, `independentChargeVector`, `independentInvariantCore`, `independentFullCoreGraph` via already strictly accepted A1 graph equality `independentFullCoreGraph_eq_actualRange`. The C2 equality is not denied; this new proof simply avoids its costly membership conversion. Thereafter use `Submodule.topologicalClosure_mono` and accepted B4 to establish B5, with J as proof witness and never in A3's definition.

This is a **new mathematical proof architecture**, not a cosmetic tactic edit. It may still fail at a different concrete instantiation boundary and must be honestly verified before any substantive statement. Keep a single bounded gate, no competing red retries.

**Accepted principal roots: 302** (V1 and B4 remain accepted, all 3 B5 gates red). Even green B5 is supporting only, as it bridges A3 named closure to the already established vertical uniqueness. A future genuine independent closed `LinearPMap` and physical-domain/Hamiltonian/spectral equalities are separate obligations. Original pinned math, canonical main and unmerged PR #25 unchanged.
