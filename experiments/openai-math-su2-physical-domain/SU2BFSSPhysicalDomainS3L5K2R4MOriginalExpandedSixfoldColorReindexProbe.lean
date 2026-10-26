import SU2BFSSPhysicalDomainS3L5K2R4LOriginalSixfoldSpatialColorSumInterchangeProbe

/-!
# R4M — literal original BFSS sixfold expanded response reindexed to color-first

This is the exact source R4K right side, with no operator or coefficient
changes, under the native spatial-first sixfold order. Apply the
separately accepted R4L sum-interchange to reach color-first
A,B,C,k,l,γ, the original order used in the R4I source response.
It does not yet assert the color-first term's equality with R4I's
entire theorem source LHS or a cubic source commutator.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R4M
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
open FCP.BFSSSU2PhysicalDomainS3L5K2R4L

/-- Original sixfold k,l,A,B,C,γ response with exact BFSS coefficient
and literal expanded original operator monomial, reindexed to native
SU(2) color-first A,B,C,k,l,γ without altering individual summands. -/
theorem pairedOriginalCubicSixfoldExpandedResponse_spatialToColor
    (i j : SpaceIndex) (α : SpinIndex) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        ((sourceCubicFermionVariation i j γ A).comp
      ((position (N := 2) k B).comp (position (N := 2) l C)) +
    ((pairedAlgebraData.fermionAction γ A).comp
      ((sourcePositionVariation i j k B).comp (position (N := 2) l C)) +
     (pairedAlgebraData.fermionAction γ A).comp
      ((position (N := 2) k B).comp (sourcePositionVariation i j l C))))) =
    (∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ k : SpaceIndex,
      ∑ l : SpaceIndex, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        ((sourceCubicFermionVariation i j γ A).comp
      ((position (N := 2) k B).comp (position (N := 2) l C)) +
    ((pairedAlgebraData.fermionAction γ A).comp
      ((sourcePositionVariation i j k B).comp (position (N := 2) l C)) +
     (pairedAlgebraData.fermionAction γ A).comp
      ((position (N := 2) k B).comp (sourcePositionVariation i j l C))))) := by
  exact sourceSixfold_spatialColor_to_colorSpatial
    (fun k l A B C γ =>
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        ((sourceCubicFermionVariation i j γ A).comp
      ((position (N := 2) k B).comp (position (N := 2) l C)) +
    ((pairedAlgebraData.fermionAction γ A).comp
      ((sourcePositionVariation i j k B).comp (position (N := 2) l C)) +
     (pairedAlgebraData.fermionAction γ A).comp
      ((position (N := 2) k B).comp (sourcePositionVariation i j l C)))))

#print axioms pairedOriginalCubicSixfoldExpandedResponse_spatialToColor
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4M
