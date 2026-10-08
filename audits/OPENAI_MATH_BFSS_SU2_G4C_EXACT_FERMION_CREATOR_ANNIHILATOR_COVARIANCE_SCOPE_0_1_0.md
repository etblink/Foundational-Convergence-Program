# BFSS SU(2) G4-C — actual Fermion 2 operator covariance 0.1.0

**Date:** 2026-10-08
**Status:** `UNCOMPILED_G4C_CANDIDATE`.

## Canonical exact source and accepted parent

- Gate #101 [run 37829783646](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37829783646), job `113491825990`, qualified commit `34a3a59f974f3cec4101e098dab53b2a0606bc4d`, source `SU2BFSSG4BFermionLinearTransportProbe.lean` blob `c6270243d0f61e8ee415e378c0865d2954958472`, workflow blob `8866f1d7e8501b40bbb30022e81fe1463fde5f02`. Seven declarations standard-only axioms; `fermionGaugeLinearHom : GaugeGroup 2 →* (Fermion 2 ≃ₗ[ℂ] Fermion 2)` is formally accepted.
- Gate #99 accepted `G4A.create_exteriorGauge` and `G4A.annihilate_exteriorGauge` on **the same** `OAI.Laughlin.Fock.Space 23` and exact `G3C.complexOneParticleMatrix` coefficients.
- Pin `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Upstream `OAI/MathematicalPhysics/ContinuumCoulomb/ManyBody/FockNorm.lean` blob `17e71994583e7096c26a1af2fe97671f94336d84`: `fockOperator_coordinates` (lines 298–304), derived from actual occupied Fock basis. Upstream `LinearIsometryEquiv.conjStarAlgEquiv_apply_apply` is already used in pinned OAI analysis proofs; the accepted `FCP.BFSSFermionF1.creator` and `annihilator` are transported using precisely this construction.

## Exact bounded target

Prove, for **all** `i : Fin 24`, `x : Space 23`, `g : GaugeGroup 2`, and all `v : Fermion 2`:
1. `FCP.BFSSFermionF1.creator i (G4B.fockAlgebraToBFSS x)=G4B.fockAlgebraToBFSS (OAI.Laughlin.Fock.create i x)`; similarly for annihilator.
2. Genuine covariance on the **exact BFSS Fermion 2** for the **G4-B linear SU2 representation**:
```lean
fermionGaugeLinearEquiv g (creator i v) =
  ∑ j : Fin 24, (G3C.complexOneParticleMatrix g j i) •
    creator j (fermionGaugeLinearEquiv g v)

annihilator i (fermionGaugeLinearEquiv g v) =
  ∑ j : Fin 24, (G3C.complexOneParticleMatrix g i j) •
    fermionGaugeLinearEquiv g (annihilator j v)
```
Correct index orientation: creator transforms by **column** `U j i`, annihilator by **row** `U i j`. In these formulas the exterior map is the exact accepted `G4A.exteriorGauge`, not a surrogate or abstract CAR representation.
3. Optional operator identities by extensionality (if proofs are easy), but the pointwise full-space formulas are the acceptance target.

This stage **does not** claim that `fermionGaugeLinearEquiv` is an isometry. The relation between creator adjoints, vacuum and the unique occupation basis supplies a possible route to prove unitarity *later*; that result must be independently formalized without assuming mass invariance, theta covariance, or continuity. The pinned `GaugeData.fermion` field needs `≃ₗᵢ[ℂ]`, so it is not satisfied yet.

No unproved assumptions, new axioms, `sorry`, `admit`, pinned source changes, FCP main commits, public PRs/issues or extra CI resources. Print exact kernel axiom footprints. Submit one compiler gate then **stop without inspecting it until owner reports GREEN or RED**.
