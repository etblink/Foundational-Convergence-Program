# FCP BFSS — M4F7 C5A Gate #3 source-exact Function.prod tactic fails: stop C5A tactic family

**Independent verification:** October 23, 2026 PDT. **Disposition:** `C5A_GATE3_ALL_SOURCES_AND_CACHES_PASS__LEAN_FUNCTION_PROD_SIMP_NO_PROGRESS__NO_THEOREM__NO_CACHE__STOP_C5A_TACTIC_VARIANTS__PRINCIPAL_302_UNCHANGED`.

## 1. Original Actions and compiler evidence

[Strict C5A Function Prod Gate #3 Actions run #39924000467](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39924000467), job `120315817821`, workflow/head commit `b5816d0bba8131e7bf24c5c1c0d13fe9c67aef27`, verified completed/failure against original complete Actions job and compiler output.

- Original BFSS source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, frozen source blobs and no-hole preflight all passed.
- Qualified A1 through C4/V1 and original source imported `.olean` dependency closure passed.
- Frozen candidate `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentRawGraphRangeWitnessC5AFunctionProd.lean`, Git blob `3c516ce434ccf5da8d433a6e6133287590a115c3`. It preserves the exact original true independent CAR/Hermitian hypotheses, source `color, gamma, theta`, theorem statement, range witness extraction and A1 alias rewrite. Only last proof line differs from Gate #2:
```diff
-  simp only [LinearMap.prod_apply, LinearMap.comp_apply]
+  simp only [Function.prod_apply, LinearMap.comp_apply]
```

The original first and only Lean error:
```text
FCPM4F7IndependentRawGraphRangeWitnessC5AFunctionProd.lean:58:2:
error: `simp` made no progress
```
The theorem axiom report contained `sorryAx`, so not accepted. Fresh compiler resource `DIAG_RESOURCE_TIME 9.97 CPU 97% MAX_RSS_KB 6990256`; no qualified C5A `.olean` cache saved. The job's artifact upload saved the original compiler/resource logs independently of the failure. Principal strict accepted ledger **302**, zero increment.

**Evidence limitation:** Gate #3's compiler log did not print the exact residual goal at the failing `simp`. Accordingly, **do not** claim Gate #3 independently established that the charge-map equality is false, or even that it necessarily triggers another deep BFSS unfolding. What is observed is strictly that those two particular simp rules did not make progress on the proof state.

## 2. Three actual C5A strict failures, no retroactive green

1. [C5A Gate #1 #39921615306](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39921615306): exact A1 alias rewrite and restricted range witness extracted; `exact ⟨(w : _), rfl⟩` at line 55 reached maximum recursion depth. Zero accepted.
2. [C5A structural Gate #2 #39922791084](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39922791084): `simp only [LinearMap.prod_apply, LinearMap.comp_apply]` left a printed `Function.prod` equality unresolved, with `LinearMap.comp_apply` flagged unused. Zero accepted.
3. [C5A Function Prod Gate #3 #39924000467](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39924000467): `simp only [Function.prod_apply, LinearMap.comp_apply]` now reports `simp made no progress`, without a printed residual goal. Zero accepted.

Distinct diagnostics must remain distinct. Earlier C5 gate #1 `whnf` hit 600k heartbeat normalizing whole concrete generic closure lemma specialization. B5 Gate #3 failed normalizing concrete C2 full Set equality. These are not mathematical counterexamples, but collectively establish repeated costly/elaboration-unstable **large independent graph specialization boundaries**.

## 3. Enforced Project Lead STOP and next architecture

**STOP**: Further C5A `rfl`, `exact`, `simpa`, `simp`, `change` variants on the *same literal concrete witness equality*, or raising `maxRecDepth/maxHeartbeats` to force that family, are not authorized without a new independently grounded proof interface. Do not automatically launch Gate #4. Accepted generic restricted-product range and closure inclusion lemmas, A1 true unrestricted range alias, A3 genuine independent J-free named restricted closed relation, V1 and B4 vertical theorems remain valid and qualified. None authorizes treating C5A as accepted.

Next target is not a cosmetic repair: prepare a **small, explicitly named opaque product-map interface** with type-stable maps and a separately kernel-verified *naturality of product application under subtype inclusion* lemma. Control Lean elaboration by first proving the theorem with genuinely abstract `a,b,S`; check exactly which equalities require definitional unfolding when specializing original independent `independentCoreToL2`, `independentChargeVector`, `independentInvariantCore`. The previously accepted generic range inclusion itself already establishes abstract mathematics, so **do not count a duplicate generic helper as new substantive progress**. A new gate is warranted only if it tests a genuinely new source-exact adapter/proposition, with no missing source-identification assumption and no secret source operator transport replacing the independent definition.

Alternative meaningful direction: analyze whether the already accepted V1/qualified C3–C4 can provide native-submodule **vertical uniqueness for A3** directly through a separately named, structurally typed membership map instead of requiring the unrestricted raw graph inclusion. Which route to choose requires re-inspecting the accepted source theorem *types* and exact parent aliases, not blindly trying many CI variants.

The eventual target remains a real **J-free, independent, restricted physical-input closed sixteen-charge `LinearPMap`** with exactly verified graph and closedness. Later physical Hilbert-domain density, output physical membership, source/independent operator-domain and Hamiltonian equivalence, spectral comparisons and BFSS mass gap are logically separate obligations.

Frozen original BFSS math, canonical `main`, unmerged PR #25 and accepted **302 principal roots** unchanged. Truth and negative knowledge over superficial CI colors.
