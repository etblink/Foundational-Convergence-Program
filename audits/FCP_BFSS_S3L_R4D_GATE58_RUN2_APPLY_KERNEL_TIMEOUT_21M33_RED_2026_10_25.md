# BFSS S3L R4D — Gate58 Run2: source-exact `apply` still kernel-times out

**2026-10-25 PDT — independently verified RED. 0 new theorem roots accepted.** Primary [GitHub Actions run #40235523020](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40235523020), job `121296143265`, research commit `ca6ce5e784910568b0da2aebd6040890591b1349`. Workflow/job `completed/failure`.

## Evidence and precise runtime

- Run started `2026-10-25T21:26:45Z`, finished `21:48:18Z`: **21m 33s**. Setup, checkout, disk reclaim, pinned Lean/Mathlib restore and exact original math-source hashes passed.
- Original math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Direct exact Gate57 cache `bfss-fcp-s3l-r4c2-gate57-spatial-source-v1-adc7f124-lean4341-d13f23b-Linux-X64` unavailable; previously qualified Gate23 source cache restored. Original **126-module R4D import closure**, exactly 50 missing modules, 49 prior accepted ancestors freshly recompiled with `-DwarningAsError=true`, original per-declaration `#print axioms` and whitelist checks. No root double counted.
- Canonical original R4D source blob `1a56b2055ff4ed3c1a227bce3910e974876c5774`. Proof-only recovery blob `3798db5dc3e54b3e254b11736c1701aeaaae66da` passed whole-file exact proof-span parity check. It changed only the original line81 complex explicit invocation of `sourceThreeSum_weightedResponse_split c F P` to tactic `apply sourceThreeSum_weightedResponse_split`, leaving exact original theorem proposition and all source operator terms unchanged.
- Source reconstruction began near `2026-10-25T21:36:35Z`, R4D began `21:46:32Z` and took **100.222s** with exit 1. Important exact error:
```
SU2BFSSPhysicalDomainS3L5K2R4DNamedSourceAssemblyProbe.lean:39:8:
  error: (kernel) deterministic timeout
'FCP.BFSSSU2PhysicalDomainS3L5K2R4D.pairedOriginalCubicFixedColorResponse_decompose_named'
  does not depend on any axioms
```
- Run1 [#40233515110](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40233515110) explicit specialized lemma: R4D **115.622s**, recursion-depth and kernel timeout; Run2 `apply` removed the recursion-depth error but **not the kernel timeout**. The process budget was 180s; the 100-second failure was **not** a process timeout. The empty axiom report is **not** a proof certification because Lean compilation failed. No Gate58 child cache.

## What should change operationally

- Historical Gate51–57 proved the value of small named theorem interfaces, source-exact byte-verified proof-only changes, exact `.olean` ancestry, original-source statement preservation, and complete strict axiom audits. Avoid repeating a single unbenchmarked enormous proof instantiation after 49 source recompilations.
- Diagnose the remaining **kernel proof-term complexity** by testing multiple **structurally distinct** source-exact R4D proof constructions *within one proven ancestry compilation*; each candidate must share the same exact theorem proposition, original imported objects, and math pins, with a byte-exact approved proof-span diff.
- First diagnostic candidates: (A) rewrite the first equality using only `smul_add`, `Finset.sum_add_distrib` and a bounded finite-sum interchange instead of specializing the R4A split in one step; (B) use explicitly typed local abbreviations `c, F, P` and the qualified generic R4A identity in a separately typed step. Preserve exact diagnostics per candidate and test with bounded timeouts; no unsafe admits/axioms, no disabled linter.
- If a candidate genuinely passes `lake env lean -DwarningAsError=true`, **and** original `#print axioms` whitelist, original-statement/strict source parity, and `.olean` production, it can be qualified; otherwise **all failures remain diagnostic red**. Do not automatically multiply `maxRecDepth`, `maxHeartbeats` or process budget to cover a defective proof architecture.
- Investigate unavailable recent qualified caches separately. Every new run is expensive because Gate23 restores but Gate57/R4D child caches miss; unknown cause, never infer corruption or quota without evidence. Conservatively batch proof experiments after one ancestry rebuild.

The original R4D statement is **still open**; R4A, R4C1, and R4C2 are previously accepted, and cumulative Gates51–57 new roots remain **64**. This says nothing about full sixfold cubic covariance, spin group or spectrum. `etblink/math`, FCP canonical `main`, and draft PR #25 unchanged.
