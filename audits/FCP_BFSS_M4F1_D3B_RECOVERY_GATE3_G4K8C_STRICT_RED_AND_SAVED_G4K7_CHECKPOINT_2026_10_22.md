# FCP BFSS M4F1 historical D3B recovery — Gate #3 verified causal red and qualified checkpoint

**Date:** 2026-10-22 (America/Los_Angeles); run completed 2026-10-23 UTC. **Disposition:** RED, zero new principal theorem roots, cumulative strict principal-root ledger **294**.

## Immutable evidence and actual stages

- Source-pinned GitHub Actions [run #39879847794](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39879847794), job `120174315341`; `completed/failure`; triggering research commit `4ab82645d173abd53d373b0043a972e66765806f`.
- Exact frozen mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Candidate/historical proof blobs, G4K7 adapter blob `994e89ee88bc9566232c7a85001d878d5aaf2bff`, and G4K8A adapter blob `cf0736c8012e2a9b792c6cceee41b7f7911cc180` all passed fail-closed source and exact single-diff checks.
- M4F5 accepted parent cache restored and qualified compiled dependency closure checked. Existing original upstream prerequisite checkpoint restored; no recreation needed. G4K1–G4K7 **eight source modules** compiled again under `-DwarningAsError=true`, and every exact source `#print axioms` report passed strict allowlist validation.
- **Decisive reusable achievement:** the workflow **actually saved** qualified G4K7 checkpoint `bfss-fcp-m4f1-qualified-g4k7-994e89ee-gate3-v1-adc7f124-lean4341-d13f23b-Linux-X64` after those strict passes. Reuse that exact key with its exact original `path:` cache save specification and correct branch ancestry; do not redo early historical modules by reflex.
- G4K8A then strictly passed all 6 axiom-reported declarations using tracked exact `PiLp.norm_single` compatibility adapter. G4K8B strictly passed all 5. Neither was saved as its own checkpoint in Gate #3.
- G4K8C source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K8CZeroParameterChargeProbe.lean`, blob `50168eda495f5c59cc2db9d14dce7bfee7e839e7`, failed at its first compiler stage. Later G4K8D–G4K9D, G4K10A, D3A, D3B, and prospective M4F1 were NOT compiled, and the full-G4/final caches were NOT saved. The source candidate has not been modified.

## Earliest causal diagnostic

The original job log reports G4K8C line 83:

```
SU2BFSSG4K8CZeroParameterChargeProbe.lean:83:32:
error: `ContinuousLinearMap.smul_apply` has been deprecated: Use `smul_apply` instead

SU2BFSSG4K8CZeroParameterChargeProbe.lean:83:8:
error: This simp argument is unused:
  IsSMulApply.smul_apply

SU2BFSSG4K8CZeroParameterChargeProbe.lean:83:32:
error: This simp argument is unused:
  ContinuousLinearMap.smul_apply
```

The source proof says `simp [IsSMulApply.smul_apply, ContinuousLinearMap.smul_apply]` after rewriting the actual `pairedAlgebraData.deformedRealField_polarized` and applying `ContinuousLinearMap.ext` at zero interaction/mass. The proof is still about the original zero-parameter field, not a surrogate. These diagnostics are **deprecated/unused simp arguments under warnings-as-errors**, not a counterexample to the kinetic/free-limit mathematics. The candidate was not successfully compiled, and subsequent printed axiom reports, if any, would not override a failing compiler.

## Corrective decision, scoped to exact source and history

One **candidate-only** recovery adapter is justified by the actual Lean compiler hints: replace the unique line `simp [IsSMulApply.smul_apply, ContinuousLinearMap.smul_apply]` with `simp`. This is a *testable hypothesis* (the simplifier may or may not discharge the same goal), NOT a proved equivalent tactic. Track it as a separate versioned recovery file, compare the exact full UTF-8 source against the unchanged historical original except for that line, and pin both blob SHAs in the next workflow.

Reuse Gate #3's **actual qualified G4K7 checkpoint** rather than recompiling 8 early modules; compile K8A and K8B with their strictly audited adapters, then attempt K8C in a single new bounded, source-exact run. Add a new qualified checkpoint *after* K8C succeeds so later historical source deprecation errors don't repeat K8A/B/C. Do not proactively change K8D or K8E1 simply because they also mention `IsSMulApply.smul_apply`: their simplification needs are not yet compiler-diagnosed.

Preserve `-DwarningAsError=true` and exact axiom checks for this strict recovery qualification gate, rather than masking the warnings. Source-original physical charge invariance and independent physical-domain equivalence remain unproved in the current import-closure chain. **Cumulative principal theorem roots 294.**
