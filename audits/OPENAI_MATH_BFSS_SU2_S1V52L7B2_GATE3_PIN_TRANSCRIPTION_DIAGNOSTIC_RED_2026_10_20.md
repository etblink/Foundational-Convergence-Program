# S1V52L7B2 Gate #3 RED — source pin transcription defect conclusively identified

**Disposition:** `L7B2_GATE3_RED__GIT_TREE_FILTERED_RAW_MATCH__WORKFLOW_EXPECTED_SHA_MISTYPED__NO_LEAN_TEST__90_ROOTS_RETAINED`.

- [Gate #3 run #39487177801](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39487177801), job `118850502776`, completed FAIL at the initial immutable source SHA preflight.
- The added strict diagnostic prints the **exact** SHA triple: `committed=8f8ab0c0e5ab1db45e2a55af3d9c3d3d579a8553`, `filtered=8f8ab0c0e5ab1db45e2a55af3d9c3d3d579a8553`, `raw=8f8ab0c0e5ab1db45e2a55af3d9c3d3d579a8553`. Thus checkout, canonical committed source blob, worktree and Lean source bytes agree.
- The **mistyped workflow expected SHA** printed `expected=8f8ab0c0e5ab1db45e2a55af3d3d579a8553` (a 36-hex string, missing four digits `9c3d` after `...af3d`, rather than the required 40-hex source blob SHA). No checkout filter, GitHub data corruption or inconsistent source was present. Gate #2 [#39486445694](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39486445694) failed the identical typo at its uninstrumented last hash test. Prior Gate #2 audit had correctly called this an unresolved preflight SHA mismatch but **had not yet proven its cause**; this diagnostic closes that uncertainty.
- Neither Gate #2 nor #3 reached Lean, and neither accepted any new theorem. Gate #1 [#39485153441](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39485153441) was independently a real Lean namespace visibility error `sourceQuaternionNormSq`, fixed in the latest source by `open FCP.BFSSS1V52B3` without changing the five statements. Gate #3 says nothing yet about whether the corrected Lean candidate compiles; `sorryAx` remains disallowed.
- Keep the accepted S1V52 ledger **90**, original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, permitted axioms unchanged.

## Gate #4 scoped repair

Fetch source `SU2BFSSPhysicalDomainS1V52L7B2NativeZYZTripleSpinProductProbe.lean` at active HEAD and bind its returned blob SHA directly in the workflow's one expected pin, instead of retyping the 40-hex SHA. Preserve diagnostic committed/filtered/raw verification, all historical pins, cache restore and fail-closed axiom validator. Bump cache key to `v4`. This corrects a **workflow provenance transcription defect**, not the mathematical theorem. No new CI until the source hash and all checks match programmatically.

Governance: branch-only workflow and audit changes; canonical main, PR #25, original upstream unchanged.
