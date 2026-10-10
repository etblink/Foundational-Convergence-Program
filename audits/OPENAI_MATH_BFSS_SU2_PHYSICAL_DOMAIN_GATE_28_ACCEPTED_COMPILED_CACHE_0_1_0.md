# BFSS SU2 Physical Domain Gate #28 acceptance and immutable accepted-module cache 0.1.0

**Date:** 2026-10-09 America/Los_Angeles (Actions October 10 UTC).
**Baseline:** Gate #28 `b3f22a8dd3edea0d68436b20bcdc63e0dbac56ab`, TREE `0d7b753fe07fb1d547914831fb8074a9435a881d`.
**CI evidence:** [BFSS SU2 Physical Domain Bridge #28](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38025551219), run `38025551219`, job `114135525538`: **SUCCESS**.
**Scope:** build-system caching ONLY; no source theorem modification, new physics result, main merge or upstream pull request.

## Gate #28 mathematical acceptance

The exact pinned original Lean v4.34.1 and source dependency stack `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` passed the original G4-K10A accepted object guard and all previously qualified D1/D3A/D3B/D2A/D2B1/D2B2/D2B3/D2B3J/D2B4/D2B5/D2B6 recompilations and strict axioms checks.

The six new `FCP.BFSSSU2PhysicalDomainD2B7` declarations passed genuine pinned Lean compilation with only the permitted axioms `[propext, Classical.choice, Quot.sound]`, no `sorryAx`:
- `sourceFermionFiberAction_left_inv`, genuine original fermionic L² inverse;
- `sourceFermionFiberAction_norm_eq`, genuine original fermionic L² isometry;
- `sourceFullGaugePair_norm_eq`, genuine combined SU2 L² isometry;
- `sourceFullGaugePairCLM_norm_map`, exact source full-Hilbert CLM norm preservation;
- `sourceFullGaugePairCLM_fixed_physical`, genuine `G.physicalSpace` elements are fixed by the source SU2 action;
- `sourceFullGaugePairCLM_core_ae`, the actual full-Hilbert gauge action on `coreToL2 f` agrees almost everywhere with the genuine original gauge-transform integrand used in the qualified smooth-core Haar average.

Across the 12 frozen physical-domain modules there are exactly **51** explicitly reported theorem axiom checks. The original pinned G4-K10A cache stays the independent prerequisite; this audit does not strengthen the six D2B7 theorems or the scientific result.

## Newly authorized compiled module-cache pattern

The separate existing `.github/workflows/openai-math-su2-concrete-potential.yml` already qualifies and caches the G4-K10A source chain via pinned `actions/cache/restore` / `actions/cache/save`, source identity, `.olean` existence checks, and imported `#print axioms` smoke verification. The physical-domain workflow is given the **same architecture** with an additional dedicated namespace/key, not permission to silently reuse G4 outputs as a D2B cache.

In `.github/workflows/openai-math-su2-physical-domain.yml`:
1. Preserve the exact existing original upstream checkout, frozen G4K10A source check, dependency cache and original G4K10A accepted proof cache. Pin accepted **physical-domain** original source files to EXACT Gate #28 commit above; enumerate the 12 `.lean` files in that commit and require their current Git blob IDs to match one by one before restoring the cache. Future new experimental leaf files are **not qualified merely by residing in the same directory**.
2. An **immutable exact-key** separate physical-domain cache restores `upstream-math/lean/.lake/build`. Key includes Gate #28 commit identity, runner OS and architecture, the strict 51-report smoke source content, the frozen concrete-source glob hash, and the exact upstream Lean toolchain and lake manifest hash. This never overlaps the original G4K10A cache key.
3. On a **warm exact cache hit**, reject a missing/truncated original physical-domain `.olean` for ANY of the 12 accepted modules, missing original `OAI.Analysis.VlasovMaxwell.Regularity.SmoothIntegral.olean`, or missing qualified `SU2BFSSG4K10ASourceClosedJointChargeGraphProbe.olean`. Skip all 12 redundant physical-domain source compilations.
4. On a **cold miss**, run the full original 12 source compilation sequence and EACH gate's pre-existing named theorem/axiom guard, unchanged. Emit `SU2BFSSPhysicalDomainD2B7SourceFullL2GaugeIsometryAndFixednessProbe.olean` on the final step, which Gate #28's first-version CI checked without emitting it. An explicit optional `workflow_dispatch.clean_build=true` bypasses the domain cache and forces physical-domain source compilation; it intentionally does not invalidate the previously accepted independent G4 cache.
5. On BOTH warm hits and cold builds, import all 12 physical-domain modules through new proof-free `SU2BFSSPhysicalDomainGate28AcceptedCacheSmoke.lean`, and print **all 51** exact fully qualified theorem axioms again. Independently regenerate the expected 51 names from the 12 frozen original source files and fail if the new smoke file is missing, incomplete or differs. Reject any axiom beyond `propext`, `Classical.choice`, `Quot.sound`, any `sorryAx`, compiler error or unexpected axiom-report count/name.
6. **Only after** those checks succeed, cache-save the complete accepted `.lake/build` under the new key, and only when the cache was missing and `clean_build != true`. Immutable cache keys are never mutated on a warm hit.

## Deployment and verification boundary

This is an **infrastructure optimization**, not a new mathematical proof. Workflow and smoke-file changes require their own GitHub Actions cold-run proof-cache-creation gate; the next run must be observed for the 12 original compilers passing, 51 reprinted axioms, and actual cache save. After a stored cache exists, a separate subsequent workflow run must be observed for a true exact-key **warm hit**, existence checks, skipped original compilation steps and 51 strict imported axiom reports. **Do not claim cache creation or verified warm-hit speedup until corresponding GitHub logs confirm them.**

Qualified mathematics remains bounded: full-`FullL2 2` gauge isometry, physical fixedness and core compatibility are proven, but continuity of the SU2 orbit map for arbitrary Hilbert vectors, its Haar Bochner integral, a bounded full-Hilbert Haar projector, and `G.coreNormClosure = G.physicalSpace` are still OPEN. No BFSS spectrum/Hamiltonian claim follows.

No original source definition or mathematical theorem statements, original upstream library or Lean pins, or accepted qualified proof modules are modified.
