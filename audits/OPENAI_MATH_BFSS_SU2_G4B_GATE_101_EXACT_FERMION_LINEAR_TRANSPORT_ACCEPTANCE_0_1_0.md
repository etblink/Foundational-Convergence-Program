# BFSS SU(2) G4-B — Gate #101 exact fermion linear transport acceptance 0.1.0

**Date:** 2026-10-08
**Disposition:** `PASS__EXACT_FERMION_2_COMPLEX_LINEAR_SU2_GROUP_REPRESENTATION`

## Exact compiler identity / reproducibility

- Qualified research commit `34a3a59f974f3cec4101e098dab53b2a0606bc4d` on `research/openai-math-su2-concrete-potential`.
- Qualified source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4BFermionLinearTransportProbe.lean`, Git blob `c6270243d0f61e8ee415e378c0865d2954958472`.
- Qualified workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, Git blob `8866f1d7e8501b40bbb30022e81fe1463fde5f02`.
- [BFSS SU2 Concrete Color Gate #101](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37829783646), run `37829783646`, job `113491825990`. Run HEAD matches qualified commit; run/job/compilation step completed SUCCESS. `lake env lean SU2BFSSG4BFermionLinearTransportProbe.lean` succeeded without Lean errors or `sorryAx`.
- Pinned OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean v4.34.1 and mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, unchanged.

Each of the seven printed declarations uses **exactly** `[propext, Classical.choice, Quot.sound]`:
```text
FCP.BFSSSU2GaugeG4B.exteriorGaugeLinearEquiv
FCP.BFSSSU2GaugeG4B.exteriorGaugeLinearEquiv_apply
FCP.BFSSSU2GaugeG4B.fockAlgebraToBFSS
FCP.BFSSSU2GaugeG4B.fermionGaugeLinearEquiv
FCP.BFSSSU2GaugeG4B.fermionGaugeLinearEquiv_intertwine
FCP.BFSSSU2GaugeG4B.fermionGaugeLinearEquiv_vacuum
FCP.BFSSSU2GaugeG4B.fermionGaugeLinearHom
```

## Exact certified mathematical claim

- The actual exterior algebra action `G4A.exteriorGauge g` lifts to `exteriorGaugeLinearEquiv g : Space 23 ≃ₗ[ℂ] Space 23` with inverse `g⁻¹`.
- Via the exact pinned `fockCoordinates 23 : Space 23 ≃ₗ[ℂ] FockCoordinateSpace 23` and qualified `FCP.BFSSFermionF1.fockBFSSUnitary`, the *same* representation acts on the exact `OAI.BFSSQuantum.Fermion 2` of dimension `2^24`.
- `fermionGaugeLinearHom : GaugeGroup 2 →* (Fermion 2 ≃ₗ[ℂ] Fermion 2)` has kernel-verified identity and group composition. The transport intertwines the exact exterior action; the transported algebraic vacuum is fixed.

Gate #100 failed by compiler recursion depth while expanding the `map_mul` proof's definitional equality. Gate #101 changed **proof tactics only**, rewriting with `LinearEquiv.mul_apply` and the accepted intertwining lemma. No weakening of the theorem statement and no environment/timeout escalation.

## Essential unresolved mathematical boundary

**This is not a `GaugeData.fermion` instance.** The group homomorphism targets *invertible complex-linear equivalences*, **not the required** `Fermion 2 ≃ₗᵢ[ℂ] Fermion 2`. Its norm-preserving property for the canonical Fock occupation inner product remains open, as do the exact pinned 48-theta covariance and fermion-group joint continuity. The bosonic half of `GaugeData` was completed by Gates #92–93. G3-B and G3-C separately certify the 24-mode orthogonal and complex unitary one-particle color matrices. G4-A establishes the exterior-algebra action and genuine creator/annihilator covariance, not full Hilbert unitarity.

Next should be a **bounded source-based Fock-isometry argument** on the exact occupation representation, probably via the CAR and vacuum cyclicity or orthogonal exterior-power lifts. No unproved norm invariance may be imported as an assumption to the final `GaugeData` construction.

FCP T6 remains model-level with K1–K10 change flags NO; no FCP main/upstream/public PR or issue changes.

**Do not confuse a Lean GREEN with a stronger theorem than actually compiled.**
