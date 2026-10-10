# BFSS SU(2) Physical Domain — Gate #83 Exact Normalized Form Transport Acceptance 0.1.0

**Date:** 2026-10-10 (Pacific)  
**Scope:** Qualified research-branch proof, with exact pinned kernel/axiom verification; no main merge, upstream PR, physical spectrum claim or framework verdict change.

## 1. Accepted source authority

- **Latest green:** `BFSS SU2 Physical Domain Bridge #83`, GitHub Actions run `38054440127`, job `114219901688`; exact verified proof commit `3e8eefd14be547cd9ed294378930ca13c5c723a1`.
- File: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B22ExactHilbertEnergyFormTransportProbe.lean`.
- The workflow rechecked the exact frozen predecessor/cache lineage and D2B11–D2B21, including Gate #78 genuine source physical natural-domain adjoint-square self-adjointness.
- **Six** D2B22 `#print axioms` declarations qualified, each allowing only `propext`, `Classical.choice`, `Quot.sound`; `sorryAx` absent. Exact marker `D2B22_EXACT_1_OVER_16_SOURCE_HILBERT_FORM_ENERGY_PASS`.
- Pinned source/toolchain unchanged: `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## 2. What is proved

Let `T := sourcePhysicalHilbertChargeColumn M G` on the TRUE input Hilbert space `G.physicalSpace`, output `PiLp 2 (fun _ : SpinIndex => FullL2 2)`, and `Q := sourceClosedPhysicalChargeColumn M G` on the originally pinned ambient input/output spaces. For **every** `u : T.domain`:

1. `sourcePhysicalHilbertCharge_on_originalGraph`: the exact pair `(u, sourceChargeOutputHilbertEquiv (T u))` lies in `G.deformedModelGraph 1 0` after canonical physical input inclusion.
2. `sourcePhysicalHilbertToClosedChargeDomain`: a canonical map from `T.domain` into the actual `Q.domain`, with literally the same FullL2 input. No new domain assumption.
3. `sourcePhysicalHilbertToClosedCharge_output`: the corresponding `Q` output is exactly `sourceChargeOutputHilbertEquiv (T u)`; proved through uniqueness in the actual original closed graph.
4. `genericPiLpHilbert_norm_sq_sum` and `sourceChargeHilbertOutput_norm_sq_sum`: the true sixteen-component Hilbert norm square is **exactly** the sum of the sixteen source component squared norms.
5. `sourcePhysicalHilbertChargeEnergy_eq_sourceClosed`: on the FULL closed charge-column domain, not just on the invariant smooth core,
   `(1/16 : ℝ) * ‖T u‖² = sourceClosedPhysicalChargeEnergy M G (sourcePhysicalHilbertToClosedChargeDomain M G u)`.
6. `sourcePhysicalHilbertChargeEnergy_nonneg`: the exact transported form energy is nonnegative.

D2B14 already establishes the actual source-core restriction of `sourceClosedPhysicalChargeEnergy` as exactly `M.coreForm` and `M.deformedCoreEnergy 1 0`. D2B13 already proves graph-core density **for the minimal closed charge graph**. Gate #83 connects the right Hilbert norm and the same source-defined closed graph without an invented dynamics term.

## 3. Failed candidate negative knowledge

Runs **#79–#82 were RED**, not accepted. Their issue was the norm theorem invocation, not the operator, form normalization or graph data.

At this Mathlib pin:
`PiLp.norm_sq_eq_of_L2 (β : ι → Type*) ... (x : PiLp 2 β)`
takes the **dependent family of component spaces**, not the scalar field `ℂ` as its first explicit argument.

Attempts `PiLp.norm_sq_eq_of_L2 ℂ y` triggered misleading `isDefEq`/`whnf` heartbeat timeouts, even through intermediate abstract wrappers. The final source passes `PiLp.norm_sq_eq_of_L2 H y` in an explicit generic theorem, then proves BFSS source coordinate equality without broad simplification. Treat this as an API misuse / elaborator hazard; do not increase heartbeats indefinitely or infer missing mathematics from these timeouts.

The #79–#82 candidates **do not supersede** the green #83 proof. The first two genuine source graph lemmas were compiling even during those red runs; the composite theorem was not accepted until the complete gate passed.

## 4. What's still unproved — next exact obligation

- `SELF_ADJOINT_TSTAR_T = QUALIFIED_GATE_78`.
- `EXACT_1_OVER_16_T_FORM_ENERGY_SOURCE_CORRESPONDENCE = QUALIFIED_GATE_83`.
- `FORM_DOMAIN_COMPLETE_UNDER_GRAPH_FORM_NORM = NEXT_PROOF`.
- `FORM_CLOSURE_OF_ORIGINAL_SMOOTH_CORE_FORM = NEXT_PROOF`, incorporating D2B13 core with *literal* physical Hilbert transport and no maximal-domain claim.
- `ASSOCIATED_OPERATOR_OF_CLOSED_FORM_EQ_ONE_SIXTEENTH_TSTAR_T = NOT_YET_KERNEL_PROVED`; must use the true product domain and the polarized form equation.
- `SCALED_H_IS_SELFADJOINT = NOT_YET_KERNEL_PROVED`; preserve exact `1/16`.
- `MANUSCRIPT_ABSTRACT_SU2_SPIN48_GAUGE_INTERTWINER = NOT_YET_KERNEL_PROVED`.
- `SOURCE_FORM_SPECTRAL_THEOREM_IN_LEAN = NOT_ESTABLISHED`; no new eigenvalues or other new physics claimed.
- `FCP_MAIN_OR_UPSTREAM = UNCHANGED`; `K1_K10_T6_T2 = UNCHANGED`.

**Research route:** First prove that the norm `‖ψ‖² + (1/16)‖Tψ‖²` defines the closed form topology on the true `T.domain` via closedness of the already proven source Hilbert graph. Then make the original smooth core dense in that topology using D2B13 and the exact transport. Finally prove the natural-domain `(1/16)T†T` associated-form representation and uniqueness; do not confuse self-adjointness of `T†T` with the full manuscript operator identification.

Use existing source results, and keep the source search bounded so mathematical proof advances remain primary.
