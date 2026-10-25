import SU2BFSSPhysicalDomainS3L5K2R4AThreeIndexOriginalSourceSumTransportProbe
import SU2BFSSPhysicalDomainS3L5K2R4C2FixedColorSpatialSumProbe

/-!
# R4E — literal original fixed-color spatial weighted triple-sum reindex

This isolates the precise spatial SourceEnd summand of the unchanged R4D
original theorem (the gamma-weighted, noncommutatively ordered source
position variation). No substitute physical coefficient or operator.

Mathematics: specialize the independently accepted R4A finite index
interchange to the *actual* original spatial response, WITHOUT assembling
the fermionic and spatial variations yet. A strict gate must kernel-check
the resulting original fixed-color expression independently.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K2R4E
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
open FCP.BFSSSU2PhysicalDomainS3L5K2R4A
open FCP.BFSSSU2PhysicalDomainS3L5K2R4C2

/-- Exact spatial source-response summand from original R4D, changing
only the order of the spinor finite sum and preserving the two ordered
position operators and all original complex gamma-two weights. -/
theorem pairedOriginalCubicFixedColor_spatialWeightedTripleSum_reindex
    (i j : SpaceIndex) (α : SpinIndex) (A B C : ColorIndex 2) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        ((pairedAlgebraData.fermionAction γ A).comp
          ((sourcePositionVariation i j k B).comp
            (position (N := 2) l C)) +
         (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (sourcePositionVariation i j l C)))) =
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
  exact sourceThreeSum_moveLastIndexFirst
    (K := SpaceIndex) (L := SpaceIndex) (Γ := SpinIndex)
    (fun k l γ =>
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        ((pairedAlgebraData.fermionAction γ A).comp
          ((sourcePositionVariation i j k B).comp
            (position (N := 2) l C)) +
         (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (sourcePositionVariation i j l C))))

#print axioms pairedOriginalCubicFixedColor_spatialWeightedTripleSum_reindex
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4E
