# FCP BFSS M4F1 — independent Grok review and isolated source-specialization S1

**Date:** 2026-10-22 PDT. **Disposition:** source-stage + deliberately launched isolated strict Gate #1; **not a mathematical acceptance** until independent original Actions verdict. Ledger remains **294** pending result.

## Independent review received

The user supplied Grok's independent proposed program. It (1) accepts the existing named independent kinetic/cubic bridge, M4E5 full smooth intertwining, M4D1 invariant-core membership iff and strictly qualified original D3B generic charge invariance, (2) classifies M4F1 Gate #5's `maximum recursion depth` at `sourceOriginalCoreCharge_mem_invariantCore` as likely elaboration/reduction, not a new formal counterexample, and (3) prioritizes:

1. **Isolated concrete D3B source specialization** without independent transport.
2. A typed source-membership and explicit subtype equality intermediary in M4F1.
3. Only if necessary and mathematically supported, named componentwise kinetic/potential preservation with independent source covariance witnesses.

Important qualification: “J-free conclusion” refers to the *conclusion*, not an unconditional theorem: the current M4F1 theorem has the explicit `J`, `hJ`, `hCAR`, `hHermitian`, `hColor`, `hGamma` hypothesis arguments. Likewise, a plausible transport diagram is not strict proof until the final instantiated statement typechecks. No spectral/Hamiltonian equivalence is implied.

## Freeze and actual isolated experiment

Research branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`, original mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

New standalone module `experiments/openai-math-su2-physical-domain/FCPM4F1PairedSourceSpecialization.lean`, Git blob `3340c823c511a4202f2d15711a3d1b4396445230`, committed as `330c75d42d7567fc85b63dc01860b9717fb5f335`.

Exactly one new source-specialization theorem is attempted, with no independent transport source imported:

```lean
theorem pairedOriginalCharge_mem_invariantCore
    (α : SpinIndex) (g : pairedGaugeData.invariantCore) :
    pairedAlgebraData.charge α g.val ∈ pairedGaugeData.invariantCore := by
  exact sourceOriginalCoreCharge_mem_invariantCore
    (M := pairedAlgebraData) (G := pairedGaugeData) α g
```

No increase to `maxRecDepth`; no new axioms or holes. Its purpose is to discriminate whether the generic original-source theorem itself can be specialized to actual paired data without the independent charge/transport. Source definitions or cached original `*.olean` are not rewritten.

Intentional isolated strict workflow `.github/workflows/bfss-m4f1-source-specialization-s1-strict-gate1.yml`, triggering commit `94a06b4c7dcc46fe7db828c0cba54cbe2750bcad`: [run #39885669948](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39885669948). At initial inspection: **in progress**, no proof verdict yet.

The workflow includes exact source and adapter Git-blob preflight, immutable original source/toolchain pins, restores accepted M4F5 and the actual saved full-G4 Gate #5 qualified cache, strict-recompiles G4K10A/D3A/D3B (the unchanged genuine D3B and only previously source-exact D3A compatibility adapter), validates actual printed source axiom reports, **saves its own qualified D3B import checkpoint immediately before attempting the new theorem**, and strictly compiles the isolated source-specialization one-root target. On success only it may save a separately keyed new certificate cache. Source, resource and error logs upload regardless of result.

## Truth-first acceptance or stop conditions

- **Green** requires all exact hashes, accepted import closure, `lake env lean -DwarningAsError=true`, exactly the one intended new declaration with allowed axioms `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`, no diagnostic warnings and new cache saved. Even then the proof demonstrates ONLY the concrete original source-specialization theorem; independent M4F1 remains open. Record any accepted theorem ledger update only after reviewing original job and exact source.
- **Red at specialization** establishes an elaboration barrier specific to the *concrete original D3B application* without independent transport; investigate theorem instantiation/instance synthesis and simple typed source membership next. Do not conclude mathematical falsehood or blindly increase depth.
- **Red in toolchain/hash/cache/prerequisite** is categorized as infrastructure or compatibility, not as a mathematical counterexample; preserve the qualified historical work and make at most a focused preflight fix before another CI.
- Keep Grok's suggested componentwise decomposition as a *conditional* backup: do not assume D3B total-charge covariance implies independent kinetic and cubic preservation without independently proving those source components preserve the physical core.

Never modify canonical `main`, draft PR #25 or original pinned math source as part of this investigation.
