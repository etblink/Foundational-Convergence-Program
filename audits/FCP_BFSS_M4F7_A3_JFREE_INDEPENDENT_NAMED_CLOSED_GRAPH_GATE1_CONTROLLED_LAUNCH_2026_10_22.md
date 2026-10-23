# FCP BFSS — M4F7 A3 source-exact J-free independent named closed graph Gate #1

**Local research date:** October 22, 2026 PDT / October 23 UTC. **Status:** A3 Gate #1 launched, in progress at last check; no A3 acceptance yet. **Cumulative strictly accepted principal roots remain 301.**

## Exact qualified abstract foundation

[M4F7 B2 Gate #3 Actions run #39910234421](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39910234421), job `120271287513`, was independently verified completed/success, with source, Lean 4.34.1 and Mathlib pins, exact three permitted-axiom theorem reports and saved qualified B2 `.olean` cache. The generic opaque-submodule vertical, graph identity and closedness theorems are now **three accepted supporting certificates**; principal root ledger remains 301. See acceptance audit `audits/FCP_BFSS_M4F7_B2_GENERIC_OPAQUE_CLOSED_RELATION_GATE3_STRICT_ACCEPTANCE_2026_10_22.md`.

The generic B2 conclusion is conditional on an abstract `S : Submodule ℂ (X × Y)` and *a preexisting vertical certificate* `∀p∈closure(S:Set), p.1=0 → p.2=0`. No concrete BFSS specialization follows automatically.

## Why A3 rather than another concrete Set-equality retry

Original A2 Gate #1 [#39906130902](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39906130902) and direct Rfl Gate #2 [#39907200856](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39907200856) both failed due to Lean maximum recursion depth at the **full concrete equality** `(independentRestrictedClosedGraph ... : Set ...) = closure (LinearMap.range ... : Set ...)`. Those two tactics are **STOPPED** and neither gate qualified. Critically, **both original A2 compiler logs independently printed clean permitted axiom reports for the actual J-free named submodule definition and its separately proved named closedness lemma**. The full A2 strict gate was nevertheless red and saved no cache. The negative knowledge is thus an *unqualified but clearly identified valid subset of the source*, not yet a reusable theorem artifact.

## Frozen actual independent A3 source

Candidate `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentClosedGraphAliasA3.lean`, Git blob `f38ff58df7afe69562c3059c71b7c2f7d7a28e60` (source commit `f74312cd24c473029ed5bfbb04414a53c3d75628`). Its entire two mathematical declarations are *byte-identical* to their original A2 versions, apart from the namespace revision from `FCP.M4F7IndependentClosedGraphAliasA2` to `FCP.M4F7IndependentClosedGraphAliasA3`:

1. `independentRestrictedClosedGraph`: actual **J-free** named `Submodule ℂ (Lp E 2 μ × (SpinIndex → Lp E 2 μ))`, exactly `(LinearMap.range ((independentCoreToL2.comp (independentInvariantCore theta hCAR hHermitian).subtype).prod ((independentChargeVector color gamma theta).comp (independentInvariantCore theta hCAR hHermitian).subtype))).topologicalClosure`; original independent CAR/Hermitian, color/gamma/theta unchanged; no J in definition.
2. `independentRestrictedClosedGraph_isClosed`: genuine source-named `IsClosed (independentRestrictedClosedGraph ... : Set _)`, using only `Submodule.isClosed_topologicalClosure _`.

The previously recursion-failing `independentRestrictedClosedGraph_set_eq_literal` is **omitted, not assumed or axiomatically replaced**. No `maxRecDepth` increase or weakening of original mathematical source assumptions.

## One strict source-pinned gate

Workflow `.github/workflows/bfss-m4f7-closed-graph-a3-named-closedness-strict-gate1.yml`, commit `7e27d51a9e8d151e87183bb52812f462a215a31c`, [Actions #39911285943](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39911285943). Path-self-trigger only; full inherited accepted M4F5/C1/A1/B1/C2/C3/C4/V1 exact-qualified parent caches and `.olean` closure, original immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Source preflight checks exact original A2 and new A3 Git blob hashes, full original independent CAR/Hermitian hypothesis identical to accepted V1, equality of unchanged graph definition and closedness theorem/proof, absence of failed A2 equality statement, and zero executable `sorry`/`admit` or recursion-depth override. Fresh `lake env lean -DwarningAsError=true` with 105s bound, exact **two declaration** axiom reports (definition plus ONE support theorem), whitelist `propext, Classical.choice, Quot.sound`, no `sorryAx`/Lean errors/unexpected warnings, qualification cache **only** after entire success: `bfss-fcp-m4f7-closed-graph-a3-f38ff58d-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Original compiler and resource logs uploaded regardless of outcome. Workflow static YAML/runner indentation checks passed.

**A3 green**: qualify actual J-free concrete independent closed relation named object + its true named closedness as a supporting theorem; **principal count stays 301**. Then attempt one separate, opaque-interface lemma bridging the accepted V1 literal vertical predicate to the named A3 graph's abstract `Set` closure predicate; once qualified, apply B2 to get a genuine independent `LinearPMap` and separately identify its exact graph and domain. **A3 red**: inspect exact first compiler/preflight error before proposing anything else; do not revive failed concrete A2 equalities or conflate infrastructure with false mathematics.

**Scientific ceiling:** A3 is not a verified operator, physical Hilbert domain-density theorem, output physical preservation, Hamiltonian equivalence, spectrum or mass gap. Canonical `main` and draft PR #25 unmerged; frozen original mathematics and earlier red gates preserved.
