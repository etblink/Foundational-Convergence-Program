import SU2BFSSPhysicalDomainS3L5K2R4C1FixedColorFermionSumProbe
import SU2BFSSPhysicalDomainS3L5K2R4FOriginalWeightedResponseTripleSumDistributionProbe
import SU2BFSSPhysicalDomainS3L5K2R4C2FixedColorSpatialSumProbe
import SU2BFSSPhysicalDomainS3L5K2R4AThreeIndexOriginalSourceSumTransportProbe

/-!
# R4D — original fixed-color cubic source response, named-interface assembly

Independent R4C1 and R4C2 qualified under pinned source/Lean CI on
2026-10-12. This new source-faithful statement is literally the original
unqualified R4B mathematical assertion, not a new representation or
surrogate operator. It delegates the two physical contraction identities
to their individually compiled declarations.

The remaining proof task is only the abstract R4A sum split's
specialization to the literal original source. This differs from old
monolithic Gate #3/4: NO physical coefficient and sum rewrites are
performed inside the final assembly, and separate R4C1/R4C2 .olean
objects are reused. Gate budget 180s; not accepted until compiled and
axiom-audited; no Hamiltonian spectral claim.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R4D
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
    _ = _ := congrArg₂ (fun X Y : SourceEnd => X + Y)
      (pairedOriginalCubicFixedColor_fermionSum i j α A B C)
      (pairedOriginalCubicFixedColor_spatialSum i j hij α A B C)

#print axioms pairedOriginalCubicFixedColorResponse_decompose_named
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4D
