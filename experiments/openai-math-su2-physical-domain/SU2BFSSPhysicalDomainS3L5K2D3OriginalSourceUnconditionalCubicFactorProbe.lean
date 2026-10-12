import SU2BFSSPhysicalDomainS3L5K2D2OriginalSourceCubicFactorOfResponseProbe

/-!
# S3L5K2D3 — unconditional actual BFSS cubic source factor covariance

K2D1 and K2D2 qualified: the SourceEnd position-pair Leibniz law
was first proved with M and K parametric, then instantiated to the
ACTUAL paired 48-Majorana source generator with hF left visible.

This is the previously missing physical discharge: use EXACT qualified
K2A hF, not a fresh premise or a new postulated operator identity.
Original smooth test-function SourceEnd, original fermionAction and
ordered two-position factor are literal in the statement.

Does not yet relate this theorem to K2B's independently defined
pairedOriginalCubicMonomial alias, nor prove complete cubic charge
covariance, Hamiltonian symmetry, domain closure or any spectrum.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K2D3
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5F
open FCP.BFSSSU2PhysicalDomainS3L5K1
open FCP.BFSSSU2PhysicalDomainS3L5K2
open FCP.BFSSSU2PhysicalDomainS3L5K2D2

/-- The full original-source factor response with NO additional premise:
the K2A fermion-action commutator is discharged explicitly. -/
theorem pairedActualCombined_comm_cubicFactor
    (i j k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) (hij : i ≠ j)
    :
    (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j).comp
        ((pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) -
    ((pairedAlgebraData.fermionAction γ A).comp
       ((position (N := 2) k B).comp (position (N := 2) l C))).comp
      (sourceParametricCombinedPlane
        (pairedFermionPlaneSpinGenerator i j) i j) =
    (sourceCubicFermionVariation i j γ A).comp
      ((position (N := 2) k B).comp (position (N := 2) l C)) +
    (pairedAlgebraData.fermionAction γ A).comp
      ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
        (position (N := 2) k B).comp
          (sourcePositionVariation i j l C)) := by
  -- Both theorem and prerequisite are previously qualified at exact pins.
  -- Unlike failed K2B, Leibniz and position-pair source algebra are
  -- SEALED in the imported compiled K2D2 declaration.
  have hF := pairedActualCombined_comm_fermionAction i j γ A
  trace "K2D3_EXACT_K2A_RESPONSE_RETRIEVED"
  exact pairedActualCombined_comm_cubicFactor_of_fermionResponse
    i j k l γ A B C hij hF

#print axioms pairedActualCombined_comm_cubicFactor

end
end FCP.BFSSSU2PhysicalDomainS3L5K2D3
