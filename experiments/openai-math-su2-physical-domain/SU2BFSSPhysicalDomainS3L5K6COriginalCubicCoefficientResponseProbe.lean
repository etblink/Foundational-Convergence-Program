import SU2BFSSPhysicalDomainS3L5K6BNegativeCubicCoefficientTransportProbe

/-!
# S3L5K6C — exact paired cubic coefficient response

K6C #1 qualification: source response from accepted K3-K6B compiled dependencies.
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
  calc
    _ = ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C •
        (-(pairedPlaneSpinGenerator i j * pairedAlgebraData.gammaTwo k l))) α γ : ℝ) : ℂ) •
          originalCubicSourceMonomial k l γ A B C :=
        pairedOriginalCubicSixfold_operatorCoefficient_transport i j hij α
    _ = ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (-(∑ β : SpinIndex,
        (pairedPlaneSpinGenerator i j α β : ℂ) *
          ((originalCubicStructureWeight A B C *
            pairedAlgebraData.gammaTwo k l β γ : ℝ) : ℂ))) •
          originalCubicSourceMonomial k l γ A B C := by
        apply Finset.sum_congr rfl
        intro k _
        apply Finset.sum_congr rfl
        intro l _
        apply Finset.sum_congr rfl
        intro A _
        apply Finset.sum_congr rfl
        intro B _
        apply Finset.sum_congr rfl
        intro C _
        apply Finset.sum_congr rfl
        intro γ _
        exact pairedOriginalCubicGammaTwo_negativeFreeSpinor_monomial
          i j k l A B C α γ
    _ = -(∑ β : SpinIndex,
          (pairedPlaneSpinGenerator i j α β : ℂ) •
            (∑ k : SpaceIndex, ∑ l : SpaceIndex,
              ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
              ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
              (((originalCubicStructureWeight A B C *
                pairedAlgebraData.gammaTwo k l β γ : ℝ) : ℂ)) •
                  originalCubicSourceMonomial k l γ A B C)) :=
        sourceCubicNegativeFreeSpinorSum_transport
          (fun β => (pairedPlaneSpinGenerator i j α β : ℂ))
          (fun β k l A B C γ =>
            (((originalCubicStructureWeight A B C *
              pairedAlgebraData.gammaTwo k l β γ : ℝ) : ℂ)))
          (fun k l A B C γ => originalCubicSourceMonomial k l γ A B C)
    _ = _ := by
        apply congrArg (fun T : SourceEnd => -T)
        apply Finset.sum_congr rfl
        intro β _
        exact congrArg
          (fun T : SourceEnd => (pairedPlaneSpinGenerator i j α β : ℂ) • T)
          (pairedSourceCubicCharge_asOriginalSixfoldMonomials β).symm


#print axioms pairedOriginalCubicCoefficientResponse_freeSpinor

end
end FCP.BFSSSU2PhysicalDomainS3L5K6C
