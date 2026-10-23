# FCP BFSS SU(2) — M4F7 E5 Gate #1 E4 cache-version mismatch, pre-Lean RED

**Date:** October 23, 2026 (PDT).  
**Disposition:** `E5_GATE1_E4_SAVE_RESTORE_PATH_VERSION_MISMATCH__D1_AND_E5_UNTESTED__306_CUMULATIVE`.

## Immutable original evidence

[GitHub Actions run #39993718284](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39993718284), job `120551701058`, `completed/failure`. Original exact workflow/source commit `105355434d8c121f7ce85dfdd21e886b0f968512`. Actual E5 theorem source `experiments/openai-math-su2-physical-domain/FCPM4F7NamedSourcePhysicalGraphTransportE5.lean`, **unchanged immutable blob `83c27984274d4fe0590fcaefbf44908683af086d`**. Original historically accepted D1 source blob `c601d5888e24d0a9bc8f62f2bff368fc29299b5d`. Qualified E4 source `75f06cc35fa60166b0f29e10b08ca37c8780bc1a`.

Original math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Frozen source provenance and Mathlib restoration passed. First causal red was E4 cache lookup:
```text
Cache not found for input keys:
bfss-fcp-m4f7-e4-physical-closed-graph-transport-75f06cc3-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64
M4F7_E5_QUALIFIED_E4_CACHE_MISSING
```
Both D1 and E5 fresh Lean compile steps were **skipped**. No `sorryAx` theorem verdict; no qualified E5 root. Uploaded original diagnostic artifact `bfss-m4f7-e5-named-original-source-graph-39993718284`, ID `12518872768`, sha256 `bfe7b10041f589f1c697244f2c2511380b9df8380834ca824889c26b4eaf4e4e`.

## Exact cause independently reconstructed

The successful E4 Gate #2 [run #39991737922](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39991737922) **did save** the qualified E4 cache under the key above. The new E5 Gate #1 uses the same key and same branch, **but GitHub Actions cache version also incorporates the complete path list**. Inspection of both exact workflows shows E4's saved list has 24 entries and E5's restore list had **18 entries**.

The E5 restore omitted six separately stated saved paths (although it retained the broad `FCPIndependent*.olean` glob):
```text
FCPIndependentFullSmoothCharge.olean
FCPIndependentChargeVectorL2.olean
FCPIndependentFullCoreGraph.olean
FCPIndependentFullCoreGraphImage.olean
FCPIndependentGraphTransportHomeomorph.olean
FCPIndependentFullCoreGraphClosure.olean
```
All share original path prefix `upstream-math/lean/.lake/build/lib/lean/`. This omission changes the cache-version hash and **makes an otherwise exact key a miss**. This is a path-contract failure, not E4 theorem invalidation, expired acceptance, D1 ancestor absence, or an E5 mathematical refutation.

## One controlled correction and hard boundary

E5 Gate #2 must copy the **entire 24-entry successful E4 save path list in the exact order** into its restore step; retain its exact cache key, D1 source pin, E5 candidate source pin and the strict five-D1/one-E5 axiom validators. Do not alter the mathematical source. This moves the run beyond the cache identity boundary.

**Unknown and not yet assumed:** whether restored E4 archive actually contains the two old original D1 ancestors `SU2BFSSG4K9DSourcePotentialMultiplierProbe.olean` and `SU2BFSSG4K10ASourceClosedJointChargeGraphProbe.olean`. The existing fail-closed ancestor check will report any such missing import after the E4 cache restores. Never assert present-branch D1 recompilation, E5 operator equality, or E5 cache acceptance before those compile.

**Principal ledger remains 306.** Earlier Gate #1 failures and other negative knowledge preserved. No `main`, original `etblink/math`, or draft PR #25 mutation. Seek mathematical truth, not CI color.
