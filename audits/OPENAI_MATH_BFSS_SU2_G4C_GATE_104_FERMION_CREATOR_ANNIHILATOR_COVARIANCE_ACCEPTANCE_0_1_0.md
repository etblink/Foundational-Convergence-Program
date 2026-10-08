# BFSS SU(2) G4-C — Gate #104 exact fermionic operator covariance acceptance 0.1.0

**Date:** 2026-10-08
**Disposition:** `PASS__EXACT_FERMION_2_CREATOR_AND_ANNIHILATOR_COVARIANCE`

## Exact workflow and kernel evidence

- Branch: `research/openai-math-su2-concrete-potential`.
- Qualified source commit: `94a57bddfaa6fded53daf9324ce983db62950844`.
- Source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4CFermionOperatorCovarianceProbe.lean`, Git blob `83e3fe5ffc3d521c38f9c20069b96aa6627ece06`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, Git blob `8db7e89f6dbd2ae081b6631d230fe80951580315`.
- [Gate #104](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37843030873), run `37843030873`, job `113536914773`, run HEAD exact source commit, run/job/compilation step SUCCESS.
- Exact `lake env lean SU2BFSSG4CFermionOperatorCovarianceProbe.lean` completed with no Lean errors or `sorryAx`.
- OpenAI Math pin `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, unchanged.
- Four printed declarations, **each with exactly** `[propext, Classical.choice, Quot.sound]`:
```text
FCP.BFSSSU2GaugeG4C.creator_transport
FCP.BFSSSU2GaugeG4C.annihilator_transport
FCP.BFSSSU2GaugeG4C.creator_fermionGauge_covariant
FCP.BFSSSU2GaugeG4C.annihilator_fermionGauge_covariant
```

## Qualified mathematical content

The accepted underlying exterior-algebra creator and contraction operators transport through the exact `fockCoordinates 23` and `fockBFSSUnitary` into the actual `OAI.BFSSQuantum.Fermion 2` constructors `creator i` and `annihilator i`. The G4-B complex-linear SU(2) action obeys, **for every fermionic vector v**, exact covariance:
```lean
fermionGaugeLinearEquiv g (creator i v) =
  ∑ j : Fin 24, complexOneParticleMatrix g j i •
    creator j (fermionGaugeLinearEquiv g v)
annihilator i (fermionGaugeLinearEquiv g v) =
  ∑ j : Fin 24, complexOneParticleMatrix g i j •
    fermionGaugeLinearEquiv g (annihilator j v)
```
The coefficients are the actual accepted G3-C color-adjoint SU(2) rotation, not an abstract stand-in. Creator column vs annihilator row orientation is essential. Gates #102/#103 failed *elaboration recursion depth* in proof-assembly rewrites. Gate #104 repaired tactics only, using accepted intertwining equations, without weakening any statement, source pins or increasing resource limits.

## Precise scientific limits

- G4-B proves `GaugeGroup 2 →* (Fermion 2 ≃ₗ[ℂ] Fermion 2)` but not `GaugeGroup 2 →* (Fermion 2 ≃ₗᵢ[ℂ] Fermion 2)`. No Hilbert norm-preservation theorem has yet been accepted.
- The algebraic transported vacuum is fixed, but full Fock-norm invariance and `GaugeData.fermion` are still open.
- Actual 48 Majorana theta covariance, joint continuity, full `GaugeData`, physical Gauss constraint, Hamiltonian spectral questions remain open. No physical spectrum claim or change to T6 or K1–K10.
- FCP main, OpenAI Math upstream, public PR/issues remain unchanged.

**Next target:** formally establish a *finite-dimensional inner-product-preservation bridge*, beginning with explicit norm/inner relations for vacuum and the one-creator sector under G4-B, using the pinned CAR and the actual one-particle unitary matrix. Escalate to full Fock isometry only when adequately supported by actual occupation-basis evidence.

**Truth, not perpetual methodology or gate count.**
