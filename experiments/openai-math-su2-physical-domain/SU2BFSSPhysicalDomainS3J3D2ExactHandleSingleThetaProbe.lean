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

/-- A definitional name for the original single source Majorana operator. -/
noncomputable def exactThetaOne (γ : SpinIndex) (C : ColorIndex 2) :
    FermionOp := pairedTheta γ C

theorem exactThetaOne_eq (γ : SpinIndex) (C : ColorIndex 2) :
    exactThetaOne γ C = pairedTheta γ C := rfl

/-- Reuse the already accepted S3E theorem with its source expression
unchanged, before introducing any definitional handles. -/
theorem source_single_theta_reuse
    (i j : SpaceIndex) (γ : SpinIndex) (C : ColorIndex 2) :
    pairedFermionPlaneSpinGenerator i j * pairedTheta γ C -
        pairedTheta γ C * pairedFermionPlaneSpinGenerator i j =
      ∑ α : SpinIndex,
        ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) •
          pairedTheta α C :=
  pairedFermionPlaneSpinGenerator_comm_theta i j γ C

/-- The upstream ad operator on two typed, opaque Fock-operator variables. -/
private theorem ad_apply_abstract (K Z : FermionOp) :
    OAI.KadisonKastler.boundedCommutator K Z = K * Z - Z * K := by
  rfl

/-- The same genuine source law, transported through exact operator
equalities rather than definitional comparison of expanded Fock terms. -/
theorem handle_single_theta_comm
    (i j : SpaceIndex) (γ : SpinIndex) (C : ColorIndex 2) :
    OAI.KadisonKastler.boundedCommutator
        (exactSourceK i j) (pairedTheta γ C) =
      ∑ α : SpinIndex,
        ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) •
          pairedTheta α C := by
  calc
    _ = OAI.KadisonKastler.boundedCommutator
          (exactSourceK i j) (exactThetaOne γ C) :=
          congrArg
            (fun Z : FermionOp =>
              OAI.KadisonKastler.boundedCommutator (exactSourceK i j) Z)
            (exactThetaOne_eq γ C).symm
    _ = exactSourceK i j * exactThetaOne γ C -
          exactThetaOne γ C * exactSourceK i j :=
          ad_apply_abstract (exactSourceK i j) (exactThetaOne γ C)
    _ = pairedFermionPlaneSpinGenerator i j * pairedTheta γ C -
          pairedTheta γ C * pairedFermionPlaneSpinGenerator i j :=
          congrArg₂
            (fun K Z : FermionOp => K * Z - Z * K)
            (exactSourceK_eq i j) (exactThetaOne_eq γ C)
    _ = _ := source_single_theta_reuse i j γ C

#print axioms exactThetaOne_eq
#print axioms source_single_theta_reuse
#print axioms handle_single_theta_comm

end FCP.BFSSSU2PhysicalDomainS3J3D2Single
end
