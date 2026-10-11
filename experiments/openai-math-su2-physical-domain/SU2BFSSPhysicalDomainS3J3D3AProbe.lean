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

/-- Definitional handle of the actual source Majorana operator family. -/
noncomputable def exactThetaFamily (C : ColorIndex 2) :
    SpinIndex → FermionOp := fun γ => pairedTheta γ C

/-- Definitional handle for the pinned OAI bounded commutator applied to
the original BFSS fermionic plane-spin generator. -/
noncomputable def exactSourceAd (i j : SpaceIndex) :
    FermionOp →L[ℂ] FermionOp :=
  OAI.KadisonKastler.boundedCommutator (exactSourceK i j)

theorem exactSourceAd_eq (i j : SpaceIndex) :
    exactSourceAd i j =
      OAI.KadisonKastler.boundedCommutator (exactSourceK i j) := rfl

theorem exactSourceAd_apply (i j : SpaceIndex) (Z : FermionOp) :
    exactSourceAd i j Z =
      OAI.KadisonKastler.boundedCommutator (exactSourceK i j) Z := rfl

private theorem exactThetaSum_as_family (C : ColorIndex 2)
    (v : SpinCoeffs) :
    exactSourceThetaSum C v =
      ∑ γ : SpinIndex, v γ • exactThetaFamily C γ := rfl

/-- True actual-Fock source bounded commutator acts linearly on the
weighted genuine Majorana sum; all concrete data are represented only
through definitionally identical named continuous linear maps. -/
theorem handle_ad_sum (i j : SpaceIndex) (C : ColorIndex 2)
    (v : SpinCoeffs) :
    exactSourceAd i j (exactSourceThetaSum C v) =
      ∑ γ : SpinIndex, v γ • exactSourceAd i j
        (exactThetaFamily C γ) := by
  calc
    _ = exactSourceAd i j
        (∑ γ : SpinIndex, v γ • exactThetaFamily C γ) :=
          congrArg (exactSourceAd i j) (exactThetaSum_as_family C v)
    _ = _ := by
          rw [map_sum]
          apply Finset.sum_congr rfl
          intro γ _
          rw [map_smul]

#print axioms exactSourceAd_eq
#print axioms exactSourceAd_apply
#print axioms handle_ad_sum
end FCP.BFSSSU2PhysicalDomainS3J3D3A
end
