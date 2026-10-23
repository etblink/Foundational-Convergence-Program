# FCP BFSS M4F7 — B5 Gate #1 exact B4 cache-version mismatch; controlled Gate #2 recovery

**Research date:** October 23, 2026 UTC (October 22 PDT). **Disposition:** `M4F7_B5_GATE1_B4_CACHE_PATH_VERSION_MISMATCH_PRECOMPILATION_RED__B5_GATE2_CACHE_VERSION_REPAIR_LAUNCHED__PRINCIPAL_302_UNCHANGED`.

## 1. Original independent failure verification

[GitHub Actions B5 Gate #1 #39915321255](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39915321255), job `120287489111`, original workflow/source SHA `2fc60674eec929ef4a1697a9b0d6bb0568175c2a`, completed/failure. Independently fetched the original job, exact cache restore keys and original job log.

All immutable source pins, BFSS `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1` / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, and upstream accepted C1/A1/B1/C2/C3/C4/V1 and A3 cache checks passed. Both code source and accepted B4 source SHA were pinned; the B5 source's initial scanner passed.

The B4 cache-restore step explicitly reported:
```text
Cache not found for input keys:
bfss-fcp-m4f7-full-closed-vertical-b4-coealign-2b485db6-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64
QUALIFIED_B4_CACHE_MISSING
Process completed with exit code 1.
```
The next step, **fresh B5 Lean compilation**, was skipped, as was the save-qualified-B5-cache step. No B5 axiom report exists, no B5 theorem accepted, and there is no new B5 reusable `.olean`. **Principal root count remains 302.** This is an upstream cache-version mismatch, not a red mathematical theorem, CAR counterexample, or Lean elaboration failure.

## 2. Exact cause localized by comparing immutable workflow specifications

The B4 Gate #2 itself is **strictly accepted and cached** under that key: [Actions #39913871718](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39913871718), job `120282853078`, original compiler and saved cache independently verified, one substantive B4 principal theorem.

Comparing the saved cache path list in `.github/workflows/bfss-m4f7-unrestricted-full-vertical-b4-coealign-strict-gate2.yml` with B5 Gate #1 restore list identified **exactly two omissions**:

```text
upstream-math/lean/.lake/build/lib/lean/FCPIndependentFullSmoothCharge.olean
upstream-math/lean/.lake/build/lib/lean/FCPIndependentChargeVectorL2.olean
```

B4 saved **12** cache path entries; B5 Gate #1 restored **10**. GitHub Actions cache versioning includes the archive path specification, so the same textual cache key with a different path list can yield `Cache not found`. The original runner log confirms exactly that key missed despite the original B4 run having saved a cache. No original source proof was invalidated.

## 3. Exactly one repair and unchanged mathematics

A new workflow `.github/workflows/bfss-m4f7-named-restricted-vertical-b5-cachepath-strict-gate2.yml` was staged at [commit `6ffb1a863aa4cb5bd411932c7e2344d649dc32a8`](https://github.com/etblink/Foundational-Convergence-Program/commit/6ffb1a863aa4cb5bd411932c7e2344d649dc32a8) and launched [Actions #39916252060](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39916252060). Initially queued; theorem verdict unknown.

Its B4 restore path list was compared by programmatic **ordered exact equality** against the frozen B4 Gate #2 cache-save path list. All 12 entries now match. The B5 source blob is **unchanged**, `FCPM4F7NamedRestrictedVerticalB5.lean`, Git SHA `d88febcd86d196490696bce76bf79b564a594976`; same exact source CAR/Hermitian/theta/color/gamma/J hypotheses and C2/A3/B4 original-provenance dependencies. No mathematics, Lean tactic, theorem target, old qualified cache, original source, or axiom whitelist changed.

The new Gate #2 retains complete original source/Lean/Mathlib hashes, accepted A3 and B4 `.olean` restore checks, comment-aware no executable holes and no `maxRecDepth` override. Fresh `lake env lean -DwarningAsError=true`, one exact `FCP.M4F7NamedRestrictedVerticalB5.namedIndependentRestrictedClosedGraph_vertical` report with only `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`, actual output `.olean`, and complete cache save are required before qualification. B5 Gate #2 save key has been made unique:
```text
bfss-fcp-m4f7-named-restricted-vertical-b5-d88febcd-gate2-cachepath-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
Static workflow self-path-only trigger, source/toolchain pins, run-block and cache path YAML indentation, exact cache restore path-match, and report-count checks passed prior to launch.

## 4. Scientific and procedural boundary

The B5 theorem is a proposed **supporting named-relation vertical certificate**: it connects the true A3 J-free restricted closed-graph object to B4's unrestricted vertical result through accepted C2 input restriction and submodule closure monotonicity. The equivalent physically restricted vertical fact already has the independent V1 original strict accepted root. Therefore **even a strictly green B5 should not inflate the principal 302 count**. Do not infer from a cache-restore success that the new theorem compiles.

A subsequent actual independent closed `LinearPMap` with qualified graph equality and closedness would constitute a separate substantive root. Neither B5 nor such an operator alone proves density in the independently defined physical Hilbert space, output physical invariance, Hamiltonian or spectral equivalence, or the BFSS mass gap.

Negative knowledge: **cache archive path lists are part of mathematical CI reproducibility provenance**. Before every reused cache, compare the *exact ordered saved path list*, not only the cache key string. Do not disguise setup reds as mathematical failures or repeat CI before narrowing a concrete cause.

Original `main`, unmerged PR #25, accepted B4 and original BFSS math remain unchanged.
