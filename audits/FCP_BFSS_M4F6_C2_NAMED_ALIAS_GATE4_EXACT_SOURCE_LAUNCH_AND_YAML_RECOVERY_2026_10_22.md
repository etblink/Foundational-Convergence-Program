# FCP BFSS M4F6 — C2 named-alias exact original theorem Gate #4, pre-run YAML repair

**Date:** October 22, 2026 PDT / October 23 UTC. **Status:** exact C2 strict gate #4 is launched, Lean verdict pending. **Principal roots remain 297**. The abstract B1 and literal A1 supporting certificates are strictly accepted and importable.

## Accepted parent evidence

- A1 [run #39896595231](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39896595231), job `120228372674`: two literal independent graph/core submodule identities axiom-qualified and qualified cache saved.
- B1 [run #39897430060](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39897430060), job `120230987015`: one abstract named-alias graph input-cut theorem axiom-qualified, wall 10.32s, max RSS 6979240 KB, cache saved `bfss-fcp-m4f6-generic-named-alias-b1-b826575e-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Independent C2 Gates #1, #2 and #3 remain genuine Lean recursion reds. These are not reclassified as accepted.

## Source-exact C2 candidate

Created `experiments/openai-math-su2-physical-domain/FCPM4F6IndependentGraphInputCutNamedAlias.lean`, Git blob `976ca4ed439f63566d49611566299d66d33a5fd1`. This file is **byte-for-byte identical** to original C2 source `FCPM4F6IndependentGraphInputCut.lean`, blob `4db1bbd1685555a3c00efd836577186782ff08bb`, **except** a two-module import change and exactly one proof-body replacement. The entire theorem statement and original independent CAR/Hermitian hypotheses are unchanged.

Proof body:

```lean
  exact FCP.M4F6GenericNamedAliasInputCut.core_graph_input_cut_with_named_aliases
    (independentCoreToL2 (E := E))
    (independentChargeVector color gamma theta)
    (independentPhysicalSpace theta hCAR hHermitian)
    (independentInvariantCore theta hCAR hHermitian)
    (independentFullCoreGraph color gamma theta)
    (FCP.M4F6IndependentLiteralAliasBoundary.independentInvariantCore_eq_actualComap
      theta hCAR hHermitian)
    (FCP.M4F6IndependentLiteralAliasBoundary.independentFullCoreGraph_eq_actualRange
      color gamma theta)
```

No `J`, source substitution, altered physical space/graph, added hypotheses, extra axioms, `sorry`, `admit`, or recursion-depth increase. The scientific question is whether Lean can check the now literal, concrete C2 theorem using **pre-compiled explicit A1 equality bridges and abstract B1 theorem** without extensive definitional reduction. A green is not guaranteed by abstract B1 green.

## Gate and first wrapper-only red

Initial path-only workflow `.github/workflows/bfss-m4f6-independent-c2-named-alias-strict-gate4.yml`, commit `5ab09315624c7c7c90ab0df2efbc5e371aec7303`, launched [run #39898503899](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39898503899) which completed **immediate failure with zero runner jobs**. This is a GitHub workflow-definition red, **not** a Lean/math run.

The first version had a Python `old_proof='''...'''` / `new_proof='''...'''` triple-quoted string in the YAML `run: |` command. Its internal body lines were indented four spaces, not the **minimum ten spaces** required to remain in the step's YAML literal block; GitHub could not parse the workflow, hence no runner. This exact construction/validation error is negative process knowledge.

The workflow-only correction `d1d2e911905055e00004b3c24e2f48d63c5ff38d` replaced those YAML-breaking triples with parenthesized Python string literals carrying `\n` escapes and a correctly indented 10+ space prefix on every Python line. Independently re-fetched the workflow, checked **every `run: |` block** for valid indentation, and reconstructed the exact expected candidate file from the frozen original import+proof replacement: **byte-for-byte match**. Frozen source hashes, imported caches, allowed axioms, theorem name and timeout were unchanged.

Corrected one path-only [run #39898647790](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39898647790) launched with recognized workflow name `BFSS M4F6 Independent Named Alias C2 Strict Gate 4`.

## Strict acceptance contract and stopping rule

- Enforce original pinned BFSS `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact accepted M4F5/C1/A1/B1 caches and required `.olean` closure checks.
- Verify candidate theorem exact one import+proof change in a separate source-diff preflight. Compile only the original fully qualified C2 theorem `FCP.M4F6IndependentGraphInputCut.independentCoreGraph_eq_physicalInputCut` under `-DwarningAsError=true`, capped 105s, reject any `sorryAx`, unexpected warnings/errors or forbidden axioms beyond `propext`, `Classical.choice`, `Quot.sound`; save new qualified source closure only upon *whole* run success. Archive full compiler and resource logs on any outcome.
- **Green**, upon independent verification of original job, exact theorem axiom report and saved cache, formally accept exactly **+1 principal root** (297 → **298**). Then begin separate exact restricted graph image/closure transport proof, with physical input predicate transport still explicitly required.
- **Red**, classify first precise failure. If actual Lean conversion recursion remains, do not retry B1 application with cosmetic tactics or raise recursion limit; identify the remaining syntactic/unification boundary and preserve it. If preflight/tooling error, fix exact wrapper only after static source validation.
- No physical output invariance, closability/closed operator, Hamiltonian equality or spectral comparison conclusion follows solely from C2.

Canonical `main`, draft PR #25, and original mathematical source unchanged.
