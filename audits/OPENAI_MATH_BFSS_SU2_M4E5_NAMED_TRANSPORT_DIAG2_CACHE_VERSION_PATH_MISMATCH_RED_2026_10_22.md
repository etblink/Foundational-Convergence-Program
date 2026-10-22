# FCP BFSS M4E5 Named Transport Bounded Diagnostic #2 — strict RED due to cache-version path mismatch

**Date:** 2026-10-22. **Ledger:** 287 strictly accepted roots, **+0** from this gate.
**Classification:** CI harness/cache contract failure **before** Lean compilation; no mathematical conclusion on the named kinetic or cubic interfaces.

## Source and original workflow evidence

- Workflow [run #39828699797](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39828699797), job `119998764392`, attempt 1, overall `completed/failure`, triggering SHA `9f914c56d5a85e4df6b9f2a470ebff36c91d96ab`.
- Pinned original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Source hashes/toolchain preflight passed.
- Original job passed through pinned environment setup and attempted the qualified source-outer cache restore. It printed:
```text
Cache not found for input keys: bfss-fcp-m4e5-source-outer-diag1-v1-adc7f124-lean4341-d13f23b-Linux-X64
M4E5_NAMED_DIAG_SOURCE_OUTER_CACHE_MISS
Process completed with exit code 1.
```
- Previous source-outer diagnostic [#39826549068](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39826549068), job `119991231795`, was `completed/success` and **saved** cache with identical textual key. This is not evidence of a failed proof or unsaved cache.
- The previous workflow `.github/workflows/bfss-m4e5-original-source-outer-diag1.yml` saved precisely:
```yaml
path: |
  upstream-math/lean/.lake/build/lib/lean/OAI
  upstream-math/lean/.lake/build/lib/lean/SU2*.olean
  upstream-math/lean/.lake/build/lib/lean/FCPM3*.olean
  upstream-math/lean/.lake/build/lib/lean/FCPIndependent*.olean
  upstream-math/lean/.lake/build/lib/lean/FCPM4E5*.olean
```
- The failed named-transport workflow `.github/workflows/bfss-m4e5-named-transport-diag2.yml` restored the same paths **except** `FCPM4E5*.olean`, generating a different GitHub Actions cache version even though the human-readable key matched. This directly accounts for the restore miss. Fix by restoring with **exactly** the original saved path list, order, glob spelling, and key.
- Strict stage C `FCPM4E5NamedKineticBridge` and stage D `FCPM4E5NamedCubicBridge` were both **skipped**. No Lean `#print axioms` report exists for either new root, and no new diagnostic cache was saved.

## Bounded repair

Do not repeat the failed workflow unchanged. Submit a fresh, isolated workflow-path-triggered Diagnostic #3 preserving immutable source blobs, accepted predecessor cache and exact Lean statements, but fixing **only** the restore path list to match its saved cache. Retain independent stage limits (105s), exact two-declaration names, strict axiom whitelist `propext`, `Classical.choice`, `Quot.sound`, rejection of `sorryAx`, and an entirely distinct cache key for the new successful result.

The parent source outer identity remains accepted, cumulative **287**; both transport interfaces and the full M4E5 independent 16-charge intertwiner remain open. No source mathematics, accepted proof blobs, canonical main, draft PR #25 or Issue #28 changes.

## Lesson

Cache text key equality does not guarantee restore identity: Actions cache-version hashing depends on the path set. Always compare *all* restore/save paths as part of the preflight before launching dependent diagnostics.
