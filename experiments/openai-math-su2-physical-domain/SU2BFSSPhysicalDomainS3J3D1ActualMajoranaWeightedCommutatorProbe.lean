import SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe
import SU2BFSSPhysicalDomainS3J3D0WeightedCommutatorProbe

/-!
# S3J3D1 — finite weighted Majorana source spin covariance

Transfers the accepted S3E theta commutator to arbitrary complex spinor
coefficients. The input is the actual 48-Majorana fermionic representation
from the pinned AlgebraData 2. Does NOT assert any finite-time or physical
Hilbert-space spin rotation. No large theta definitions are unfolded.
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
            exact weighted_commutator
              (pairedFermionPlaneSpinGenerator i j)
              (fun γ : SpinIndex => pairedTheta γ C) v
    _ = ∑ γ : SpinIndex, v γ •
          (∑ α : SpinIndex,
            ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) •
              pairedTheta α C) := by
            apply Finset.sum_congr rfl
            intro γ _
            exact congrArg
              (fun T : FermionOp => v γ • T)
              (pairedFermionPlaneSpinGenerator_comm_theta i j γ C)
    _ = _ := by
          exact weighted_matrix_sum
            (fun α γ : SpinIndex =>
              ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ))
            (fun α : SpinIndex => pairedTheta α C) v

#print axioms pairedSourceTheta_weighted_commutator

end
end FCP.BFSSSU2PhysicalDomainS3J3D1
