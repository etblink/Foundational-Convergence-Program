import SU2BFSSPhysicalDomainS3L5K2R4MOriginalExpandedSixfoldColorReindexProbe
import SU2BFSSPhysicalDomainS3L5K2R4IOriginalThreeColorSourceResponseLiftProbe

/-!
# R4N — exact original sixfold weighted response to color coefficient response

Compose three strictly accepted original-source operator equalities:
R4K normalizes the literal nested sixfold response, R4M changes its
summation order, R4I identifies the resulting color-first response with
the original paired Spin(9) gamma two-form coefficient response.

No new physical premises or modified source operator definitions.
The original cubic-charge commutator and named sixfold source/charge
bridges are independent obligations not proved by this theorem.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R4N
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K1
open FCP.BFSSSU2PhysicalDomainS3L5K2
open FCP.BFSSSU2PhysicalDomainS3L5K3
open FCP.BFSSSU2PhysicalDomainS3L5K2R4I
open FCP.BFSSSU2PhysicalDomainS3L5K2R4K
open FCP.BFSSSU2PhysicalDomainS3L5K2R4M

/-- The entire original sixfold source weighted *response*, before
any independently unproved commutator identification, equals the
literal original three-color-fixed coefficient decomposition. -/
theorem pairedOriginalCubicSixfoldNestedResponse_decompose_named
    (i j : SpaceIndex) (hij : i ≠ j) (α : SpinIndex) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        ((sourceCubicFermionVariation i j γ A).comp
      ((position (N := 2) k B).comp (position (N := 2) l C)) +
    (pairedAlgebraData.fermionAction γ A).comp
      ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
       (position (N := 2) k B).comp (sourcePositionVariation i j l C)))) =
    (∑ A : ColorIndex 2, ∑ B : ColorIndex 2, ∑ C : ColorIndex 2,
      ((∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ β : SpinIndex,
      (((originalCubicStructureWeight A B C •
        (pairedAlgebraData.gammaTwo k l *
          (pairedPlaneSpinGenerator i j).transpose)) α β : ℝ) : ℂ) •
        (pairedAlgebraData.fermionAction β A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) +
    (∑ γ : SpinIndex, ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      (((originalCubicStructureWeight A B C •
          (-(sourceCubicTwoFormSpatialResponse i j k l))) α γ : ℝ) : ℂ) •
        (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))))) := by
  exact (pairedOriginalCubicSixfoldResponse_nestedAdd_eq_expanded i j α).trans
    ((pairedOriginalCubicSixfoldExpandedResponse_spatialToColor i j α).trans
      (pairedOriginalCubicAllColorsResponse_decompose_named i j hij α))

#print axioms pairedOriginalCubicSixfoldNestedResponse_decompose_named
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4N
