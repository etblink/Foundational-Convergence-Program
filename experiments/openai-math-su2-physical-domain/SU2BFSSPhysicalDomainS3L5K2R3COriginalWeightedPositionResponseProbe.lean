import SU2BFSSPhysicalDomainS3L5K2R3BOriginalWeightedGammaTwoSpatialEntryProbe
import SU2BFSSPhysicalDomainS3L5K2R2DOriginalPairedFermionPositionReindexProbe

/-!
# K2R3C — actual original spatial cubic operator response weighted

Combine separately qualified source-faithful ingredients:
- R2D original paired fermionAction and two ordered N=2 positions;
- R3B original one-half SU(2) structure-constant / gammaTwo entry
  after exact two-spatial reindex (R3A).

This converts the weighted original position-variation response at
fixed A,B,C,γ,α into the original GammaTwo spatial-response coefficient
times the literal ordered source monomial. No full sixfold charge,
no 48-Majorana spin generator expansion, and no guessed new identity.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R3C
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K1
open FCP.BFSSSU2PhysicalDomainS3L5K3
open FCP.BFSSSU2PhysicalDomainS3L5K2R2D
open FCP.BFSSSU2PhysicalDomainS3L5K2R3B

/-- The actual original source position-pair response with both
spatial indices and exact physical 1/2 f × gammaTwo coefficient.
Only the fixed external SU(2) plane i ≠ j is required. -/
theorem pairedOriginalCubicWeightedPositionResponse_spatial
    (i j : SpaceIndex) (hij : i ≠ j)
    (α γ : SpinIndex) (A B C : ColorIndex 2) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      (((originalCubicStructureWeight A B C *
         pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        ((pairedAlgebraData.fermionAction γ A).comp
          ((sourcePositionVariation i j k B).comp
            (position (N := 2) l C)) +
         (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (sourcePositionVariation i j l C)))) =
    ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      (((originalCubicStructureWeight A B C •
          (-(sourceCubicTwoFormSpatialResponse i j k l))) α γ : ℝ) : ℂ) •
        (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (position (N := 2) l C)) := by
  calc
    _ = ∑ k : SpaceIndex, ∑ l : SpaceIndex,
          ((if k = i then
             (((originalCubicStructureWeight A B C *
                 pairedAlgebraData.gammaTwo j l α γ : ℝ) : ℂ))
            else if k = j then
             -(((originalCubicStructureWeight A B C *
                 pairedAlgebraData.gammaTwo i l α γ : ℝ) : ℂ))
            else 0) +
           (if l = i then
             (((originalCubicStructureWeight A B C *
                 pairedAlgebraData.gammaTwo k j α γ : ℝ) : ℂ))
            else if l = j then
             -(((originalCubicStructureWeight A B C *
                 pairedAlgebraData.gammaTwo k i α γ : ℝ) : ℂ))
            else 0)) •
          (pairedAlgebraData.fermionAction γ A).comp
            ((position (N := 2) k B).comp
              (position (N := 2) l C)) :=
      pairedOriginalCubicPositionResponse_reindex i j hij γ A B C
        (fun k l =>
          (((originalCubicStructureWeight A B C *
            pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)))
    _ = _ := by
      apply Finset.sum_congr rfl
      intro k _
      apply Finset.sum_congr rfl
      intro l _
      exact congrArg
        (fun z : ℂ => z •
          (pairedAlgebraData.fermionAction γ A).comp
            ((position (N := 2) k B).comp (position (N := 2) l C)))
        (originalCubicSpatialComplexCoefficient_reindexed
          i j k l A B C hij α γ)

#print axioms pairedOriginalCubicWeightedPositionResponse_spatial
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R3C
