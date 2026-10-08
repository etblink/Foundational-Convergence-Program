# BFSS SU(2) G4-E — exact Fermion 2 Hilbert isometric SU(2) representation 0.1.0

**Date:** 2026-10-08. **Status:** `G4E_UNCOMPILED_PENDING_GATE`.

## Accepted baseline

- G4-D Gate #106 [Actions run 37847401340](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37847401340), job `113551592111`, source commit `01b152412c2c5fd116fa088c3e9009656a0fb75b`, source blob `85c9d998a9e01fbca2d32f5610fe6b7bf925d507`, workflow blob `585ff898b6d167286df5d0731eed9afe970bf5f4`. Six exterior isometry declarations compiled with exactly `[propext, Classical.choice, Quot.sound]`.
- G4-B Gate #101: `fermionGaugeLinearHom : GaugeGroup 2 →* (Fermion 2 ≃ₗ[ℂ] Fermion 2)` with exact transport and vacuum invariance.
- G4-C Gate #104: genuine creator and annihilator covariance on `Fermion 2`.
- G3-C Gate #98: exact `complexOneParticleUnitaryHom` on 24 mode SU(2) color matrices.
- Pin `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean v4.34.1, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact source bridge

- Pinned `OAI/Analysis/Laughlin/Exterior/OccupationDiagonal.lean`: `occupationBasis Q := (Pi.basisFun ℂ (Fin (Q+1))).ExteriorAlgebra`.
- Pinned `OAI/MathematicalPhysics/ContinuumCoulomb/ManyBody/HubbardOccupation.lean`, blob `c9a645022b3feb692bef65752cc99e14481d0ff0`: `fockBasis Q := (Pi.basisFun ℂ (Fin (Q+1))).ExteriorAlgebra`. Thus the two underlying occupation bases are *definitionally equal*.
- Pinned `OAI/Analysis/Laughlin/Exterior/OccupationMetric.lean`, blob `d5639e4931b7dad8436b27caf4a0f6fb84fc39a7`: `occupationNormSq Q x = ∑ A, ‖(occupationBasis Q).repr x A‖^2`.
- Pinned `OAI/MathematicalPhysics/ContinuumCoulomb/ManyBody/SpinEmbedding.lean`, blob `3b030d4a9a3f31c62da9503102800204abb693b5`: `fockMass x = ∑ A, Complex.normSq ((fockBasis Q).repr x A)`, and `Complex.normSq_eq_norm_sq` equates summands.
- Pinned `OAI/MathematicalPhysics/ContinuumCoulomb/ManyBody/FockNorm.lean`, blob `17e71994583e7096c26a1af2fe97671f94336d84`, lines 281–304: `fockCoordinates 23 : Space 23 ≃ₗ[ℂ] FockCoordinateSpace 23` and `fockCoordinates_norm_sq x : ‖fockCoordinates 23 x‖^2 = fockMass x`.
- Accepted `FCP.BFSSFermionF1.fockBFSSUnitary : FockCoordinateSpace 23 ≃ₗᵢ[ℂ] Fermion 2` preserves native Hilbert norm.

## Frozen G4-E target

For exact accepted `FCP.BFSSSU2GaugeG4B.fermionGaugeLinearEquiv g` on the true BFSS `Fermion 2`:
1. **Bridge theorem:** `fockMass x = occupationNormSq 23 x` for all exterior `x` (no new assumptions).
2. **Full exterior mass invariance:** `fockMass (G4A.exteriorGauge g x) = fockMass x` (import G4-D).
3. **Actual BFSS Hilbert squared norm:** `‖G4B.fockAlgebraToBFSS x‖^2 = fockMass x`.
4. **Actual BFSS full squared-norm preservation:** `‖G4B.fermionGaugeLinearEquiv g v‖^2 = ‖v‖^2` for **all** g,v.
5. **Native Hilbert isometry:** `‖G4B.fermionGaugeLinearEquiv g v‖ = ‖v‖` for all g,v.
6. **Actual unitary equivalence:** `fermionGaugeUnitaryEquiv g : Fermion 2 ≃ₗᵢ[ℂ] Fermion 2`, with `.toLinearEquiv = fermionGaugeLinearEquiv g`.
7. **Actual group homomorphism:** `GaugeGroup 2 →* (Fermion 2 ≃ₗᵢ[ℂ] Fermion 2)`, with identity and multiplication laws inherited from G4-B `fermionGaugeLinearHom`, kernel-proved and with `#print axioms`.

No shortcut: never promote an arbitrary invertible linear equivalence to an isometry without proving the full norm equality. Do not conflate G4-E with `GaugeData.fermion`: even after this result, the exact 48-theta covariance, topological/joint continuity, and full GaugeData proof remain separate.

No pinned source changes, new axioms, `sorry`/`admit`, FCP main or upstream writes, public PR/issues or CI resource-limit escalations. Submit an atomic source/workflow commit and **do not inspect the triggered run until the owner reports GREEN/RED**.
