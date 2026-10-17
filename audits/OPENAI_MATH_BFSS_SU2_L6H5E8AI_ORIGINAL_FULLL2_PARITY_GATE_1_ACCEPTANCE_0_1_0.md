# Original BFSS L6H5E8AI — FullL2 spatial parity, exact source acceptance (0.1.0)

**Date:** October 17, 2026 PDT.  
**Disposition:** `PASS__ACTUAL_ORIGINAL_FULLL2_PARITY_COMPLEX_LINEAR_ISOMETRY_CORE_BRIDGE__FIVE_AXIOM_CLEAN_ROOTS`.

## Immutable qualification

- [Original FullL2 Parity #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39040448777), strict job `117418768932`, source/workflow head `a4afd79f73c87ed4380adacf94e57d18b04beac7`, status **SUCCESS**, evidence artifact ID `12103039363` (`bfss-su2-opposite-gamma-39040448777`).
- Exact original FullL2 source candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8AIOriginalFullL2ParityLiftProbe.lean`, Git blob `4832b4bdf140adaefa3271bea2325a05fde7d1be`.
- The gate verifies unchanged original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, original G1A compiled Fock/core cache; recompiles the previously accepted AF source `SU2BFSSPhysicalDomainL6H5E8AFOriginalSmoothParityInvolutionProbe.lean` at blob `c9f71c6929121226788181ce3547979dcfe6afef`, then AI.
- All **five** named AI root declarations printed only `[propext, Classical.choice, Quot.sound]`, no `sorryAx`, no Lean errors, exact verifier marker `L6H5E8AI_ORIGINAL_SOURCE_FULLL2_PARITY_ISOMETRY_AND_CORE_BRIDGE_AXIOM_CLEAN_PASS`.

## Exact new mathematics, not duplicate source model

1. `originalBosonNeg`: the actual real-linear isometry equivalence on original `Boson N`, sourced directly from Mathlib `LinearIsometryEquiv.neg ℝ`.
2. `originalBosonNeg_measurePreserving`: literal bosonic inversion `x ↦ -x` preserves original Euclidean Lebesgue `volume` by pinned `LinearIsometryEquiv.measurePreserving` for real finite-dimensional inner-product spaces.
3. `originalFullL2Parity`: a **genuine complex-linear isometry** `FullL2 N →ₗᵢ[ℂ] FullL2 N` induced by `Lp.compMeasurePreservingₗᵢ ℂ` on original `Lp (Fermion N) 2 (volume : Measure (Boson N))`, without imposing an unproved operation on representatives.
4. `originalFullL2Parity_apply_ae`: almost-everywhere action `P₂g(x) = g(-x)`.
5. `originalFullL2Parity_coreToL2`: **exact original test-function compatibility**, `P₂(coreToL2 f)=coreToL2(originalSmoothParity f)`. This directly uses Mathlib's `Lp.toLp_compMeasurePreserving` and original BFSS `coreToL2`.

The previous AH source theorem [Original Charge Parity #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39035516580) gives the *entire* supercharge equality `Qα(oppositeGamma M)=P Qα(M) P` on literal original `SmoothCore N`. AI now supplies the actual full-L2 lift needed to transport the **pairs** of that core graph, once all domain/gauge hypotheses are formally discharged.

## Strict boundary and next obligations

**The AI theorem by itself is not a surjective (L²) unitary.** The next proof must show `originalFullL2Parity ∘ originalFullL2Parity = id` or surjectivity using the accepted AF smooth-core involution and original dense range `coreToL2_dense`, or exact Mathlib `Lp.compMeasurePreserving_comp_apply` and `id` identities; then package the unitary with `LinearIsometryEquiv.ofSurjective`. Do not label a mere isometry unitary until this proof is accepted.

Further steps: verify (P₂) commutes with the actual source SU(2) bosonic pullbacks and fermionic fiber action, preserves `GaugeData.physicalSpace` and `GaugeData.invariantCore`, and intertwines the original **restricted** sixteen-charge graph and its closure. Only then transport the normalized form `(1/16)‖T·‖²` and associated normalized self-adjoint Hamiltonian **with domain**. The separate manuscript's Cl48/Spin48 unitary realization and global Spin9 isotypic positive eigenvalue proof remain independent, unverified obligations. No positive spectrum or mass gap follows from AI.

No original source, pinned compiler/Mathlib, canonical main, or accepted proof files were changed. PR #25 stays draft and unmerged on its original base.
