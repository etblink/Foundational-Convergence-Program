# BFSS SU(2) G4-G — Gate #112 exact 24-mode paired Majorana covariance acceptance 0.1.0

**Date:** 2026-10-08
**Disposition:** `PASS__ALL_24_REAL_AND_24_IMAGINARY_MAJORANA_MODE_COVARIANCE`

## Exact source and compiler evidence

- Branch: `research/openai-math-su2-concrete-potential`.
- Qualified source HEAD: `bfb044d623cdfa5610b991d5eca58d4bb5221745`.
- Source: `experiments/openai-math-su2-concrete-potential/SU2BFSSG4GMajoranaModeCovarianceProbe.lean`; exact Git blob `5343c70f955c630c2f93b050a89d51f094d17440`.
- Workflow: `.github/workflows/openai-math-su2-concrete-potential.yml`; exact Git blob `f758cce6127e6997d4ee2316cb01acbfaed8db59`.
- [BFSS SU2 Concrete Color Gate #112](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37860762425), run `37860762425`, job `113595656112`; workflow, job and pinned Lean compiler step SUCCESS at the exact qualified HEAD.
- `lake env lean SU2BFSSG4GMajoranaModeCovarianceProbe.lean` completed without Lean error or `sorryAx`.
- Pinned OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean 4.34.1 unchanged.

All six printed declarations rely on exactly `[propext, Classical.choice, Quot.sound]`:
```text
FCP.BFSSSU2GaugeG4G.creator_annihilator_combination_covariant
FCP.BFSSSU2GaugeG4G.majorana0_linear_apply
_private.SU2BFSSG4GMajoranaModeCovarianceProbe.0.FCP.BFSSSU2GaugeG4G.majorana1_phase
FCP.BFSSSU2GaugeG4G.majorana1_linear_apply
FCP.BFSSSU2GaugeG4G.majorana0_fermionGauge_covariant
FCP.BFSSSU2GaugeG4G.majorana1_fermionGauge_covariant
```

## Exact accepted mathematics

For every genuine pinned `g : GaugeGroup 2`, `i : Fin 24` and `v : Fermion 2`, with the accepted `G3C.complexOneParticleMatrix` and the same exact `G4B.fermionGaugeLinearEquiv` underlying the G4-E Hilbert unitary group homomorphism:
```lean
fermionGaugeLinearEquiv g (majorana0 i v) =
  ∑ j : Fin 24, complexOneParticleMatrix g j i •
    majorana0 j (fermionGaugeLinearEquiv g v)
fermionGaugeLinearEquiv g (majorana1 i v) =
  ∑ j : Fin 24, complexOneParticleMatrix g j i •
    majorana1 j (fermionGaugeLinearEquiv g v)
```
Both `majorana0` and `majorana1` are the actual accepted self-adjoint Fock Majoranas; `majorana1` uses the proven imaginary phase `s*i*(creator-annihilator)`, not an arbitrary operator.

Gate #111 (run `37859006224`) was RED because `majorana1_linear_apply` failed a scalar-distributivity normalization. Gate #112 fixed **only its proof tactic** by changing the terminal `simp only` to ordered `rw [smul_smul, smul_sub, sub_eq_add_neg, neg_smul]`. The six proof statements, source pins and resource limits were unchanged.

## Boundaries

This is **mode-level 24×2 Majorana covariance**. The exact upstream pinned `AlgebraData.GaugeData.fermion_adjoint` uses `pairedAlgebraData.theta : SpinIndex → ColorIndex 2 → ...`, and coefficients `pairedAlgebraData.adjointCoefficient g A B` with input A and output B. Those 16-spin × 3-color indexed equations have not yet been formally discharged in this accepted gate. The separate fermionic joint continuity and complete `GaugeData` remain open. Physical spectrum and Gauss-constraint claims remain open.

Next bounded target: reindex using **only** the accepted `G1A.spinPairEquiv`, `G1A.colorModeEquiv`, `G1A.pairedTheta_even/odd`, `G3C.complexOneParticleMatrix_block` and `G3A.adjointColorMatrix`. The correct coefficient is `pairedAlgebraData.adjointCoefficient g A B`; do not reverse the input/output colors. The full `Fin 24` sum must collapse to **one fixed spin-pair block of three colors**, with all off-block entries kernel-proved zero. Do not rely on arbitrary `Fintype.equivFin` to identify spin/color labels.

No FCP main merge, OpenAI Math upstream write, public PR/issue creation or change to frozen FCP program findings is authorized by this result.
