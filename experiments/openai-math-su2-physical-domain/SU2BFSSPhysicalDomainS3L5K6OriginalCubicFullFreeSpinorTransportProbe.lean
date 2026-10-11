import SU2BFSSPhysicalDomainS3L5K5OriginalCubicFreeSpinorCoefficientProbe

/-!
# S3L5K6 — entire original cubic coefficient free-spinor transport

K6 Gate1 qualification: original sixfold operator coefficient response and real free-spinor cancellation.
K6 Gate2: open the accepted S3L4B SourceEnd abbreviation; theorem statements and proof bodies unchanged.

K3–K5 qualified the genuine BFSS 1/2 structure-constant gammaTwo
coefficient and the negative 16-component spinor action on each
original source cubic operator. This module moves that finite
free-spinor sum through all six source cubic labels, using the
actual paired sourceCubicCharge from Core.lean.

The resulting identity is for the COEFFICIENT RESPONSE defined by
gammaTwo*J.transpose minus its orbital two-form variation. It is
NOT yet the commutator of the entire cubic source charge with the
paired physical rotation generator. K2 remains unqualified.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K6
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5A
open FCP.BFSSSU2PhysicalDomainS3L5K3
open FCP.BFSSSU2PhysicalDomainS3L5K4
open FCP.BFSSSU2PhysicalDomainS3L5K5

/-- Move the genuine sixteen-valued free spinor index outside the
entire six-index cubic source monomial family. No concrete BFSS
operator is unfolded or recomputed. -/
theorem sourceCubicSevenSum_spinorFirst
    (F : SpinIndex → SpaceIndex → SpaceIndex →
      ColorIndex 2 → ColorIndex 2 → ColorIndex 2 →
      SpinIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      ∑ β : SpinIndex, F β k l A B C γ) =
    ∑ β : SpinIndex, ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      F β k l A B C γ := by
  calc
    _ = ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ β : SpinIndex,
      ∑ γ : SpinIndex, F β k l A B C γ := by
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
        rw [Finset.sum_comm]
    _ = ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ β : SpinIndex, ∑ C : ColorIndex 2,
      ∑ γ : SpinIndex, F β k l A B C γ := by
        apply Finset.sum_congr rfl
        intro k _
        apply Finset.sum_congr rfl
        intro l _
        apply Finset.sum_congr rfl
        intro A _
        apply Finset.sum_congr rfl
        intro B _
        rw [Finset.sum_comm]
    _ = ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ β : SpinIndex,
      ∑ B : ColorIndex 2, ∑ C : ColorIndex 2,
      ∑ γ : SpinIndex, F β k l A B C γ := by
        apply Finset.sum_congr rfl
        intro k _
        apply Finset.sum_congr rfl
        intro l _
        apply Finset.sum_congr rfl
        intro A _
        rw [Finset.sum_comm]
    _ = ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ β : SpinIndex, ∑ A : ColorIndex 2,
      ∑ B : ColorIndex 2, ∑ C : ColorIndex 2,
      ∑ γ : SpinIndex, F β k l A B C γ := by
        apply Finset.sum_congr rfl
        intro k _
        apply Finset.sum_congr rfl
        intro l _
        rw [Finset.sum_comm]
    _ = ∑ k : SpaceIndex, ∑ β : SpinIndex,
      ∑ l : SpaceIndex, ∑ A : ColorIndex 2,
      ∑ B : ColorIndex 2, ∑ C : ColorIndex 2,
      ∑ γ : SpinIndex, F β k l A B C γ := by
        apply Finset.sum_congr rfl
        intro k _
        rw [Finset.sum_comm]
    _ = _ := by rw [Finset.sum_comm]

