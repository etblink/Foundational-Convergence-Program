# FCP BFSS SU(2) — M4E1 Gate #1 RED: false-positive declaration scanner from documentation prose

**Date:** October 22, 2026 (PDT).  
**Disposition:** `M4E1_GATE1_RED__ALL_THREE_LEAN_DECLARATIONS_AXIOM_CLEAN__PYTHON_DECLARATION_NAME_AUDIT_FALSE_POSITIVE__ZERO_NEW_ROOTS__281_CUMULATIVE`.

## Independently verified original evidence

- GitHub Actions [run #39798585787](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39798585787), job `119892479970`, conclusion **failure**, first attempt.
- Workflow/head commit `d85baa8fbebf143d711a21c8079a025a165b58b1` on `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- Original new source `experiments/openai-math-su2-physical-domain/FCPIndependentSmoothSuperchargeFermion.lean`, blob `005e3f62b8e355b0578df9caa192e4bb17289e35`.
- Original math pin `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Immutable source/candidate/accepted-parent preflight passed, the pinned toolchain restored, qualified **M4D3 v1 cache** `bfss-fcp-m4d3-gauge-pointwise-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored, and all necessary `.olean` dependencies were confirmed.
- **The Lean compiler completed successfully** with `-DwarningAsError=true`, produced an `.olean`, and printed all three expected `#print axioms` reports, each containing exclusively `propext, Classical.choice, Quot.sound` and **no `sorryAx`**:
  ```text
  'FCP.IndependentSmoothSupercharge.independentFermionCoreAction' depends on axioms: [propext, Classical.choice, Quot.sound]
  'FCP.IndependentSmoothSupercharge.independentFermionCoreAction_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
  'FCP.IndependentSmoothSupercharge.independentFermionCoreAction_intertwining' depends on axioms: [propext, Classical.choice, Quot.sound]
  ```
- The strict Python declaration validator failed afterward with `AssertionError` at Python stdin **line 9**. Exact underlying expression:
  ```python
  assert re.findall(r'^(?:def|theorem|abbrev) (\\S+)',src,re.M)==expected
  ```
- Required expected names numbered three, but an ordinary **Lean module doc-comment** contained a line beginning `theorem proving source-exact fermionic test-function intertwining.`. The scanner therefore matched the word `proving` as a nonexistent fourth theorem. This is a parser-independent **regex overmatching** failure, not a failed Lean theorem.
- Gate saved its diagnostic artifact `bfss-m4e1-gate1-39798585787`, ID `12435460920`. **No accepted M4E1 cache** was saved because the strict declaration audit failed. Count remains **281**.

## Single-change Gate #2 correction

Change *only* the introductory document prose:
```diff
-theorem proving source-exact fermionic test-function intertwining.
+proof establishing source-exact fermionic test-function intertwining.
```

Candidate mathematical declarations, definitions, argument order, theorem statements, all `#print axioms` commands and strict validator remain exactly unchanged. This removes the false-positive regex match without loosening verification.

- Source-only correction commit: `c5904785c2f9bbe89d51d7003941aa8439770895`.
- Corrected source Git blob: `425f5187324d3b7a7d67f54af0f0ff51b7b661e4`.
- Gate #2 must use this exact candidate blob, unchanged frozen original pins, qualified M4D3 cache, three exact declaration-name and axiom-report checks, reject `sorryAx`, strictly compile the `.olean` and save a **new M4E1 v2 cache only on fully successful completion**.
- Longer-term validator improvement: lexical awareness of Lean comments or anchored syntax requiring plausible declaration binder context, rather than treating all prose matching `^theorem WORD` as code. Such a change requires its own validator tests; do not relax the Gate #2 controls opportunistically.

## Mathematical and governance scope

The candidate defines an independent E-valued smooth Majorana multiplication action via `TestFunction.postcompCLM` of the user-supplied independent `theta`. Its exact source smooth fermion-action intertwiner uses the labeled generator-preserving M3J unitary only in the proof. A Gate #2 pass would qualify the basic fermionic test-function factor, **not** the manuscript's kinetic derivative term, cubic term, all sixteen (Q_α), closure graphs, Hamiltonian domains, Spin(9), or spectral assertions.

The accepted ledger remains 281 until the complete new strict gate passes. No original `etblink/math` source, accepted proof blobs, canonical `main`, draft PR #25, or Issue #28 is modified. Preserve Gate #1 red and its exact diagnostics.
