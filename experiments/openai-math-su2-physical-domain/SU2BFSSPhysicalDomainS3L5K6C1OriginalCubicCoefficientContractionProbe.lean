import SU2BFSSPhysicalDomainS3L5K6BNegativeCubicCoefficientTransportProbe

/-!
# S3L5K6C1 — isolated original cubic source coefficient step
Transport genuine gammaTwo/J spatial response through original sixfold operator coefficients with qualified K4 and K5.
No new axioms, source physics, concrete K2 commutator, or spectral claims.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K6C1
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
open FCP.BFSSSU2PhysicalDomainS3L5K6B

theorem pairedOriginalCubicResponse_asNegativeCoefficients
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
      (-(∑ β : SpinIndex,
        (pairedPlaneSpinGenerator i j α β : ℂ) *
          ((originalCubicStructureWeight A B C *
            pairedAlgebraData.gammaTwo k l β γ : ℝ) : ℂ))) •
          originalCubicSourceMonomial k l γ A B C := by
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

#print axioms pairedOriginalCubicResponse_asNegativeCoefficients

end
end FCP.BFSSSU2PhysicalDomainS3L5K6C1
