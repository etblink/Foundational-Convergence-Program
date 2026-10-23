# FCP BFSS M4F7 — unrestricted independent closed-graph vertical: B4 coercion-aligned Gate #2

**October 22, 2026 PDT / October 23 UTC.** **Status:** Gate #2 launched, verdict pending. **Accepted principal BFSS root count: 301**.

## Original verified Gate #1 red

[Actions #39912853335](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39912853335), job `120279596126`, original source commit `b9a14dc64fdf1f2bf32fe48fef74d174cfb1e8ad`, was independently verified workflow/job completed/failure. Frozen B4 candidate `FCPM4F7FullClosedGraphVerticalB4.lean`, Git blob `03a51889a1060e7407bdecab607b4bfa2e7b3070`. All original source pins, Lean 4.34.1 / Mathlib d13f23b restore, qualified parent caches (including M4F5) and fresh theorem import preflights passed.

The **sole genuine Lean compiler error**, line 72, was:
```text
error: Tactic `rewrite` failed: Did not find an occurrence of
↑(Submodule.topologicalClosure ?s)
in (0, fiberTransport J ∘ y) ∈
  pairedAlgebraData.fullCoreGraph.topologicalClosure
```
Original tactic `rw [Submodule.topologicalClosure_coe]` ran *on a submodule membership goal*, when the lemma's forward orientation rewrites an explicit set coercion to a set closure. Immediately preceding, the named source closure hypothesis `hh0` had been constructed:
```lean
hh0 :
  (0, fun α => fiberTransport J (y α)) ∈
  closure (pairedAlgebraData.fullCoreGraph : Set _)
```
The original compiler reached that point after applying exact accepted M4F5 unrestricted graph image-closure equality; no recursion or source mathematical mismatch was reported. The axiom report for the new root contains `sorryAx` because of this proof failure. Compilation `10.23 s`, `6992164 KB` max RSS. No qualified B4 cache and **zero new roots**.

See forensic acceptance audit `audits/FCP_BFSS_M4F7_B4_UNRESTRICTED_CLOSED_GRAPH_VERTICAL_GATE1_REWRITE_COERCION_RED_2026_10_22.md`.

## Single-change source-exact correction

New module `experiments/openai-math-su2-physical-domain/FCPM4F7FullClosedGraphVerticalB4CoeAlign.lean`, Git blob `2b485db6576f37cd13acd861eb9549d26f49bc51`, staged at source commit `6af1bd7c5fa2d94799c1fc686ad5c00ca183f8bd`. It preserves verbatim **every original Lean mathematical declaration, hypothesis, theorem statement, and proof line** apart from one directed tactic:

```diff
-    rw [Submodule.topologicalClosure_coe]
+    rw [← Submodule.topologicalClosure_coe pairedAlgebraData.fullCoreGraph] at hh0
     exact hh0
```

The changed direction matches the **actual independently verified generic B2** proof use of `rw [← Submodule.topologicalClosure_coe S]` and applies it to a concrete *already-named source* full graph `pairedAlgebraData.fullCoreGraph`, **not** the stopped huge independent A2 literal closure equality. It requires no new CAR/Hermitian assumptions, no recursion increase, no source math edits, no axioms. The experiment could still reveal a type conversion obstacle at `rw` or `exact`; no acceptance presumed.

## B4 Gate #2 qualification and stop rule

Path-only workflow `.github/workflows/bfss-m4f7-unrestricted-full-vertical-b4-coealign-strict-gate2.yml` at commit `8c987984e8b6303a4317c6207b42eeb800fce66d`, [Actions run #39913871718](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39913871718), initially queued.

It inherits immutable original BFSS math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, qualified M4F5 unrestricted source graph cache `bfss-fcp-m4f5-unrestricted-graph-closure-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Both old and new candidate file blob SHA pins are preflight-checked, the new compile source stem is `FCPM4F7FullClosedGraphVerticalB4CoeAlign`, and a **fail-closed byte-comparison after `set_option autoImplicit false`** checks that the **only** math difference is precisely the one rewrite. The exact independent graph, source graph, J identification witnesses and original vertical uniqueness theorem must remain present. YAML indentation, self-path-only trigger, candidate source hash, report validator stem and qualified cache key have been statically checked.

A fresh `lake env lean -DwarningAsError=true` has 105s cutoff and must write the new `.olean`. Exactly one fully qualified theorem `FCP.M4F7FullClosedGraphVerticalB4.independentFullCoreGraph_closure_vertical` must print only the three permissible axioms `propext, Classical.choice, Quot.sound`, zero `sorryAx`, unexpected warning or compiler error; a **unique** Gate #2 cache is saved only after whole strict green. Original full compiler/resource logs are uploaded irrespective of outcome. Do not count a gate merely because a theorem report looks clean if its artifact or final strict validator failed.

**If Gate #2 red:** identify original first causal error, preserve it, avoid blindly retrying source-coercion tactic variations. **If green:** the result concerns the *unrestricted independently defined full sixteen-charge graph closure* only. It is not yet the concrete physically restricted A3 closed `LinearPMap`, its true physical Hilbert-domain density, output invariance, Hamiltonian equality, spectrum or a BFSS mass-gap theorem. Evaluate whether B4 merits one new BFSS principal root versus a supporting certificate only after original compiler and saved proof cache review.

Governance: original pinned math, canonical `main`, unmerged PR #25 and all prior negative knowledge untouched. Accepted ledger **301**.
