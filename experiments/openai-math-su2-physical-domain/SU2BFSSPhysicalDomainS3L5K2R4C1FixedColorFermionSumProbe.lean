import SU2BFSSPhysicalDomainS3L5K2R1DOriginalWeightedFermionCoefficientBridgeProbe

/-!
# R4C1 — independent original fixed-color fermion-response triple sum

Only two spatial outer sums are lifted over the already accepted R1D
fixed-(k,l,A,B,C) spinor contraction. No spatial orbital response,
combined cubic assembly, full supercharge, or additional assumptions.
This is an independently compiled theorem interface.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R4C1
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K2
open FCP.BFSSSU2PhysicalDomainS3L5K3
open FCP.BFSSSU2PhysicalDomainS3L5K2R1D

/-- The literal original 9×9×16 source fermionic response at fixed
SU(2) colors, without the spatial variation contribution. -/
theorem pairedOriginalCubicFixedColor_fermionSum
    (i j : SpaceIndex) (α : SpinIndex) (A B C : ColorIndex 2) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        (sourceCubicFermionVariation i j γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) =
    ∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ β : SpinIndex,
      (((originalCubicStructureWeight A B C •
        (pairedAlgebraData.gammaTwo k l *
          (pairedPlaneSpinGenerator i j).transpose)) α β : ℝ) : ℂ) •
        (pairedAlgebraData.fermionAction β A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C)) := by
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro l _
  exact pairedOriginalCubicWeightedFermionResponse_coefficient
    i j k l α A B C

#print axioms pairedOriginalCubicFixedColor_fermionSum
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4C1
