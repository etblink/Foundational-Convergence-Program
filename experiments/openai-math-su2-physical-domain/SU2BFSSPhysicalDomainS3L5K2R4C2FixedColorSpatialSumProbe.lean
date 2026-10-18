import SU2BFSSPhysicalDomainS3L5K2R3COriginalWeightedPositionResponseProbe

/-!
# R4C2 — independent original fixed-color spatial-response triple sum

Only the outer original spinor sum is lifted over accepted R3C.
Both spatial source positions and their ordering are unchanged.
No fermionic variation, combined cubic assembly, or new hypothesis.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R4C2
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K1
open FCP.BFSSSU2PhysicalDomainS3L5K3
open FCP.BFSSSU2PhysicalDomainS3L5K2R3C

/-- The literal original spinor×9×9 spatial source response at fixed
SU(2) colors, without the fermion variation contribution. -/
theorem pairedOriginalCubicFixedColor_spatialSum
    (i j : SpaceIndex) (hij : i ≠ j) (α : SpinIndex)
    (A B C : ColorIndex 2) :
    (∑ γ : SpinIndex, ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        ((pairedAlgebraData.fermionAction γ A).comp
          ((sourcePositionVariation i j k B).comp
            (position (N := 2) l C)) +
         (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (sourcePositionVariation i j l C)))) =
    ∑ γ : SpinIndex, ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      (((originalCubicStructureWeight A B C •
        (-(sourceCubicTwoFormSpatialResponse i j k l))) α γ : ℝ) : ℂ) •
        (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C)) := by
  apply Finset.sum_congr rfl
  intro γ _
  exact pairedOriginalCubicWeightedPositionResponse_spatial
    i j hij α γ A B C

#print axioms pairedOriginalCubicFixedColor_spatialSum
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4C2
