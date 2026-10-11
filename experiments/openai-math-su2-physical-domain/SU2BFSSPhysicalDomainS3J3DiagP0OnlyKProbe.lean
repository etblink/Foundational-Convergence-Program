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

namespace FCP.BFSSSU2PhysicalDomainS3J3DiagP0OnlyK
/-- Exact Fock-operator identity without source expressions. -/
theorem abstract_fock_op (K Z : FermionOp) :
    K * Z - Z * K =
      OAI.KadisonKastler.boundedCommutator K Z := by
  rfl
#print axioms abstract_fock_op

/-- Only spin generator instantiated; second operator stays abstract. -/
theorem diagnostic_step (i j : SpaceIndex) (Z : FermionOp) :
    pairedFermionPlaneSpinGenerator i j * Z - Z * pairedFermionPlaneSpinGenerator i j =
    OAI.KadisonKastler.boundedCommutator (pairedFermionPlaneSpinGenerator i j) Z := by
  exact abstract_fock_op (pairedFermionPlaneSpinGenerator i j) Z

#print axioms diagnostic_step
end FCP.BFSSSU2PhysicalDomainS3J3DiagP0OnlyK
end
