# BFSS SU(2) G2-A — Gate #92 formal acceptance 0.1.0

**Research date:** 2026-10-08
**Disposition:** `PASS__GENUINE_BOSONIC_GAUGE_GROUP_ISOMETRY_AND_EXACT_ADJOINT_COVARIANCE`

## Exact kernel and GitHub Actions identity

- Qualified commit: `b0658494e31d39849498dde4dc10a966c86cd803`, branch `research/openai-math-su2-concrete-potential`.
- Proof source: `experiments/openai-math-su2-concrete-potential/SU2BFSSG2ABosonGaugeProbe.lean`, exact Git blob `d6165027f0f4782e9ae9ab3a5e7867f4732793bd`.
- Workflow: `.github/workflows/openai-math-su2-concrete-potential.yml`, exact blob `2737fa69f89921003fad2031fc048045a1bddccb`.
- [BFSS SU2 Concrete Color Gate #92](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37807721403), run `37807721403`, job `113416267818`; checked run, job, step all completed/success, head SHA exact match.
- Pinned Lean v4.34.1 and `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; workflow explicitly builds pinned upstream `OAI.MathematicalPhysics.BFSS.GaugeCore` import closure.

The actual `lake env lean SU2BFSSG2ABosonGaugeProbe.lean` completed without errors or `sorryAx`, with the five printed reports **all exactly** `[propext, Classical.choice, Quot.sound]`:

```text
'FCP.BFSSSU2GaugeG2A.bosonGaugeEquiv' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2GaugeG2A.bosonGaugeEquiv_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2GaugeG2A.bosonGauge' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2GaugeG2A.bosonGauge_adjoint' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2GaugeG2A.bosonGauge_exact_fields' depends on axioms: [propext, Classical.choice, Quot.sound]
```

## Exact mathematical acceptance

Using **the accepted second paired witness** `M := FCP.BFSSSU2GaugeG1A.pairedAlgebraData : OAI.BFSSQuantum.AlgebraData 2`, not a surrogate gauge type:
1. `bosonGaugeEquiv (g : GaugeGroup 2) : Boson 2 ≃ₗᵢ[ℝ] Boson 2` is an actual invertible real-linear norm isometry, with the inverse at `g⁻¹` and `M.gaugeConjugate` pointwise action.
2. `bosonGauge : GaugeGroup 2 →* (Boson 2 ≃ₗᵢ[ℝ] Boson 2)` preserves identity and multiplication as an actual monoid/group representation.
3. For **all** `g x i`, the precise pinned `GaugeData.boson_adjoint` field proposition is discharged:
```lean
M.matrixCoordinate (bosonGauge g x) i =
  (g : ColorMatrix 2) * M.matrixCoordinate x i *
    (g : ColorMatrix 2).conjTranspose
```
No change to old witness, theta family or source theorem strength.

## Failure repair provenance

- Gate #90 on commit `cad2f2ac3f41098481133e21eb5ad2c881ed6d2a` failed because `GaugeCore.olean` was not built. No G2-A theorem was elaborated.
- Gate #91 on commit `cb74fe2242f27044a5f6057e063cc5ad004a055f` built `GaugeCore` and reached source; one `LinearMap.map_smul` elaboration mismatch involved explicit `(RingHom.id ℝ) c`.
- Gate #92 changed only `simpa only [RingHom.id_apply, hL]` for the scalar-field proof. This compiled, without weakening declarations or introducing new axioms.

## Scientific limits and next bounded step

**This is NOT yet an `M.GaugeData` instance.** Still missing `fermion`, `fermion_adjoint`, `boson_continuous`, `fermion_continuous`. No gauge-invariant physical Hilbert space, Hamiltonian operator, confinement, eigenstates or gap has been formally produced from this gate.

Source audit reveals upstream `BFSS/SliceIntegrals.lean` (blob `17d407209b64b465b3d89beffc717f9705ccb9b7`) already proves general `M.gaugeAction_continuous` for `unitary (ColorMatrix N)`; source lines 130–143 spell out the matrix-continuity argument. The G2-B follow-up can use the same **actual `GaugeGroup 2`** subtype matrix-continuity argument to prove the third bosonic `GaugeData` requirement for our `bosonGauge`. It should not replace the gauge group by generic `unitary` or assume that SU(2) continuity follows without a verified proof.

FCP T6 remains model-level only, K1–K10 unchanged. No FCP main, pinned upstream, public PR or issue modifications authorized.

**Maxim:** Discover what is true, not accumulate passing gates.
