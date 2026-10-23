# FCP BFSS SU(2) — After M4F6 C4: vertical uniqueness and true physical operator bridge

**Research scope:** analysis only; no new CI or theorem acceptance claim. **Cumulative strictly accepted principal theorem roots:** 300. C4 original strict Actions [#39900827545](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39900827545), full log and qualified cache checked and separately audited.

## 1. Scientific distinction: closed relation vs closable linear operator

Accepted C4 identifies two *closed submodule graph relations* by the exact 17-component homeomorphism. A closed subset of input × output need not be the graph of a single-valued operator: the **vertical fiber must be trivial**:

```text
∀ y, ((0 : H), y) ∈ closure(restrictedGraph) → y = 0.
```

For a linear relation this condition implies at most one output for any input, permitting `Submodule.toLinearPMap`. The ambient input must eventually be rebased to the **actual independent physical Hilbert subspace**, not misrepresented as densely defined in all unrestricted L². Only after proving physical output membership may the codomain be rebased to `SpinIndex → independentPhysicalSpace`.

## 2. Independently inspected existing source facts

**Original immutable BFSS math:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `lean/OAI/MathematicalPhysics/BFSS/ClosedProfiles.lean`, blob `f51be190cb41621492561a58201833a5d6df6779`, lines 226–242:
- `G.deformedModelGraphMap h m` is the product of the original `coreToL2.comp G.invariantCore.subtype` with `(M.deformedChargeVector h m).comp G.invariantCore.subtype`.
- `G.deformedModelGraph h m` is **the topological closure** of the range of that map.
- `G.deformedModelGraph_vertical h m` proves that an element with input zero of this *source closed relation* has output zero, by inclusion in the closed unrestricted source profile graph.

**Repository source `SU2BFSSPhysicalDomainD2B11OriginalPhysicalClosedChargeColumnProbe.lean`**, blob `41bed09168a6d59df32ecad6e40842a92b9533b9`, lines 43–82:
- `sourceRestrictedPhysicalGraph_isClosed`, `sourceRestrictedPhysicalGraph_input_output_physical`, and `sourceRestrictedPhysicalGraph_unique` are exact source-side statements for `G.deformedModelGraph 1 0`.
- `sourceRestrictedPhysicalGraph_containsCore` uses `sourceChargeVector_equal M` to identify the original undeformed sixteen charges with `M.deformedChargeVector 1 0`; thus the graph in C4 should be comparable to the legacy source closure. **Its exact submodule equality is still a conversion proof obligation**, not granted by a descriptive source analogy.

**Repository `SU2BFSSPhysicalDomainD2B12OriginalPhysicalChargeLinearPMapProbe.lean`**, blob `f908ecdf49d27174f0469d88d4800ba3eb36c80c`:
- `sourceClosedPhysicalChargeColumn_graph_eq` identifies the graph of the genuine closed source `LinearPMap` with `G.deformedModelGraph 1 0`.
- `sourceClosedPhysicalChargeColumn_domain_closure_eq_physical` gives Hilbert-norm density of this operator's input domain in the *actual source physical space*, not unrestricted L².

**Repository `SU2BFSSPhysicalDomainD2B13OriginalSmoothCoreChargeGraphClosureProbe.lean`**, blob `63c9b365ad3b867261469e221529a803252b3f8a`:
- The original source smooth-core `LinearPMap` is closable, its closure equals the actual source closed physical charge column, and that core is a graph-norm core **of that minimal closed realization only**. The proof explicitly reduces source `M.deformedChargeVector 1 0` to the original charge column in an `rfl` after rewriting source equality.
- This source interface is the suitable target of C4 graph closure transport, **but a source-exact alias bridge is still needed**.

**Repository `SU2BFSSPhysicalDomainD2B16PhysicalHilbertRebasedChargeOperatorProbe.lean`**, blob `5ae8c1ea4b5285307e3e1e8eb8a3ea982a0cbfb4`:
- Rebases the *source* closed operator to `G.physicalSpace`, proves graph equality/closedness, output physical membership and density of domain within that true Hilbert input, rather than claiming density in all L².

**Repository `FCPM4F1TypedIndependentInvariantCharge.lean`**, blob `642ba305a7a9a0ca23093b2e873bff6929931f36`:
- Previously strictly accepted `independentCharge_mem_invariantCore` establishes preservation of the independent gauge-invariant smooth core under `J,hColor,hGamma,hJ` and matching original hypotheses. It supports physical output on the **unclosed** independent graph; closed-output invariance must still be justified using closed physical subspaces and graph closure, or transported source result.

**C4 transporter:** `FCPIndependentGraphTransportHomeomorph.lean` blob `8455a6c42f23b2d08f7945188fe5b8ca9e75ac4b`, `independentGraphTransportHomeomorph J` is an actual homeomorphism on input × sixteen outputs constructed from `fiberTransportUnitary J`. Componentwise preservation of input zero and injectivity of output map require explicit typed Lean statements in a future bridge, not an informal claim.

## 3. Prioritized proof architecture — no gratuitous CI

**Bridge V0: source alias identification.** Establish a small, separately typed lemma for the ACTUAL `pairedAlgebraData` and `pairedGaugeData`:

```lean
closure (LinearMap.range
  ((coreToL2.comp pairedGaugeData.invariantCore.subtype).prod
    (pairedAlgebraData.chargeVector.comp pairedGaugeData.invariantCore.subtype))) =
pairedGaugeData.deformedModelGraph 1 0
```

where both sides are coerced to the same exact source ambient `Submodule ℂ (FullL2 2 × (SpinIndex → FullL2 2))`, using `sourceChargeVector_equal`, and exact `deformedModelGraphMap`/closure definitions. This *precise* bridge is an **unproved candidate**, not yet checked for reducibility, namespace or closed-scope theorem accessibility. It is the highest-priority missing interface.

**Bridge V1: independent closed graph vertical uniqueness.** Use accepted C4 and V0: a point `(0,y)` in the independent closure transports to the closed source graph with zero input. Apply the pinned `deformedModelGraph_vertical` and injectivity of the actual `fiberTransportUnitary J` on every output component to deduce `y=0`. Keep source/independent graph relations named and opaque; avoid unfolding theta/CAR/charge internals or raising `maxRecDepth`.

**Bridge V2: actual independent closed `LinearPMap`.** Apply `Submodule.toLinearPMap` to the independent restricted raw graph and, after V1, to its closure. Prove literal graph identities; use Mathlib closure/closability theorems modeled on already audited source D2B12/D2B13. No claim of maximal differential realization.

**Bridge V3: genuine physical codomains and domains.** Prove from M4F1 and closedness/transport that both graph inputs and all sixteen outputs are physical. Rebase via true source and independent physical Hilbert subtypes; use M4C3 physical isometry to transfer domain density and closedness under correctly typed physical products. Only then state an operator-level equivalence, with domain transported exactly. This is **not** Hamiltonian equivalence.

**Hamiltonian and spectral questions** remain downstream, after a separate qualified physical closed-operator and quadratic/form/domain identification; no BFSS mass gap has been proved here.

## 4. Governance

First independently verify exact source V0 compatibility and qualified availability in the accepted cache chain. Stage a minimal source bridge and test *one* actual obligation if justified, after checking all workflow preflights for comment sensitivity and YAML validity. A red is feedback, not a false theorem; do not rerun equivalent `exact/simpa` conversions blindly. A source theorem may already be accepted in a historical gate yet unavailable in the current qualified cache, which must be checked separately. Do not count any supporting interface as a newly proved principal root without a qualified original mathematical target.

Canonical `main` and unmerged PR #25 unchanged; original math pinned; strict axioms restricted to `propext`, `Classical.choice`, `Quot.sound`.
