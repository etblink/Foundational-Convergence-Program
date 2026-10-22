# FCP BFSS SU(2) — M4F1 Strict Gate #1 RED: Missing compiled source D3B dependency

**2026-10-22 PDT. Classification:** CI/cache source-module qualification gap, **not** a Lean compiler or mathematical counterexample. **0/1 M4F1 roots**. Cumulative strict ledger **290**.

## Original evidence

- [GitHub Actions run #39847407712](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39847407712), job `120064214068`, workflow completed/failure, head `4fc197637542bc4de1b3466fd2ca812db386423c`.
- Source provenance passed; original etblink/math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` confirmed.
- Qualified M4E5 cache **restored** using exactly its saved path set under `bfss-fcp-m4e5-full-smooth-charge-gate5-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- The closure preflight stopped before any candidate Lean compilation with the exact diagnostic:
```text
M4E5_REQUIRED_OLEAN_MISSING=SU2BFSSPhysicalDomainD3BFullChargeGaugePreservationProbe
Process completed with exit code 1
```
- The M4F1 candidate `experiments/openai-math-su2-physical-domain/FCPIndependentInvariantCharge.lean` Git blob `d04d0fcd08a01e7797d4fffee8fcef9666641976` was **not typechecked** by Gate #1. No axiom report or qualified M4F1 cache was emitted.
- Workflow `.github/workflows/bfss-m4f1-invariant-charge-gate1.yml` restores source cache and demands unpresent D3B `.olean`. The source file `SU2BFSSPhysicalDomainD3BFullChargeGaugePreservationProbe.lean`, blob `1aedd8b251c8b04f02f9d71e35594a8cc482d79b`, is in the repository, but its source existence and theorem statement are **not evidence** of acceptance by this particular cache.
- Original GitHub artifact ID `12455807565` (SHA-256 `352dcc22d3c41befb5b646c7276ea9b5e3c110b15b9ebdcfef9bd83ca81a2743`) preserves the evidence.

## Negative knowledge and corrective plan

Never label source-level D3B `sourceOriginalCoreCharge_mem_invariantCore` as qualified until checking an independent strict Actions run with its original compiler log and qualified dependency closure. The file header itself says prospective/uncompiled until its gate. Verify D3A kinetic gauge contraction and G4K9D source charge prerequisite interfaces; stage D3B in a bounded, isolated explicit compiler gate with all needed pinned `.olean` dependencies, then reattempt M4F1 without modifying its mathematics.

Meanwhile, independent charge-column `L²` identification (M4F2) can advance directly from strictly accepted M4E5 without presupposing D3B. Prefer that unblocked step while investigating D3B's full dependency chain.

No `sorryAx`, original source modifications, main merge, PR #25 changes, or spectral claims. Cumulative root count **290**.
