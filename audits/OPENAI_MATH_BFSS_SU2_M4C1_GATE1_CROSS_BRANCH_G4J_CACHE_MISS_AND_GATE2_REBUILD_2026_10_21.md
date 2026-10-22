# FCP BFSS SU(2) — M4C1 Gate #1 RED; Gate #2 current-branch G4J source-closure repair

**Local date:** 2026-10-21 PDT; actual Actions execution 2026-10-22 UTC.
**Ledger:** **274** accepted theorem roots; M4C1 still 0/1 accepted.
**Disposition:** `M4C1_GATE1_RED__HISTORICAL_FOREIGN_BRANCH_G4J_CACHE_MISS__NO_NEW_LEAN_COMPILE__GATE2_FROZEN_ORIGINAL_SOURCE_REBUILD`.

## Independently inspected failure

[Actions M4C1 strict Gate #1 run #39727061288](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39727061288), original job `119653282938`, head `82eff19c91f610fd7c0eef04e6d2f996d04bf61c`, **completed FAILURE**.

Completed successful steps:
- Research and immutable upstream checkout;
- source Git blob and original mathematics provenance checks;
- exact Lean 4.34.1 and pinned Mathlib restore;
- qualified source exact M4B gauge cache restored with key `bfss-fcp-m4b-independent-original-gauge-unitary-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

First causal failure at `Confirm both accepted source closures before Lean`:

```text
Cache not found for input keys: bfss-s1v19-isolated-g4j-original-v1-adc7f124-lean4341-d13f23b-Linux-X64
Cache hit for: bfss-fcp-m4b-independent-original-gauge-unitary-v1-adc7f124-lean4341-d13f23b-Linux-X64
M4C1_G4J_CACHE_MISS
```

The historical G4J cache producer workflow `.github/workflows/bfss-s1v19-original-g4i-g4j-continuity-gaugedata-strict.yml` was restricted to `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018`, **not** the current `research/openai-math-su2-s1v52-global-lift-scoping-20261019`. GitHub Actions cache branch visibility is consistent with the failed foreign-branch lookup. Do **not** infer that historical G4J mathematics failed, or that the cache was deleted; neither is demonstrated. The source-specific `FCPIndependentFullL2GaugeTransport.lean` was **not compiled**. Its theorem declarations have no strict proof result and no saved M4C1 cache.

## Minimal Gate #2 strategy

Keep the 142-line source-specific candidate **unchanged**, Git blob `482d6c830a2a3dc3d98c38babf5807cbaf37a9c8`.

New unique branch-path workflow `.github/workflows/bfss-m4c1-independent-full-l2-gauge-strict-gate2.yml`, exact Git blob `e8ac706ede71257d23425debdcae8f470733264f`, no other workflow path trigger.

1. Reuse qualified M4B v1 cache **from the current branch** and original pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Verify M4B cache hit.
2. **Do not request the inaccessible G4J cache.** Recursively reconstruct the necessary literal source `SU2BFSSG4JExactGaugeDataAssemblyProbe.lean` closure from committed `experiments/openai-math-su2-concrete-potential` source files and upstream pinned `OAI` sources, reusing every already-present M4B or pinned Mathlib `.olean`.
3. Verify exact historic source blobs for G4J, G4IC2, G4IC1, G4H, and G2B. For each freshly rebuilt original-source file, record its SHA-256 in the runner log; compile to an actual `.olean`, reject Lean errors, `sorryAx`, and missing/forbidden `#print axioms` reports. Enumerate all rebuilt source stems and re-used modules. If actual ancestry is too large or cannot be reconstructed, preserve the red and report the first causal missing source; no guess or silent substitute.
4. Only after original `G4J` and the qualified M4B source chain are present, compile exact `FCPIndependentFullL2GaugeTransport.lean` under `lake env lean -DwarningAsError=true`, demand all five exact axiom reports and accept only `propext, Classical.choice, Quot.sound`.
5. Unique qualified output cache `bfss-fcp-m4c1-independent-full-l2-gauge-v2-adc7f124-lean4341-d13f23b-Linux-X64` must be saved, and diagnostics uploaded, before any formal acceptance. One new root **only**: `FCP.IndependentFullL2GaugeTransport.independentFullL2Gauge_intertwining`. Supporting declarations are individually audited but not extra counted roots.

The attempted theorem is about full-L² *gauge intertwining* with unchanged source bosonic pullback convention, not a full-L² unitary equivalence, invariant smooth-core equality, closed Hamiltonian-domain equivalence, Spin(9) spectral theorem, or BFSS gap.

## Research governance

No accepted M4B/M4A mathematical sources, original pins, issue #28, draft PR #25, or canonical `main` may be changed. Gate #2, like #1, can be red for genuine elaboration or mathematical obstruction only **after** it reaches the intended Lean candidate. A parent-cache/source closure red stays an infrastructure diagnosis, not mathematical evidence.
