import SU2BFSSPhysicalDomainS3J3D2ExactHandleSingleThetaProbe

/-!
S3J3D3 — independent bounded weighted-Majorana subobligation.
Uses the exact pinned Fock generator and original theta family.
No surrogate physics objects, new axioms or direct large Fock reductions.
-/
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3E
open FCP.BFSSSU2PhysicalDomainS3J3DiagP0ExactHandles
open FCP.BFSSSU2PhysicalDomainS3J3D2Single
private abbrev FermionOp := Fermion 2 →L[ℂ] Fermion 2
private abbrev SpinCoeffs := SpinIndex → ℂ

namespace FCP.BFSSSU2PhysicalDomainS3J3D3C

/-- Fixed-type finite interchange, avoiding the polymorphic algebra
instance synthesis at the original large Fock space. -/
private theorem fock_matrix_swap
    (J : SpinIndex → SpinIndex → ℂ)
    (theta : SpinIndex → FermionOp) (v : SpinCoeffs) :
    (∑ γ : SpinIndex, v γ •
      (∑ α : SpinIndex, J α γ • theta α)) =
    ∑ α : SpinIndex,
      (∑ γ : SpinIndex, J α γ * v γ) • theta α := by
  calc
    _ = ∑ γ : SpinIndex, ∑ α : SpinIndex,
      (v γ * J α γ) • theta α := by
        simp only [Finset.smul_sum, smul_smul]
    _ = ∑ α : SpinIndex, ∑ γ : SpinIndex,
      (v γ * J α γ) • theta α := Finset.sum_comm
    _ = ∑ α : SpinIndex,
      (∑ γ : SpinIndex, v γ * J α γ) • theta α := by
        simp only [Finset.sum_smul]
    _ = _ := by
        apply Finset.sum_congr rfl
        intro α _
        apply congrArg (fun z : ℂ => z • theta α)
        apply Finset.sum_congr rfl
        intro γ _
        exact mul_comm (v γ) (J α γ)

/-- Original gamma-plane coefficients and genuine Majorana family,
with no polymorphic algebra synthesis at specialization. -/
theorem handle_matrix_swap (i j : SpaceIndex) (C : ColorIndex 2)
    (v : SpinCoeffs) :
    (∑ γ : SpinIndex, v γ •
      (∑ α : SpinIndex,
        ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) • pairedTheta α C)) =
    ∑ α : SpinIndex,
      (∑ γ : SpinIndex,
        ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) * v γ) •
        pairedTheta α C := by
  exact fock_matrix_swap
    (fun α γ : SpinIndex =>
      ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ))
    (fun α : SpinIndex => pairedTheta α C) v

#print axioms handle_matrix_swap
end FCP.BFSSSU2PhysicalDomainS3J3D3C
end
