# BFSS SU(2) H5E8AP — source-exact original physical sixteen-charge closed-graph parity (0.1.0)

**Date:** 2026-10-17 PDT. **Disposition:** `PASS__ACTUAL_ORIGINAL_GAUGE_RESTRICTED_SIXTEEN_CHARGE_GRAPH_CLOSURE_PARITY__SIX_AXIOM_CLEAN_ROOTS`.

**Classification:** Source-defined Hilbert graph/analytic equivalence, research branch only. **Not** an independent 2026 manuscript realization certificate, a complete Hamiltonian-domain unitary conjugation, a Spin(9) spectral proof, a positive-eigenvalue theorem, or a mass gap.

## Exact acceptance

- [Physical Closed Graph Parity #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39050612811) **SUCCESS**, strict `exact-physical-closed-graph` job **117448282127**, workflow/source commit `295201e17783099f914c9a8671e4c14d88e95920`. The job compiled **all thirteen** pinned original AD/AE/AF/AG/AH/AI/AJ/AK/AL/AM/AN/AO/AP source probes in one runner and produced a fresh AP `.olean`.
- Exact AP source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8APOriginalPhysicalClosedGraphParityProbe.lean`, Git blob **`148cb78c918f9ab6836e3bc49acc7d60e356b817`**. AP is distinct from previously accepted AO source blob `8ed162109704a1bee07869dab8d60fc70446d484`; genuine AJ source blob `23bce6337e42dffb530339d54eef95378d9230b1`.
- Frozen mathematical source **`etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`**, Lean **4.34.1**, Mathlib **`d13f23b723b8a846827a245b89c10fc7d3f11612`**; source SHA verification and accepted G1A/Fock cache integrity passed.
- All **six** AP `#print axioms` roots printed **exactly** `[propext, Classical.choice, Quot.sound]`, with no `sorryAx`, Lean errors, or absent declarations. Strict CI marker `L6H5E8AP_ACTUAL_SOURCE_PHYSICAL_CLOSED_GRAPH_PARITY_ALL_SIX_ROOTS_CLEAN_PASS` emitted.
- Qualification evidence artifact `bfss-su2-opposite-gamma-39050612811`, artifact ID **12107477085**, digest `sha256:04521d557ad2974df39fa361acc2f281c30a6d9e6a7b38f8ffb465b0cb61855a` (short-retention logs; permanent run and source remain in GitHub). No new axiom or source convention change.

## Exact theorem boundary

Original namespace `FCP.BFSSSU2PhysicalDomainL6H5E8AP`:

1. `originalPhysicalGraphPairParity_twice`: original simultaneous FullL2/16-output parity is involutive as an exact function on the original graph ambient space.
2. `originalPhysicalGraphPairParity_continuous`: the actual componentwise parity is continuous for the original FullL2 × (SpinIndex → FullL2) product topology.
3. `originalPhysicalGraphPairHomeomorph`: the same literal map is a genuine homeomorphism, without an assumed inverse.
4. `originalPhysicalCoreGraphSet`: defined as the **range of the literal original `(coreToL2 f, M.chargeVector f)` on genuine `G.invariantCore`**.
5. `originalPhysicalCoreGraphSet_image`: the actual original gauge-restricted sixteen-charge core graph maps exactly (both directions) to the opposite-gamma source graph; the new proof specializes already-qualified AO witnesses.
6. `originalPhysicalClosedGraphSet_image`: **the image of the topological closure of the original restricted core graph equals the closure of the opposite-gamma restricted core graph**, via the actual homeomorphism's `image_closure` theorem.

All source labels, all sixteen charge outputs, original fermionic/gauge action, original spatial inversion, source gamma sign and normalization are unchanged. The image theorem is a *set equality in the pinned original FullL2 product graph space*, not a formal analogy or a postulated operator equality.

**Important distinction:** This AP gate uses original `M.chargeVector` directly; the previously accepted H5E8AB Gate #361 gives the independent exact `h=1,m=0` source `G.deformedModelGraph` identification. This gate does **not** jointly restage G4K9D/H5E8AB or independently re-audit D2B26–D2B28 associated-Hamiltonian theory. A future combined theorem must explicitly apply the qualified source-identification bridge rather than claiming the definitions coincide automatically.

## Valuable first-failure evidence

[Physical Closed Graph Parity #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39050036343) **RED**, job **117446605201**, candidate commit `eda5b1564044d2508675285744efc3c176ef894c`, original AP blob `64f6135fcbfe427a4a097d0d828a3d0b575d04b0`:

- AP line 59: **`Continuous.prod_mk` unknown identifier in pinned Lean/Mathlib**; using it in an `apply` consumed the surrounding goal incorrectly and caused the secondary “No goals to be solved”.
- AP image-of-core-range proof: **deterministic `whnf` heartbeat exhaustion**, 240000 heartbeats, at the source-dependent core image theorem. A later closed-image declaration and axiom printout were contaminated by missing/failed dependencies; **none were accepted**.
- This was **not evidence against the mathematical graph equivalence**. The older AO witness modules successfully recompiled in the failed run and retained clean axiom prints.

**Corrective design qualified in #2:** construct the product continuity using `hf.prodMk hg` with componentwise `continuous_pi`; prove a *small abstract `image_range_of_two_way` lemma* with only `Set.range`, `Set.image`, and explicit witnesses; then specialize that lemma to AO's already accepted actual source equalities. This separates basic set transport from huge dependent source reductions. **Do not revert to direct concrete `ext/rintro` matching or merely increase heartbeats** without new evidence.

The repair source commit was [`7d39fb4a720d6b831bb76a4d61d9f1f10aade1ea`](https://github.com/etblink/Foundational-Convergence-Program/commit/7d39fb4a720d6b831bb76a4d61d9f1f10aade1ea) and strict workflow-pin update was [`295201e1`](https://github.com/etblink/Foundational-Convergence-Program/commit/295201e17783099f914c9a8671e4c14d88e95920). No accepted source modules were modified.

## Next genuinely open mathematical proof

**First:** transport **individual graph membership and the actual minimal closed physical sixteen-charge operator domain**, using the accepted H5E8AP image equivalence and source graph uniqueness (not an assumed maximal graph/domain equality).

**Second:** establish the real Hilbert-space isometric/unitary transport on the properly normalized sixteen-charge output (`PiLp` / `WithLp` where used by D2B), preserve the **literal `1/16` closed quadratic form**, and then identify normalized source associated self-adjoint Hamiltonians **including natural domains**, by reusing qualified D2B26/27/28 instead of re-proving them.

**Separately and still open:** the independently stated 2026 manuscript's abstract Cl(48)/Spin(48) representation and gauge-equivariant unitary identification, exact gamma conventions, and global Spin(9)/high-isotype positive-spectrum analytic argument. A Clifford gamma reversal by spatial parity does not supply the other realization bridges automatically.

**Governance:** research branch `research/openai-math-su2-s3l-combined-rotation`, draft PR #25 remains open against `research/openai-math-su2-s3k-physical-spin-flow`. No merge, upstream mathematical-source edit, main change, cache mutation, or spectral claim promotion is authorized or reported.
