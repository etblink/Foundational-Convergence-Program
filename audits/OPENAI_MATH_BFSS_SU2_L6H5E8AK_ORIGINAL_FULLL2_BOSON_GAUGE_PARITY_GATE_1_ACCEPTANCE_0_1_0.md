# Original BFSS L6H5E8AK — spatial parity commutes with literal source SU2 boson gauge pullback (0.1.0)

**Date:** October 17, 2026 PDT.  
**Disposition:** `PASS__ORIGINAL_SOURCE_FULLL2_PARITY_BOSON_GAUGE_COMMUTATION__TWO_KERNEL_AXIOM_CLEAN_ROOTS`.
**Boundary:** The actual original `GaugeData.boson` and `GaugeData.bosonPullback`, not a fabricated group representation. The separate `GaugeData.fiberAction`, the **joint** physical Hilbert space `GaugeData.physicalSpace`, invariant SmoothCore, restricted closed 16-charge graph and normalized associated self-adjoint Hamiltonian domains are **not yet** qualified by AK alone.

## Frozen source qualification

- [BFSS SU2 FullL2 Boson Gauge Parity #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39041502666), exact head `e9ff6b9c3104c5efdc31922c0a43a18ab507df54`, job `117421791663`, `SUCCESS`, completed `2026-10-17T14:40:34Z`; artifact ID `12103777948`, logs `bfss-su2-opposite-gamma-39041502666`.
- Candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8AKOriginalFullL2ParityBosonGaugeProbe.lean` source blob `fc298c8d2236d4294992577d08d30072c1777bf9`; qualified AI source blob `4832b4bdf140adaefa3271bea2325a05fde7d1be` and AF source blob `c9f71c6929121226788181ce3547979dcfe6afef`. The job checked these immutable sources and recompiled AF/AI in pinned order.
- Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; accepted original G1A/Fock/cache closure.
- Both AK `#print axioms` roots listed **only `[propext, Classical.choice, Quot.sound]`**; strict log `L6H5E8AK_ACTUAL_SOURCE_FULLL2_BOSON_GAUGE_PARITY_AXIOM_CLEAN_PASS`, no `sorryAx`, no Lean error.

## Exactly accepted source mathematical roots

1. `originalSourceGaugeBoson_commutes_neg`: the original `G.boson g` is a `Boson N ≃ₗᵢ[ℝ] Boson N` (as **defined** by upstream `AlgebraData.GaugeData`); therefore (G.boson(g)(-x)=-G.boson(g)(x)) for every source gauge group element and original bosonic coordinate. This is the source `map_neg`, not an assumed new bosonic symmetry.
2. `originalFullL2Parity_bosonPullback`: on **actual original** `FullL2 N`, the certified parity operator `P₂` commutes with **actual source** `G.bosonPullback g = Lp.compMeasurePreservingₗ ℂ (G.boson g) ...` for every (gin SU(N)). The Lean proof composes exactly the two measure-preserving pullbacks, then compares resulting actual Lp equivalence classes by `Lp.ext` and pinned almost-everywhere `Lp.coeFn_compMeasurePreserving`. It avoids dependent rewriting of a function under its measure-preservation certificate (the exact defect diagnosed and fixed in AJ #1).

## Important unresolved distinction

Source `physicalSpace` is the intersection of the kernels of `G.bosonPullback g - G.fiberAction g`, *not* just a boson-invariant subspace. **AK does not yet prove physical-space preservation by (P₂).** Next show `P₂ G.fiberAction g = G.fiberAction g P₂` for the original Fock fiber representation by commuting pointwise fiber transformation with original Lp domain pullback. Combine this with AK to show (P₂) preserves the literal `G.physicalSpace` and `G.invariantCore`, then use full source AH core supercharge parity and AJ true Lp unitary to transfer the original **restricted** sixteen-charge graph and its closure, normalized `(1/16)` associated Hamiltonian operator **with its domain**. The independent manuscript's Cl48/Spin48 realization and global Spin9 positive eigenvalue theorem are still open.

No canonical main, upstream, pinned dependency, accepted proof file, or PR #25 draft/base/merge status changed.
