import SU2BFSSPhysicalDomainS3L5K2R4JOriginalResponseNestedCompAddBridgeProbe

/-!
# R4K — exact original weighted sixfold source response normalization

Lift the strictly accepted R4J original one-factor nested-vs-expanded
composition identity under all actual BFSS source charge labels
k,l,A,B,C,γ and the exact source factor 1/2 structureConstant × gammaTwo.
Preserves literal original operator factors, sixfold order, physical
SU(2) color indices and 16-spinor index. This is not a commutator,
not a named alias bridge, and not full Spin(9) covariance.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R4K
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
open FCP.BFSSSU2PhysicalDomainS3L5K2R4J

/-- The exact K2D3-style original cubic sixfold weighted response in
nested composition form equals its literal expanded R4D-style
sixfold sum, under every native original BFSS source index. -/
theorem pairedOriginalCubicSixfoldResponse_nestedAdd_eq_expanded
    (i j : SpaceIndex) (α : SpinIndex) :
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
      ((position (N := 2) k B).comp (sourcePositionVariation i j l C))))) := by
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
  exact congrArg
    (fun T : SourceEnd =>
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) • T)
    (pairedOriginalCubicResponse_nestedAdd_eq_expanded
      i j k l γ A B C)

#print axioms pairedOriginalCubicSixfoldResponse_nestedAdd_eq_expanded
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4K
