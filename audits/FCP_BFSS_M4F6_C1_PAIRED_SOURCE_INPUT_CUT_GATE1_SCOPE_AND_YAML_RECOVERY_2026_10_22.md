# FCP BFSS SU(2) — M4F6 C1 source graph-input-cut boundary and workflow wrapper correction

**Local date:** 2026-10-22 PDT. **Status:** mathematical candidate staged, one bounded strict source gate launched; no C1 principal theorem accepted yet. Cumulative accepted principal roots **296** from strict S2 M4F1.

## Prior results and negative knowledge (do not relearn through undirected gates)

- Accepted M4F4/M4F5: source and independently defined full sixteen-charge smooth-core graph equality and topological closure transport; neither proves closability nor any Hamiltonian spectral result.
- Accepted M4F1 in [strict run #39887196835](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39887196835): the independent core is invariant under each independently defined smooth charge, conditional on the explicit J/hCAR/hHermitian/hColor/hGamma/hJ witnesses. Qualified proof root and cache; cumulative ledger **296**.
- Historic [M4F6 input-cut graph Gate #2, run #39869296605](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39869296605) compiled the generic three-root `FCPRestrictedGraphInputCut` module strictly using only permitted axioms and subsequently failed at `FCPIndependentRestrictedCoreGraph.lean` lines **92** and **104** due to maximum recursion depth when applying the actual concrete input-cut certificates inside a six-declaration monolith. Since that overall gate was red, those 3 module reports were historical dependency evidence, not counted as new principal theorem roots.
- The latest accepted S1/S2 mathematical progress showed a recurring working procedure already documented long before this review: isolate named original-source specializations and typed intermediate certificates, then compose. Do not represent that as a newly invented strategy.

## C1 exact new mathematical test

Module `experiments/openai-math-su2-physical-domain/FCPM4F6PairedSourceGraphInputCut.lean`, immutable candidate blob `c217d66cf9e8ccf39b64aab6488fe62b11447beb`, staged in commit `f752433c293074be563169442818dfbc8f6c1ab8`. Imports ONLY `FCPRestrictedGraphInputCut` directly (which itself depends on accepted unrestricted graph closure). The single source-specialization root uses the literal `pairedAlgebraData` and `pairedGaugeData`:

```lean
theorem pairedSourceCoreGraph_eq_physicalInputCut :
  (LinearMap.range
    ((coreToL2.comp pairedGaugeData.invariantCore.subtype).prod
      (pairedAlgebraData.chargeVector.comp pairedGaugeData.invariantCore.subtype)) :
       Set (FullL2 2 × (SpinIndex → FullL2 2))) =
  {p | p ∈ pairedAlgebraData.fullCoreGraph ∧ p.1 ∈ pairedGaugeData.physicalSpace} := by
  exact original_core_graph_input_cut
    (M := pairedAlgebraData) (G := pairedGaugeData)
```

It neither assumes independent graph transport nor proves physical output invariance, closability, Hamiltonian form/domain equality or spectrum. The principal point is to discriminate whether specializing the generic original graph-cut theorem, **without the six-root M4F6 concrete import**, succeeds with exact source definitions and bounded elaboration.

## Strict controlled workflow and wrapper correction

Isolated own-path GitHub Actions workflow `.github/workflows/bfss-m4f6-paired-source-input-cut-c1-strict-gate1.yml` stages:
1. Frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact parent/candidate Git-blob provenance and no proof holes.
2. Restore accepted M4F5 graph source cache; strictly recompile and validate `FCPRestrictedGraphInputCut` generic three declaration types; **save separately qualified generic import checkpoint BEFORE C1**, even if C1 later fails.
3. Compile **exactly one** new C1 paired-source input-cut theorem with warnings-as-errors, complete declaration/axiom whitelist, fresh named `.olean`, bounded process time. Save C1 only on strict success; preserve compiler/resource logs on red or green.

The first workflow blob `2736f4af067586a77d73bb60666c7dc6c7aa9c4b` had a **YAML cache-path multiline indentation generation error**: its two `path: |` first content lines were unindented. [Run #39888890089](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39888890089) failed in workflow interpretation before Lean. This is a **CI-wrapper defect, not a mathematical red**. Commit `51cfc2366dda5316925767960ec0146052354b11` corrected exactly the two first cache-path indentation lines, with structural source-path preflight. The corrected self-triggered strict [run #39888950963](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39888950963) was initially in progress.

**Safeguard:** Any C1 future acceptance requires independent verification of completed original workflow and job, strict Lean axiom report only `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`, actual saved cache, no changed mathematical target; only then ledger 297. No claim of source correspondence or independent graph equality is licensed before the corresponding distinct gate.

**Next only upon C1 qualification:** one separate true independent input-cut specialization preserving original representations and hCAR/hHermitian; after both narrow accepted interfaces, rerun composition into the genuine graph image and closure and explicitly use M4F1 to justify physical outputs where needed.
