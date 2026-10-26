import SU2BFSSPhysicalDomainS3L5K2R4C1FixedColorFermionSumProbe
import SU2BFSSPhysicalDomainS3L5K2R4C2FixedColorSpatialSumProbe

/-!
# R4H — literal original R4D final coefficient-identification equality

Both sides are copied from the exact frozen original R4D source:
the first calc intermediate versus the final original physical coefficient
response. This isolates the final R4C1/R4C2 identification from the
already strictly accepted R4G first equality and does not claim full R4D.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R4H
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

/-- Literal R4D intermediate fermionic/spatial sum equals the original
final spin/gamma source coefficient expression, without revisiting R4G. -/
theorem pairedOriginalCubicFixedColorResponse_finalStep_named
    (i j : SpaceIndex) (hij : i ≠ j) (α : SpinIndex)
    (A B C : ColorIndex 2) :
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
              (sourcePositionVariation i j l C)))) =
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
  exact congrArg₂ (fun X Y : SourceEnd => X + Y)
    (pairedOriginalCubicFixedColor_fermionSum i j α A B C)
    (pairedOriginalCubicFixedColor_spatialSum i j hij α A B C)

#print axioms pairedOriginalCubicFixedColorResponse_finalStep_named
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4H
