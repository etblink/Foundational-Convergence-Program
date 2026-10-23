# FCP BFSS M4F7 E7H — Attempt #2 strict Lean unused section-variable declaration red

**Date:** October 23, 2026 PDT.  
**Disposition:** `E7H_GATE1_ATTEMPT2_PINNED_TOOLCHAIN_AND_E7G_RESTORED__THREE_SOURCE_DECLARATIONS_AXIOM_CLEAN__LEAN_UNUSED_SECTION_VARS_ERROR__ZERO_QUALIFIED_E7H_OLEAN__307_PRINCIPAL_UNCHANGED`.

## Original immutable workflow and compiler evidence

[Original workflow run #40016734659, attempt #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40016734659/attempts/2), job `120647660717`, `completed/failure`; original trigger commit `be998fb2d6abcf66493ef0ce3b03a06a3fa14c2b`. Frozen E7H source `experiments/openai-math-su2-physical-domain/FCPM4F7GenericOpaqueOutputConstraintE7H.lean` original Git blob `729f9abb6f3203b61b8cce08ed953dd5dcf0ebd5`; pinned source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

**Attempt #1** [same run](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40016734659/attempts/1) timed out in pinned `lake exe cache get` / Mathlib environment bootstrap with exit 124 before E7G restore or fresh Lean; its own [infrastructure audit](./FCP_BFSS_M4F7_E7H_GATE1_MATHLIB_BOOTSTRAP_TIMEOUT_RED_2026_10_23.md) is retained unchanged.

**Attempt #2** successfully passed immutable mathematical source checkout and original source identity checks, restored pinned Lean/Mathlib, and **restored the exact accepted E7G qualified parent cache**:
```text
bfss-fcp-m4f7-e7g-generic-closure-3b6fa55d-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
Fresh bounded `lake env lean -DwarningAsError=true` executed, resource `E7H_RESOURCE_TIME 11.36 CPU 91% MAX_RSS_KB 6877156`, but exited 1 with the single first causal diagnostic:
```text
FCPM4F7GenericOpaqueOutputConstraintE7H.lean:34:0:
error: automatically included section variable(s) unused in theorem
  FCP.M4F7GenericOpaqueOutputConstraintE7H.mem_allOutputConstraint_iff:
  [AddCommGroup X]
  [Module ℂ X]
  [TopologicalSpace X]
  [TopologicalSpace Y]
```
Lean's compiler itself recommends explicitly omitting the four variables in that theorem, rather than globally disabling the linter. All **three** new `#print axioms` outputs (named abstract output predicate, iff, and exact opaque product-closure graph inclusion) included only `{propext, Classical.choice, Quot.sound}`; however **the module failed strict compilation and produced no qualified cache**, and none is counted as formally accepted from this red gate. The compiler failure concerns section-variable elaboration only; no missing source theorem or mathematical counterexample is demonstrated.

Original complete job logs and diagnostic artifact: [artifact #12530957566](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40016734659/artifacts/12530957566), digest `sha256:730a5b8e7f44a111575fd816d3513e26625f55879cfed8febde8c6c52e66426e`.

## Controlled correction and strict adjudication mandate

Insert precisely `omit [AddCommGroup X] [Module ℂ X] [TopologicalSpace X] [TopologicalSpace Y] in` before the `mem_allOutputConstraint_iff` declaration, as recommended by Lean. Preserve the actual theorem statement, `Iff.rfl` proof, all axioms/assumptions elsewhere, separate generic graph lemma, source pins, and bound `maxHeartbeats 100000`. Do not suppress the linter globally or weaken physical semantics. Use an independent *Gate #2* with new immutable blob pin, original qualified E7G cache path contract, fresh compilation of all three declarations with exactly permitted axioms, and cache save only after entire strict success.

**E7I** original run [#40016872247](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40016872247) was accepted with 2/2 strict declarations and saved `bfss-fcp-m4f7-e7i-sixteen-output-predicate-054e7e18-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`; this does not cure E7H's own strict failure, and is a supporting certificate only. Keep E7J CI withheld until E7H actually qualifies. Principal roots **307**. Canonical main, original math and PR #25 untouched.
