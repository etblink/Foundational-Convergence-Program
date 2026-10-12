import SU2BFSSPhysicalDomainS3L5K2R4AThreeIndexOriginalSourceSumTransportProbe
import SU2BFSSPhysicalDomainS3L5K2R3COriginalWeightedPositionResponseProbe

/-!
# R4B — actual original cubic response at fixed colors A,B,C

Qualification #2 preflight: repair only the S3L5K1 namespace and the
first coefficient-lambda delimiter diagnosed by fixed-color gate #1.
The public theorem statement and all source mathematics are unchanged.
Qualification #3: termwise finite-index distribution replaces the
large hsplit definitional conversion isolated by gate #2.

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
  -- Gate #2 localized the concrete hsplit elaboration bottleneck.
  -- Prove the outer distribution at each finite index first; do not
  -- instantiate a generic full-expression equality against the giant source.
  -- Gate #4 instrumented localization; no theorem/tactic change.
  trace "R4B_STAGE_0_PROOF_START"
  calc
    _ = (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
          ((((originalCubicStructureWeight A B C *
      pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) • (sourceCubicFermionVariation i j γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C))) + ((((originalCubicStructureWeight A B C *
      pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) • ((pairedAlgebraData.fermionAction γ A).comp
          ((sourcePositionVariation i j k B).comp (position (N := 2) l C)) +
        (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (sourcePositionVariation i j l C))))) := by
      trace "R4B_STAGE_1_POINTWISE_START"
      apply Finset.sum_congr rfl
      intro k _
      apply Finset.sum_congr rfl
      intro l _
      apply Finset.sum_congr rfl
      intro γ _
      rw [smul_add]
    _ = (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
          (((originalCubicStructureWeight A B C *
      pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) • (sourceCubicFermionVariation i j γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C))) +
        (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
          (((originalCubicStructureWeight A B C *
      pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) • ((pairedAlgebraData.fermionAction γ A).comp
          ((sourcePositionVariation i j k B).comp (position (N := 2) l C)) +
        (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (sourcePositionVariation i j l C)))) := by
      trace "R4B_STAGE_2_SUM_DISTRIBUTION_START"
      simp only [Finset.sum_add_distrib]
    _ = (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
          (((originalCubicStructureWeight A B C *
      pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) • (sourceCubicFermionVariation i j γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C))) +
        (∑ γ : SpinIndex, ∑ k : SpaceIndex, ∑ l : SpaceIndex,
          (((originalCubicStructureWeight A B C *
      pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) • ((pairedAlgebraData.fermionAction γ A).comp
          ((sourcePositionVariation i j k B).comp (position (N := 2) l C)) +
        (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (sourcePositionVariation i j l C)))) := by
      trace "R4B_STAGE_3_REINDEX_START"
      apply congrArg (fun X : SourceEnd => (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
          (((originalCubicStructureWeight A B C *
      pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) • (sourceCubicFermionVariation i j γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C))) + X)
      calc
        (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ γ : SpinIndex,
          (((originalCubicStructureWeight A B C *
      pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) • ((pairedAlgebraData.fermionAction γ A).comp
          ((sourcePositionVariation i j k B).comp (position (N := 2) l C)) +
        (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (sourcePositionVariation i j l C)))) = (∑ k : SpaceIndex, ∑ γ : SpinIndex, ∑ l : SpaceIndex,
          (((originalCubicStructureWeight A B C *
      pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) • ((pairedAlgebraData.fermionAction γ A).comp
          ((sourcePositionVariation i j k B).comp (position (N := 2) l C)) +
        (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (sourcePositionVariation i j l C)))) := by
          apply Finset.sum_congr rfl
          intro k _
          exact Finset.sum_comm
        _ = (∑ γ : SpinIndex, ∑ k : SpaceIndex, ∑ l : SpaceIndex,
          (((originalCubicStructureWeight A B C *
      pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) • ((pairedAlgebraData.fermionAction γ A).comp
          ((sourcePositionVariation i j k B).comp (position (N := 2) l C)) +
        (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (sourcePositionVariation i j l C)))) := Finset.sum_comm
    _ = (∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ β : SpinIndex,
          (((originalCubicStructureWeight A B C •
          (pairedAlgebraData.gammaTwo k l *
            (pairedPlaneSpinGenerator i j).transpose)) α β : ℝ) : ℂ) • (pairedAlgebraData.fermionAction β A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) +
        (∑ γ : SpinIndex, ∑ k : SpaceIndex, ∑ l : SpaceIndex,
          (((originalCubicStructureWeight A B C •
          (-(sourceCubicTwoFormSpatialResponse i j k l))) α γ : ℝ) : ℂ) • (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) := by
      trace "R4B_STAGE_4_ACCEPTED_IDENTITIES_START"
      apply congrArg₂ (fun X Y : SourceEnd => X + Y)
      · apply Finset.sum_congr rfl
        intro k _
        apply Finset.sum_congr rfl
        intro l _
        exact pairedOriginalCubicWeightedFermionResponse_coefficient
          i j k l α A B C
      · apply Finset.sum_congr rfl
        intro γ _
        exact pairedOriginalCubicWeightedPositionResponse_spatial
          i j hij α γ A B C

#print axioms pairedOriginalCubicFixedColorResponse_decompose
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4B
