import SU2BFSSPhysicalDomainS3J3D2ExactHandleSingleThetaProbe

/-! Exact-handle weighted source theta commutator, S3E plus CLM linearity. -/
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

namespace FCP.BFSSSU2PhysicalDomainS3J3D2Weighted

/-- The actual BFSS 48-Majorana source infinitesimal covariance through
definitionally exact K/theta-sum names; no proxy and no extra assumptions. -/
theorem handle_weighted_theta_comm
    (i j : SpaceIndex) (C : ColorIndex 2) (v : SpinCoeffs) :
    OAI.KadisonKastler.boundedCommutator
        (exactSourceK i j) (exactSourceThetaSum C v) =
      ∑ α : SpinIndex,
        (∑ γ : SpinIndex,
          ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) * v γ) •
          pairedTheta α C := by
  rw [exactSourceThetaSum_eq, map_sum]
  calc
    _ = ∑ γ : SpinIndex, v γ •
          OAI.KadisonKastler.boundedCommutator
            (exactSourceK i j) (pairedTheta γ C) := by
            apply Finset.sum_congr rfl
            intro γ _
            rw [map_smul]
    _ = ∑ γ : SpinIndex, v γ •
          (∑ α : SpinIndex,
            ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) •
              pairedTheta α C) := by
            apply Finset.sum_congr rfl
            intro γ _
            exact congrArg (fun T : FermionOp => v γ • T)
              (handle_single_theta_comm i j γ C)
    _ = ∑ γ : SpinIndex, ∑ α : SpinIndex,
          (v γ * ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ)) •
            pairedTheta α C := by
            simp only [Finset.smul_sum, smul_smul]
    _ = ∑ α : SpinIndex, ∑ γ : SpinIndex,
          (v γ * ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ)) •
            pairedTheta α C := Finset.sum_comm
    _ = _ := by
          simp only [← Finset.sum_smul]
          apply Finset.sum_congr rfl
          intro α _
          apply congrArg (fun z : ℂ => z • pairedTheta α C)
          apply Finset.sum_congr rfl
          intro γ _
          exact mul_comm (v γ)
            (((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ))

#print axioms handle_weighted_theta_comm

end FCP.BFSSSU2PhysicalDomainS3J3D2Weighted
end
