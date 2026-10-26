import SU2BFSSPhysicalDomainS3L5K2R4DNamedSourceAssemblyProbe

/-!
# R4I — original source exact fixed-color R4D lifted through SU(2) color sums

The accepted R4D theorem is applied pointwise under the actual three
ColorIndex 2 indices A, B, C, preserving the entire original 9×9×16
gamma-weighted source response and all original operator orderings.
This exact literal outer-color-sum lift is *not* the full cubic
commutator identity or the final sixfold coefficient identification.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R4I
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
open FCP.BFSSSU2PhysicalDomainS3L5K2R4D

/-- The actual original R4D fixed-color cubic response decomposed at
all three physical SU(2) color indices, no new assumptions. -/
theorem pairedOriginalCubicAllColorsResponse_decompose_named
    (i j : SpaceIndex) (hij : i ≠ j) (α : SpinIndex) :
    (∑ A : ColorIndex 2, ∑ B : ColorIndex 2, ∑ C : ColorIndex 2,
      ((∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
       ((sourceCubicFermionVariation i j γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C)) +
        ((pairedAlgebraData.fermionAction γ A).comp
          ((sourcePositionVariation i j k B).comp (position (N := 2) l C)) +
         (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (sourcePositionVariation i j l C))))))) =
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
  apply Finset.sum_congr rfl
  intro A _
  apply Finset.sum_congr rfl
  intro B _
  apply Finset.sum_congr rfl
  intro C _
  exact pairedOriginalCubicFixedColorResponse_decompose_named
    i j hij α A B C

#print axioms pairedOriginalCubicAllColorsResponse_decompose_named
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4I
