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

namespace FCP.BFSSSU2PhysicalDomainS3J3D3B

/-- Extend the qualified source S3E single Majorana identity to a finite
weighted sum. Both expressions use the unchanged source theta family. -/
theorem handle_ad_pointwise (i j : SpaceIndex) (C : ColorIndex 2)
    (v : SpinCoeffs) :
    (∑ γ : SpinIndex, v γ •
      OAI.KadisonKastler.boundedCommutator
        (exactSourceK i j) (pairedTheta γ C)) =
    ∑ γ : SpinIndex, v γ •
      (∑ α : SpinIndex,
        ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) •
          pairedTheta α C) := by
  apply Finset.sum_congr rfl
  intro γ _
  exact congrArg (fun T : FermionOp => v γ • T)
    (handle_single_theta_comm i j γ C)

#print axioms handle_ad_pointwise
end FCP.BFSSSU2PhysicalDomainS3J3D3B
end
