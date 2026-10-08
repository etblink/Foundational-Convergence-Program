# BFSS SU(2) G2-A — genuine bosonic GaugeData group action gate 0.1.0

**Date:** 2026-10-08  
**Status:** `G2A_BOSON_CANDIDATE_UNCOMPILED`

## Frozen objective

Use the actual `FCP.BFSSSU2GaugeG1A.pairedAlgebraData : OAI.BFSSQuantum.AlgebraData 2` (Gate #87), not a replacement model, and exact pinned upstream `GaugeGroup 2`. Construct:

1. `bosonGaugeEquiv (g : GaugeGroup 2) : Boson 2 ≃ₗᵢ[ℝ] Boson 2`, acting exactly as `pairedAlgebraData.gaugeConjugate (g : ColorMatrix 2)`.
2. `bosonGauge : GaugeGroup 2 →* (Boson 2 ≃ₗᵢ[ℝ] Boson 2)`, genuinely satisfying the group identity and composition law.
3. The exact required upstream `GaugeData.boson_adjoint` statement for that action:
```lean
∀ g x i,
  pairedAlgebraData.matrixCoordinate (bosonGauge g x) i =
    (g : ColorMatrix 2) * pairedAlgebraData.matrixCoordinate x i *
      (g : ColorMatrix 2).conjTranspose
```

Primary pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1:
- `GaugeOrbits.lean`, blob `d6343a145884b289716c04b2bdc6acb99bfa839a`: `gaugeConjugate_linear`, `gaugeConjugate_inner`, `gaugeConjugate_mul`, `gaugeConjugate_one`, `gaugeAction_inv`;
- `GaugeGeometry.lean`, blob `db8cf65e11799d156c1fc698ec885ae81c013414`: `colorEmbed_conjugate`, `spatialColor_gaugeConjugate`;
- `ColorMatrices.lean`, blob `1c1c2a838c48c0aea2a1c1640da5d412f22e3f0c`: `matrixCoordinate`;
- `GaugeCore.lean`, blob `e4990dadf1d8bde849e351467282ab3f14989c3b`: exact first/third field signatures.

Prove the real Hilbert isometry with inner-product identity and a nonnegative-norm square argument; prove actual bijection with inverse gauge group element, *not* `sorry` or an unproved bijection witness. Preserve the full paired theta family and G1-B proven annihilator identity. Do not claim any `M.GaugeData` until fermionic action and both continuity laws exist.

## Acceptance / stop

No new axioms, `sorry`, `admit`, weakened action, fake field claims, FCP main or upstream writes, increased CI resources or public PRs. Print axioms for action, action application, monoid hom and adjoint proof, require standard-only footprint. One candidate; stop without reading new workflow until owner reports GREEN/RED. Accept or repair only from exact Lean logs.

G1-B qualified at Gate #89, run `37779296083`, job `113318019366`, HEAD `822ade0d2d450169f496cc5d68bda177a0e3d4cd`, source blob `c267bc73b0aee428c612664c164bea40ad85ee62`.

**Project principle:** discover what is true before proclaiming any gauge realization.
