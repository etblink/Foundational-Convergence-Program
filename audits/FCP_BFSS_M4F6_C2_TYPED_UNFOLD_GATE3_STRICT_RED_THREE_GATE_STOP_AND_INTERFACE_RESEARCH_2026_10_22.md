# FCP BFSS SU(2) — M4F6 C2 Typed-Unfold Gate #3 strict RED; three-gate stop and proof-interface reassessment

**Date:** 2026-10-22 PDT (run completed 2026-10-23 UTC). **Classification:** genuine independent C2 Lean elaboration/conversion recursion, not a certified mathematical counterexample or CI-cache failure. **Accepted principal roots remain 297. C2: 0/1.** The previous exact accepted source C1 root and caches are unaffected.

## 1. Immutable verification from actual original CI

- [Actions run #39891517647](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39891517647), job `120212174341`, `completed/failure`. Triggered source workflow commit `b4858982e21bef441adc74dea6dd9010f616a807`.
- Exact candidate source `experiments/openai-math-su2-physical-domain/FCPM4F6IndependentGraphInputCutTypedUnfold.lean`, Git blob `7c33b8694c74bfff93efff1a445090f41c0a8fa5`; mathematically identical theorem signature and hypotheses to original C2 blob `4db1bbd1685555a3c00efd836577186782ff08bb`. Both exact source-diff preflight certificates passed: `M4F6_C2_GATE3_EXACT_ALIAS_ONLY_PROOF_DIFF_PASS` and `M4F6_C2_GATE3_EXACT_ONE_BODY_WITNESS_PROOF_DIFF_PASS`.
- Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; all source, toolchain, accepted M4F5 graph source closure and **accepted C1** input-cut source cache restoration and `.olean`-closure checks passed.
- Exactly one Lean proof attempt compiled under `-DwarningAsError=true` and failed:

```
FCPM4F6IndependentGraphInputCutTypedUnfold.lean:53:8:
  error: maximum recursion depth has been reached

'FCP.M4F6IndependentGraphInputCut.independentCoreGraph_eq_physicalInputCut'
  depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]

DIAG_RESOURCE_TIME 33.55 CPU 96% MAX_RSS_KB 7100372
```

- Line 53 is `exact core_graph_input_cut` **after** `unfold independentFullCoreGraph independentInvariantCore`, with explicit structural type arguments `X := IndependentTestCore E`, `Y := Lp E 2 μ`, `Z := SpinIndex → Lp E 2 μ`. No new C2 `.olean` or qualified C2 cache was saved; no C2 root accepted. Failed elaborator recovery `sorryAx` is not permitted and is not a source theorem's axiom leak.

## 2. Three-gate negative-knowledge comparison

| Gate | Original immutable Actions | Exact proof architecture | Observed first failure | Accepted roots |
|---|---|---|---|---|
| C2 #1 | [#39889826778](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39889826778), job `120206660997` | `exact core_graph_input_cut` directly against concrete aliases | source line 52: maximum recursion depth, 32.43 s / 7,129,936 KB | 0 |
| C2 #2 | [#39890728887](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39890728887), job `120209587836` | unfold two aliases, set ext, explicit subtype witnesses | source lines 56:19 and 58:20: maximum recursion depth in witness constructors, 31.18 s / 7,231,532 KB | 0 |
| C2 #3 | [#39891517647](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39891517647), job `120212174341` | unfold aliases, call generic lemma with fully explicit X/Y/Z | source line 53:8: maximum recursion depth in generic theorem application, 33.55 s / 7,100,372 KB | 0 |

All three reached actual fresh Lean elaboration after source/toolchain/qualified-cache checks. **Two classes of proof tactic and a type-pinned hybrid have now failed; simple tactic permutations should cease.** Do not raise `maxRecDepth`, expand source BFSS charge/gauge definitions, widen CI timeouts or count any of these red theorems.

## 3. Exact structural mathematics and what is unresolved

Original committed definitions (no alteration):

```lean
def independentInvariantCore : Submodule ℂ (IndependentTestCore E) :=
  (independentPhysicalSpace theta hCAR hHermitian).comap independentCoreToL2

def independentFullCoreGraph ... :
    Submodule ℂ (Lp E 2 μ × (SpinIndex → Lp E 2 μ)) :=
  LinearMap.range
    (independentCoreToL2.prod (independentChargeVector color gamma theta))
```

The independently proposed theorem asks for the graph range restricted by exactly that `comap`, equal to the unrestricted range cut by input membership in `independentPhysicalSpace`. Its abstract form `FCP.RestrictedGraphInputCut.core_graph_input_cut` was already **strictly compiled**, and the paired source-side specialization C1 was accepted with one independent principal root. This supports the intended *set-theoretic algebraic identity*. However, the **exact concrete independent theorem** still has no accepted proof. The error messages do not expose a counterexample or an explicit coercion discrepancy; they establish an elaboration/conversion bottleneck without proving its precise internal source.

A previous bounded inferred-type diagnostic in `FCPRestrictedGraphInputCertificates.lean` printed the instantiated generic application type, with allowed axioms, while its overall workflow remained red; do not count it as accepted or conflate successful `#print` output with kernel verification of C2. The distinction between *type inference of the generic term* and *checking it against C2's separately elaborated concrete target* is now the leading architecture hypothesis, not a proven root cause.

## 4. Mandatory stop; interface research before any fourth CI

**STOP all C2 CI and tactic-variant launches.** No Gate #4 and no speculative change to existing theorem definitions. Preserve the three immutable logs, exact candidate blobs and theorem statement. An audit/handoff documentation commit is permitted because it does not trigger path-scoped Actions.

First perform **offline source/proof-architecture review**:
1. Compare the *fully elaborated* type of `core_graph_input_cut` instantiated with independent `a,b,P` against C2's expected theorem proposition using named abstract `LinearMap` and `Submodule` interfaces. Identify precisely which `LinearMap.range` / `Submodule.comap` / coercion / private measure abbreviation or instance-resolution boundary causes recursive reduction. Do **not** assume the matching expression is syntactically defeq merely from human mathematics.
2. Evaluate a materially new architecture: keep structural maps `a : X →ₗ[ℂ] Y`, `b : X →ₗ[ℂ] Z` and `P : Submodule ℂ Y` opaque in a *separate generic or locally named certificate*, and isolate explicit small equations for the actual independent graph aliases. Each conversion bridge must keep the literal original graph target and all its independent conditions; prohibit replacing the desired independent graph by a merely isomorphic or transported surrogate.
3. If that review cannot identify a bounded, independently checkable new statement, solicit an adversarial mathematics/Lean analysis with all three logs and the exact definitions. A clear recursion/instance issue or counterexample is more valuable than another blindly attempted compilation.

**Only once a genuinely different structural proof interface is formulated and audited** consider authorizing exactly one new path-scoped diagnostic or strict gate. Any resulting theorem is accepted solely after independently verifying original strict compiler output, the three allowed axioms, no `sorryAx`, exact original theorem and a saved certificate cache.

## 5. Governance and scientific boundary

Cumulative accepted principal roots **297**; C1 source restricted input graph theorem accepted; unrestricted M4F4/M4F5 graph and closure transport accepted under their stated hypotheses; M4F1 independent smooth-core preservation accepted under its stated J/hypotheses. C2 restricted independent input graph equality and the subsequent paired/independent restricted graph image/closure remain **unproved**, as do closed physical operator/domain equivalence, Hamiltonian comparison and spectrum.

No changes to canonical `main`, PR #25 or the frozen original math. The methodological principle (truth over greens, preserve negative knowledge, small real interfaces, repeated-red stop) is **previously established project practice**, not a newly discovered insight.
