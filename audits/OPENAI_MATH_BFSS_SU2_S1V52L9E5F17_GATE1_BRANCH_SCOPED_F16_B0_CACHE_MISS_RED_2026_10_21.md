# S1V52L9E5F17 — Gate #1 RED: isolated-branch cache visibility failure, no mathematics compiled

**Verified:** `L9E5F17_GATE1_RED__UNREACHABLE_PARENT_BRANCH_CACHES__ZERO_OF_ONE_ROOT_ACCEPTED__238_CUMULATIVE_S1V52_ROOTS`.

## Exact evidence

- [GitHub Actions run #39605082896](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39605082896), job `119239082557`, checkout/workflow commit `13418956361559e9105f62123b6c47985906d644`, ended **FAILURE**.
- Original research source `SU2BFSSPhysicalDomainS1V52L9E5F17OriginalNativeFockUnscaledPairedThetaColorCovarianceProbe.lean`, exact Git blob `93940c487283e4ffa82c154fa934c9e9cd438baa`, passed preflight `expected=committed=filtered=raw` SHA equality. Pinned upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, also passed source preflight. Lean and Mathlib restore step completed successfully.
- Both cache restore steps reported `Cache not found for input keys`:
  1. `bfss-s1v52l9e5f16-original-native-fock-normalized-majorana-color-covariance-v1-adc7f124-lean4341-d13f23b-Linux-X64`
  2. `bfss-s1v52l9e5b0-original-fock-real-complex-scalar-v2-adc7f124-lean4341-d13f23b-Linux-X64`.
- The fail-closed dependency step stopped at `S1V52L9E5F17_QUALIFIED_L9E5F16_CACHE_MISSING` with exit code 1. **F17 was never compiled**, no new root axiom audit ran, and no accepted F17 cache was saved.
- Root cause: GitHub Actions cache visibility across branches. The experimental `research/openai-math-su2-s1v52-f17-theta-bridge-20261021` is a separate push branch from the cache-qualified `research/openai-math-su2-s1v52-global-lift-scoping-20261019`. Same cache key does not confer access to cache from another branch.

## Corrective direction

**Do not retry unchanged Gate #1**, raise heartbeat limits, alter the genuine original source, or interpret this run as a failure of normalization cancellation. Preserve its exact attempted proof unchanged and run Gate #2 on the already-qualified original research branch using the **same source blob** and a branch-scoped workflow-path-only trigger, with the qualified F16 and B0 caches there.

No F17 theorem is accepted as a result of this run. S1V52 accepted count remains 238. Do not touch `main`, upstream math, or draft PR #25.
