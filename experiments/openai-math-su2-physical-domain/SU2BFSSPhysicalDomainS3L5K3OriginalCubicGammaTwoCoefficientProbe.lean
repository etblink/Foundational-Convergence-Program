import SU2BFSSPhysicalDomainS3L2SourceGammaTwoSpatialCovarianceProbe

/-!
# S3L5K3 — original cubic gammaTwo/structure-constant coefficient

The literal source cubic charge contains (1/2) * structureConstant A B C
* gammaTwo k l α β. Accepted S3L2 proves the original gammaTwo
matrix rotation and exact negative free-spinor sign. This module carries
that coefficient through the original spatial (k,l) and color (A,B,C)
finite sums, with 16-component matrix multiplication retained exactly.

This is a coefficient identity only: K2 whole cubic source monomial,
the six-index operator sum, the complete supercharge commutator and
the Hamiltonian spectrum are NOT established by this module.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K3
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L2

/-- The literal non-Clifford scalar multiplier of the cubic term in
the pinned AlgebraData.charge: one-half times the genuine SU(2)
structure constant, before the original gammaTwo matrix entry. -/
noncomputable def originalCubicStructureWeight
    (A B C : ColorIndex 2) : ℝ :=
  (1 / 2 : ℝ) * pairedAlgebraData.structureConstant A B C

/-- The exact spatial bivector response in accepted S3L2, not a
replacement gamma matrix or altered orientation convention. -/
noncomputable def sourceCubicTwoFormSpatialResponse
    (i j k l : SpaceIndex) : GammaMatrix :=
  (1 / 2 : ℝ) •
    ((sourceGammaVariation i j k * pairedAlgebraData.gamma l +
      pairedAlgebraData.gamma k * sourceGammaVariation i j l) -
     (sourceGammaVariation i j l * pairedAlgebraData.gamma k +
      pairedAlgebraData.gamma l * sourceGammaVariation i j k))

/-- Original BFSS cubic structure coefficient multiplies the
source-defined gammaTwo spinor rotation, leaving exactly the
negative spinor action. No structure-constant normalizations added. -/
theorem originalCubicGammaTwo_matrix_contraction
    (i j k l : SpaceIndex) (A B C : ColorIndex 2)
    (hij : i ≠ j) :
    originalCubicStructureWeight A B C •
      (pairedAlgebraData.gammaTwo k l *
          (pairedPlaneSpinGenerator i j).transpose -
        sourceCubicTwoFormSpatialResponse i j k l) =
      originalCubicStructureWeight A B C •
        (-(pairedPlaneSpinGenerator i j * pairedAlgebraData.gammaTwo k l)) := by
  unfold sourceCubicTwoFormSpatialResponse
  exact congrArg
    (fun X : GammaMatrix => originalCubicStructureWeight A B C • X)
    (pairedGammaTwo_potential_spinor_coefficient_exact i j k l hij)

/-- Exact original weight, two-form gamma and full spinor contraction,
at one real source coefficient entry. -/
theorem originalCubicGammaTwo_entry_contraction
    (i j k l : SpaceIndex) (A B C : ColorIndex 2)
    (hij : i ≠ j) (α γ : SpinIndex) :
    ((originalCubicStructureWeight A B C •
      (pairedAlgebraData.gammaTwo k l *
          (pairedPlaneSpinGenerator i j).transpose -
        sourceCubicTwoFormSpatialResponse i j k l)) α γ) =
    ((originalCubicStructureWeight A B C •
      (-(pairedPlaneSpinGenerator i j * pairedAlgebraData.gammaTwo k l))) α γ) := by
  exact congrArg (fun X : GammaMatrix => X α γ)
    (originalCubicGammaTwo_matrix_contraction i j k l A B C hij)

/-- Complex coefficient transport is exact; the original real cubic
structure constant and gammaTwo entries are coerced, not replaced. -/
theorem originalCubicGammaTwo_complex_entry
    (i j k l : SpaceIndex) (A B C : ColorIndex 2)
    (hij : i ≠ j) (α γ : SpinIndex) :
    (((originalCubicStructureWeight A B C •
      (pairedAlgebraData.gammaTwo k l *
          (pairedPlaneSpinGenerator i j).transpose -
        sourceCubicTwoFormSpatialResponse i j k l)) α γ : ℝ) : ℂ) =
    (((originalCubicStructureWeight A B C •
      (-(pairedPlaneSpinGenerator i j * pairedAlgebraData.gammaTwo k l))) α γ : ℝ) : ℂ) := by
  exact congrArg (fun x : ℝ => (x : ℂ))
    (originalCubicGammaTwo_entry_contraction i j k l A B C hij α γ)

/-- Transport through ALL original cubic spatial and color finite
indices: 9×9×3×3×3. The sixteen-spinor matrix contraction is retained
inside literal gammaTwo*J matrix multiplication, as in S3L2. -/
theorem originalCubicGammaTwo_fullFiniteCoefficientSum
    (i j : SpaceIndex) (hij : i ≠ j) (α γ : SpinIndex) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2,
      (((originalCubicStructureWeight A B C •
        (pairedAlgebraData.gammaTwo k l *
            (pairedPlaneSpinGenerator i j).transpose -
          sourceCubicTwoFormSpatialResponse i j k l)) α γ : ℝ) : ℂ)) =
    ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2,
      (((originalCubicStructureWeight A B C •
        (-(pairedPlaneSpinGenerator i j * pairedAlgebraData.gammaTwo k l))) α γ : ℝ) : ℂ) := by
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro l _
  apply Finset.sum_congr rfl
  intro A _
  apply Finset.sum_congr rfl
  intro B _
  apply Finset.sum_congr rfl
  intro C _
  exact originalCubicGammaTwo_complex_entry i j k l A B C hij α γ

#print axioms originalCubicGammaTwo_matrix_contraction
#print axioms originalCubicGammaTwo_entry_contraction
#print axioms originalCubicGammaTwo_complex_entry
#print axioms originalCubicGammaTwo_fullFiniteCoefficientSum

end
end FCP.BFSSSU2PhysicalDomainS3L5K3
