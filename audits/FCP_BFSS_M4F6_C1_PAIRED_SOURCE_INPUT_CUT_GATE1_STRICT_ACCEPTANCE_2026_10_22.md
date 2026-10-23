# FCP BFSS M4F6 C1 — paired source graph input-cut certificate, strict acceptance

**Date:** October 22, 2026 PDT (GitHub run completed October 23 UTC). **Verified green — 1/1 new principal theorem root. Strict cumulative: 297 (previously 296).** No M4F6 C2/composition/closure root has yet been accepted.

## Frozen source, original CI evidence and reuse

[GitHub Actions #39888950963](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39888950963), job `120203784402`, completed/success on research workflow commit `51cfc2366dda5316925767960ec0146052354b11`. The original-source integrity preflight, immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, qualified M4F5 cache, fresh compilation and strict axiom validator all succeeded.

The three declarations of `FCPRestrictedGraphInputCut.lean` compiled with `-DwarningAsError=true`; printed axiom sets were all subsets of `propext`, `Classical.choice`, `Quot.sound`. Qualified generic lemma cache saved:

`bfss-fcp-m4f6-generic-input-cut-cbcb667d-c1-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`

The exact **one new principal theorem** in `experiments/openai-math-su2-physical-domain/FCPM4F6PairedSourceGraphInputCut.lean`, blob `c217d66cf9e8ccf39b64aab6488fe62b11447beb`, compiled freshly and passed exact axiom/name/one-root validation, no `sorryAx`, no unexpected warning or hole:

```
M4F6_SOURCE_C1_REAL_PAIRED_INPUT_CUT_ONE_ROOT_STRICT_AXIOMS_PASS
  {'FCP.M4F6PairedSourceGraphInputCut.pairedSourceCoreGraph_eq_physicalInputCut':
   {'propext', 'Quot.sound', 'Classical.choice'}}
M4F6_SOURCE_C1_ONE_ROOT_STRICT_QUALIFICATION_PASS
```

Resource report: 9.76 wall seconds for C1 compilation, MAX_RSS_KB 7019608. New exact qualified C1 proof cache also **saved**:

`bfss-fcp-m4f6-paired-source-cut-c1-c217d66c-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`

Initial workflow creation had a YAML indentation error in two cache `path: |` lines. [Run #39888890089](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39888890089) failed in workflow interpretation *before Lean*; the exact two-line correction in `51cfc2366dda5316925767960ec0146052354b11` led to the formally accepted result. Classify that red as a CI wrapper error, not negative mathematics, and preserve the lesson to validate YAML multiline indentation mechanically prior to launch.

## Exactly what the accepted theorem says

```lean
FCP.M4F6PairedSourceGraphInputCut.pairedSourceCoreGraph_eq_physicalInputCut :
 (LinearMap.range
   ((coreToL2.comp pairedGaugeData.invariantCore.subtype).prod
     (pairedAlgebraData.chargeVector.comp pairedGaugeData.invariantCore.subtype)) :
   Set (FullL2 2 × (SpinIndex → FullL2 2))) =
 {p | p ∈ pairedAlgebraData.fullCoreGraph ∧ p.1 ∈ pairedGaugeData.physicalSpace}
```

It is the literal original gauge-restricted smooth core graph equals source **unrestricted** graph with the *input* in the literal physical Hilbert submodule. No transported definition, no new hypothesis and no physical Hamiltonian/spectral inference.

**Boundary:** independent counterpart (C2), graph-image equality, graph-closure relation, physical output invariance/closed physical operator domains, Hamiltonian/form comparison, and spectrum remain separate. M4F1 previously accepted the required independent smooth-core output preservation under the explicit representation/intertwiner assumptions; C1 itself doesn't prove that.

**Next controlled experiment:** single J-free independent input-cut theorem C2 already source-staged, to be strictly checked through C1's qualified cache, followed by isolated composition only if C2 passes. Do not rerun six-root M4F6 monolith or raise recursion depth. Canonical `main`, draft PR #25 and pinned source math unchanged.
