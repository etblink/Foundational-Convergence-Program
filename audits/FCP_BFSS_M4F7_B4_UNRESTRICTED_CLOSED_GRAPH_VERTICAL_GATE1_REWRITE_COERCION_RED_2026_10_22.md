# FCP BFSS — M4F7 B4 unrestricted independent closed graph vertical: Gate #1 strict red

**Independent verification:** October 22, 2026 PDT / October 23 UTC. **Disposition:** `M4F7_B4_GATE1_SOURCE_SET_SUBMODULE_COERCION_REWRITE_RED__NO_THEOREM_ACCEPTED__301_PRINCIPAL_ROOTS_UNCHANGED`.

## Evidence from original GitHub Actions compiler log

[Run #39912853335](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39912853335), job `120279596126`, source/workflow commit `b9a14dc64fdf1f2bf32fe48fef74d174cfb1e8ad`, is `completed/failure`. The original job log was independently inspected. All original mathematics/source preflights, Lean 4.34.1 / pinned Mathlib restoration, accepted M4F5 cache restore, imported `.olean` parent checks and exact new theorem statement preflights completed successfully. Fresh `lake env lean -DwarningAsError=true` ran on frozen candidate `experiments/openai-math-su2-physical-domain/FCPM4F7FullClosedGraphVerticalB4.lean`, Git blob `03a51889a1060e7407bdecab607b4bfa2e7b3070`.

**First and only genuine Lean error:**

```text
FCPM4F7FullClosedGraphVerticalB4.lean:72:8:
  error: Tactic `rewrite` failed: Did not find an occurrence of the pattern
    ↑(Submodule.topologicalClosure ?s)
  in the target expression
    (0, fun α => (fiberTransport J) (y α)) ∈
       pairedAlgebraData.fullCoreGraph.topologicalClosure
```

The exact failing tactic was `rw [Submodule.topologicalClosure_coe]`, **after** an explicit `change` to membership in a named source submodule. That lemma rewrites the coe-to-set expression `↑s.topologicalClosure` **into** `closure (s : Set _)`; the goal is already elaborated as native *Submodule membership* and displays no explicit set coercion. The relevant source hypothesis `hh0` already has the needed membership in `closure (pairedAlgebraData.fullCoreGraph : Set _)`.

Original axiom report for `FCP.M4F7FullClosedGraphVerticalB4.independentFullCoreGraph_closure_vertical` includes `sorryAx`, so **not accepted**. No qualified B4 cache saved. Fresh compilation resource: `10.23s`, `6992164 KB` peak RSS. Existing qualified 301 principal roots unchanged.

## Localized repair hypothesis (not yet certified)

The source from line 50 through 69 successfully elaborated and constructed named `hsrc`, `hh` and `hh0` using the *accepted* M4F5 unrestricted independent-to-source graph-closure image theorem. The final zero-fiber transport proof after line 72 was not completed due to the earlier tactic error. This is a **rewrite-orientation/coercion** error, **not** the earlier A2 recursive concrete independent graph equality or a BFSS mathematical inconsistency.

The accepted, qualified **generic B2** theorem `FCP.M4F7GenericOpaqueClosedRelationBridge.topologicalClosure_vertical_of_set` uses `rw [← Submodule.topologicalClosure_coe S]` in an abstract context to convert a `closure(s:Set)` target **to** coe-of-submodule-closure and discharge it by submodule membership. The appropriately directed, source-named adaptation for B4 is to rewrite the *existing set-level hypothesis* instead of the already submodule-typed target:

```lean
rw [← Submodule.topologicalClosure_coe pairedAlgebraData.fullCoreGraph] at hh0
exact hh0
```

This preserves the exact unrestricted independent original BFSS theorem statement, its genuine source representation-identification (J,hColor,hGamma,hJ) hypotheses, and the entire mathematical proof outside the single failing tactic line; it does not increase maxRecDepth, change source definitions or add axioms. It is a **candidate**, not a proven repair until a completely new strict source-pinned run passes and saves cache.

Keep exactly one isolated B4 follow-up, and on failure preserve the first actual compiler error; do not iterate congruence rewrites blindly. If it succeeds, the result is an actual independently defined **unrestricted closed graph** vertical-uniqueness theorem, not a qualified physically restricted closed `LinearPMap`, domain density theorem or Hamiltonian equivalence. Separate principal credit will be assessed only after fully qualified evidence. Original math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, canonical main, draft PR #25 remain unchanged.
