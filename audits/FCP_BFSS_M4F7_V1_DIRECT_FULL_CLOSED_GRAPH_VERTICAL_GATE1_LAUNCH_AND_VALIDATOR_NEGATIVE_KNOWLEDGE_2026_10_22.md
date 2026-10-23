# FCP BFSS — M4F7 V1 source-full-graph vertical uniqueness: mathematics pivot and initial Gate #1 launch

**2026-10-22 PDT / 2026-10-23 UTC.** **Status:** V1 Gate #1 in progress; not accepted. **Strictly accepted principal theorem roots remain 300.** Original source, canonical main and draft PR #25 untouched.

## 1. Key new source-based discovery: avoid needless D1 alias dependency

Initial post-C4 planning prioritized identifying the accepted source original restricted graph closure with `pairedGaugeData.deformedModelGraph 1 0` through old accepted physical-domain D1. That theorem is genuinely accepted historically, [D1 Gate #2 #38014546454](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38014546454), source blob `c601d5888e24d0a9bc8f62f2bff368fc29299b5d`. But its original accepted caches were branch-scoped and re-establishing source G4K10A/D1 `.olean` closure would be expensive and structurally irrelevant to the **vertical uniqueness** goal.

Independently inspecting `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `lean/OAI/MathematicalPhysics/BFSS/Core.lean` (blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, lines 318–350), revealed the **already pinned source**:
- `M.fullCoreGraph = LinearMap.range (coreToL2.prod M.chargeVector)`.
- `M.fullClosedGraph = M.fullCoreGraph.topologicalClosure`.
- `M.fullClosedGraph_vertical`: any `((0 : FullL2 N),y)` in the **unrestricted original full closed graph** satisfies `y=0`.
- The genuine restricted core graph is a submodule of the unrestricted core graph via `f : G.invariantCore ↦ f.val : SmoothCore N`. Therefore `closure(restricted graph) ≤ M.fullClosedGraph` by `Submodule.topologicalClosure_mono`.

**Thus there is a shorter mathematical path to independent restricted graph trivial vertical fiber:** source restricted closure `≤` source full closed graph, C4 transports independent restricted graph closure into it, source `fullClosedGraph_vertical` forces transported outputs to zero, and the accepted full-L² fiberwise unitary injectivity forces each independent output to zero. This does not depend on any uncompiled historical source D1 alias in the current research cache.

## 2. Exact staged candidate

`experiments/openai-math-su2-physical-domain/FCPM4F7IndependentRestrictedClosedGraphVertical.lean`, immutable blob `6b607a8276fa5f787e94473ca47f874c3b69d7b8`, committed in [`ee8ff85a`](https://github.com/etblink/Foundational-Convergence-Program/commit/ee8ff85ac0a13869a9ab337022462cc89d55b224).

Two proposed Lean theorems:
1. Supporting `FCP.M4F7IndependentRestrictedClosedGraphVertical.sourceRestrictedGraphClosure_le_fullClosedGraph`, a source-original BFSS submodule inequality.
2. Principal `FCP.M4F7IndependentRestrictedClosedGraphVertical.independentRestrictedCoreGraph_closure_vertical`, the exact genuine independent restricted closed-graph vertical-fiber uniqueness under the *same* original CAR/Hermitian and actual `J,hColor,hGamma,hJ` parameters as C4.

The two declarations have not passed the compiler as of writing and must not be counted. No new postulates, source physics changes, modified gamma/mass choice, `maxRecDepth` increase, or assertion of operator domain equality. The target is a **closability-enabling vertical-fiber theorem**, not the closability result itself.

## 3. One strict V1 workflow — evidence and remaining issue

Isolated path-self-trigger `.github/workflows/bfss-m4f7-independent-vertical-v1-strict-gate1.yml`, workflow commit [`f181bc39`](https://github.com/etblink/Foundational-Convergence-Program/commit/f181bc39233c4446686df2a4bebcf4fd1f8027f2), [Actions run #39902645718](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39902645718). It was in progress when last checked, before Lean compilation.

Frozen original math, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, source SHA and comment-aware no-hole checker inherited from accepted C4; restores the exact accepted C4 cache `bfss-fcp-m4f6-restricted-graph-closure-c4-7a248ff9-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`; verifies source `Core.olean`. Fresh Lean under `-DwarningAsError=true`, bounded 105 s, with both theorem roots and `#print axioms` whitelist `propext`, `Classical.choice`, `Quot.sound`; new cache only on whole-gate strict success, logs archived on any outcome.

**Pre-discovered validator defect, no second CI launched:** During a readback of the submitted workflow, the newly generated *postcompile axiom-validator Python block* was found to use incorrectly escaped raw regexes, e.g. `r'^theorem (\\S+)'` instead of `r'^theorem (\S+)'`. This can reject even a clean Lean proof because the regexp matches a literal backslash rather than a non-whitespace theorem name. The source candidate and actual Lean compiler are untouched, but a full workflow GREEN under this validator is not expected. **Do not award an accepted theorem from a compile-only success.** Check original job for the actual *first* compiler error or a *postcompile only* validator defect. If the math compiles, make a source-hash-preserving, validator-only repair with real test cases of the exact theorem names and expected Lean axiom report before triggering any second gate. If the math fails, diagnose that specific Lean issue first. No competing CI while the current run is active.

**Reason to preserve this defect:** prior M4F6 D1/A1/C2 workflow wrappers failed on documentation-sensitive validators and malformed YAML and were honestly classified as pre-/post-Lean infrastructure, not theorem failures. This new case reinforces the instruction to execute full validator regex tests *before* committing a workflow, not merely check its indentation and source pins.

## 4. Scientific downstream boundary

Once V1 is strictly accepted, derive an actual independent closed `LinearPMap` from the original restricted submodule closure using the proven trivial vertical fiber (Mathlib `Submodule.toLinearPMap`), exactly as the accepted source D2B12 chain; prove graph equality and `IsClosed`. Then prove independent physical input/output membership and domain density **in the genuine independent physical Hilbert space** before claiming a densely defined closed physical operator equivalence. A source closed-graph relation and its unitary image alone do not justify a physical Hamiltonian, spectral equivalence or mass gap.

No canonical main merge, no PR #25 merge, and no invented count. Accepted ledger remains **300** until a complete strict theorem gate really passes.
