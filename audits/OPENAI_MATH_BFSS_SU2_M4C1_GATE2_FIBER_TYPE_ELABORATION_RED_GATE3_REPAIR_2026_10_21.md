# FCP BFSS SU(2) — M4C1 Gate #2 strict red; Gate #3 explicit independent Lp fiber type

**Date:** 2026-10-21 PDT (runner October 22 UTC).
**Disposition:** `M4C1_GATE2_RED__LEAN_INDEPENDENT_FULL_L2_UNRESOLVED_FIBER_TYPE__GATE3_EXPLICIT_E_REPAIR__ROOTS_274`.

## Primary failure evidence

[Actions run #39728477235](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39728477235), job `119657795796`, original head `6984d00a711664bb6d36b09975751d3d34c78cdf`, completed **FAILURE**. Original source hashes, pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 and pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` all passed. Qualified M4B cache `bfss-fcp-m4b-independent-original-gauge-unitary-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored successfully.

The proposed “rebuild” step **did not actually compile a missing source file**, reporting:

```text
M4C1_QUALIFIED_M4B_REUSED_STEMS 1
M4C1_FROZEN_SOURCE_RECOMPILED_STEMS
M4C1_ORIGINAL_G4J_LOCAL_SOURCE_CLOSURE_READY
M4C1_ORIGINAL_G4J_REBUILT_M4B_ANCESTRY_READY
```

Thus, the original `SU2BFSSG4JExactGaugeDataAssemblyProbe.olean` was already present within the qualified, accessible **M4B** cache. Contrary to the Gate #1 workflow's assumption, a separate foreign-branch G4J cache and a G4J rebuild are unnecessary on the active branch. Preserve this as negative knowledge; remove the redundant implementation on the next gate.

The **first actual original source Lean errors** at lines 40 and 49 of candidate `FCPIndependentFullL2GaugeTransport.lean`:

```text
FCPIndependentFullL2GaugeTransport.lean:40:4: error: typeclass instance problem is stuck
  NormedAddCommGroup ?m.61
FCPIndependentFullL2GaugeTransport.lean:49:4: error: typeclass instance problem is stuck
  NormedAddCommGroup ?m.72
```

Root cause: `private abbrev IndependentFullL2 := Lp E 2 μ` silently abstracts a fiber-type parameter, but later declarations use `IndependentFullL2` without explicitly supplying it. Lean therefore cannot elaborate `NormedAddCommGroup` of an unresolved type. The dependent unknown `fiberTransport`, `hCAR`, `hHermitian`, `Lp` universe mismatch and unclosed final goals followed the failed declarations. No exact source-specific M4C1 theorem compiled; every dependent result remains unaccepted. **Zero newly accepted roots; cumulative count 274.** No qualified M4C1 cache was saved.

## Gate #3 exact bounded repair

- Mathematical source candidate is *identical* except for the explicit type parameter:
  `private abbrev IndependentFullL2 (E : Type*) [NormedAddCommGroup E] := Lp E 2 μ`
  and the **five type occurrences** becoming `IndependentFullL2 E` (one twice on line 40). All theorem names, M4B source objects, gauge conventions, core hypotheses, CAR, original bosonic inverse pullback and proof arguments remain unchanged.
- New source Git blob `f07d5524dedeb0a856e2ec3a003c1eabfe57127b`.
- New unique workflow `.github/workflows/bfss-m4c1-independent-full-l2-gauge-strict-gate3.yml`, Git blob `203a59ffbf6a98289e20111932ac0aa739cc9e99`, only that exact path triggers CI. Restore **one qualified M4B cache** on current branch and check required `OAI`, original G4J, original M3J, M4A and M4B `.olean` files; do not restore a foreign-branch cache, do not invoke the old redundant transitive rebuild.
- Re-run exact Lean 4.34.1/Mathlib pinned preflight and `lake env lean -DwarningAsError=true` on the original source-specific M4C1 module. Strictly validate `#print axioms` of the two definitions and three theorems, admitting only `propext`, `Classical.choice`, `Quot.sound`; reject `sorryAx`, compiler errors, unexpected warnings or missing .olean. Save unique `bfss-fcp-m4c1-independent-full-l2-gauge-v3-adc7f124-lean4341-d13f23b-Linux-X64` only if every condition passes. The target is **one new counted theorem root** `independentFullL2Gauge_intertwining`.
- **This is a source-level elaboration hypothesis, not pre-verified Lean compilation**. Gate #3 is explicitly diagnostic; if Lean uncovers a further independent proof or type mismatch, preserve that first error and adapt without weakening the statement.

### Scope

Even a clean Gate #3 establishes only gauge-intertwining of the constant-fiber continuous linear operator on the entire actual source `FullL2 2`. It does not yet provide a bijective `L²` unitary, exact equality of fixed-point physical Hilbert spaces, invariant smooth-core equality, sixteen supercharge closed graphs/domains, Hamiltonian equality, Spin(9), or positive BFSS spectral theorems. No PR #25, `main`, or upstream pins changed.

**Governance:** research-branch commit only; all prior reds and accepted M4B source proofs preserved; counted ledger **274** until a full strict pass.
