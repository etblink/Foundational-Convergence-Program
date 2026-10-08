# BFSS SU(2) G4-F — real color coefficients and forward annihilator covariance 0.1.0

**Date:** 2026-10-08
**Status:** `UNCOMPILED_G4F_GATE`.

## Exact qualified authority

- Gate #108 [Actions run 37852002248](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37852002248), job `113566922091`, qualified commit `5ea8a26454542eeb5cf813274ea2fc628595eded`, proof blob `d29e7acf325db8e9e383b26b8ee6b536c9078676`, workflow blob `77e3a58262e5d78b9dffa637fe2a86e548f7308e`. All eight G4-E declarations compile with exactly `[propext, Classical.choice, Quot.sound]`, including an **actual** `GaugeGroup 2 →* (Fermion 2 ≃ₗᵢ[ℂ] Fermion 2)`.
- Gate #104 accepted `G4C.creator_fermionGauge_covariant` and `G4C.annihilator_fermionGauge_covariant` for all actual Fermion 2 vectors.
- Gate #98 accepted G3-C `complexOneParticleMatrix_adjoint_inv`, `complexOneParticleMatrix_conjTranspose`, and complex unitarity. Underlying G3-B `oneParticleMatrix` has real entries.
- Gate #87 accepted explicit G1-A `pairedLabelEquiv` with 8 paired spin blocks × 3 colors, real `majorana0` and imaginary `majorana1` components. These are the theta fields of the actual G1-A `pairedAlgebraData`.
- Pinned Lean 4.34.1; `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Why this stage matters

The pinned `OAI/MathematicalPhysics/BFSS/GaugeCore.lean`, blob `e4990dadf1d8bde849e351467282ab3f14989c3b`, lines 18–27 defines `AlgebraData.GaugeData`:
```lean
boson : GaugeGroup N →* (Boson N ≃ₗᵢ[ℝ] Boson N)
fermion : GaugeGroup N →* (Fermion N ≃ₗᵢ[ℂ] Fermion N)
boson_adjoint : ...
fermion_adjoint : ∀ g α A f, fermion g (M.theta α A f) =
  ∑ B : ColorIndex N, (M.adjointCoefficient g A B : ℂ) •
    M.theta α B (fermion g f)
boson_continuous : Continuous (fun z => boson z.1 z.2)
fermion_continuous : Continuous (fun z => fermion z.1 z.2)
```
The exact color coefficient convention is `G3A.adjointColorMatrix g B A = pairedAlgebraData.adjointCoefficient g A B`. Its real coefficients must rotate each Majorana of an accepted spin pair **without mixing the two Majorana components**. The accepted creator transformation already has *forward* `U(g) j i` coefficients. Existing annihilator covariance in G4-C reads `annihilator i (G(g) v) = ∑_j U(g) i j • G(g)(annihilator j v)`; to prove Majorana covariance, first rewrite it into *forward* form with the same real column `U(g) j i`.

## Bounded proof target

1. `complexOneParticleMatrix_inv_entry g i j : U(g⁻¹) i j = U(g) j i` using exact scalar-extended *real* orthogonal matrix, not an arbitrary unitary assumption (which would have a conjugate).
2. `complexOneParticleMatrix_star_entry g i j : star (U(g) i j) = U(g) i j`.
3. On the accepted `Fermion 2` linear group action, prove `G(g) (G(g⁻¹) v) = v` via the accepted G4-B exterior intertwining and G4-A group law.
4. **True forward annihilator covariance**, for all `g, i, v`:
```lean
G(g) (annihilator i v)
  = ∑ j : Fin 24, U(g) j i • annihilator j (G(g) v)
```
using G4-C applied to `g⁻¹`, then transport by `G(g)` and exact inverse-entry identity.

This establishes the correct two operator ingredients for the upcoming G4-G proof of real and imaginary Majorana components and exact 48-label `pairedAlgebraData.theta` covariance. It does **not yet assert** the full 48-theta `GaugeData.fermion_adjoint` or joint continuity.

The target will be accepted only after all printed proof axioms are standard `[propext, Classical.choice, Quot.sound]`, no `sorryAx`. No new axioms, `sorry`, `admit`, changed pinned dependencies, compiler resource escalation, FCP main/upstream changes, public PR/issues, or new physical/spectral claims.

**Submit one source/workflow gate then STOP without inspecting the triggered run before owner GREEN/RED.**
