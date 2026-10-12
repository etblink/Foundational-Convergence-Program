import SU2BFSSPhysicalDomainS3L5K2R4AThreeIndexOriginalSourceSumTransportProbe
import SU2BFSSPhysicalDomainS3L5K2R3COriginalWeightedPositionResponseProbe

/-!
# R4B — actual original cubic response at fixed colors A,B,C

Qualification #2 preflight: repair only the S3L5K1 namespace and the
first coefficient-lambda delimiter diagnosed by fixed-color gate #1.
The public theorem statement and all source mathematics are unchanged.

R4A isolates precise triple finite-index distribution; qualified R1D
proves the actual original source fermionic variation, and R3C the
actual two-position source spatial response. This module COMBINES
these two separately accepted mathematical identities at fixed
physical color indices, without expanding the source Fock generator.

The LHS retains the true 1/2 structureConstant times original
gammaTwo(k,l,alpha,gamma), the 9×9×16 finite indices, the original
fermionAction gamma A, and both positions in their original order.
The RHS retains the correct gammaTwo*J.transpose and NEGATIVE
source gammaTwo spatial-response coefficients. No premise hresp.
The full original color/sixfold operator commutator is still separate.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R4B
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L2
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K2
open FCP.BFSSSU2PhysicalDomainS3L5K3
open FCP.BFSSSU2PhysicalDomainS3L5K1
open FCP.BFSSSU2PhysicalDomainS3L5K2R1D
open FCP.BFSSSU2PhysicalDomainS3L5K2R3C
open FCP.BFSSSU2PhysicalDomainS3L5K2R4A

/-- The *genuine* weighted original cubic source response at fixed
A,B,C decomposes into certified original spinorial and spatial
coefficient responses. Both ordered source position factors remain
literal; the external source plane hypothesis is the accepted i ≠ j. -/
theorem pairedOriginalCubicFixedColorResponse_decompose
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
  have hsplit := sourceThreeSum_weightedResponse_split
    (fun k l γ =>
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)))
    (fun k l γ =>
      (sourceCubicFermionVariation i j γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)))
    (fun k l γ =>
      (pairedAlgebraData.fermionAction γ A).comp
        ((sourcePositionVariation i j k B).comp (position (N := 2) l C)) +
      (pairedAlgebraData.fermionAction γ A).comp
        ((position (N := 2) k B).comp
          (sourcePositionVariation i j l C)))
  calc
    _ = (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        (sourceCubicFermionVariation i j γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) +
        (∑ γ : SpinIndex, ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        ((pairedAlgebraData.fermionAction γ A).comp
          ((sourcePositionVariation i j k B).comp (position (N := 2) l C)) +
         (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (sourcePositionVariation i j l C)))) := hsplit
    _ = _ := by
      have hF :
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
              ((position (N := 2) k B).comp
                (position (N := 2) l C)) := by
        apply Finset.sum_congr rfl
        intro k _
        apply Finset.sum_congr rfl
        intro l _
        exact pairedOriginalCubicWeightedFermionResponse_coefficient
          i j k l α A B C
      have hP :
        (∑ γ : SpinIndex, ∑ k : SpaceIndex, ∑ l : SpaceIndex,
          (((originalCubicStructureWeight A B C *
            pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
          ((pairedAlgebraData.fermionAction γ A).comp
            ((sourcePositionVariation i j k B).comp (position (N := 2) l C)) +
           (pairedAlgebraData.fermionAction γ A).comp
            ((position (N := 2) k B).comp
              (sourcePositionVariation i j l C)))) =
        ∑ γ : SpinIndex, ∑ k : SpaceIndex, ∑ l : SpaceIndex,
          (((originalCubicStructureWeight A B C •
            (-(sourceCubicTwoFormSpatialResponse i j k l))) α γ : ℝ) : ℂ) •
            (pairedAlgebraData.fermionAction γ A).comp
              ((position (N := 2) k B).comp
                (position (N := 2) l C)) := by
        apply Finset.sum_congr rfl
        intro γ _
        exact pairedOriginalCubicWeightedPositionResponse_spatial
          i j hij α γ A B C
      exact congrArg₂ (fun X Y : SourceEnd => X + Y) hF hP

#print axioms pairedOriginalCubicFixedColorResponse_decompose
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4B
