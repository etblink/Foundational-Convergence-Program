# FCP BFSS — M4F7 C5A Gate #2 structural product-map application: strictly controlled launch

**Date:** October 23, 2026 PDT. **Status:** one isolated C5A Gate #2 started, result pending. **Accepted principal roots remain 302.**

## Original Gate #1 real compiler error

[Actions #39921615306](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39921615306), job `120307939817` completed/failure and was independently checked against the entire original compiler log. Immutable original BFSS `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1/Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, qualified original source/A1 ancestor caches, source checks and actual range witness extraction all passed. Exactly one Lean error:
```text
FCPM4F7IndependentRawGraphRangeWitnessC5A.lean:55:18:
  error: maximum recursion depth has been reached
```
It occurred at `exact ⟨(w : _), rfl⟩` after successful accepted A1 submodule alias rewrite. The `rfl` engine was forced to compare composed actual independent BFSS charge-map product values with their unrestricted product form using whole-definitional reduction. The attempted C5A theorem's axiom report contained `sorryAx`; no qualified cache; 18.61s max RSS 7108712 KB; principal ledger 302 unchanged. Forensic audit `audits/FCP_BFSS_M4F7_C5A_GATE1_RAW_WITNESS_RFL_RECURSION_RED_2026_10_23.md`, commit `b14b2bd4898c50a0dd874381faf393d95d1492de`.

## One source-justified, different proof of exactly the same theorem

Original source `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentRawGraphRangeWitnessC5A.lean` = immutable Git blob `0aa2c2481e56673d2ba8cc104d85481d44c30784`. One candidate `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentRawGraphRangeWitnessC5AStructural.lean` = immutable Git blob `d5fb24f20b0143ff5614697cfff7ad89177f10b1`, [commit `313149d823726ddfb076c145424e101299904b0e`](https://github.com/etblink/Foundational-Convergence-Program/commit/313149d823726ddfb076c145424e101299904b0e).

**The entire Lean theorem proposition, actual independent CAR/Hermitian, color/gamma/theta, raw graph maps, `intro p hp`, `rcases hp with ⟨w, rfl⟩`, and the accepted A1 range alias rewrite are byte-identical.** Only the final tactic differs:

```diff
-  exact ⟨(w : _), rfl⟩
+  refine ⟨(w : _), ?_⟩
+  simp only [LinearMap.prod_apply, LinearMap.comp_apply]
```

This is not a replay of the C2 or A2 concrete Set equalities, nor raising Lean's recursion limits. It directs the checker to simplify **only the external linear product and composition application constructors**, leaving the actual huge BFSS `independentChargeVector`, spin/color/gauge objects opaque rather than evaluating them. The candidate still could fail: do not infer validity before fresh Lean and allowed-axiom reports.

## Strict single-gate evidence and stop rule

Path-self-triggered workflow `.github/workflows/bfss-m4f7-independent-raw-range-c5a-structural-strict-gate2.yml`, commit `a9a3d44db8f3f95758d0326618774d5d86c3df33`, [Actions #39922791084](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39922791084), in progress at initial query.

Retains exact pinned original math and Lean/Mathlib, qualified A1–V1 imported caches, new and old candidate immutable Git blob pins, original true CAR hypotheses, exact theorem names, no executable holes or maxRecDepth override. Additional source preflight asserts the theorem proposition unchanged and all preceding proof lines identical, and checks the **one exact structural transformation** above. Fresh `lake env lean -DwarningAsError=true` with 105s compiler bound; verifies one exact new theorem `FCP.M4F7IndependentRawGraphRangeWitnessC5A.independentRestrictedRawGraph_le_fullRawGraph` prints only `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`, errors or unexpected source warnings; `.olean` present, and new qualified cache saved **only on full success**:
```
bfss-fcp-m4f7-independent-raw-range-c5a-structural-d5fb24f2-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
Compiler and resource diagnostics uploaded on all results. The cache key is unique; source compilation stem and validation match the new candidate. Static run-block/cache YAML indentation and self-path triggers passed.

**On red:** inspect first actual compiler error and stop C5A rfl/simp/changing-definitional-equality permutations rather than cycling. On green: this is **one supporting raw graph inclusion**, principal ledger still 302; then test native submodule closure monotonicity separately, never automatic physical graph closed operator acceptance.

Open mathematical boundaries remain genuine independent closed `LinearPMap`, physical Hilbert space domain density, sixteen output physical memberships, original source physical operator/closed-domain/Hamiltonian equivalence, spectral comparison and BFSS mass gap. Canonical `main`, unmerged PR #25 and frozen original BFSS math unchanged.
