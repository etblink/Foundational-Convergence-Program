import SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe
import OAI.Analysis.KadisonKastler.ExponentialCommutator

/-! S3J3 P0 specialization discrimination. Genuine source objects, no alternate representation. -/
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3E
private abbrev FermionOp := Fermion 2 →L[ℂ] Fermion 2
private abbrev SpinCoeffs := SpinIndex → ℂ

namespace FCP.BFSSSU2PhysicalDomainS3J3DiagP0LetBoundary
/-- Exact Fock-operator identity without source expressions. -/
theorem abstract_fock_op (K Z : FermionOp) :
    K * Z - Z * K =
      OAI.KadisonKastler.boundedCommutator K Z := by
  rfl
#print axioms abstract_fock_op

/-- Both original source expressions; test whether typed local lets allow
the already kernel-qualified abstract proof to be instantiated. -/
theorem diagnostic_step (i j : SpaceIndex) (C : ColorIndex 2)
    (v : SpinCoeffs) :
    pairedFermionPlaneSpinGenerator i j * (∑ γ : SpinIndex, v γ • pairedTheta γ C) - (∑ γ : SpinIndex, v γ • pairedTheta γ C) * pairedFermionPlaneSpinGenerator i j =
    OAI.KadisonKastler.boundedCommutator (pairedFermionPlaneSpinGenerator i j) (∑ γ : SpinIndex, v γ • pairedTheta γ C) := by
  let K : FermionOp := pairedFermionPlaneSpinGenerator i j
  let Z : FermionOp := (∑ γ : SpinIndex, v γ • pairedTheta γ C)
  change K * Z - Z * K = OAI.KadisonKastler.boundedCommutator K Z
  exact abstract_fock_op K Z

#print axioms diagnostic_step
end FCP.BFSSSU2PhysicalDomainS3J3DiagP0LetBoundary
end
