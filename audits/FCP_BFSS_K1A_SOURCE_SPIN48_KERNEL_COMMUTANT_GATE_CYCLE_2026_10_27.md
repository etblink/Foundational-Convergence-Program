# FCP BFSS K1A — source-exact Spin48 kernel commutant strict gate cycle

**Date:** 2026-10-27 · **Project Lead disposition:** K1A candidate **UNACCEPTED** until a successful pinned fresh Lean proof/axiom audit. This document is a first-causal gate ledger, not a theorem.

## Objective and source pins

The direct original-source theorem is
```lean
FCP.BFSSS1V52K1A.originalSourceSpin48_trivialAction_iff_generator_commutes
```
For any actual `s : spinGroup source48Quadratic`, the source Spin48 action on `Source48Vector = (Fin 24 × Fin 2) → ℝ` is the identity on all original vectors iff the *same original Clifford algebra element* `(s : CliffordAlgebra source48Quadratic)` commutes with `CliffordAlgebra.ι source48Quadratic v` for every original `v`.

K1A consumes the historical qualified S1V30/S1V31 original generator and vector-action interface via F21A. Its one-root candidate file is
`experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52K1AOriginalSpin48KernelCommutantProbe.lean`, exact Git blob `965b08344e65fe22d80d9281c223ad10a494c5b2`.

Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; F21A accepted source blob `87f554d93022d9dd3cc779947699ba0a599fae9b`.

### First-causal Gate 1 — CI #40490331847, red before Lean

[Run #40490331847](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40490331847) was an earlier **mixed K1A plus negative-sign K1B** candidate, blob `f3dd9141c68c442c013b384d745430e83a2b6224`. Exact frozen original checkout and file hashes passed, but the source scanner rejected the harmless word `axiom` inside a comment. Python `AssertionError` before any cache restoration/Lean proof. Classified **validator false positive, not mathematical counterexample**. The validator was corrected to disallow declaration-level forbidden syntax and still test complete `#print axioms` output.

### Gate 2 — CI #40490522781, red at old-rotor cache dependency

[Run #40490522781](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40490522781) passed source preflight and restored the original source-qualified F21A cache, but the cache **did not contain** `SU2BFSSPhysicalDomainS1SSourceSpin48TwoVectorRotorProbe.olean`. The pre-Lean source ancestry gate stopped with `K1A_ACCEPTED_OLEAN_MISSING=SU2BFSSPhysicalDomainS1SSourceSpin48TwoVectorRotorProbe`.

The original S1S rotor source *is* independently strict accepted: [S1S Gate #2 #39168062186](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39168062186), source blob `ae5751e9cbab52a39e1475a445d75d92e7db762e`, 6 roots, only permitted axioms. Its **binary absence from F21A's cache does not invalidate S1S**, but does prohibit importing it without a proved, restorable complete ancestry. Classified **compiled dependency gap, not mathematical counterexample**.

### Project Lead response: isolate a genuine one-root leaf

Instead of another large reconstruction, K1A was separated to import **only F21A**, whose cache was just verified present. The genuine negative Spin scalar construction was preserved separately as
`SU2BFSSPhysicalDomainS1V52K1BOriginalSpin48NegativeCentralSignProbe.lean`, **staged/unqualified** until exact S1S import ancestry is restored. The superseded mixed candidate was deleted; it cannot be mistaken for accepted. A new source-pinned one-root strict gate was launched at [K1A Gate #40490974369](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40490974369). Original F21A cache key:
`bfss-f21a-original-spin48-vector-continuity-87f554d93022d9dd3cc779947699ba0a599fae9b-v2-adc7f124-lean4341-d13f23b-Linux-X64`.

### Mathematical boundaries

Successful K1A proves **only** equality of the kernel predicate with the original Clifford commutation predicate. It does not prove the commutant is scalar; the critical even-PBW commutant-to-scalar lemma KERNEL-PBW-1 remains open. K1B's negative sign, two-sign kernel classification, SO image, two-sheeted covering, global Spin9, physical q-invariance, coercivity and eigenstate existence all remain separately open unless later strictly qualified. A green infrastructure graph run does not contribute roots.

**Status at writing:** K1A Gate #40490974369 in progress; **new strictly accepted K1A roots: 0**. Update this note with the exact compiler/axiom disposition before promoting any root.

## Gate 3 — CI #40490974369, genuine Lean source elaboration red

[Run #40490974369](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40490974369), job `122144515599`, completed failure **after successfully restoring** exact frozen source, the accepted F21A cache, its S1V31 compiled dependency, and Lean 4.34.1/Mathlib at the exact revision. The actual Lean compiler reports two errors in original proof blob `965b08344e65fe22d80d9281c223ad10a494c5b2`:

1. At the attempted `simpa only [ConjAct.units_smul_def, ConjAct.ofConjAct_toConjAct]`, the imported original S1V31 theorem still mentions its own private `Q✝` abbreviation and the `toUnits` inverse, while the goal uses K1A's `Q` and Clifford `star`. The restricted simplifier did not discharge their conversion.
2. A rewrite via `spinGroup.coe_mul_star_self` failed to match the target `↑s * star ↑s`; the lemma's presented coerced `star s` form was syntactically different from the goal.

The failed theorem printed `[propext, sorryAx, Classical.choice, Quot.sound]`, so it is **unaccepted**. These are exact type/rewrite-interface proof deficits, **not a mathematical counterexample** to the original all-generator commutant equivalence. This is the first full Lean verdict.

**Gate 4 correction, unchanged mathematical statement:** New proof blob `5d1117d1f469a3a76a78c3c4ae4b8896b18b1b7a` uses the exact imported theorem as a local equation, rewrites the concrete conjugation action before a *typed* `change` to the actual original Clifford elements, and names two genuine source facts `spinGroup.star_mul_self_of_mem s.property` and `spinGroup.mul_star_self_of_mem s.property` matching Clifford star on the actual `(s : C)`. No axioms, theorem hypotheses, source mathematics or F21A parent were changed. Workflow pins the new source blob and saves a distinct binary key only on actual strict acceptance.

[Gate 4 #40491802270](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40491802270), staged at research HEAD `44329841cc5e2ae3457641572e0353edf088b037`; inspect its terminal Lean logs before acceptance. **New strictly accepted K1A roots at this checkpoint: zero**.
