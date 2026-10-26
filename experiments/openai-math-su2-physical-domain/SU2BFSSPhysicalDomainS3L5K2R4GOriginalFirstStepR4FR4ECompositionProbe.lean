import SU2BFSSPhysicalDomainS3L5K2R4FOriginalWeightedResponseTripleSumDistributionProbe
import SU2BFSSPhysicalDomainS3L5K2R4EOriginalFixedColorWeightedSpatialReindexProbe

/-!
# R4G — original R4D first-calc equality, separately kernel-checked

This theorem is the *exact literal* source R4D left-hand side equals its
*exact literal* first calc intermediate right-hand side, with only
the source's genuine fixed-color SU(2) cubic response operators.
The equality is proved using already qualified R4F and R4E, not the
large generic R4A distribution theorem in the final proof.
It deliberately stops before R4C1/R4C2 final coefficient identification.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R4G
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
open FCP.BFSSSU2PhysicalDomainS3L5K2R4E
open FCP.BFSSSU2PhysicalDomainS3L5K2R4F

/-- The exact original R4D combined-source response equals the
exact original first calc intermediate: separated fermionic sum plus
spinor-first spatial sum, with unchanged gamma, colors, and composition. -/
theorem pairedOriginalCubicFixedColorResponse_firstStep_named
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
  calc
    _ = (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        (sourceCubicFermionVariation i j γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) +
        (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        ((pairedAlgebraData.fermionAction γ A).comp
          ((sourcePositionVariation i j k B).comp
            (position (N := 2) l C)) +
         (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (sourcePositionVariation i j l C)))) :=
      pairedOriginalCubicFixedColor_responseWeightedTripleSum_distribute
        i j hij α A B C
    _ = _ := congrArg
      (fun T : SourceEnd => (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        (sourceCubicFermionVariation i j γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) + T)
      (pairedOriginalCubicFixedColor_spatialWeightedTripleSum_reindex
        i j α A B C)

#print axioms pairedOriginalCubicFixedColorResponse_firstStep_named
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4G
