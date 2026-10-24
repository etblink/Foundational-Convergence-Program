# BFSS M4F8 DE1 Gate #1 — cache-version/path manifest mismatch, before Lean

**Date:** October 23, 2026 PDT (original job log completed October 24 UTC). **Disposition:** `DE1_GATE1_RED__DC_CACHE_VERSION_PATH_MISMATCH__LEAN_NEVER_COMPILED__0_ACCEPTED__PRINCIPAL_308_UNCHANGED`.

## Original immutable evidence

- [GitHub Actions run #40044769712](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40044769712), original job `120723853645`, `completed/failure`, triggering HEAD `3ae54630ca7f80dbe1dc6535c5151fdb079f6375`; workflow `.github/workflows/bfss-m4f8-de1-actual-e2-independent-physical-input-rebase-strict-gate1.yml`.
- Source candidate `experiments/openai-math-su2-physical-domain/FCPM4F8IndependentActualE2PhysicalInputRebaseDE1.lean`, Git blob `6666d957c03571ac80c3c3886a67e976aec1eb6a` **was not compiled**, therefore NO DE1 declaration can be counted.
- Original BFSS source, pinned Lean 4.34.1/Mathlib provenance, checkout and machine recovery steps passed.
- Cache restore step was marked `success` in job metadata because `actions/cache/restore` treats a miss as a non-failing return. Actual original job log says:
```text
Cache not found for input keys:
bfss-fcp-m4f8-dc-haar-join-bac97ce9-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
DE1_GATE1_DC_CACHE_MISSING
```
- The fail-closed DE1 source preflight explicitly rejected `steps.dccache.outputs.cache-hit != true`, and failed before source checks, fresh Lean compilation, root axiom reports, or cache save. Diagnostics upload found no files in the planned runner directory; the **original job log** is the evidence.
- Prior accepted [DC Gate #1 run #40043524478](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40043524478) DID save the requested cache key, with accepted source result, twenty original G4K and twenty-two source Haar ancestors all qualified, and two DC roots strictly accepted. Do not revise DC acceptance based on this DE1 miss.

## Root cause

The **DE1 Gate #1 restore path collection** was copied from DD Gate #5 saved-cache manifest and omitted:
`upstream-math/lean/.lake/build/lib/lean/FCPM4F8IndependentE2UnconditionalPhysicalDomainDenseDC.olean`.

The **DC Gate #1 cache SAVE manifest** includes the DD ancestor entries **plus this one DC .olean path**. GitHub Actions cache records a version coupled to the compression and path collection, so requesting the same cache key under a different path collection yields an apparent miss. This is a **cache-version manifest mismatch**, not absent evidence that DC was ever saved.

## Narrow Gate #2 corrective protocol

- Preserve original DE1 source blob `6666d957c03571ac80c3c3886a67e976aec1eb6a` unchanged.
- Copy the full **exact DC Gate #1 SAVE path manifest** into DE1 Gate #2 RESTORE with **the exact saved DC key**; do not silently drop or add an input item. Subsequent DE1 Gate #2 save should include that full DC manifest plus its newly compiled DE1 .olean under a novel cache key.
- Retain strict original provenance/accepted ancestor verification, source-tree and working-source byte hashes, exact four DE1 axiom reports from real successful compilation, rejection of `sorryAx` and unexpected warnings, and cache save only on success.
- Gate #2 must itself actually run Lean; if a Lean error emerges, preserve it independently, rather than attributing it to the resolved cache mismatch.

Principal accepted physics roots **308** unchanged. DC's two support theorem roots remain accepted; DE1, DE1B, DE2 unaccepted. No modifications to canonical `main`, original `etblink/math`, or draft PR #25.
