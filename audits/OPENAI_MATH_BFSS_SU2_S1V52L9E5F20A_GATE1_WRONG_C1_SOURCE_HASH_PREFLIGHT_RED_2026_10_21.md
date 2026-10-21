# S1V52L9E5F20A Gate #1 — C1 source-hash transcription mismatch, preflight red

**Disposition:** `F20A_GATE1_RED__NO_LEAN_COMPILATION__ZERO_OF_ONE_NEW_ROOT_ACCEPTED__S1V52_REMAINS_245`.

## Actual evidence

- [GitHub Actions run #39659403853](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39659403853), job `119428160270`, commit `846e0a2012424c3869101ac64eafbd7257b7511a`, red in `Strict F20A real original-source pins and Mathlib manifest`.
- Original upstream HEAD and toolchain manifest preflight began normally. The first failure was
```text
F20A_ORIGINAL_SOURCE_SHA_FAIL=SU2BFSSPhysicalDomainS1V52C1OriginalNativeGaugeQuaternionCoordinatesProbe
Process completed with exit code 1.
```
- The workflow incorrectly expected C1 Git blob `bbb6fd81e68787d236a9919c3d9b913db2038f53a`, while original qualified immutable C1 source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52C1OriginalNativeGaugeQuaternionCoordinatesProbe.lean` actually has Git blob `bbb6fd81e68787d236a9919c3a7675230e899818`. The incorrect expected SHA was introduced by workflow-author transcription, not by source drift.
- F20A mathematical source was not modified by the failed gate, Git blob `f76b71b1b47227bd75727b997064e381f016e913`. Its only prospective root is `FCP.BFSSS1V52L9E5F20A.originalNativeQuaternionCoefficients_continuous`, continuity of all four native SU2 real quaternion coefficient extraction functions.
- Independently refetched the other five strict source pins: F20A `f76b71b1b47227bd75727b997064e381f016e913`; F19A `5218ba3e5f831d0c991bbb0d4c1d296e7882fab8`; L7C7 `581dd3f565f4b32260470f51bf240deac057c1a8`; B1 `8a5558fa127893b6bbb971a8047df4840d74e760`; B2 `164add0b3a17b9d5417aa3595de841ad5eee33f4`. All five match Gate #1 workflow; only C1 pin is wrong.
- Lean and Mathlib restoration, F19A qualified cache restore, F20A compilation and axioms validator were skipped after source preflight red. No F20A object cache saved. One new theorem **not** accepted. The cumulative S1V52 root count remains **245**.

## Negative knowledge / controlled correction

Correct precisely one pinned source-hash constant to C1 Git blob `bbb6fd81e68787d236a9919c3a7675230e899818`; preserve all other source SHA checks and pinned upstream/Lean/Mathlib revisions, exact F19A cache, prospective F20A theorem statement, strict permitted-axiom validator, and workflow isolation. Use a new Gate #2 workflow file and distinct cache key; never rerun red Gate #1 unchanged. This failure says nothing against continuity of the original quaternion coefficient functions, nor does any future success establish continuity of the full Spin48-valued lift.

Canonical main, immutable upstream `etblink/math` and draft PR #25 untouched.
