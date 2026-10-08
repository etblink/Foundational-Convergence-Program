# BFSS SU(2) G4-H — exact paired 48-theta adjoint covariance scope 0.1.0

**Date:** 2026-10-08
**Disposition:** `SCOPE_ONLY__NOT_YET_COMPILED_OR_IMPLEMENTED`
**Latest qualified source:** G4-G Gate #112, [run 37860762425](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37860762425), HEAD `bfb044d623cdfa5610b991d5eca58d4bb5221745`, source blob `5343c70f955c630c2f93b050a89d51f094d17440`, workflow blob `f758cce6127e6997d4ee2316cb01acbfaed8db59`. Six printed axioms reports standard only.

## Precise pinned end target

In the actual pinned `OAI/MathematicalPhysics/BFSS/GaugeCore.lean` at OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `AlgebraData.GaugeData.fermion_adjoint` requires:
```lean
∀ (g : GaugeGroup 2) (α : SpinIndex) (A : ColorIndex 2) (f : Fermion 2),
  fermionGaugeUnitaryHom g (pairedAlgebraData.theta α A f) =
    ∑ B : ColorIndex 2,
      (pairedAlgebraData.adjointCoefficient g A B : ℂ) •
        pairedAlgebraData.theta α B (fermionGaugeUnitaryHom g f)
```
Ensure any proof elaborates against exactly this field type, with genuine `pairedAlgebraData.theta` (not an arbitrary Majorana family) and genuine `G4E.fermionGaugeUnitaryHom` (not a proxy).

## Essential verified input identities and indexing

- G1-A `spinPairEquiv : SpinIndex ≃ Fin 8 × Fin 2`, `colorModeEquiv : Fin 8 × ColorIndex 2 ≃ Fin 24`, `pairedLabelEquiv`, `pairedTheta_even`, `pairedTheta_odd` and `pairedAlgebraData.theta`. Files `SU2BFSSG1APairedThetaProbe.lean` blob `4f8fbf05a35c1d625746931b7ff0361b7ffc2ec4`.
- G3-A `adjointColorMatrix g B A = pairedAlgebraData.adjointCoefficient g A B`, file `SU2BFSSG3AAdjointColorRepresentationProbe.lean` blob `c8bbd59782c3116fb514d6aa20d91c607a11c3e7`.
- G3-B/G3-C 24-mode block `complexOneParticleMatrix_block`:
```lean
complexOneParticleMatrix g (colorModeEquiv (j,B))
    (colorModeEquiv (k,A)) =
  if j = k then (adjointColorMatrix g B A : ℂ) else 0
```
Qualified `SU2BFSSG3CComplexOneParticleUnitaryProbe.lean` blob `e555823155d5ce348843acb9eaa9ea6762f636ac`.
- G4-G `majorana0_fermionGauge_covariant` and `majorana1_fermionGauge_covariant` on exact `Fermion 2` for all 24 modes using columns `U(g) j i`. Qualified `SU2BFSSG4GMajoranaModeCovarianceProbe.lean` blob `5343c70f955c630c2f93b050a89d51f094d17440`.
- G4-E actual `fermionGaugeUnitaryHom : GaugeGroup 2 →* (Fermion 2 ≃ₗᵢ[ℂ] Fermion 2)`, with its underlying map definitionally the accepted G4-B linear action; Gate #108 accepted.

## Bounded plan

1. Prove reindexing of an arbitrary `∑ m : Fin 24, U(g) m (colorModeEquiv (j,A)) • majorana_r m (...)` into `∑ B : ColorIndex 2, (adjointColorMatrix g B A : ℂ) • majorana_r (colorModeEquiv (j,B)) (...)`, for **each r = 0 and r = 1** or via a tightly typed shared `Fin 2` family. Show all off-pair `k ≠ j` blocks vanish. Use explicit `Equiv.sum_comp`/Fintype sum change for `colorModeEquiv`, not arbitrary `equivFin`.
2. Prove the exact pinned field equation separately for `α = spinPairEquiv.symm (j,0)` and `α = spinPairEquiv.symm (j,1)`, with `pairedTheta_even/odd`, the block-sum identities and the accepted G4-E unitary action.
3. Reassemble arbitrary `α : SpinIndex` by cases on its explicit `spinPairEquiv α`. The result should be exactly the `pairedAlgebraData.theta` equation above, including the precise input/output coefficient orientation.
4. Print all declaration axioms; require exactly `[propext, Classical.choice, Quot.sound]` and NO `sorryAx`. Do not claim anything is accepted before the next RED/GREEN report and independent GitHub verification.

## Scientific/operational boundaries

The desired G4-H theorem discharges **only** `GaugeData.fermion_adjoint`. It does NOT prove `GaugeData.fermion_continuous`, which is a separate joint continuity obligation. G2-A/B already proved the bosonic SU(2) action, its adjoint covariance and joint continuity. Full `GaugeData` can be constructed only after all exact fields have verified proofs; physical/spectral questions remain open.

Keep pinned Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Do not change FCP main, upstream, public PR/issues, frozen FCP scientific findings or resource limits. Submit bounded new source+workflow atomically; **stop without polling the newly triggered gate until the human owner reports its color**.
