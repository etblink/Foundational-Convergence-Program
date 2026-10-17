# BFSS SU(2) H5E8AY — actual original-source minimal physical Hilbert charge operator Gate #2

**Date:** 2026-10-17 PDT. **Disposition:** `PASS__SOURCE_ORIGINAL_MINIMAL_PHYSICAL_HILBERT_INPUT_PILP2_CLOSED_LINEARPMAP__EIGHT_AXIOM_CLEAN_ROOTS`.

## Exact immutable compiler and source evidence

- [H5E8AY Original Physical Hilbert Charge Operator Rebase #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39064169846): **SUCCESS**, candidate/workflow commit `37994df12dc2b758e0e8443763c676590af8a601`, strict `exact-physical-hilbert-charge-rebase` job **117488222962**.
- Source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8AYOriginalPhysicalHilbertChargeGraphProbe.lean`, exact immutable blob **`050f744b3d00b0424fd59192340b98ed2b51406c`**.
- Frozen original source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, Mathlib **`d13f23b723b8a846827a245b89c10fc7d3f11612`**; pinned original G1A/Fock/Mathlib cache and file SHA checks succeeded.
- All **21** source charge/parity/operator Lean modules, including accepted AU, AV, AT, AW and AX, compiled, producing fresh AY OLEAN. All eight named `#print axioms` roots print **only** `propext`, `Classical.choice`, `Quot.sound`, with no `sorryAx` or Lean `error:` log. Gate emitted `L6H5E8AY_ORIGINAL_PHYSICAL_HILBERT_REBASED_CHARGE_EIGHT_ROOTS_CLEAN_PASS`.
- Evidence artifact `bfss-su2-opposite-gamma-39064169846`, ID **12112399401**, digest **`sha256:2c80ea565f58a751a534aa0173bd64445ec2bf0491eb5a083b7fd177a1f98340`**, expires October 31, 2026; GitHub run and immutable source remain.

## Eight precise source-typed declarations

Namespace `FCP.BFSSSU2PhysicalDomainL6H5E8AY`:

1. `originalMinimalClosedGraph_input_physical`: first coordinate of **every point** of the actual original invariant source `M.chargeVector` minimal closed graph belongs to the true gauge-invariant `G.physicalSpace`, because the invariant SmoothCore graph lies therein and the source physical subspace is closed. **No density inference**.
2. `originalMinimalHilbertOutputEquiv`: actual pinned `PiLp.continuousLinearEquiv 2 ℂ` converts the finite genuine sixteen-component Hilbert output into the identical original `SpinIndex → FullL2 N` source charge function.
3. `originalMinimalPhysicalHilbertChargeGraph`: exact **comap of the accepted AU original minimal closed source graph**, from `G.physicalSpace × PiLp 2 (fun _ : SpinIndex => FullL2 N)` via physical-space inclusion and the genuine source-output equivalence. NO deformed-model `G.deformedModelGraph 1 0` alias.
4. `originalMinimalPhysicalHilbertChargeGraph_mem_iff`: literal exact source-typed membership iff under that rebasing; no extra operator-domain premise.
5. `originalMinimalPhysicalHilbertChargeColumn`: real Mathlib **`G.physicalSpace →ₗ.[ℂ] PiLp 2 (...)`**, constructed from the actual rebased source closed graph via `Submodule.toLinearPMap`.
6. `originalMinimalPhysicalHilbertChargeColumn_graph_eq`: true operator graph equals the exact rebased source graph; source original `M.fullClosedGraph_vertical` inherited through AU and injective Hilbert-output equivalence ensures single-valuedness, with no axiom.
7. `originalMinimalPhysicalHilbertChargeColumn_isClosed`: actual native partial operator graph is closed in the **correct physical Hilbert input/output topology**, as a continuous preimage of the accepted original closed graph.
8. `originalMinimalPhysicalHilbertChargeColumn_domain_iff`: exact membership equivalence of its **native natural-domain** with AU original minimal source closed charge operator domain for every genuine physical input.

## Gate #1 red and source-preserving repair

[Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39063561845) **RED**, first causal Lean error at source vertical-uniqueness line 106: `subst u` failed because `hu : (u,y).1=0` was not projection-normalized to `u=0`. See [exact permanent negative-knowledge audit](./OPENAI_MATH_BFSS_SU2_H5E8AY_GATE_1_PHYSICAL_PAIR_FST_SUBST_NEGATIVE_2026_10_17.md). The fix was only `dsimp at hu; subst u`, keeping all original source mathematical definitions, group actions, sign conventions, closed graph, and 1/16 normalization unchanged. Red-run downstream `sorryAx` printouts were NOT accepted.

After Gate #2 pass, [commit `4f97ba1631f5310a9f1026f40c2ad39d826ea594`](https://github.com/etblink/Foundational-Convergence-Program/commit/4f97ba1631f5310a9f1026f40c2ad39d826ea594) moves AY's accepted strict workflow to **manual-only** requalification to prevent GitHub accumulated PR path changes from causing redundant costly builds. Original source/hash/allowlisted-axiom checks remain fail-closed. No unrelated source modules or pinned caches changed.

## Critical remaining boundary

**DOMAIN DENSITY IN `G.physicalSpace` REMAINS OPEN IN THIS GATE.** A closed, single-valued physical Hilbert partial charge operator does not imply it has dense domain; do not use `LinearPMap.adjoint` on this new AY operator until that density is separately proved in the **same qualified proof environment**. [Original Gate #47 review](./BFSS_SU2_GATE47_INDEPENDENT_SOURCE_BOUNDARY_REVIEW_PACKET_0_1_0.md) supplies genuine axiom-clean D2B10C Haar theorem `G.coreNormClosure = G.physicalSpace` at source N=2 under the same source/Lean/Mathlib pins, but the historical `.olean` artifact cannot be assumed reachable from current S3L PR. [AZ density reduction candidate](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8AZOriginalPhysicalChargeDomainDensityReductionProbe.lean) states the core-density hypothesis explicitly and attempts to prove domain density conditional on it. **AZ is unqualified pending strict gate**, and even an accepted conditional reduction cannot be advertised as unconditional until D2B10C is jointly imported/verified.

Further OPEN: actual original physical charge adjoint, associated normalized `(1/16)T†T` operator on its EXACT natural domain and parity-conjugation, historical Gate93 D2B12 alias, independent 2026 manuscript Cl(48)/Spin(48) module/gauge and Spin(9) positive-spectrum theorem. No mass gap claimed.

**Governance:** research S3L branch, draft PR #25 open/unmerged, `main`, upstream BFSS source, original parity/gamma signs, Mathlib pins and accepted theorem modules unchanged.
