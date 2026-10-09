# BFSS SU(2) G4-H — Gate #113 exact 48-label theta covariance acceptance 0.1.0

**Date:** 2026-10-08 (America/Los_Angeles; GitHub Actions timestamps UTC on 2026-10-09)
**Disposition:** `PASS__PINNED_48_THETA_FERMION_ADJOINT_COVARIANCE`

## Qualified immutable compiler evidence

- Branch: `research/openai-math-su2-concrete-potential`
- Qualified commit: `e9cc5583431c6bd52eb282525e185aa5e5403e52`
- Commit parent: `371d3457c34b2c84c33b004fb0c1deaee6ed202a`
- Source: `experiments/openai-math-su2-concrete-potential/SU2BFSSG4HExactThetaCovarianceProbe.lean`, Git blob `3ee402e49bbca8d90a232ddf5d34f578814549eb`
- Workflow: `.github/workflows/openai-math-su2-concrete-potential.yml`, Git blob `215a6796ed8ebec715507ba7a5f49f61aa27c051`
- [BFSS SU2 Concrete Color Gate #113](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37862788857): run `37862788857`, job `113602264591`, completed SUCCESS at the exact qualified commit; pinned Lean compiler step SUCCESS.
- Compilation endpoint: `lake env lean SU2BFSSG4HExactThetaCovarianceProbe.lean`.
- Pinned Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` unchanged.

The GitHub job log prints these **five** fresh declarations, each with exactly `[propext, Classical.choice, Quot.sound]` and no `sorryAx`, `sorry`, `admit` or new custom axioms:

```text
FCP.BFSSSU2GaugeG4H.complexOneParticleMatrix_paired_block_sum
FCP.BFSSSU2GaugeG4H.pairedTheta_even_fermionGauge_covariant
FCP.BFSSSU2GaugeG4H.pairedTheta_odd_fermionGauge_covariant
FCP.BFSSSU2GaugeG4H.pairedAlgebraData_fermion_adjoint
FCP.BFSSSU2GaugeG4H.fermion_adjoint_exact_field
```

The submitted source matches the qualified blob, and the submitted workflow matches the qualified workflow blob. No dependency upgrade or compiler resource modification occurred.

## Accepted mathematical result

For the genuine `pairedAlgebraData : AlgebraData 2` and the accepted G4-E unitary homomorphism `fermionGaugeUnitaryHom`, the exact upstream `GaugeData.fermion_adjoint` field equation is established:

```lean
∀ (g : GaugeGroup 2) (α : SpinIndex)
  (A : ColorIndex 2) (v : Fermion 2),
  fermionGaugeUnitaryHom g (pairedAlgebraData.theta α A v) =
    ∑ B : ColorIndex 2,
      (pairedAlgebraData.adjointCoefficient g A B : ℂ) •
        pairedAlgebraData.theta α B (fermionGaugeUnitaryHom g v)
```

The proof first reindexes the actual 24 modes through G1-A's `colorModeEquiv`, proves all off-spin-pair blocks vanish using G3-C's exact 24×24 coefficient block theorem, then establishes both real and imaginary paired Majorana cases using G4-G and assembles the 16 spin labels via G1-A's `spinPairEquiv`. The input/output colors are `A`/`B` in the literal pinned `adjointCoefficient g A B` orientation.

**Uncertainty eliminated:** the accepted `2^24`-dimensional unitary fermionic SU(2) representation does transform the **actual** 48 pinned theta generators in exactly the way required by `AlgebraData.GaugeData.fermion_adjoint`. This is mathematical content, not merely Lean syntax or an arbitrary proxy representation.

**Uncertainty remaining:** `GaugeData.fermion_continuous` is NOT yet proved. Continuity of the finite-dimensional one-particle coefficients is a separate precursor to continuity of the induced full Fock representation. The six-field `GaugeData` structure has not yet been assembled. No Gauss-invariant physical space, Hamiltonian spectrum, dynamical or empirical conclusion is established by this gate.

## Controls

This is a branch-local `SOURCE_DERIVED` / independently verified mathematical finding under FCP epistemic rules. It is not a new mainline FCP K1–K10 claim or a validation of BFSS physical spectrum. Do not merge to `main`, modify `openai/math`, submit external issues/PRs, change dependency pins, or claim the next proof compiled without its own observed successful gate and axiom report.

Next objective: explicitly prove the joint fermionic continuity required by the pinned `GaugeData`, using only the existing continuous SU(2) coefficient functions and the actual finite-dimensional exterior-Fock transport, without assuming continuity or silently identifying algebraic isometries with continuous parameter dependence.
