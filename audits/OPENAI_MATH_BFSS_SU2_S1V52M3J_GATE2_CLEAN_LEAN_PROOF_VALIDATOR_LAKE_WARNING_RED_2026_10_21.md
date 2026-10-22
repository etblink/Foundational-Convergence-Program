# FCP BFSS SU(2) — M3J Gate #2 independently diagnosed red (2026-10-21 PDT / October 22 UTC)

**Disposition:** `RED__0_ACCEPTED_THEOREM_ROOTS__LEAN_ORIGINAL_GENERATOR_UNITARY_COMPILED_AXIOM_CLEAN__EVIDENCE_VALIDATOR_LAKE_WARNING_FALSE_POSITIVE`.

Evidence: [Actions run #39711581883](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39711581883), job `119603913992`, source head `1f62800c3807d09d5dcf637d6fb367181d92f4da`. The source/hash preflight, original upstream pin, Lean 4.34.1/Mathlib, immutable M3I accepted ancestry, qualified M3I cache restoration, fresh S1A algebraic commutant and four generic source modules **all passed**. The workflow emitted `M3J_FIVE_PREREQUISITE_FRESH_LEAN_COMPILES_PASS`.

The **literal original M3J proof compiled successfully** with `lake env lean -DwarningAsError=true -o ...` and printed:

```
'FCP.BFSSS1V52M3JIndependent.sourceToManuscriptLabel' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSS1V52M3JIndependent.independent_original_generator_unitary' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
```

No Lean theorem error or `sorryAx` was present. The Gate #1 source-coercion failures at former lines 97 and 130 were therefore repaired.

**Why red:** the next Python validation loop raised `AssertionError: SU2BFSSPhysicalDomainS1ASchurScalarCommutantProbe`, because it blanket-rejected any literal `warning:` in captured `lake env lean` output. Lake emits e.g. `warning: belyi: repository '.../.lake/packages/belyi' has local changes` before Lean runs. The wrapper's informational repository-working-tree warnings are distinct from compiler diagnostics. The compiler was invoked with `-DwarningAsError=true`, so genuine Lean warnings would already cause a compile failure. No qualified M3J cache was saved, and the strict accepted ledger remains 271.

**Minimal repair, Gate #3:** preserve **identical all five Lean source files**, M3I source/caches, pins, axioms, hypotheses and theorem statement. In the helper-log validator, permit only exact-shape Lake auxiliary-package dirty-tree warnings (`warning: <package>: repository '<path>' has local changes`) and reject any unexpected warning, `error:` or `sorryAx`. Retain Lean `-DwarningAsError=true`. Give Gate #3 a distinct workflow, cache key and diagnostic artifact, preserving Gates #1 and #2 as negative-knowledge records.

**Acceptance boundary:** only a new fully green strict Gate #3 with qualified cache saved may increase 271 to 272. This certifies unitary equivalence of independently quantified Majorana module generators to original source `pairedTheta`, not any manuscript gauge implementer, closed operator/charge domain or spectral conclusion.
