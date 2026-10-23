# FCP BFSS M4F6 — C3 Source-Exact Restricted Graph Image Strict Gate #1 controlled launch

**Research date:** October 22, 2026 PDT / October 23 UTC. **Status:** C3 one-principal-root strict run submitted, verdict not yet determined. **Accepted ledger: 298 principal roots**, from the independently qualified C2 Gate #4.

## Accepted prerequisites and source provenance

- Original BFSS math source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No changes.
- M4F4 unconditional **unrestricted** source/independent 17-component graph-image equality under exact `J,hColor,hGamma,hJ`, accepted source `FCPIndependentFullCoreGraphImage.lean` blob `06e98a1b867f21577b5b74033e411d27ba688985`.
- M4C3 physical-input predicate equivalence `independentPhysicalSpace_iff_source` at source `FCPIndependentPhysicalSpace.lean` blob `795f4cbcb15e1c86f5adabbf5cc8cc93c1f0a890`: independent input belongs to actual independent physical submodule iff its real fiber transport belongs to literal original `pairedGaugeData.physicalSpace`. This is conditional on unitary `J` and Majorana intertwining `hJ`, but does **not** define one physical space by transporting the other.
- M4F6 source C1 `pairedSourceCoreGraph_eq_physicalInputCut`: accepted literal source restricted smooth graph expression.
- M4F6 independent C2 `independentCoreGraph_eq_physicalInputCut`: accepted literal independent restricted smooth graph expression, [C2 #4](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39898647790) success, one principal root, total **298**. Qualified C2 cache `bfss-fcp-m4f6-independent-c2-named-alias-976ca4ed-gate4-v1-adc7f124-lean4341-d13f23b-Linux-X64`; depends on strictly compiled supporting A1/B1; those are separately verified and counted as nonprincipal.
- Generic `FCP.RestrictedGraphInputCut.image_input_cut` already strictly accepted: under `T = H '' S` and `P p ↔ Q(H p)`, it identifies the target set restricted by `Q` with the image under `H` of source set restricted by `P`.

## Exact new C3 theorem

Candidate `experiments/openai-math-su2-physical-domain/FCPM4F6RestrictedGraphImageC3.lean`, exact source blob `b9d707d8a9ca1100fda35872ebbfeb83c56dbd2a`. It contains **one** new principal theorem:

```lean
FCP.M4F6RestrictedGraphImageC3.sourceRestrictedCoreGraph_eq_independent_image
```

Conclusion: the **literal original** graph
`LinearMap.range ((coreToL2.comp pairedGaugeData.invariantCore.subtype).prod (pairedAlgebraData.chargeVector.comp pairedGaugeData.invariantCore.subtype))` equals `(independentGraphTransportHomeomorph J) ''` of the **literal independent** graph
`LinearMap.range ((independentCoreToL2.comp (independentInvariantCore theta hCAR hHermitian).subtype).prod ((independentChargeVector color gamma theta).comp (independentInvariantCore theta hCAR hHermitian).subtype))`.

Exact input assumptions: independent `E`, `color`, `gamma`, `theta` satisfying original CAR/Hermitian assumptions; `J : E ≃ₗᵢ[ℂ] Fermion 2`, `hColor`, `hGamma`, `hJ`. No new premise of output physical invariance. The proof builds separately typed `hPhysical` via accepted M4C3 and `hFull` via accepted M4F4, then uses a three-step `calc`: accepted C1 source input cut, accepted generic `image_input_cut`, and `congrArg` applied to accepted C2 independent input cut. No expansion of heavy `Lp`/gauge/charge internals is required by the intended proof architecture, but actual Lean conversion remains to be tested.

## Narrow strict gate and stopping conditions

Workflow `.github/workflows/bfss-m4f6-restricted-graph-image-c3-strict-gate1.yml`, commit `4e8c93fe508ffa7a853449e4dd10234b7f5518d8`, self-trigger only, [GitHub Actions #39899811008](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39899811008).

- Exact SHA pins of all cited source files and original mathematics, pinned Lean/Mathlib checks, separate qualified M4F5, C1, A1, B1 and **new C2** cache restore, required `.olean` closure.
- Preflight checks exact CAR type against frozen C2, new exact C3 theorem name/axiom print, original physical submodules, concrete restricted graphs, accepted C1/C2/M4C3/M4F4/generic lemma dependencies.
- Fresh 105s bounded `lake env lean -DwarningAsError=true` compilation, **one** fully qualified principal theorem axiom report, whitelist only `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`/extra warnings/Lean errors. Cache only saved on full green, original logs and resources uploaded on any verdict.
- Initial static checks of all `run: |` YAML block indentation and cache `path: |` blocks passed. This avoids the old C2 zero-runner-job YAML regression. Exact C3 source blob pinned. Do not infer green from workflow scheduling or source preflights.

**Green:** after inspecting completed original Actions job/compiler log, exact root report and cache save, accept exactly **+1 principal root**, ledger **299**, then isolate restricted graph closure under accepted 17-component homeomorphism as a separate theorem. **Red:** diagnose the first specific compiler/wrapper failure, preserve it; do not claim mathematical contradiction or automatically raise recursion limits.

**Scientific boundary:** Restricted smooth-core graph set-image equality is not physical output membership, single-valued graph closability, equality of closed physical charge operators or domains, Hamiltonian form/domain equality, spectrum, or a mass gap. Canonical `main`, draft PR #25 and frozen source math remain unchanged.
