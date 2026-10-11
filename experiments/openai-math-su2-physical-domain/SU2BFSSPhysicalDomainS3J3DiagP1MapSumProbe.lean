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

namespace FCP.BFSSSU2PhysicalDomainS3J3DiagP1MapSum
/-- Isolated source-preserving exact equality P1MapSum. -/
theorem diagnostic_step (i j : SpaceIndex) (C : ColorIndex 2)
    (v : SpinCoeffs) :
    OAI.KadisonKastler.boundedCommutator (pairedFermionPlaneSpinGenerator i j) (∑ γ : SpinIndex, v γ • pairedTheta γ C) = ∑ γ : SpinIndex, v γ • OAI.KadisonKastler.boundedCommutator (pairedFermionPlaneSpinGenerator i j) (pairedTheta γ C) := by
  rw [map_sum]
  apply Finset.sum_congr rfl
  intro γ _
  rw [map_smul]
#print axioms diagnostic_step
end FCP.BFSSSU2PhysicalDomainS3J3DiagP1MapSum
end
