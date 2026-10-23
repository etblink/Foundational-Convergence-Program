# FCP BFSS — C5A Gate #3: actual Function.prod constructor structural proof

**Local research date:** October 23, 2026. **Status:** Gate #3 in progress at last check, not accepted. **Principal BFSS strict tally: 302.**

## Independently verified Gate #2 genuine red

[Actions #39922791084](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39922791084), job `120311794261`, completed/failure. Independently inspected original job steps and fresh Lean compiler output. Frozen original BFSS source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, all original qualified A1–V1 import/cache checks, source equality and no-hole preflights passed.

The one candidate `FCPM4F7IndependentRawGraphRangeWitnessC5AStructural.lean`, Git blob `d5fb24f20b0143ff5614697cfff7ad89177f10b1`, faithfully retained C5A original theorem proposition, original range witness `w` and accepted A1 unrestricted range alias rewrite. It replaced failed Gate #1 `exact ⟨(w : _), rfl⟩` with:
```lean
refine ⟨(w : _), ?_⟩
simp only [LinearMap.prod_apply, LinearMap.comp_apply]
```
The first and second Lean errors were:
```text
...lean:51:52: error: unsolved goals
⊢ Function.prod ⇑independentCoreToL2 ⇑(independentChargeVector color gamma theta) ↑w =
  Function.prod
    ⇑(independentCoreToL2 ∘ₗ (independentInvariantCore theta hCAR hHermitian).subtype)
    ⇑(independentChargeVector color gamma theta ∘ₗ
      (independentInvariantCore theta hCAR hHermitian).subtype) w

...lean:57:35: error: This simp argument is unused:
  LinearMap.comp_apply
```
Fresh Lean 11.75s, max RSS 6993424 KB. Axiom report contains `sorryAx`; no C5A cache. This is not the previous Gate #1 recursion-depth error. Exact forensic audit `audits/FCP_BFSS_M4F7_C5A_STRUCTURAL_GATE2_FUNCTION_PROD_UNSIMPLIFIED_RED_2026_10_23.md`, commit `ced28be1e4138252b0580e3e6d0fc98b62a560f1`.

### Mathematical diagnosis, without superficial retry

The actual residual expression is **`Function.prod`**, not `LinearMap.prod`. The previous simplifier never reached the component functions, leaving the linear-comp lemma unused. The pinned Mathlib `Function.prod_apply` theorem precisely evaluates that outer constructor as a pair **without unfolding either concrete BFSS charge map**. It is thus logically appropriate to replace the *wrong outer constructor law* rather than escalate recursion/heartbeat limits.

## One exact new source and frozen CI gate

Source `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentRawGraphRangeWitnessC5AFunctionProd.lean`, Git blob `3c516ce434ccf5da8d433a6e6133287590a115c3`, commit `0a2e494d4753bb6edad273ac8fc0e0c38ef78d5e`.

The original Lean theorem type and **entire proof except one line are byte-identical** to Gate #2. Exactly:
```diff
-  simp only [LinearMap.prod_apply, LinearMap.comp_apply]
+  simp only [Function.prod_apply, LinearMap.comp_apply]
```
No change to actual `color`, `gamma`, `theta`, true independent CAR/Hermitian, `independentInvariantCore`, raw graph, A1 equality, witnesses or original independent mathematical statements. No large C2 Set equality or A2 closure-Set equality; no new axioms, recursion/heartbeats increases, or hidden `sorry`.

Path-only workflow `.github/workflows/bfss-m4f7-independent-raw-range-c5a-function-prod-strict-gate3.yml`, [commit `b5816d0bba8131e7bf24c5c1c0d13fe9c67aef27`](https://github.com/etblink/Foundational-Convergence-Program/commit/b5816d0bba8131e7bf24c5c1c0d13fe9c67aef27), [Actions Gate #3 #39924000467](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39924000467), initially in progress.

Source preflight compares old/new Git blob hashes and true theorem proposition byte-identical, all proof bytes except one specific simp-rule edit identical, original frozen BFSS math and Lean/Mathlib pins, accepted parent cached `.olean` closure and no executable holes. Fresh `lake env lean -DwarningAsError=true` with 105s cutoff, exact named single new theorem axiom report with only `propext`, `Classical.choice`, `Quot.sound`, no source warning/error or `sorryAx`, real `.olean`, full workflow success and unique cache save:
```text
bfss-fcp-m4f7-independent-raw-range-c5a-function-prod-3c516ce4-gate3-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
Complete compiler/resource logs uploaded on all outcomes. Static source, toolchain, workflow/run-block indentation, reporting, output file and cache-key checks passed before launch.

**Strict stop rule:** This test specifically addresses the **newly diagnosed outer-function constructor**. If Lean still cannot close the witness equality without expanding the real BFSS charge, stop direct C5A tactic variants; the next effort should qualify a small opaque-map graph equality interface instead. A green Gate #3 would qualify exactly **one supporting raw graph inclusion**, not increase the 302 principal roots. A subsequent separate **named A3 closure inclusion** still needs strict proof, then B4 vertical and the true independent closed charge `LinearPMap` operator.

Canonical `main`, draft unmerged PR #25, frozen original mathematics and other accepted result/caches untouched. Negative knowledge is retained.
