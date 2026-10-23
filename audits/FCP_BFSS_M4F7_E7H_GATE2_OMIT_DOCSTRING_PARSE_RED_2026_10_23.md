# FCP BFSS M4F7 E7H Gate #2 — mislocated `omit` command parser red, source mathematics still unqualified

**Date:** 2026-10-23 PDT. **Disposition:** `E7H_GATE2_PINNED_ENV_AND_E7G_PASS__OMIT_AFTER_DOCSTRING_PARSE_RED__THREE_DECLS_AX_REPORT_PERMITTED__NO_ACCEPTED_E7H_CACHE__307_PRINCIPAL_UNCHANGED`.

## Immutable original evidence

[Actions run #40022953105](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40022953105), job `120651883946`, `completed/failure`, triggering immutable workflow/source commit `90b4172a3252a2ba20adc979137c8de5ade52cea`. Mathematical source `experiments/openai-math-su2-physical-domain/FCPM4F7GenericOpaqueOutputConstraintE7H.lean`, exact Git blob `37b79160e689714c057cce7676f980709a07f6de`. Original BFSS pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Original source pin/toolchain/Mathlib preflight passed, and exact previously accepted E7G cache restored:
```text
bfss-fcp-m4f7-e7g-generic-closure-3b6fa55d-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
The exact source-signature scanner passed. Fresh strict `lake env lean -DwarningAsError=true` reached source E7H but failed with the **single first causal parse error**, `FCPM4F7GenericOpaqueOutputConstraintE7H.lean:33:55` (Lean emits pointer at the end of the preceding docstring):
```text
error: unexpected token 'omit'; expected 'lemma'
```
Source context:
```lean
/-- Unfold only the small abstract output predicate. -/
omit [AddCommGroup X] [Module ℂ X] [TopologicalSpace X] [TopologicalSpace Y] in
theorem mem_allOutputConstraint_iff ...
```
A documentation comment immediately before the standalone `omit` command is parsed as belonging to a declaration, so `omit` is not valid at this location. Fresh compiler `E7H_RESOURCE_TIME 6.47 CPU 96% MAX_RSS_KB 6886532` exited code 1. All **three #print axioms reports** were present and permitted-only `{propext, Classical.choice, Quot.sound}`, but this is **not a strict accepted module** because Lean issued the parser error. No `.olean` qualification/cache save; +0 principal roots, **307 unchanged**.

Original compiler/resource evidence: [artifact #12530884364](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40022953105/artifacts/12530884364), digest `sha256:2836911bed25689ce2a01b67ff4630b5ef4b26e87be74143e8ada45185fe1d5a`.

## Controlled scope correction

The root issue in Attempt #2 of Gate #1 was unused automatically included section variables on the *pure predicate iff*, not any mathematical contradiction. Rather than rearrange `omit` immediately around a Lean docstring or disable the linter globally, the next gate will **remove the four irrelevant instances from the shared section scope** and declare them **only immediately before the final theorem that actually uses them**:

```lean
variable {I V X Y : Type*}
variable [AddCommGroup V] [Module ℂ V]
variable [AddCommGroup Y] [Module ℂ Y]

def allOutputConstraint ... := ...
theorem mem_allOutputConstraint_iff ... := Iff.rfl

variable [AddCommGroup X] [Module ℂ X]
variable [TopologicalSpace X] [TopologicalSpace Y]
theorem opaque_closed_product_range_subset_allOutputConstraint ... := by ...
```

All three mathematical targets and proofs remain the same, with exact E7G parent cache, frozen toolchain/source pin, 100000 heartbeats, warning-as-error, and permitted axiom validation. New immutable Gate #3 only if the source diff is confined to variable scope and removal of `omit`. Keep E7J **withheld** until all three declarations pass strict compilation and the new qualified E7H cache is saved. Original main/math unchanged, 307 principal roots.
