# FCP BFSS — Gate 51 Run 2 #1 rejected (J6 unused simp args)

**Date:** 2026-10-25. **Status:** VERIFIED RED — 0 newly accepted roots in this incomplete gate.

## Original immutable evidence

[GitHub Actions run #40213685737](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40213685737), job `121230135893`, research HEAD `7fd27b50b73b0e7f3e9c68861fab85747b0ed46d`. The source pin preflight passed for immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; pinned Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` were restored.

Exact Gate50 cache was unavailable again. Qualified Gate23 cache was found, restored, and its foundational .olean objects verified. The unchanged 116-module R4A import closure had **40 missing objects**: exactly 23 accepted Gate50 original-source predecessor modules followed by J2–J6 and 12 further source modules. The fail-closed walker recovered proof-only compatibility sources and freshly compiled/axiom-qualified all **23 prior** modules, including J1. These are requalification, NOT new theorem discoveries. The same run then freshly compiled and axiom-qualified:
- J2 complex gamma coefficient: 2 roots, success.
- J3 spinor double sum: 2 roots, success.
- J4 source fermion sum composition: 3 roots, success.
- J5 kinetic response split: 3 roots, success.

**First new causal failure:** J6 `SU2BFSSPhysicalDomainS3L5J6SourceOrbitalFixedIndexReindexProbe.lean` compiler exit 1, at lines 42 and 45:
```
42:12: error: This simp argument is unused:
  hkj
Hint: simp [hki, hij, LinearMap.comp_apply]
45:22: error: This simp argument is unused:
  LinearMap.comp_apply
Hint: simp [hkj, hki]
```
The original canonical J6 blob SHA is `d506f062532b4afb80928422a87465071fe27f97`. All **four J6 `#print axioms` declarations nonetheless reported exactly `propext`, `Classical.choice`, `Quot.sound`**. Because strict warnings-as-errors reported two errors, J6 was **not** accepted. Child cache save skipped.

## Classification and narrow successor action

**Proof-only Lean linter adaptation — NOT a demonstrated theorem counterexample.** The strict policy correctly forbids weakening `-DwarningAsError=true` or suppressing `linter.unusedSimpArgs`.

Recover J6 via an isolated SHA-pinned proof-only file changing **exactly two tactic lines**, at original 42 and 45:
```diff
-       simp [hkj, hki, hij, LinearMap.comp_apply]
+       simp [hki, hij, LinearMap.comp_apply]
...
-       simp [hkj, hki, LinearMap.comp_apply]
+       simp [hkj, hki]
```
The source walker must assert that the recovery file is **bytewise equal to the immutable original with precisely those two substitutions**. Preserve all declarations and every other line. Recompile J6 and predecessor chain with original source statements, fresh compiler verification, root axiom whitelist, no `sorryAx`; save no new cache unless the entire required batch passes.

No alteration to canonical FCP `main`, original `etblink/math`, or draft PR #25. **R4A, R4D, global Spin(9), and positive spectrum remain open.**
