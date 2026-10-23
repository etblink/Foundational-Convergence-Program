# FCP BFSS M4F7 E3 Gate #2 — exact-diff validator shallow-history RED; mathematics not reached

**Date:** October 23, 2026 (PDT). **Disposition:** `E3_GATE2_SHALLOW_GIT_SHOW_DIFF_VALIDATOR_FAILURE__NO_LEAN_TEST__304_CUMULATIVE_UNCHANGED`.

[Actions run #39987680403](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39987680403), job `120531008983`, `completed/failure`. Exact frozen E3 candidate source `FCPM4F7IndependentLiteralRestrictedGraphBridgeE3.lean`, Git blob `bf8b726e5d33b8e40e2877c6ac7ea5a3d725dc5c` from source-only commit `40e2d4f38098ad8c3c126667bff757036daaeaa5`. Workflow/source commit `23ae2e26a26d0897b4ebd81ca33abb09ed113e6c`.

The original pins `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, pinned Mathlib, exact original and new source checks, and both **separate qualified E2 and C2 caches** passed. The new Gate #2 proof has **not been compiled**. First causal failed step: `Verify both exact parent cache closures and immutable literal bridge candidate`; Python attempted
```text
git show dab42a53cefcb04997077c2f472dc765f19e2278:
  experiments/openai-math-su2-physical-domain/FCPM4F7IndependentLiteralRestrictedGraphBridgeE3.lean
```
but the current `actions/checkout` is shallow and does not contain the older source/workflow commit. Original diagnostic:
```text
fatal: path 'experiments/.../FCPM4F7IndependentLiteralRestrictedGraphBridgeE3.lean'
exists on disk, but not in 'dab42a53cefcb04997077c2f472dc765f19e2278'
subprocess.CalledProcessError ... exit status 128
```
The strict Lean step and saved-cache step were **skipped**, and no new principal root qualifies. Do not treat this as a mathematical red, a C2 cache miss or an E3 theorem result. Logs preserved in artifact `bfss-m4f7-e3-literal-restricted-bridge-39987680403`, ID `12516422112`.

**One permitted diagnostic-wrapper correction:** No more historical checkout requirements. In the Gate #3 preflight, take the currently frozen source `src`; assert the new and old proof blocks occur in the correct multiplicity; replace the new block with the original **in memory**, hash its complete content with Git's `hash-object --stdin`, and require the exact original Gate #1 Git blob `98e43acd2a27d2d875ec3c8221a4dc81968985c5`. This establishes byte-for-byte unchanged mathematical statements and all other source text. Retain exact new candidate blob `bf8b726e5d33b8e40e2877c6ac7ea5a3d725dc5c`, parent cache closure checks and no-hole / strict axiom validation. No source code change and no new mathematical claim.

**Stop rule:** This Gate #2 is one wrapper failure; do not let repeated diagnostic-wrapper repairs become the project. If another wrapper gate fails before testing the theorem, stop this CI design and do a small isolated local/static preflight, rather than shipping additional speculative gates. All D1/A2/C5A negative evidence persists. Ledger remains **304**. Original source, canonical main, PR #25 unchanged.
