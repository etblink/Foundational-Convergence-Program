import SU2BFSSPhysicalDomainS3L5K3OriginalCubicGammaTwoCoefficientProbe

/-!
# K2R3A — original gammaTwo spatial response vs two-index reindex

Pinned qualification #2: explicit original gammaTwo case signs; no `ring`/`module` guessing.

The newly qualified R2A–D genuine source position reindex gives a
specific transformed spatial coefficient. The ORIGINAL pinned
AlgebraData.gammaTwo is (1/2) • (gamma k * gamma l - gamma l * gamma k).
The ORIGINAL spatial gamma variation is the accepted S3L2
sourceGammaVariation. Under the original i != j plane constraint, the
spatially reindexed gammaTwo weight MUST equal the NEGATIVE of
sourceCubicTwoFormSpatialResponse. This module proves exactly that
matrix statement, in three independently audited small lemmas.

No 48-Majorana expansion, no original charge sixfold sum, no scalar
coefficient transport, no new axioms or substitute gamma family.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R3A
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L2
open FCP.BFSSSU2PhysicalDomainS3L5K3

/-- Additive identity for the first ordered slot, with NO commutativity
assumption on the original GammaMatrix multiplication. -/
private theorem halfCommutator_negFirst
    (X Y : GammaMatrix) :
    (1 / 2 : ℝ) • (X * Y - Y * X) =
      -((1 / 2 : ℝ) • ((-X) * Y - Y * (-X))) := by
  simp only [neg_mul, mul_neg, smul_sub, smul_neg]
  abel

/-- Analogous source-order-preserving identity for the second slot. -/
private theorem halfCommutator_negSecond
    (X Y : GammaMatrix) :
    (1 / 2 : ℝ) • (X * Y - Y * X) =
      -((1 / 2 : ℝ) • (X * (-Y) - (-Y) * X)) := by
  simp only [neg_mul, mul_neg, smul_sub, smul_neg]
  abel

/-- First source spatial slot: exact opposite-sign reindex of the
original gammaTwo matrix, for the source plane (i,j). -/
theorem originalGammaTwo_firstIndex_reindex
    (i j k l : SpaceIndex) (hij : i ≠ j) :
    (if k = i then pairedAlgebraData.gammaTwo j l
     else if k = j then -(pairedAlgebraData.gammaTwo i l) else 0) =
    -((1 / 2 : ℝ) •
      (sourceGammaVariation i j k * pairedAlgebraData.gamma l -
       pairedAlgebraData.gamma l * sourceGammaVariation i j k)) := by
  classical
  by_cases hki : k = i
  · subst k
    -- gamma variation at the FIRST coordinate i is -gamma j.
    -- Check the sign as a standalone noncommutative matrix identity.
    simpa only [sourceGammaVariation, if_neg hij, if_pos rfl,
      AlgebraData.gammaTwo] using
      (halfCommutator_negFirst
        (pairedAlgebraData.gamma j) (pairedAlgebraData.gamma l))
  · by_cases hkj : k = j
    · subst k
      -- The first coordinate j varies as +gamma i.
      simp [sourceGammaVariation, AlgebraData.gammaTwo, hij, Ne.symm hij]
    · -- Outside the source plane there is no spatial variation.
      simp [sourceGammaVariation, hki, hkj]

/-- Second source spatial slot: independent reindex of the second
ordered coordinate factor, without exchanging k and l. -/
theorem originalGammaTwo_secondIndex_reindex
    (i j k l : SpaceIndex) (hij : i ≠ j) :
    (if l = i then pairedAlgebraData.gammaTwo k j
     else if l = j then -(pairedAlgebraData.gammaTwo k i) else 0) =
    -((1 / 2 : ℝ) •
      (pairedAlgebraData.gamma k * sourceGammaVariation i j l -
       sourceGammaVariation i j l * pairedAlgebraData.gamma k)) := by
  classical
  by_cases hli : l = i
  · subst l
    -- The SECOND coordinate i varies as -gamma j.
    simpa only [sourceGammaVariation, if_neg hij, if_pos rfl,
      AlgebraData.gammaTwo] using
      (halfCommutator_negSecond
        (pairedAlgebraData.gamma k) (pairedAlgebraData.gamma j))
  · by_cases hlj : l = j
    · subst l
      simp [sourceGammaVariation, AlgebraData.gammaTwo, hij, Ne.symm hij]
    · simp [sourceGammaVariation, hli, hlj]

/-- The ORIGINAL two-index gammaTwo spatial reindex has the exact
minus sign needed by K6C, not a presumed spinor matrix identity.
This is an actual source coefficient theorem; no BFSS operator sum. -/
theorem originalGammaTwo_bothSpatialIndices_reindex
    (i j k l : SpaceIndex) (hij : i ≠ j) :
    (if k = i then pairedAlgebraData.gammaTwo j l
     else if k = j then -(pairedAlgebraData.gammaTwo i l) else 0) +
    (if l = i then pairedAlgebraData.gammaTwo k j
     else if l = j then -(pairedAlgebraData.gammaTwo k i) else 0) =
    -(sourceCubicTwoFormSpatialResponse i j k l) := by
  rw [originalGammaTwo_firstIndex_reindex i j k l hij,
      originalGammaTwo_secondIndex_reindex i j k l hij]
  unfold sourceCubicTwoFormSpatialResponse
  simp only [smul_add, smul_sub, sub_eq_add_neg]
  module

#print axioms originalGammaTwo_firstIndex_reindex
#print axioms originalGammaTwo_secondIndex_reindex
#print axioms originalGammaTwo_bothSpatialIndices_reindex
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R3A
