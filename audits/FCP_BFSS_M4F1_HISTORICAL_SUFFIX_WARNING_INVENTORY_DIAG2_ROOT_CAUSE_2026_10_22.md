# FCP BFSS SU(2) — historical suffix warning inventory Diagnostic 1 #2 RED, actual M4F1 name resolution

**Local review date:** October 22, 2026 PDT; Actions finished October 23 UTC. **Disposition:** exploratory RED (not a strict acceptance gate), **zero new principal roots**, strict cumulative ledger **294**.

## Pinned original run

[GitHub Actions #39882478306](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39882478306), job `120182855683`, triggering commit `b6c4ebc3e98b752ef25887975acefb0214ad9970`, completed/failure. Exact `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; all 12 unchanged source candidates passed source-blob preflight. Accepted M4F5 parent cache and Gate #4 **qualified** G4K8C checkpoint both restored with cache hit and required original `.olean` objects checked.

**Compiler policy:** `-DwarningAsError=false` solely to inventory historical warnings. Per-module compiles, report lists and artifact logs from this run must **not** be used to certify new roots, even if the output lists only `propext`, `Classical.choice`, `Quot.sound`.

## Actual 11-module result and exhaustive observed historical warning inventory

Each historical module listed here compiled as ordinary Lean under the frozen source stack, emitted the expected axiom reports with only the three permitted axioms, and generated an importable exploratory `.olean` within the disposable run:

| Source module | Declared axiom reports | Source warnings |
|---|---:|---|
| G4K8D | 5 | 1 unused `IsSMulApply.smul_apply` simplifier argument, line 54 |
| G4K8E1 | 4 | 1 unused `IsSMulApply.smul_apply` simplifier argument, line 88 |
| G4K8E2 | 4 | 1 deprecated `ContinuousLinearMap.neg_apply`, line 72 |
| G4K8E3 | 4 | 0 |
| G4K9A | 2 | 0 |
| G4K9B | 6 | 0 |
| G4K9C | 5 | 0 |
| G4K9D | 4 | 0 |
| G4K10A | 5 | 0 |
| D3A | 2 | 1 deprecated `ContinuousLinearMap.smul_apply`, line 67 |
| D3B | 5 | 0 |

The 4 warnings are narrowly localized historical proof-script compatibility, not mathematical counterexamples. Source-current warning inventory obtained in **one run**, replacing sequential strict gates for each warning. The original theorem files are unchanged.

## Actual first source-specific mathematical candidate obstruction

The final source module `FCPIndependentInvariantCharge.lean` (original blob `d04d0fcd08a01e7797d4fffee8fcef9666641976`) failed at:
```
FCPIndependentInvariantCharge.lean:56:10: error(lean.unknownIdentifier): Unknown identifier `pairedGaugeData.invariantCore`
FCPIndependentInvariantCharge.lean:61:22: error(lean.unknownIdentifier): Unknown identifier `pairedGaugeData`
```

The failed partial `#print axioms` for `independentCharge_mem_invariantCore` included `sorryAx`, **so M4F1 remains unaccepted**. The exact existing gauge data definition is `FCP.BFSSSU2GaugeG4J.pairedGaugeData`; the original M4F1 candidate opens `FCP.BFSSSU2GaugeG1A` but **omits** opening `FCP.BFSSSU2GaugeG4J`, despite other accepted independent smooth-core modules explicitly opening both. Add the one missing `open FCP.BFSSSU2GaugeG4J` namespace to the unchanged mathematical proof rather than pretending the upstream definition changed.

## Source-exact next action and restrictions

Staged five separate, trackable, one-change recovery adapters, each compared against its exact unchanged original: `G4K8D` and `G4K8E1` remove only a provably unused simp argument; `G4K8E2` replaces deprecated `ContinuousLinearMap.neg_apply` with `neg_apply`; `D3A` replaces deprecated `ContinuousLinearMap.smul_apply` with `smul_apply`; `FCPIndependentInvariantCharge` opens the existing `FCP.BFSSSU2GaugeG4J` source namespace. **These adapters are only candidates until strictly validated**, and no source-original/historical accepted file is changed.

A single new strict acceptance gate may now reuse the *actual saved* G4K8C checkpoint, compile the adapted suffix/D3B import chain under `-DwarningAsError=true`, validate exact declaration/axiom reports, and only then compile M4F1. Do not pre-count a success or treat a source-warning inventory as a formal kernel-accepted root. Main, the original mathematical repository, and draft PR #25 remain unchanged.
