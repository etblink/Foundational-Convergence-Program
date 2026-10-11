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

namespace FCP.BFSSSU2PhysicalDomainS3J3DiagP2Pointwise
/-- Isolated source-preserving exact equality P2Pointwise. -/
theorem diagnostic_step (i j : SpaceIndex) (C : ColorIndex 2)
    (v : SpinCoeffs) :
    (∑ γ : SpinIndex, v γ • OAI.KadisonKastler.boundedCommutator (pairedFermionPlaneSpinGenerator i j) (pairedTheta γ C)) = ∑ γ : SpinIndex, v γ • (pairedFermionPlaneSpinGenerator i j * pairedTheta γ C - pairedTheta γ C * pairedFermionPlaneSpinGenerator i j) := by
  apply Finset.sum_congr rfl
  intro γ _
  rw [OAI.KadisonKastler.boundedCommutator_apply]
#print axioms diagnostic_step
end FCP.BFSSSU2PhysicalDomainS3J3DiagP2Pointwise
end
