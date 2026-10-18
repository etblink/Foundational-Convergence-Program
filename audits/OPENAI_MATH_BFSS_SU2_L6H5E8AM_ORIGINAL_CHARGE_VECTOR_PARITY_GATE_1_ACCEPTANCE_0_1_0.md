# Original BFSS SU2 H5E8AM — full sixteen-charge-vector parity (0.1.0)

**Date:** October 17, 2026 PDT.  
**Disposition:** `PASS__EXACT_ORIGINAL_SIXTEEN_SUPERCHARGE_OUTPUT_PARITY__TWO_AXIOM_CLEAN_ROOTS`.  
**Scope:** Actual upstream original SmoothCore N / chargeVector and actual upstream FullL2 N. This does not yet prove physical restricted charge-graph *closure*, normalized Hamiltonian operator-domain equivalence, the manuscript Cl48/Spin48 implementation or global Spin9 positive spectrum.

## Exact qualification

- [BFSS SU2 Original Charge Vector Parity #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39047258350), source/workflow head `c9560361be9492acb859b653c2aa01fe3afea7d9`, proof job `117438400225`, strict `SUCCESS`, completed `2026-10-17T16:02:31Z`.
- Evidence artifact `bfss-su2-opposite-gamma-39047258350` ID `12106457538` with compiler and proof logs. Original exact candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8AMOriginalSourceChargeVectorParityProbe.lean`, source blob `0c42f5111fd9ff58ba9410f31047a2e922b28d76`.
- Strict gate recompiled accepted source AD (actual opposite gamma), AE (exact kinetic/cubic sums), AF (genuine original smooth parity), AG (actual source derivative sign), AH (entire source smooth-core supercharge parity), and AI (exact FullL2 parity/coreToL2 embedding) under pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- `originalSmoothParity_twice` and `originalChargeVector_parity` both `#print axioms` exactly within `[propext, Classical.choice, Quot.sound]`, no `sorryAx` or Lean errors. Strict gate printed `L6H5E8AM_ORIGINAL_SIXTEEN_CHARGE_VECTOR_PARITY_AXIOM_CLEAN_PASS`.

## Exact theorem

```lean
FCP.BFSSSU2PhysicalDomainL6H5E8AM.originalChargeVector_parity
    {N : ℕ} (M : AlgebraData N) (f : SmoothCore N) :
    (oppositeGamma M).chargeVector (originalSmoothParity f) =
      (fun α : SpinIndex => originalFullL2Parity ((M.chargeVector f) α))
```

This is an equality of literal original BFSS sixteen-index `SpinIndex → FullL2 N` outputs. It *does not* merely assert componentwise formal kinetic/cubic covariance: it composes already-qualified full literal `AlgebraData.charge` conjugation with genuine original `coreToL2` parity, and typechecks the full source `chargeVector`. No relabeling, rescaling, extra source operator or undocumented assumption introduced.

## New physical-boundary composition

Previously accepted AI/J gives actual unitary (P₂) on `FullL2 N`; AK/AL gives physical `G.physicalSpace` and invariant smooth `G.invariantCore` parity preservation. AM proves all 16 source charge outputs transform under coordinatewise (P₂).

Further qualification needed to construct/compare **dependent source GaugeData** for `oppositeGamma M`, and prove the original `G.deformedModelGraph 1 0` / opposite-gamma gauge-restricted sixteen-charge graph are mapped by product-space parity and their **topological closures** agree; only then transport the exact normalized associated `(1/16)T†T` self-adjoint Hamiltonian with *full operator domain*. No manuscript representation or spectral theorem is established.

The independent prospective AN GaugeData #1 was **red**: source `M.GaugeData` and `(oppositeGamma M).GaugeData` are not *definitionally* identical indexed structures even though the original boson and fermion representation fields can be copied. A repaired AN explicit-structure proof, with no new assumptions, is undergoing its own strict audit; do not count AN as accepted until its independent gate passes.

No accepted source/pinned math changes, no canonical main modification, PR #25 remains draft and unmerged.
