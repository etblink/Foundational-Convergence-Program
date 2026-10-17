# BFSS SU(2) — L6H5E8AB Gate #361 original source physical-charge graph acceptance (0.1.0)

**Date:** October 16, 2026 PDT / October 17 UTC.  
**Disposition:** `PASS__ORIGINAL_MASSLESS_SOURCE_CHARGE_AND_GRAPH_IDENTITIES__ACTUAL_SOURCE_PHYSICAL_CORE_GAUSS_IFF__SIX_ROOTS_AXIOM_CLEAN`.  
**Scope:** pinned, research-branch Lean/kernel qualification only. **NOT** independent 2026 manuscript Hamiltonian equivalence, proof of Spin(9) spectral reduction, positive-eigenvalue theorem, or mass gap.

## Immutable acceptance evidence

- Strict [Original Source Spin Identity #361](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39001882637), workflow run `39001882637`, original-source-spin-identity job `117306354882`, **SUCCESS**. Workflow head/source SHA `f0683ba298a2c1109677f7bc7a8393265e0e8cda`. Reported execution runtime **22m 9s**; UTC run start `2026-10-17T04:15:28Z`; updated `2026-10-17T04:37:37Z`.
- Saved qualification evidence artifact `bfss-l6g1-source-qualification-39001882637`, ID `12089049527`: [GitHub artifact listing](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39001882637).
- Exact qualified H5E8AB source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8ABOriginalMasslessPhysicalChargeGraphBridgeProbe.lean`, git blob `f2f94e0abdc05db8543b9d92cc4f6033356bc1db`; prior repair commit `f0683ba298a2c1109677f7bc7a8393265e0e8cda`.
- Immutable original external source: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Research branch `research/openai-math-su2-s3l-combined-rotation`; PR #25 base not changed.
- The same accepted job independently **rebuilt and audited the exact G4K1→G4K9D import chain from source** with the blob equality checks against [G4K9D Gate #170](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38011995220), under the pinned qualified H5E8AA #358 environment. CI markers `H5E8AB_G4K9D_ACCEPTED_SOURCE_CLOSURE_RECOMPILED_AND_AUDITED` and `L6H5E8AB_ORIGINAL_SOURCE_GRAPH_BRIDGE_ALL_SIX_ROOTS_QUALIFIED` both emitted after their respective validation steps.

## Six exact accepted roots

Namespace: `FCP.BFSSSU2PhysicalDomainL6H5E8AB`.

1. `original_source_chargeVector_eq_massless`: `M.deformedChargeVector 1 0 = M.chargeVector` for all admissible original `AlgebraData N` — the genuine sixteen-charge map, by G4K9D exact all-core source equality.
2. `original_source_coreGraph_eq_massless`: `M.deformedCoreGraph 1 0 = M.fullCoreGraph` on **unrestricted** original smooth core.
3. `original_source_closedGraph_eq_massless`: `M.deformedClosedGraph 1 0 = M.fullClosedGraph` in the original source `FullL2` × sixteen-output Hilbert product, by the **same closure**.
4. `original_source_smoothCore_invariant_iff_gauss`: membership of the exact actual paired `GaugeData.invariantCore` iff for each original SU2 color index the `coreToL2` representative belongs to the maximal generator domain and is annihilated there. Uses accepted H5E8AA #358, not an invented Gauss domain hypothesis.
5. `original_source_physicalCoreGraph`: exact definition as range of `coreToL2` and original `chargeVector` **restricted to the actual invariant smooth core**.
6. `original_source_physicalGraph_eq_massless`: `G.deformedModelGraph 1 0 = (original_source_physicalCoreGraph M G).topologicalClosure`, for the actual original source `GaugeData` structure, using the source definition `deformedModelGraphMap` and unrestricted charge-vector identity. This is a statement about the **physical restricted graph**, distinct from the unrestricted full closed graph.

The kernel log prints **exactly** `[propext, Classical.choice, Quot.sound]` for each of all six roots. The checked workflow rejects `sorryAx`, missing roots, and Lean `error:` or `unknownIdentifier`; none was accepted. The actual lemma proofs required no new axiom, change of CAR, gauge sign convention, source gamma, definition of closed domain, or synthetic “physical” space.

## Negative knowledge — two preceding reds resolved without altering the mathematics

- [#359 red](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38998813864), job `117297181972`: the newly staged accepted source G4K9D chain **compiled**, but its Python axiom validator mistakenly expected the plain public name of private theorem `sourcePotentialCoefficientExpanded`. Lean correctly emits a generated `_private.SU2BFSSG4K9DSourcePotentialMultiplierProbe.0.…` root. Correct matching in commit `e604cdba932f86cc03dd142be57f5aae057e973d`. This was an **audit naming defect**, not a mathematical contradiction.
- [#360 red](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38998910815), job `117301239520`: the **joint G4K9D+H5E8AA dependencies compiled and passed strict audit**. In H5E8AB, `ext f α` picked deep `Lp` extensionality and reduced an equality of `FullL2` vectors to an a.e. target. Subsequent `change coreToL2 … = coreToL2 …` was not definitionally equal to that target, producing `sorryAx`-contaminated dependents in the failed compilation. No proof accepted in #360. Gate #361 uses `LinearMap.ext`, `funext α`, and `congrArg coreToL2 (sourceUnconditionalCoreCharge_equal M α f)`; this compiled. **Avoid reverting to unqualified deep `Lp.ext`**.
- Gate #361 spent ~22 minutes predominantly on restoring and rebuilding accepted source chains. Preserve source-frozen cache engineering; do not repeatedly recompile all 19 G4K modules just to reprove the same equality or confuse runtime with mathematical complexity. Future gates can cache proven joint closure only with immutable source/integrity checks.

## Exact scientific boundary and next theorem family

**ACCEPTED:** actual original source `h=1,m=0` supercharge, unrestricted smooth/closed graph, physical invariant-core Gauss criterion and **physical graph closure** equalities. Earlier accepted D2B26/27/28 [Physical Domain Gate #93](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38069074087) already establish source weak-form associated operator / normalized `H=(1/16)T†T` self-adjointness on its **natural domain**, including actual paired SU2 specialization. Do not re-prove this source Hilbert operator theory.

**OPEN:** identify the `2026-10-05` independent positive-eigenvalue manuscript's irreducible `48`-Majorana Clifford module and specified `Spin(48)` SU2 gauge lift with the concrete source's `pairedAlgebraData.theta` / `pairedGaugeData.fermion`. Construct/verify a unitary that matches each of the **sixteen** manuscript charges with its source charge, the original invariant `C_c^∞` core with `GaugeData.invariantCore`, their **closed physical charge graphs**, the `1/16` form, and the **associated closed operator domain**. [Issue #28](https://github.com/etblink/Foundational-Convergence-Program/issues/28) documents the conditional Clifford equivalence and SU2 character-rigidity strategy; check actual gamma matrices, CAR irreducibility, one-parameter `+i` sign/orientation and group-law before relying on it.

**SEPARATELY OPEN:** genuine global Spin(9) lift and isotypic spectral reduction, confinement/branching and positive-eigenvalue theorem. This proof does **not** assert a global BFSS mass gap or physical model validation.

**Governance:** researcher truth over green counts; this gate changes no main, source fork/upstream, canonical FCP physics ledgers, PR #25 base/draft state. Keep the original source SHA and the two failure logs available to successors.
