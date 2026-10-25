import SU2BFSSPhysicalDomainS3L5K2R4EOriginalFixedColorWeightedSpatialReindexProbe
import SU2BFSSPhysicalDomainS3L5K2R4C1FixedColorFermionSumProbe

/-!
# R4F — original-source exact weighted triple-sum distribution

The left-hand side and split right-hand side are extracted exactly from
the canonical R4D theorem and its first calc step. This gate proves ONLY
distributivity for the literal source-defined operators, weights, and finite
index order. R4E separately handles the spatial reindex; R4C1/R4C2
separately handle the component coefficient identities.
No surrogate operator or change to the original mathematical data.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R4F
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L2
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K1
open FCP.BFSSSU2PhysicalDomainS3L5K2
open FCP.BFSSSU2PhysicalDomainS3L5K3
open FCP.BFSSSU2PhysicalDomainS3L5K2R4A
open FCP.BFSSSU2PhysicalDomainS3L5K2R4C1
open FCP.BFSSSU2PhysicalDomainS3L5K2R4C2

/-- The exact original R4B statement, now with two independently
kernel-qualified fixed-color response sums. -/
theorem pairedOriginalCubicFixedColorResponse_decompose_named
    (i j : SpaceIndex) (hij : i ≠ j) (α : SpinIndex)
    (A B C : ColorIndex 2) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
       ((sourceCubicFermionVariation i j γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C)) +
        ((pairedAlgebraData.fermionAction γ A).comp
          ((sourcePositionVariation i j k B).comp (position (N := 2) l C)) +
         (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (sourcePositionVariation i j l C))))) =
    (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ β : SpinIndex,
      (((originalCubicStructureWeight A B C •
        (pairedAlgebraData.gammaTwo k l *
          (pairedPlaneSpinGenerator i j).transpose)) α β : ℝ) : ℂ) •
        (pairedAlgebraData.fermionAction β A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) +
    (∑ γ : SpinIndex, ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      (((originalCubicStructureWeight A B C •
          (-(sourceCubicTwoFormSpatialResponse i j k l))) α γ : ℝ) : ℂ) •
        (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) := by
  -- The first obligation is solely an instance of abstract, previously
  -- qualified R4A. The second invokes sealed R4C1 and R4C2.
  calc
    _ =
      (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
        (((originalCubicStructureWeight A B C *
          pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
          (sourceCubicFermionVariation i j γ A).comp
            ((position (N := 2) k B).comp (position (N := 2) l C))) +
      (∑ γ : SpinIndex, ∑ k : SpaceIndex, ∑ l : SpaceIndex,
        (((originalCubicStructureWeight A B C *
          pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
          ((pairedAlgebraData.fermionAction γ A).comp
            ((sourcePositionVariation i j k B).comp
              (position (N := 2) l C)) +
           (pairedAlgebraData.fermionAction γ A).comp
            ((position (N := 2) k B).comp
              (sourcePositionVariation i j l C)))) := by
      exact sourceThreeSum_weightedResponse_split
        (fun k l γ =>
          (((originalCubicStructureWeight A B C *
            pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)))
        (fun k l γ =>
          (sourceCubicFermionVariation i j γ A).comp
            ((position (N := 2) k B).comp (position (N := 2) l C)))
        (fun k l γ =>
          (pairedAlgebraData.fermionAction γ A).comp
            ((sourcePositionVariation i j k B).comp
              (position (N := 2) l C)) +
          (pairedAlgebraData.fermionAction γ A).comp
            ((position (N := 2) k B).comp
              (sourcePositionVariation i j l C)))
    _ = _ := congrArg₂ (fun X Y : SourceEnd => X + Y)
      (pairedOriginalCubicFixedColor_fermionSum i j α A B C)
      (pairedOriginalCubicFixedColor_spatialSum i j hij α A B C)

#print axioms pairedOriginalCubicFixedColorResponse_decompose_named
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4F
/-- Exact source-defined weighted cubic response distribution into the
original fermionic and spatial triple sums; all gamma and color weights,
operator ordering, and position variations are unchanged. -/
theorem pairedOriginalCubicFixedColor_responseWeightedTripleSum_distribute
    (i j : SpaceIndex) (hij : i ≠ j) (α : SpinIndex)
    (A B C : ColorIndex 2) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
       ((sourceCubicFermionVariation i j γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C)) +
        ((pairedAlgebraData.fermionAction γ A).comp
          ((sourcePositionVariation i j k B).comp (position (N := 2) l C)) +
         (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (sourcePositionVariation i j l C))))) =
      (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
        (((originalCubicStructureWeight A B C *
          pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
          (sourceCubicFermionVariation i j γ A).comp
            ((position (N := 2) k B).comp (position (N := 2) l C))) +
      (∑ γ : SpinIndex, ∑ k : SpaceIndex, ∑ l : SpaceIndex,
        (((originalCubicStructureWeight A B C *
          pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
          ((pairedAlgebraData.fermionAction γ A).comp
            ((sourcePositionVariation i j k B).comp
              (position (N := 2) l C)) +
           (pairedAlgebraData.fermionAction γ A).comp
            ((position (N := 2) k B).comp
              (sourcePositionVariation i j l C)))) := by
  classical
  simp only [smul_add, Finset.sum_add_distrib]

#print axioms pairedOriginalCubicFixedColor_responseWeightedTripleSum_distribute
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4F
