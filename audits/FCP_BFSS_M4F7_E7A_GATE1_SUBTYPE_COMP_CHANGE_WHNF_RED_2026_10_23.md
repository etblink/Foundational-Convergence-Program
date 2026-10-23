# FCP M4F7 E7A Gate #1 — exact Q.comp invariantCore.subtype normalization whnf RED

**Date:** 2026-10-23 PDT. **Disposition:** `E7A_GATE1_QUALIFIED_S2_RESTORED__FIRST_CHANGE_WHNF_TIMEOUT__NO_AXIOM_CLEAN_THEOREM__307_PRINCIPAL_ROOTS_UNCHANGED`.

Original [GitHub Actions run #40002314997](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40002314997), job `120581294500`, `completed/failure`. Triggering exact workflow/source commit `f06487a6d956b6b150ef9c5091fd8807ebc17ab0`. Frozen source `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentChargeOutputTypedE7A.lean`, Git blob `e2943a993ea95011892bf0ba5f1916ae7db5dd88`. Original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; original immutable-source checks and pinned toolchain passed.

**Exact qualified S2 cache restored using identical successful save-path contract**:
```text
bfss-fcp-m4f1-typed-intermediate-s2-642ba305-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
All explicit original source `.olean` checks passed including independent `FCPIndependentChargeVectorL2`, invariant smooth core, true independent physical Hilbert submodule, and accepted typed M4F1 S2 covariance theorem. Therefore **not** a source dependency failure.

Fresh bounded `lake env lean -DwarningAsError=true` exited 1 after `13.05 s`, peak RSS `7042792 KB`; **first compiler error at E7A line 65**, before invoking S2's proof:
```lean
  change independentChargeVector color gamma theta f.val α ∈
    independentPhysicalSpace theta hCAR hHermitian
```
```text
error: (deterministic) timeout at `whnf`, maximum number of heartbeats (100000) has been reached
```
The `#print axioms` includes `sorryAx` due to this failed theorem; the gate correctly rejected the candidate. No cache was saved. Raw compiler/resource artifact [#12522952350](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40002314997/artifacts/12522952350), SHA256 `6fce63d61bb77db3924dbef4b7c2e0c53953cfcd8fb724f3d0fa0db868a056aa`.

**Interpretation:** The oversized source term is *specifically* `((independentChargeVector …).comp independentInvariantCore.subtype) f α` changing definitionally to `independentChargeVector … f.val α`. This fails even in a one-theorem source with no graph closure, ruling out the hypothesis that E2's graph product alone caused earlier E7 timeouts. The original standalone smooth output helper compiled in E7 Gates #2/#3 because its target did *not* contain `LinearMap.comp`.

**One controlled next step:** introduce a local typed `hSmooth` for the plain `independentChargeVector color gamma theta f.val α` from strict M4F1 S2, and rewrite the compact head **explicitly**, preferably via `simp only [LinearMap.comp_apply, Submodule.coeSubtype]` or the exact available subtype evaluation lemma, rather than `change` or unbounded simplification. Keep exact original mathematical theorem statement, CAR/source hypotheses and E7A source pins except the one proof block; test once with the same qualified S2 cache. If even explicit head rewriting reproduces normalization exhaustion, stop and find a separately accepted typed source map adapter rather than inflating heartbeat budgets.

The E7G abstract closure and E7B BFSS closed-operator candidates are staged but **not** qualified and must not trigger CI before typed E7A succeeds. Total principal roots **307**. No change to canonical `main`, original `etblink/math`, or draft PR #25.
