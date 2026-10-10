# BFSS SU2 physical domain — D3A Gate #5 acceptance and D3B launch 0.1.0

**Date:** October 9, 2026 America/Los_Angeles (Actions UTC October 10).
**D3A disposition:** `PASS__GENUINE_SOURCE_KINETIC_GAUGE_COVARIANCE`.
**D3B status:** `PROSPECTIVE_UNCOMPILED`; no full-charge/physical-space theorem accepted until next dedicated gate.

## Verified D3A evidence

- [BFSS SU2 Physical Domain Bridge #5](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38015858191), run `38015858191`, job `114105811828`, conclusion `SUCCESS`, tested exact commit `fbb6306a2a3c49b26e94c5e91d01920fd1145708`, D3A source blob `32b525602dd6c0266f8b78b2349fc62639e577c2`.
- The pinned OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, and Lean `4.34.1` source checks passed. The exact G4-K10A qualified `.olean` cache was restored and its module objects verified.
- All five accepted D1 source-restricted graph proofs recompiled with `[propext, Classical.choice, Quot.sound]` only. Both source D3A public theorems compiled and the exact axiom-report guard printed `D3A_EXACT_TWO_STANDARD_AXIOM_REPORTS_PASS`. There was no compiler error and no `sorryAx`. The original Color Gate is untouched.
- `sourceKineticSkewContraction_basisInvariant`: a real orthogonal isometry preserves the *exact original BFSS* operator-valued coefficient/Fréchet-derivative finite contraction.
- `sourceContractedKinetic_gaugeCovariant`: the contracted **original pinned kinetic supercharge contribution** transforms equivariantly with the true source `G.fermion` action on **every** `f : G.invariantCore`, using source `G.invariantCore_fderiv` and `G.kineticSkewLinear_covariant`.
- Exact source theorem statements are unchanged from original D3A commit `14a4465766bf94919da8750e79e3e333227ddc0a`. Gates #3–#4 were finite Lean rewrite and sum-index elaboration failures; their repairs did not introduce physical hypotheses.

This is mathematical improvement of the exact source-covariance bridge, but does not independently prove any spectrum, Hamiltonian-domain equivalence, or physical BFSS ground state.

## Dedicated next candidate D3B

Source file: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD3BFullChargeGaugePreservationProbe.lean`.
Five explicit source-typed target declarations:

1. `sourceDeformedCoreCharge_contracted`: expand the exact source `M.deformedCoreCharge 1 0 α f` into the original source `M.kineticSkewLinear` and `M.deformedPotentialMultiplier`, with no substitute dynamics.
2. `sourceDeformedCoreCharge_pointwiseGaugeCovariant`: combine accepted D3A kinetic identity with source `G.deformedPotentialMultiplier_covariant`, source `G.invariantCore_equivariant`, and the precise original derivative/field decomposition.
3. `sourceOriginalCoreCharge_pointwiseGaugeCovariant`: transfer to source original `M.charge` using previously qualified unconditional G4-K9D charge equality.
4. `sourceOriginalCoreCharge_mem_physicalSpace`: transport pointwise equality to the actual source `FullL2 N` via `coreToL2_ae`, `Lp.coeFn_compMeasurePreserving`, and `ContinuousLinearMap.coeFn_compLp` and show membership in source `G.physicalSpace := ⨅g ker (G.bosonPullback g - G.fiberAction g)`.
5. `sourceOriginalCoreCharge_mem_invariantCore`: conclude that for any gauge-invariant original `SmoothCore N` section, its original BFSS charge is again in the exact `G.invariantCore`, without any unproved density hypothesis.

The **exact same** propositions are intended for every source `AlgebraData N`, `G : M.GaugeData`, and hence the physically instantiated paired SU2 source data. Their validity remains unqualified until CI demonstrates successful Lean elaboration and exactly five reports, each restricted to `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`.

## CI integrity

Dedicated `BFSS SU2 Physical Domain Bridge` workflow remains on `research/openai-math-su2-concrete-potential`, the cache-owner branch. It checks the immutable original G4-K10A chain, and separately freezes D1/D3A source relative to the exact Gate #5 tested commit. It recompiles the unmodified D1 and accepted D3A prerequisites; it now emits the D3A `.olean` object as a module dependency for D3B. Only the new D3B leaf can differ from Gate #5.

No upstream source, original compiled cache key, canonical FCP framework ledger, T6 source-delta classification, main branch, or upstream PR was changed.

## Stop / remaining science

**If D3B succeeds**, D3 is complete: original source charges map every source-gauge-invariant compactly supported smooth state to another such state. **D2 physical smooth-core L² density is then the remaining substantial analytic bridge**, followed by explicit paper source representation/operator form equivalence. A spectral point-spectrum result is not induced by source gauge covariance alone. Do not start an endless elaboration-gate sequence to mask missing physics or hypotheses.
