import SU2BFSSPhysicalDomainS3J3DiagP0ExactHandlesProbe

/-! Source-faithful S3J3 continuation after verified P0 handles. -/
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3E
open FCP.BFSSSU2PhysicalDomainS3J3DiagP0ExactHandles
private abbrev FermionOp := Fermion 2 →L[ℂ] Fermion 2
private abbrev SpinCoeffs := SpinIndex → ℂ

namespace FCP.BFSSSU2PhysicalDomainS3J3D2Single

/-- The pinned upstream CLM commutator applied to the exact generator
handle and one genuine Majorana, by the accepted S3E operator identity. -/
theorem handle_single_theta_comm
    (i j : SpaceIndex) (γ : SpinIndex) (C : ColorIndex 2) :
    OAI.KadisonKastler.boundedCommutator
        (exactSourceK i j) (pairedTheta γ C) =
      ∑ α : SpinIndex,
        ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) •
          pairedTheta α C := by
  rw [OAI.KadisonKastler.boundedCommutator_apply, exactSourceK_eq]
  exact pairedFermionPlaneSpinGenerator_comm_theta i j γ C

#print axioms handle_single_theta_comm

end FCP.BFSSSU2PhysicalDomainS3J3D2Single
end
