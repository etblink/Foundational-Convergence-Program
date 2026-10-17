import SU2BFSSPhysicalDomainS3L5K2R1COriginalGammaTwoSpinorCoefficientProbe

/-!
# R1D — original weighted cubic fermion response matches K6C coefficient

R1A qualified original source fermion variation sum transport; R1B
specialized it to the literal cubic 1/2 f gammaTwo scalar weight and
ordered N=2 source positions. R1C proved the exact source gammaTwo
times transposed paired spinor generator scalar contraction.

This module composes those *separately qualified* results at fixed
spatial and color indices, without substituting a new physics
operator, assuming any sixfold response equality, or re-expanding the
48-Majorana generator.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R1D
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K2
open FCP.BFSSSU2PhysicalDomainS3L5K3
open FCP.BFSSSU2PhysicalDomainS3L5K2R1B
open FCP.BFSSSU2PhysicalDomainS3L5K2R1C

/-- The genuine source fermionic response of the original fixed-k,l
cubic monomial, with exact original gammaTwo*J.transpose coefficient.
The spatial/source orbital response is an independent R3C theorem. -/
theorem pairedOriginalCubicWeightedFermionResponse_coefficient
    (i j k l : SpaceIndex) (α : SpinIndex)
    (A B C : ColorIndex 2) :
    (∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        (sourceCubicFermionVariation i j γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) =
    ∑ β : SpinIndex,
      (((originalCubicStructureWeight A B C •
        (pairedAlgebraData.gammaTwo k l *
          (pairedPlaneSpinGenerator i j).transpose)) α β : ℝ) : ℂ) •
        (pairedAlgebraData.fermionAction β A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C)) := by
  calc
    _ = ∑ β : SpinIndex,
      (∑ γ : SpinIndex,
        (((originalCubicStructureWeight A B C *
          pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) *
          ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ)) •
            (pairedAlgebraData.fermionAction β A).comp
              ((position (N := 2) k B).comp
                (position (N := 2) l C)) :=
      pairedOriginalCubicWeightedFermionResponse_reindex
        i j k l α A B C
    _ = _ := by
      apply Finset.sum_congr rfl
      intro β _
      exact congrArg
        (fun z : ℂ => z •
          (pairedAlgebraData.fermionAction β A).comp
            ((position (N := 2) k B).comp
              (position (N := 2) l C)))
        (pairedOriginalCubicGammaTwoSpinorCoefficient_reindexed
          i j k l α β A B C)

#print axioms pairedOriginalCubicWeightedFermionResponse_coefficient
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R1D
