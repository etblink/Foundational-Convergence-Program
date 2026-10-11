import SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe
import SU2BFSSPhysicalDomainS3J3D0WeightedCommutatorProbe
import OAI.Analysis.KadisonKastler.ExponentialCommutator

/-!
S3J3D1 bounded elaboration diagnostic.
One source-exact equality per file; no admitted theorem, no proxy data.
-/
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3E
private abbrev FermionOp := Fermion 2 →L[ℂ] Fermion 2
private abbrev SpinCoeffs := SpinIndex → ℂ

namespace FCP.BFSSSU2PhysicalDomainS3J3DiagP0CommApply
/-- Isolated source-preserving exact equality P0CommApply. -/
theorem diagnostic_step (i j : SpaceIndex) (C : ColorIndex 2)
    (v : SpinCoeffs) :
    pairedFermionPlaneSpinGenerator i j * (∑ γ : SpinIndex, v γ • pairedTheta γ C) - (∑ γ : SpinIndex, v γ • pairedTheta γ C) * pairedFermionPlaneSpinGenerator i j = OAI.KadisonKastler.boundedCommutator (pairedFermionPlaneSpinGenerator i j) (∑ γ : SpinIndex, v γ • pairedTheta γ C) := by
  exact (OAI.KadisonKastler.boundedCommutator_apply _ _).symm
#print axioms diagnostic_step
end FCP.BFSSSU2PhysicalDomainS3J3DiagP0CommApply
end
