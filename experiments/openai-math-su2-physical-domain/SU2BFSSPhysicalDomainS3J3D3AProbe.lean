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

namespace FCP.BFSSSU2PhysicalDomainS3J3D3A

private theorem ad_sum_linear (K : FermionOp) (C : ColorIndex 2)
    (v : SpinCoeffs) :
    OAI.KadisonKastler.boundedCommutator K
      (∑ γ : SpinIndex, v γ • pairedTheta γ C) =
    ∑ γ : SpinIndex, v γ •
      OAI.KadisonKastler.boundedCommutator K (pairedTheta γ C) := by
  rw [map_sum]
  apply Finset.sum_congr rfl
  intro γ _
  rw [map_smul]

/-- The exact physical weighted Majorana sum is carried through the
upstream bounded commutator by continuous complex linearity. -/
theorem handle_ad_sum (i j : SpaceIndex) (C : ColorIndex 2)
    (v : SpinCoeffs) :
    OAI.KadisonKastler.boundedCommutator
      (exactSourceK i j) (exactSourceThetaSum C v) =
    ∑ γ : SpinIndex, v γ •
      OAI.KadisonKastler.boundedCommutator
        (exactSourceK i j) (pairedTheta γ C) := by
  calc
    _ = OAI.KadisonKastler.boundedCommutator
      (exactSourceK i j) (∑ γ : SpinIndex, v γ • pairedTheta γ C) :=
        congrArg (fun Z : FermionOp =>
          OAI.KadisonKastler.boundedCommutator (exactSourceK i j) Z)
          (exactSourceThetaSum_eq C v)
    _ = _ := ad_sum_linear (exactSourceK i j) C v

#print axioms handle_ad_sum
end FCP.BFSSSU2PhysicalDomainS3J3D3A
end
