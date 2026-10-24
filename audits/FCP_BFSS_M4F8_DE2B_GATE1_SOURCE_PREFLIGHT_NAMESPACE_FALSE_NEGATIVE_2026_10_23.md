# FCP BFSS M4F8 DE2B Gate #1 — verified source-preflight false negative

**Disposition:** `M4F8_DE2B_GATE1_RED__VALIDATOR_NAMESPACE_SUBSTRING_FALSE_NEGATIVE__LEAN_NOT_REACHED__DE2_CACHE_HIT__NO_ACCEPTED_THEOREM`.

Original [run #40050746344](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40050746344), job `120742632275`, workflow commit `9f93831159514beed0276607fa5df8c98e93df23`: `completed/failure`. Pinned original source ancestry and toolchain restored, including **exact DE2 qualified cache hit** `bfss-fcp-m4f8-de2-physical-graph-4321921e-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`. DE2B second source preflight failed at Python `<stdin>:16` with `AssertionError` before the fresh Lean compile.

Cause independently confirmed against original candidate blob `a33bab198bd67bb57038dcc1b176fd9abf5f628b`: preflight demanded `(independentActualE2FullPhysicalGraphRebaseDE2.independentActualE2FullPhysicalChargeColumn` but source actually contains the full qualified name `(FCP.M4F8IndependentActualE2FullPhysicalGraphRebaseDE2.independentActualE2FullPhysicalChargeColumn`. It was a **static validator string mismatch**, not a mathematical failure. Corrected Gate #2 launched with unchanged candidate and reached Lean, where separate real proof elaboration errors were diagnosed in its dedicated Gate #2 audit.

At this gate, **0/3 declarations accepted**, no new qualified cache, and cumulative BFSS principal roots remain **308**. Preserve both red stages separately; do not misattribute Gate #1 to Lean and do not count Gate #2's closedness compiler report as a full three-theorem gate acceptance.
