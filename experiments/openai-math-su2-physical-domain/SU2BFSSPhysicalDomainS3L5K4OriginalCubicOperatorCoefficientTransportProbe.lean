import SU2BFSSPhysicalDomainS3L5K3OriginalCubicGammaTwoCoefficientProbe
import SU2BFSSPhysicalDomainS3L5ASourceChargeKineticMonomialProbe

/-!
# S3L5K4 — original cubic operator-valued coefficient transport

Gate K3 #1 source-qualified the original gammaTwo/structure-constant
matrix contraction on the original 9 spatial x 3 color SU(2) data.
Carry this through ALL six actual cubic monomial labels (k,l,A,B,C,gamma)
with scalar multiplication of source SmoothCore endomorphisms.
Independently identify the same original monomial sum with Core.lean's
sourceCubicCharge. No new representation or assumptions are introduced.

This module does NOT prove the K2 commutator of the whole source
monomial, the complete cubic charge covariance or any spectral claim.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K4
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5A
open FCP.BFSSSU2PhysicalDomainS3L5K3

/-- The exact source cubic monomial from the original Core.lean
charge: one source fermionAction followed by two ordered positions. -/
noncomputable def originalCubicSourceMonomial
    (k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) : SourceEnd :=
  (pairedAlgebraData.fermionAction γ A).comp
    ((position (N := 2) k B).comp (position (N := 2) l C))

/-- Pure coefficient-to-operator lifting of qualified K3, retaining
all 9×9×3×3×3×16 original finite source labels and an arbitrary
source SmoothCore endomorphism family. -/
theorem originalCubicSixfold_operatorCoefficient_transport
    (i j : SpaceIndex) (hij : i ≠ j) (α : SpinIndex)
    (T : SpaceIndex → SpaceIndex → ColorIndex 2 →
      ColorIndex 2 → ColorIndex 2 → SpinIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C •
        (pairedAlgebraData.gammaTwo k l *
            (pairedPlaneSpinGenerator i j).transpose -
          sourceCubicTwoFormSpatialResponse i j k l)) α γ : ℝ) : ℂ) •
          T k l A B C γ) =
    ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C •
        (-(pairedPlaneSpinGenerator i j * pairedAlgebraData.gammaTwo k l))) α γ : ℝ) : ℂ) •
          T k l A B C γ := by
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
  apply Finset.sum_congr rfl
  intro γ _
  exact congrArg
    (fun c : ℂ => c • T k l A B C γ)
    (originalCubicGammaTwo_complex_entry i j k l A B C hij α γ)

/-- The coefficient transport acts on the LITERAL paired source cubic
monomials (not merely an abstract operator family). The physical
generator's operator commutator remains a distinct obligation. -/
theorem pairedOriginalCubicSixfold_operatorCoefficient_transport
    (i j : SpaceIndex) (hij : i ≠ j) (α : SpinIndex) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C •
        (pairedAlgebraData.gammaTwo k l *
            (pairedPlaneSpinGenerator i j).transpose -
          sourceCubicTwoFormSpatialResponse i j k l)) α γ : ℝ) : ℂ) •
          originalCubicSourceMonomial k l γ A B C) =
    ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C •
        (-(pairedPlaneSpinGenerator i j * pairedAlgebraData.gammaTwo k l))) α γ : ℝ) : ℂ) •
          originalCubicSourceMonomial k l γ A B C := by
  exact originalCubicSixfold_operatorCoefficient_transport i j hij α
    (fun k l A B C γ => originalCubicSourceMonomial k l γ A B C)

/-- Definitionally exact bridge back to the original sourceCubicCharge
with its 1/2 structureConstant, source gammaTwo and ordered positions.
No physics conclusion is manufactured from this definitional equality. -/
theorem pairedSourceCubicCharge_asOriginalSixfoldMonomials
    (α : SpinIndex) :
    sourceCubicCharge pairedAlgebraData α =
    ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        originalCubicSourceMonomial k l γ A B C := by
  rfl

#print axioms originalCubicSixfold_operatorCoefficient_transport
#print axioms pairedOriginalCubicSixfold_operatorCoefficient_transport
#print axioms pairedSourceCubicCharge_asOriginalSixfoldMonomials

end
end FCP.BFSSSU2PhysicalDomainS3L5K4
