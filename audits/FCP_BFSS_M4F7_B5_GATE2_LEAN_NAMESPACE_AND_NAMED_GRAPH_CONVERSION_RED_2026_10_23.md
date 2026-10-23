# FCP BFSS M4F7 B5 — Gate #2 exact cache restored, Lean errors in namespace and named graph conversion

**October 23, 2026 UTC.** **Disposition:** `B5_GATE2_CACHES_RESTORED__LEAN_MISSING_SOURCE_NAMESPACES_PLUS_NATIVE_SUBMODULE_CONVERSION_RECURSION_RED__ZERO_ROOTS__PRINCIPAL_302_UNCHANGED`.

## Original immutable evidence

[Actions run #39916252060](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39916252060), job `120290368131`, source/workflow commit `6ffb1a863aa4cb5bd411932c7e2344d649dc32a8`. The original Actions job, first compiler errors, exact restored cache keys and qualification steps were independently inspected.

Unlike B5 Gate #1, Gate #2 **restored the exact original accepted B4 cache**:
```
Cache hit for: bfss-fcp-m4f7-full-closed-vertical-b4-coealign-2b485db6-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
All immutable original source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, C1–C4, V1, A3 and B4 qualified dependency caches, import `.olean` presence and no-hole B5 preflight passed. This establishes Gate #1's version/path cache restoration issue is repaired, rather than ignored.

**Fresh Lean did run** on original unchanged `FCPM4F7NamedRestrictedVerticalB5.lean` blob `d88febcd86d196490696bce76bf79b564a594976`. Compiler errors:

```
FCPM4F7NamedRestrictedVerticalB5.lean:50:22: error(lean.unknownIdentifier): Unknown identifier `pairedAlgebraData.gamma`
FCPM4F7NamedRestrictedVerticalB5.lean:51:37: error(lean.unknownIdentifier): Unknown identifier `pairedTheta`
FCPM4F7NamedRestrictedVerticalB5.lean:75:4: error: maximum recursion depth has been reached
```

The first two indicate B5 forgot the source namespace opens `OAI.BFSSQuantum.AlgebraData` and `FCP.BFSSSU2GaugeG1A`, both present in previously accepted B4 source. The line-75 error occurs at
```lean
change ((0 : Lp E 2 μ), y) ∈ G.topologicalClosure at hy
```
with `hy : (0,y) ∈ A3.independentRestrictedClosedGraph ...` and `G` a newly defined LOCAL alias for the raw independent BFSS restricted graph. Converting the A3 opaque graph membership to the closure of this unrelated local alias forces a deep concrete `Lp`/graph range definitional equality; in this configuration Lean exceeds its recursion budget. This is a **native submodule conversion** red. It is not the earlier A2 Set-coercion equality exactly, but reflects the same principle of maintaining opaque names. The correct next architectural improvement is not to raise `maxRecDepth` or permute tactics on this change.

Both theorems' desired namespace/hypotheses are source-exact; the axiom report has `sorryAx` due to unproved holes from these elaboration errors; **B5 unaccepted, no cache saved, zero principal/root increment**. Compiler resource `DIAG_RESOURCE_TIME 18.78 CPU 99% MAX_RSS_KB 7105288`.

## Distinct causal repair to test

Make a new source with the exact missing namespace openings copied from accepted B4. Replace the **entire local G→hy change/conversion segment** with one proposition of named-submodule inclusion:

```text
A3.independentRestrictedClosedGraph color gamma theta hCAR hHermitian
  ≤ (independentFullCoreGraph color gamma theta).topologicalClosure.
```

In the proof, **unfold only A3's outer named graph definition** and use `Submodule.topologicalClosure_mono`. Prove raw source inclusion through the accepted C2 `independentCoreGraph_eq_physicalInputCut` by projecting the existing physical-input conjunction. Then apply the resulting *already named* inclusion directly to `hy`. This avoids inventing `G` as a second alias, and no direct A2 literal Set-closure equality is asserted. The original true independent CAR/Hermitian and J/color/gamma/theta intertwiner hypotheses remain unchanged. This is one source-justified architectural test; even this could hit a proof-engineering bottleneck and must be qualified by a new complete strict Lean run before any root or support credit.

## Scientific boundary

B5 is a supporting named vertical-membership interface bridging accepted C2/A3/B4; its vertical result overlaps already accepted V1 literal restricted graph theorem, so even a fully qualified B5 **does not increase the 302 principal theorem count**. Independent actual closed `LinearPMap` graph equality/closedness, source physical operator-domain equivalence and subsequent spectral claims remain unproved. Canonical `main` and draft PR #25 remain unchanged; no pinned math changes, axioms or increased recursion budgets.
