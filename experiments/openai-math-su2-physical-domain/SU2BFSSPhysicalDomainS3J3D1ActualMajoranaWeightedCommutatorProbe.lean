import SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe
import SU2BFSSPhysicalDomainS3J3D0WeightedCommutatorProbe

/-!
# S3J3D1 — finite weighted Majorana source spin covariance

Transfers the accepted S3E theta commutator to arbitrary complex spinor
coefficients. The input is the actual 48-Majorana fermionic representation
from the pinned AlgebraData 2. Does NOT assert any finite-time or physical
Hilbert-space spin rotation. No large theta definitions are unfolded.

The proof is written entirely with explicit rewrites and sum congruences
so that the abstract D0 proof terms are never specialized at the concrete
Fock operator type (the source of the previous elaboration timeouts).
-/

namespace FCP.BFSSSU2PhysicalDomainS3J3D1
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3E
open FCP.BFSSSU2PhysicalDomainS3J3D0

private abbrev FermionOp := Fermion 2 →L[ℂ] Fermion 2
private abbrev SpinCoeffs := SpinIndex → ℂ

/-- Bilinearity of multiplication on the concrete Fock operators,
    proved by explicit rewrites only. -/
private theorem fermionOp_weighted_commutator
    (K : FermionOp) (theta : SpinIndex → FermionOp) (v : SpinIndex → ℂ) :
    K * (∑ γ : SpinIndex, v γ • theta γ) -
      (∑ γ : SpinIndex, v γ • theta γ) * K =
        ∑ γ : SpinIndex, v γ • (K * theta γ - theta γ * K) := by
  have hleft :
      K * (∑ γ : SpinIndex, v γ • theta γ) =
        ∑ γ : SpinIndex, v γ • (K * theta γ) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro γ _
    rw [mul_smul_comm]
  have hright :
      (∑ γ : SpinIndex, v γ • theta γ) * K =
        ∑ γ : SpinIndex, v γ • (theta γ * K) := by
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro γ _
    rw [smul_mul_assoc]
  rw [hleft, hright]
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro γ _
  rw [smul_sub]

/-- Finite matrix-action interchange on the concrete Fock operators,
    proved by explicit rewrites and sum commutation only. -/
private theorem fermionOp_weighted_matrix_sum
    (J : SpinIndex → SpinIndex → ℂ)
    (theta : SpinIndex → FermionOp) (v : SpinIndex → ℂ) :
    (∑ γ : SpinIndex, v γ • (∑ α : SpinIndex, J α γ • theta α)) =
      ∑ α : SpinIndex, (∑ γ : SpinIndex, J α γ * v γ) • theta α := by
  have h1 :
      (∑ γ : SpinIndex, v γ • (∑ α : SpinIndex, J α γ • theta α)) =
        ∑ γ : SpinIndex, ∑ α : SpinIndex, (v γ * J α γ) • theta α := by
    apply Finset.sum_congr rfl
    intro γ _
    rw [Finset.smul_sum]
    apply Finset.sum_congr rfl
    intro α _
    rw [smul_smul]
  rw [h1]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro α _
  rw [← Finset.sum_smul]
  apply congrArg (fun z : ℂ => z • theta α)
  apply Finset.sum_congr rfl
  intro γ _
  rw [mul_comm]

/-- All sixteen actual same-color Majoranas satisfy one weighted
infinitesimal intertwiner identity; every color C is included. -/
theorem pairedSourceTheta_weighted_commutator
    (i j : SpaceIndex) (C : ColorIndex 2) (v : SpinCoeffs) :
    pairedFermionPlaneSpinGenerator i j *
        (∑ γ : SpinIndex, v γ • pairedTheta γ C) -
      (∑ γ : SpinIndex, v γ • pairedTheta γ C) *
        pairedFermionPlaneSpinGenerator i j =
      ∑ α : SpinIndex,
        (∑ γ : SpinIndex,
          ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) * v γ) •
            pairedTheta α C := by
  calc
    _ = ∑ γ : SpinIndex, v γ •
          (pairedFermionPlaneSpinGenerator i j * pairedTheta γ C -
            pairedTheta γ C * pairedFermionPlaneSpinGenerator i j) := by
      exact fermionOp_weighted_commutator
        (pairedFermionPlaneSpinGenerator i j)
        (fun γ => pairedTheta γ C) v
    _ = ∑ γ : SpinIndex, v γ •
          (∑ α : SpinIndex,
            ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) •
              pairedTheta α C) := by
      apply Finset.sum_congr rfl
      intro γ _
      exact congrArg (fun T : FermionOp => v γ • T)
        (pairedFermionPlaneSpinGenerator_comm_theta i j γ C)
    _ = _ := by
      exact fermionOp_weighted_matrix_sum
        (fun α γ => ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ))
        (fun α => pairedTheta α C) v

#print axioms pairedSourceTheta_weighted_commutator

end
end FCP.BFSSSU2PhysicalDomainS3J3D1
