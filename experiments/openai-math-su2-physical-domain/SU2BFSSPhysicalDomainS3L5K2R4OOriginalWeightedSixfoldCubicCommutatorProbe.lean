import SU2BFSSPhysicalDomainS3L5K2E2BOriginalCubicSixfoldPointwiseDischargeProbe
import SU2BFSSPhysicalDomainS3L5K2R4NOriginalSixfoldNestedResponseCoefficientAssemblyProbe

/-!
# R4O — true original sixfold cubic source operator commutator assembly

K2E2B unconditionally proves the literal original 48-Majorana source
cubic factor commutator transported through all six BFSS indices for an
arbitrary scalar family. We specialize its coefficient to the actual
original source 1/2 structure constant and gammaTwo. R4N separately
proves that same literal nested source response equals the original
color-first spinor/spatial gamma coefficient response.

This theorem proves the commutator of the genuine weighted sixfold
ordered source cubic monomial sum, NOT YET its definitional identification
with sourceCubicCharge pairedAlgebraData α. K4 provides that distinct
source charge identification. Full sixteen-charge Spin(9) covariance
and spectral existence remain independent obligations.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R4O
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5F
open FCP.BFSSSU2PhysicalDomainS3L5K1
open FCP.BFSSSU2PhysicalDomainS3L5K2
open FCP.BFSSSU2PhysicalDomainS3L5K2E2B
open FCP.BFSSSU2PhysicalDomainS3L5K2R4N

/-- Unconditional actual original BFSS SU(2) sixfold weighted cubic
source operator commutator equals its strictly verified spinor and
spatial two-form coefficient response, before source-charge aliasing. -/
theorem pairedActualOriginalCubicWeightedSixfold_comm_decompose
    (i j : SpaceIndex) (hij : i ≠ j) (α : SpinIndex) :
    (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j).comp
      (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) • ((pairedAlgebraData.fermionAction γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)))) -
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) • ((pairedAlgebraData.fermionAction γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)))).comp (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j) =
    (∑ A : ColorIndex 2, ∑ B : ColorIndex 2, ∑ C : ColorIndex 2,
      ((∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ β : SpinIndex,
      (((originalCubicStructureWeight A B C •
        (pairedAlgebraData.gammaTwo k l *
          (pairedPlaneSpinGenerator i j).transpose)) α β : ℝ) : ℂ) •
        (pairedAlgebraData.fermionAction β A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) +
    (∑ γ : SpinIndex, ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      (((originalCubicStructureWeight A B C •
          (-(sourceCubicTwoFormSpatialResponse i j k l))) α γ : ℝ) : ℂ) •
        (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))))) := by
  exact (pairedActualCubicSixfold_comm i j hij
    (fun k l A B C γ => (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)))).trans
    (pairedOriginalCubicSixfoldNestedResponse_decompose_named i j hij α)

#print axioms pairedActualOriginalCubicWeightedSixfold_comm_decompose
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4O
