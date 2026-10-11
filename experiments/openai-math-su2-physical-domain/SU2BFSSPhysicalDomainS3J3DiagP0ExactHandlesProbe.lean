import SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe
import OAI.Analysis.KadisonKastler.ExponentialCommutator

/-!
# S3J3 P0 source-faithful definitional handles

The two short names are ordinary Lean `def`s of the genuine pinned
Fock spin generator and the genuine weighted theta combination.
They are NOT opaque, proxy models, or additional mathematical assumptions.
This experiment tests proof elaboration on their shared operator type.
-/
namespace FCP.BFSSSU2PhysicalDomainS3J3DiagP0ExactHandles
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3E

private abbrev FermionOp := Fermion 2 →L[ℂ] Fermion 2
private abbrev SpinCoeffs := SpinIndex → ℂ

/-- Definitional handle for the exact accepted Fock-plane generator. -/
noncomputable def exactSourceK (i j : SpaceIndex) : FermionOp :=
  pairedFermionPlaneSpinGenerator i j

/-- Definitional handle for the exact actual Majorana weighted sum. -/
noncomputable def exactSourceThetaSum (C : ColorIndex 2)
    (v : SpinCoeffs) : FermionOp :=
  ∑ γ : SpinIndex, v γ • pairedTheta γ C

theorem exactSourceK_eq (i j : SpaceIndex) :
    exactSourceK i j = pairedFermionPlaneSpinGenerator i j := rfl

theorem exactSourceThetaSum_eq (C : ColorIndex 2) (v : SpinCoeffs) :
    exactSourceThetaSum C v =
      ∑ γ : SpinIndex, v γ • pairedTheta γ C := rfl

private theorem abstract_fock_op (K Z : FermionOp) :
    K * Z - Z * K =
      OAI.KadisonKastler.boundedCommutator K Z := by
  rfl

/-- The exact source spin and Majorana-sum operators (through proven
definitional handles) obey the upstream bounded-commutator identity. -/
theorem diagnostic_step (i j : SpaceIndex) (C : ColorIndex 2)
    (v : SpinCoeffs) :
    exactSourceK i j * exactSourceThetaSum C v -
      exactSourceThetaSum C v * exactSourceK i j =
      OAI.KadisonKastler.boundedCommutator
        (exactSourceK i j) (exactSourceThetaSum C v) := by
  exact abstract_fock_op (exactSourceK i j) (exactSourceThetaSum C v)

#print axioms exactSourceK_eq
#print axioms exactSourceThetaSum_eq
#print axioms diagnostic_step

end
end FCP.BFSSSU2PhysicalDomainS3J3DiagP0ExactHandles
