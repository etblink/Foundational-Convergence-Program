# FCP BFSS SU(2) M4F6 — inferred application diagnostic Gate #2: verified causal red

Date: 2026-10-22 (America/Los_Angeles); run completed 2026-10-23 UTC.

## Scope and immutable evidence

- Research-only branch: `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- Strict Actions run: https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39876789796 (job `120164212257`, commit `4aca309848b3502dd485f265fbcc930a1eb6b760`).
- Immutable original mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Source candidate `FCPRestrictedGraphInputCertificates.lean`, Git blob `7c78e6b889529b9f89bad50b40f8871a48d15cab`.
- Exact source-pinning, accepted M4F5 import cache, and qualified generic input-cut-helper cache all passed.

## Positive, strictly qualified intermediate result

The generic `FCPRestrictedGraphInputCut.lean` compiled under `-DwarningAsError=true`; all three original declarations were independently audited, with only the permitted `propext`, `Classical.choice`, `Quot.sound`:
`core_graph_input_cut`, `image_input_cut`, `original_core_graph_input_cut`.
Resource observation: 18.28 s, maximum RSS 7,019,712 KB. This is reuse/validation of existing supporting math, not a new principal root.

## First causal compiler errors

The next stage, inferred-type certificates, exited 1. The original job log reports:

```
FCPRestrictedGraphInputCertificates.lean:25:0: error: Definition `independentInputCutApplication` is a proposition; use `theorem` instead of `def`
Note: This linter can be disabled with `set_option linter.defProp false`
FCPRestrictedGraphInputCertificates.lean:44:35: error: unexpected token ':='; expected ':'
```

The first is a **declaration-style linter error** on an inferred proposition defined using `def`. The second is **Lean grammar**, not graph mathematics: `theorem originalInputCutApplication := ...` has no `: proposition`, whereas `theorem` requires an explicit type. The compiler's ensuing presentation of `sorry` is a recovery artifact of the rejected theorem syntax, NOT a valid accepted declaration; no certificate is counted. The displayed axiom report for the independent `def` is not sufficient to override compiler failure and strict validation. 

## Methodological classification and next action

**Classification:** Lean diagnostic declaration/syntax issue (not a mathematical counterexample, not concrete domain/graph compatibility evidence).

The explicit purpose of this bounded diagnostic is to infer the *exact* result propositions of two generic lemma applications **without** supplying the concrete expected graph equality; rewriting them as explicitly typed theorems would prematurely change the diagnostic question. The narrowly scoped proposed correction is to express both as inferred-type `def` declarations with the `defProp` style linter disabled **only around those two commands**. Keep warnings-as-errors globally, original source pins, all axiom checks, and zero `sorry`/`admit` unchanged. This does not grant a mathematical axiom or turn the diagnostic into a principal proof.

No M4F6 principal theorem has passed. **Newly accepted roots 0; cumulative strictly accepted principal theorem roots remain 294.** If the inferred applications later pass, return to the concrete restricted graph types and compare exact representations rather than assuming graph equality from an inferred-type green. Operator output-invariance, closability, physical Hamiltonian and spectral claims remain open.
