# BFSS M4F7 E7B Gate #1 — exact parents green; actual E2 full-output theorem whnf declaration red

**Date:** 2026-10-23 PDT. **Disposition:** `E7B_GATE1_ALL_E6_E7A_E7G_CACHE_AND_SOURCE_PINS_PASS__FULL_E2_GRAPH_DECL_WHNF_TIMEOUT__0_NEW_ROOTS__307_CUMULATIVE`.

Original [Actions #40004515189](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40004515189), job `120588890126`, completed/failure. Triggering source/workflow commit `952352c8b07672ae778869ec271aacb6824463d0`; exact frozen source `FCPM4F7IndependentClosedChargePhysicalOutputsE7B.lean` Git blob `e14f6101e427461f737d03c63e3919edebc28243`. Original source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, pinned Lean `4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. All exact source-hash, restored toolchain and matched qualified import preflights passed.

**Three successful qualified cache restores with exact key+path contracts:**
```text
bfss-fcp-m4f7-e6-physical-closed-graph-input-b5ab912a-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
bfss-fcp-m4f7-e7a-independent-output-comp-7ae8775e-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64
bfss-fcp-m4f7-e7g-generic-closure-3b6fa55d-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
Required E2/E3/E6 and E7A/E7G `.olean` dependencies all existed. The source proof contains no concrete `rcases` graph witness elimination and no source transported operator definition. Yet fresh bounded `lake env lean -DwarningAsError=true` exited 1 after `18.77s`, RSS `7042516 KB`:
```text
FCPM4F7IndependentClosedChargePhysicalOutputsE7B.lean:48:0:
error: (deterministic) timeout at `whnf`, maximum number of heartbeats (100000) has been reached
```
The error points to the declaration of the **full source-specific E2 physical closed operator graph theorem**. Lean printed `does not depend on any axioms` only because the theorem declaration itself failed elaboration and could not be pretty-printed, reporting incorrect number of universe levels. This is **not an axiom-clean proof**. No qualified E7B `.olean` saved, zero accepted roots. Original compiler/resource log in [artifact #12523194062](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40004515189/artifacts/12523194062), digest sha256 `cc23152df8802d780d7a9f12d7cda1e7d5efcf66e61639af37817c1197511375`.

**New evidence:** E7A explicitly normalizes the previously expensive `LinearMap.comp independentInvariantCore.subtype` and E7G proves the generic closed graph theorem; both separately strictly compiled, so the remaining first reported blockage is the large concrete E2 graph-based *full theorem declaration*. Unlike earlier E7 failures, no missing source ancestry or uncompiled smooth covariance hypothesis remains.

**One controlled architecture:** first prove output invariance for the exactly literal gauge-restricted smooth-core graph's **ordinary closure** using E7A + E7G + E6. This avoids the real E2 `LinearPMap.graph` in the supporting theorem statement. Then compose that separately accepted output-closure certificate with the already accepted E3 exact equality to the actual E2 graph in a small final statement. No extra assumptions, no surrogate operator and no heartbeat/recursion limit inflation.

If the literal-closure theorem still whnf times out at declaration, stop and consider an abstract named graph-closure membership interface that can be applied without constructing giant BFSS expressions. Preserve 307 principal roots until a **new genuine E2 closed-output theorem** compiles strictly. Main, original math, and PR #25 unchanged.
