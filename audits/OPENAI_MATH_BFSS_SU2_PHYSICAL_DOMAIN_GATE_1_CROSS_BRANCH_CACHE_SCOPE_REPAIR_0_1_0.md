# BFSS SU2 Physical Domain — Gate #1 cache-scope diagnosis and bounded repair 0.1.0

**Date:** 2026-10-09 Pacific. **Disposition:** `CI_CACHE_SCOPE_FAILURE__D1_NOT_COMPILED`; repair prospective. **No mathematical claim accepted or refuted.**

## Evidence

- [BFSS SU2 Physical Domain Bridge #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38014341056), run `38014341056`, job `114101193899`, tested SHA `7f9719291bec4ef50e07f2af49cd5937489039b3` on `research/openai-math-su2-physical-domain`.
- Exact pinned upstream checkout and G4-K10A source freeze passed. No Lean proof candidate was executed.
- Dependency cache step reported `Cache not found for input keys: family270b-bridge-ubuntu-lean4341-openai-adc7f124-deformedcharge-v2`.
- Accepted full proof cache restore reported `Cache not found for input keys: bfss-su2-accepted-g4k10a-v1-6eeb4293abcc1cf3a111ff5c511f708cb5ed320a-Linux-X64-6b1d53bd1e96831b9d4768d7b1355d1f8de8113e219d0da597d4026104cb85ee`, even though the same key was created in Gate #173 and warm-restored in Gate #174. The cache belonged to sibling research branch `research/openai-math-su2-concrete-potential`. Actions cache access is branch-scoped and a sibling branch cannot reuse it merely by specifying the exact key.
- The fail-closed `test "${{ steps.accepted_cache.outputs.cache-hit }}" = "true"` returned false. The candidate proof step was **SKIPPED**, not red on any Lean theorem.

## Repair, source lineage and impact

Preserve the already created isolated `research/openai-math-su2-physical-domain` branch as an inspectable launch record; do not delete or rewrite it. Place the dedicated `BFSS SU2 Physical Domain Bridge` workflow, same D1 Lean source file and scoped audit onto the **cache owner** `research/openai-math-su2-concrete-potential`. Change the new workflow push-branch selector to that exact branch. The original `BFSS SU2 Concrete Color Gate` is path-filtered to only accepted experiment sources and its own workflow and therefore must not be triggered by new D1 files or separate workflow changes.

The G4-K8E3 through G4-K10A accepted Lean source paths, source blobs, cache key, compiler/toolchain pin, paper-source pin and FCP accepted scientific state remain **UNCHANGED**. On the same owner branch the saved caches are accessible. This is not a workaround to disable checks or requalify frozen mathematical claims.

D1 candidate `SU2BFSSPhysicalDomainD1RestrictedSourceGraphProbe.lean` remains **UNCOMPILED** until its own correctly scoped Actions gate succeeds and prints five theorem axiom reports exactly `[propext, Classical.choice, Quot.sound]`. If red after actual compilation, inspect the corresponding theorem diagnostic and repair only the D1 leaf.

## Scientific distinction

The candidate is source-defined gauge-restricted graph equality between original and deformed 16-component charge-column closures at h=1,m=0, distinct from earlier full-space graph equality. It does not independently establish `G.invariantCore` density in `G.physicalSpace`, gauge preservation of charge images, or the manuscript's particular self-adjoint Hamiltonian and spectrum. Do not merge main, submit upstream PR, or relabel BFSS spectral claims because of this infrastructure repair.
