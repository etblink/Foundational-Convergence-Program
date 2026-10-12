import SU2BFSSPhysicalDomainS3L5K2R3AOriginalGammaTwoSpatialReindexProbe

/-!
# K2R3B — original weighted gammaTwo two-index spatial coefficient

Pinned qualification attempt #1. No physics or proof-body changes.

R3A qualified three original gammaTwo matrix reindex identities, and
K3 qualified the exact real structureConstant / 2 source weight.
This step applies that SAME weight to R3A's original two-index response,
then evaluates the actual gammaTwo matrix entry as a complex scalar.
No Fock generator, altered signs or new coefficient tensor.
This is a necessary R2/R3 operator-to-coefficient bridge, not a full
cubic charge covariance theorem.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R3B
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L2
open FCP.BFSSSU2PhysicalDomainS3L5K3
open FCP.BFSSSU2PhysicalDomainS3L5K2R3A

/-- Matrix-level original cubic 1/2 structure-constant weighting,
with the two separate spatial positions in their original order. -/
theorem originalCubicStructureWeightedGammaTwo_spatial
    (i j k l : SpaceIndex) (A B C : ColorIndex 2) (hij : i ≠ j) :
    (if k = i then originalCubicStructureWeight A B C •
        pairedAlgebraData.gammaTwo j l
     else if k = j then -(originalCubicStructureWeight A B C •
        pairedAlgebraData.gammaTwo i l) else 0) +
    (if l = i then originalCubicStructureWeight A B C •
        pairedAlgebraData.gammaTwo k j
     else if l = j then -(originalCubicStructureWeight A B C •
        pairedAlgebraData.gammaTwo k i) else 0) =
      originalCubicStructureWeight A B C •
        (-(sourceCubicTwoFormSpatialResponse i j k l)) := by
  have h := congrArg
    (fun M : GammaMatrix => originalCubicStructureWeight A B C • M)
    (originalGammaTwo_bothSpatialIndices_reindex i j k l hij)
  simpa only [smul_add, smul_ite, smul_neg, smul_zero] using h

/-- Genuine original real gammaTwo entries with complex casting. This
is EXACTLY the two spatial branch coefficient from accepted R2D when
c(k,l) is 1/2 structureConstant times original gammaTwo α γ. -/
theorem originalCubicSpatialComplexCoefficient_reindexed
    (i j k l : SpaceIndex) (A B C : ColorIndex 2)
    (hij : i ≠ j) (α γ : SpinIndex) :
    (if k = i then
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
     else 0) =
    (((originalCubicStructureWeight A B C •
        (-(sourceCubicTwoFormSpatialResponse i j k l))) α γ : ℝ) : ℂ) := by
  have h := congrArg
    (fun M : GammaMatrix => ((M α γ : ℝ) : ℂ))
    (originalCubicStructureWeightedGammaTwo_spatial i j k l A B C hij)
  simpa [Matrix.add_apply, Matrix.neg_apply, Matrix.smul_apply,
    smul_eq_mul] using h

#print axioms originalCubicStructureWeightedGammaTwo_spatial
#print axioms originalCubicSpatialComplexCoefficient_reindexed
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R3B
