# S1V52L7B2 Gate #2 RED — final candidate source preflight, no Lean execution

**Disposition:** `L7B2_GATE2_RED__FAIL_CLOSED_SOURCE_PIN_LAST_TEST__ZERO_LEAN_ROOTS_COMPILED__GATE1_UNKNOWN_B3_NAME_CORRECTION_UNTESTED__CURRENT_S1V52_LEDGER_90`.

- [GitHub Actions run #39486445694](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39486445694), job `118847972725`, completed FAILURE on triggering checkout `ddb6bff017beb79376dd51aebe4258ae8058c2e7`.
- The runner fetched exactly `ddb6bff017beb79376dd51aebe4258ae8058c2e7`, confirmed in actual checkout logs.
- Original upstream source SHA, toolchain and Mathlib preflight reached the last shell statement, the test of candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L7B2NativeZYZTripleSpinProductProbe.lean`: `test "$(git hash-object "$r/<stem>.lean")" = 8f8ab0c0e5ab1db45e2a55af3d3d579a8553`. Bash exited with code 1 **before** the success echo and **before** disposable disk cleanup, Lean toolchain restoration, .olean cache restore, or theorem compilation.
- Read-only current GitHub contents API at the **exact triggering commit** independently returns source Git blob SHA `8f8ab0c0e5ab1db45e2a55af3d3d579a8553`, source size 5127 bytes, and the intended one-line `open FCP.BFSSS1V52B3` correction. GitHub workflow at same commit pins that SHA. The raw shell actual worktree hash was not printed, so DO NOT claim whether it differed from the committed blob due a filter, checkout or another cause.
- Hence Gate #2 is **infra/source preflight RED**, not a Lean red and not kernel evidence regarding the corrected B3 namespace source. The source signs and all five theorem statements are unchanged. No L7B2 roots accepted and no new cache; S1V52 ledger stays **90**.

## Deterministic diagnostic and repair

Add an explicit fail-closed candidate pin step printing (i) `git rev-parse HEAD:experiments/.../L7B2.lean` exact **committed Git tree blob** and (ii) `git hash-object experiments/.../L7B2.lean` worktree hash. Verify the committed Git tree blob equals pinned `8f8ab0...`, the file is nonempty, and `git diff --exit-code HEAD -- <file>` verifies a clean checkout. This is stronger provenance transparency, not elimination of source verification. Preserve remaining SHA, original math and axiom checks. Bump v3 cache key; only after preflight passes will strict Gate #3 test the candidate's five Lean roots.

Gate #1 separate red [#39485153441](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39485153441): genuine Lean unknown `sourceQuaternionNormSq` from not opening existing B3 namespace, followed by `sorryAx`. Do not conflate these distinct defects or count green preliminary lines from a red job.

No canonical `main`, upstream `etblink/math`, or PR #25 modification.