/-- Generic original SmoothCore operator identity. Move the negative
free-spinor sum across all six cubic labels without touching the
real Clifford matrices or the actual fermionic Fock representation. -/
theorem sourceCubicNegativeFreeSpinorSum_transport
    (d : SpinIndex → ℂ)
    (c : SpinIndex → SpaceIndex → SpaceIndex →
      ColorIndex 2 → ColorIndex 2 → ColorIndex 2 →
      SpinIndex → ℂ)
    (T : SpaceIndex → SpaceIndex → ColorIndex 2 →
      ColorIndex 2 → ColorIndex 2 → SpinIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (-(∑ β : SpinIndex, d β * c β k l A B C γ)) •
        T k l A B C γ) =
    -(∑ β : SpinIndex, d β •
      (∑ k : SpaceIndex, ∑ l : SpaceIndex,
        ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
        ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
        c β k l A B C γ • T k l A B C γ)) := by
  calc
    _ = -(∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (∑ β : SpinIndex, d β * c β k l A B C γ) •
        T k l A B C γ) := by
          simp_rw [neg_smul, Finset.sum_neg_distrib]
    _ = -(∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      ∑ β : SpinIndex,
        d β • (c β k l A B C γ • T k l A B C γ)) := by
          simp_rw [Finset.sum_smul, mul_smul]
    _ = -(∑ β : SpinIndex,
      ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
        d β • (c β k l A B C γ • T k l A B C γ)) := by
          exact congrArg Neg.neg (sourceCubicSevenSum_spinorFirst _)
    _ = _ := by simp_rw [Finset.smul_sum]

/-- Original cubic coefficient response, including the full literal
source 1/2 structure constant, gammaTwo, six source sums, and exact
negative action on the *free* paired spinor index. The source operator
commutator part is a separate K2 obligation and is NOT assumed here. -/
theorem pairedOriginalCubicCoefficientResponse_freeSpinor
    (i j : SpaceIndex) (hij : i ≠ j) (α : SpinIndex) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C •
        (pairedAlgebraData.gammaTwo k l *
            (pairedPlaneSpinGenerator i j).transpose -
          sourceCubicTwoFormSpatialResponse i j k l)) α γ : ℝ) : ℂ) •
          originalCubicSourceMonomial k l γ A B C) =
    -(∑ β : SpinIndex,
      (pairedPlaneSpinGenerator i j α β : ℂ) •
        sourceCubicCharge pairedAlgebraData β) := by
  calc
    _ = ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C •
        (-(pairedPlaneSpinGenerator i j * pairedAlgebraData.gammaTwo k l))) α γ : ℝ) : ℂ) •
          originalCubicSourceMonomial k l γ A B C :=
        pairedOriginalCubicSixfold_operatorCoefficient_transport i j hij α
    _ = ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (-(∑ β : SpinIndex,
        (pairedPlaneSpinGenerator i j α β : ℂ) *
          ((originalCubicStructureWeight A B C *
            pairedAlgebraData.gammaTwo k l β γ : ℝ) : ℂ))) •
          originalCubicSourceMonomial k l γ A B C := by
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
        exact pairedOriginalCubicGammaTwo_negativeFreeSpinor_monomial
          i j k l A B C α γ
    _ = -(∑ β : SpinIndex,
          (pairedPlaneSpinGenerator i j α β : ℂ) •
            (∑ k : SpaceIndex, ∑ l : SpaceIndex,
              ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
              ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
              (((originalCubicStructureWeight A B C *
                pairedAlgebraData.gammaTwo k l β γ : ℝ) : ℂ)) •
                  originalCubicSourceMonomial k l γ A B C)) :=
        sourceCubicNegativeFreeSpinorSum_transport
          (fun β => (pairedPlaneSpinGenerator i j α β : ℂ))
          (fun β k l A B C γ =>
            (((originalCubicStructureWeight A B C *
              pairedAlgebraData.gammaTwo k l β γ : ℝ) : ℂ)))
          (originalCubicSourceMonomial)
    _ = _ := by
        apply congrArg (fun T : SourceEnd => -T)
        apply Finset.sum_congr rfl
        intro β _
        exact congrArg
          (fun T : SourceEnd => (pairedPlaneSpinGenerator i j α β : ℂ) • T)
          (pairedSourceCubicCharge_asOriginalSixfoldMonomials β).symm

#print axioms sourceCubicSevenSum_spinorFirst
#print axioms sourceCubicNegativeFreeSpinorSum_transport
#print axioms pairedOriginalCubicCoefficientResponse_freeSpinor

end
end FCP.BFSSSU2PhysicalDomainS3L5K6
