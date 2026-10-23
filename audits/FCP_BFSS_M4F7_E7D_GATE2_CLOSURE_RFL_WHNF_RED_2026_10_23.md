# BFSS M4F7 E7D Gate #2 — graph aliases compile, final closure rfl whnf resource red

**Date:** 2026-10-23 PDT. **Disposition:** `E7D_GATE2_THREE_RAW_ALIAS_CERTIFICATES_LOCAL_AXIOM_CLEAN__CLOSURE_EQ_RFL_WHNF_TIMEOUT__NO_NEW_ACCEPTED_MODULE__307_PRINCIPAL`.

Original [GitHub Actions run #40012860290](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40012860290), job `120617372778`, completed/failure. Frozen source/workflow commit `08d8a014d843fdb5038f00cc35899fe710880dc5`. Mathematical source blob `8b449e4b3825ce85db127233e274ba55453c25c8`, differing from Gate #1 only by one required closing parenthesis.

All pinned original math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact source pins, frozen ancestor `.olean` checks and all three accepted E6/E7A/E7G cache restore steps passed. The original strictly parsed syntax is now valid; **first causal error moved to line 110, the final literal graph SET closure equality proof `rfl`**:
```text
FCPM4F7OpaqueLiteralGraphInterfaceE7D.lean:110:2:
error: (deterministic) timeout at `whnf`, maximum number of heartbeats (100000) has been reached
```
Fresh strict `lake env lean -DwarningAsError=true` exit 1; `E7D_RESOURCE_TIME 19.53 CPU 100% MAX_RSS_KB 7045320`. The two source-exact names `literalRestrictedCoreGraphRelation` and `literalRestrictedClosedGraphSet`, together with the exact raw `literalRestrictedCoreGraphRelation_eq` **each output axiom reports containing only** `{propext, Classical.choice, Quot.sound}`; the final closure theorem had `sorryAx` because its `rfl` proof timed out. No reusable E7D cache saved. No root counted. Original compiler/resource [artifact #12526998170](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40012860290/artifacts/12526998170), sha256 `754443e538fba826226dd3554b8df491b420ff4d86ac65ee33cc015c11db3652`.

**Scientific/proof-engineering interpretation:** the exact unclosed graph source identity is now elaborated and kernel clean, but forcing definitional equality of the giant closure expression again triggers `whnf`. The failure is about proof transparency/reduction, not a counterexample, source assumption mismatch, unavailable dependency or runtime artifact.

**One justified bounded correction:** in Gate #3, replace only the final closure equality's `rfl` with explicit unfolding of the small named `literalRestrictedClosedGraphSet` alias, followed by a typed `congrArg (fun S : Submodule ℂ (...) => closure (S : Set (...)))` applied to the earlier **already compiled** `literalRestrictedCoreGraphRelation_eq`. This rewrites an equality of submodules under closure instead of asking kernel elaboration to rediscover the giant BFSS definitional equality. Do not increase heartbeats, alter original charge definitions, weaken hypotheses, modify graph/closure, introduce an axiom, or retry an unchanged proof.

E7E remains staged but uncompiled until all four E7D declarations strict-pass and an exact E7D reusable `.olean` cache is saved. After one targeted Gate #3, if closure equality still fails at concrete BFSS specialization, stop this branch and preserve the negative result rather than launch indefinite CI iterations. Canonical main/original math/PR #25 unchanged. Cumulative principal roots **307**.
