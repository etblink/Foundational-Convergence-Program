# FCP BFSS M4F6 A1 — original Gate #1 pre-Lean false positive and comment-aware source scanner recovery

**Date:** 2026-10-22 PDT / 2026-10-23 UTC. **Status:** A1 #1 genuine workflow RED **before Lean**, corrected A1 #2 started, no mathematical verdict yet. **Accepted principal theorem count 297**. Source C1 remains previously accepted, source C2 unproved, D1 unproved, and no extra accepted proof roots.

## First-causal evidence: A1 Gate #1 never entered Lean

[Original GitHub Actions #39895484086](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39895484086), job `120224824383`, `completed/failure`, source/workflow commit `e3ff7736d59eaf25b8ffdaa3c6d4347274068c81`.

The checkout steps passed. **`Fail-closed exact original and candidate source provenance` failed** at a Python assertion before toolchain restore. Original job transcript:

```
Traceback (most recent call last):
  File "<stdin>", line 24, in <module>
AssertionError
```

The inherited copy of the D1/C2 provenance preflight tested four exact candidate files with:

```python
assert 'sorryAx' not in s and '\nsorry' not in s and \
  '\nadmit' not in s and '\naxiom ' not in s
```

The new source `FCPM4F6IndependentLiteralAliasBoundary.lean` (blob `88a0cfdf5c5a4e407906462a56f62b9df9281ea0`), at **line 12 inside the `/-! ... -/` documentation block**, says:

```
axiom or additional premise, and does not assert the C2 full input cut.
```

That produces the forbidden raw substring `'\naxiom '`. It is not an actual Lean `axiom` declaration. The source math, exact original CAR and independent graph types were not reached by Lean; no `.olean` for A1 or saved proof cache exists from Gate #1. This is an inherited preflight false positive, not an invalid theorem.

This is the same process failure class as D1's documentation mention of `set_option linter.defProp false in` and as earlier archived validator/parser red cases: M4C1 doc-comment/omit placement, M4F2 stale validator stem, S1V19 private theorem-name regex. Our first A1 workflow had validated the **new** later source preflight, but failed to validate the **inherited earlier** preflight. This is a process defect by the Project Lead and must be recorded, rather than attributed to Lean.

## Scope of the recovery: validator change only

Updated exactly the A1 workflow preflight, not the mathematical source or its frozen hash:

- Workflow-only correction [commit `ab82b361d6ec711bd9a5cab132ed085531acc7d1`](https://github.com/etblink/Foundational-Convergence-Program/commit/ab82b361d6ec711bd9a5cab132ed085531acc7d1).
- Replaced raw-content substring checks with an explicit minimal scanner `lean_code_only` that strips nested `/- ... -/` block comments and `--` line comments from the candidate sources, then checks the remaining executable source lines for `sorry`, `admit`, `axiom` and `sorryAx`. This is specifically a source-hole preflight, not a substitute for `lake env lean` kernel, parser or axiom verification.
- Before committing the correction, applied an equivalent offline nested-block-comment stripper to the **exact current repository source text** of all four preflight candidates. All four returned no forbidden executable hole/postulate tokens; the literal-A1 source's original raw `'\naxiom '` false positive was independently reproduced and its removal by comment-aware inspection confirmed.
- Exact source hash pins, original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, strictly accepted M4F5 and C1 cache inputs, both proposed A1 alias equality statements and proof bodies unchanged. All actual compilation strictness and three-axiom auditing remain in place. No extra C2 theorem is introduced.
- This path-only correction caused one isolated [A1 Gate #2 run #39895870027](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39895870027). At launch it was `in_progress`. Do not claim it is green without reading the complete run, strict proofs and save result.

**Procedural rule for successors:** Examine *all* copied preflights (including previous-stage source hash/hole checkers, YAML path indentation, parser commands and validators), not only the newly authored portion. Never treat documentation comments as executable Lean source, yet fail closed on real proof holes and forbidden axioms after Lean compilation. A separate validator can and must still reject any `sorryAx` reported by `#print axioms`. Do not count supporting diagnostic alias theorems as new principal C2 roots.

## Why A1 tests something different from D1

D1 only asked Lean to infer an already-printed generic application, and did not reach Lean due a validator issue. Existing M4F6 audit explicitly cautioned against more inferred-wrapper retries. A1 instead asks for **two source-exact definitional identities of the literal independent core and graph** in a separate small module, as a distinct, audit-ready bridge interface modeled on the accepted M4E5 raw-vs-named equality certificates. If they pass, only then design the original C2 theorem composition via named equality transport and the generic lemma; if they fail, first diagnose the exact first Lean error and stop duplicate tactics.

Cumulative accepted principal count **297**. Canonical main, PR #25 and original BFSS mathematics unchanged.
