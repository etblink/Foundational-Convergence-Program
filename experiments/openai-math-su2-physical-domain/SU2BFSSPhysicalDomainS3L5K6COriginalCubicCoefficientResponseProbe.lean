import SU2BFSSPhysicalDomainS3L5K6C3OriginalCubicChargeBridgeProbe

/-!
# S3L5K6C — exact paired cubic coefficient response

K6C #2 qualification: use three separately kernel-checked original-source stages C1–C3 rather than a monolithic elaboration.
The entire original source cubic coefficient-response contraction,
reusing the separately kernel-qualified K3 coefficient law, K4 sixfold
operator transport and sourceCubicCharge bridge, K5 free-spinor
contraction, and K6A/K6B generic positive/negative sum transports.
This file does not redeclare any of those generic theorems, avoiding
K6's oversized kernel proof. It does not claim the unresolved
source monomial commutator K2 or complete cubic-charge covariance.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K6C
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5A
open FCP.BFSSSU2PhysicalDomainS3L5K3
open FCP.BFSSSU2PhysicalDomainS3L5K4
open FCP.BFSSSU2PhysicalDomainS3L5K5
open FCP.BFSSSU2PhysicalDomainS3L5K6B
open FCP.BFSSSU2PhysicalDomainS3L5K6C1
open FCP.BFSSSU2PhysicalDomainS3L5K6C2
open FCP.BFSSSU2PhysicalDomainS3L5K6C3

/-- Original cubic coefficient response, including the full literal
source 1/2 structure constant, gammaTwo, six source sums, and exact
negative action on the *free* paired spinor index. The source operator
commutator part is a separate K2 obligation and is NOT assumed here. -/
theorem pairedOriginalCubicCoefficientResponse_freeSpinor
    (i j : SpaceIndex) (hij : i ≠ j) (α : SpinIndex) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C •
        (pairedAlgebraData.gammaTwo k l *
            (pairedPlaneSpinGenerator i j).transpose -
          sourceCubicTwoFormSpatialResponse i j k l)) α γ : ℝ) : ℂ) •
          originalCubicSourceMonomial k l γ A B C) =
    -(∑ β : SpinIndex,
      (pairedPlaneSpinGenerator i j α β : ℂ) •
        sourceCubicCharge pairedAlgebraData β) := by
  exact
    (pairedOriginalCubicResponse_asNegativeCoefficients i j hij α).trans
      ((pairedOriginalCubicNegativeCoefficients_asSpinorSum i j α).trans
        (pairedOriginalCubicRawSpinorSum_eqSourceCharge i j α))

#print axioms pairedOriginalCubicCoefficientResponse_freeSpinor

end
end FCP.BFSSSU2PhysicalDomainS3L5K6C
