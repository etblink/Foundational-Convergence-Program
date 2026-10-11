import SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe
import SU2BFSSPhysicalDomainS3J3D0WeightedCommutatorProbe
import OAI.Analysis.KadisonKastler.ExponentialCommutator

/-!
# S3J3D1 — source Majorana weighted infinitesimal covariance

Direct bounded-commutator continuous-linear-map proof, using the pinned
upstream OAI operator. The concrete 48 source Majoranas and K are unchanged.
No proxy algebra, no alternate Fock representation, and no new assumptions.
-/

namespace FCP.BFSSSU2PhysicalDomainS3J3D1
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3E

private abbrev FermionOp := Fermion 2 →L[ℂ] Fermion 2
private abbrev SpinCoeffs := SpinIndex → ℂ

/-- The pinned OAI bounded commutator is a CLM: its linearity transports
a finite complex-linear combination of the actual source Majoranas.
No concrete operator multiplication is distributed or unfolded. -/
private theorem pairedSourceTheta_commutator_map_sum
    (i j : SpaceIndex) (C : ColorIndex 2) (v : SpinCoeffs) :
    OAI.KadisonKastler.boundedCommutator
      (pairedFermionPlaneSpinGenerator i j)
      (∑ γ : SpinIndex, v γ • pairedTheta γ C) =
    ∑ γ : SpinIndex, v γ •
      OAI.KadisonKastler.boundedCommutator
        (pairedFermionPlaneSpinGenerator i j) (pairedTheta γ C) := by
  rw [map_sum]
  apply Finset.sum_congr rfl
  intro γ _
  rw [map_smul]

/-- All sixteen genuine same-color Majoranas satisfy the exact weighted
infinitesimal source identity, for each of the three color indices. -/
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
    _ = OAI.KadisonKastler.boundedCommutator
          (pairedFermionPlaneSpinGenerator i j)
          (∑ γ : SpinIndex, v γ • pairedTheta γ C) :=
          (OAI.KadisonKastler.boundedCommutator_apply _ _).symm
    _ = ∑ γ : SpinIndex, v γ •
          OAI.KadisonKastler.boundedCommutator
            (pairedFermionPlaneSpinGenerator i j) (pairedTheta γ C) :=
          pairedSourceTheta_commutator_map_sum i j C v
    _ = ∑ γ : SpinIndex, v γ •
          (pairedFermionPlaneSpinGenerator i j * pairedTheta γ C -
            pairedTheta γ C * pairedFermionPlaneSpinGenerator i j) := by
          apply Finset.sum_congr rfl
          intro γ _
          rw [OAI.KadisonKastler.boundedCommutator_apply]
    _ = ∑ γ : SpinIndex, v γ •
          (∑ α : SpinIndex,
            ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) •
              pairedTheta α C) := by
          apply Finset.sum_congr rfl
          intro γ _
          exact congrArg (fun T : FermionOp => v γ • T)
            (pairedFermionPlaneSpinGenerator_comm_theta i j γ C)
    _ = _ := by
          calc
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

#print axioms pairedSourceTheta_commutator_map_sum
#print axioms pairedSourceTheta_weighted_commutator

end
end FCP.BFSSSU2PhysicalDomainS3J3D1
