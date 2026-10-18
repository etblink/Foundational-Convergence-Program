import SU2BFSSPhysicalDomainS3L5K4OriginalCubicOperatorCoefficientTransportProbe

/-!
# S3L5K5 — original cubic free-spinor matrix coefficient

K3 and K4 prove the true paired gammaTwo coefficient contraction
through all original six spatial/color/spinor monomial labels and its
definitional bridge to the sourceCubicCharge. This step exposes the
literal finite spinor matrix multiplication on the RHS of K4 as the
negative free-spinor generator acting on original gammaTwo coefficients.

K5 #2: matrix-specific smul/neg entry simplification after #1 failure.
Qualification K5 #1 checks abstract negative free-spinor matrix-entry
contraction before concrete source monomial specialization.

The abstract real/complex algebra is proved BEFORE specializing the
actual paired SU(2) Clifford matrices; original source operators and
physical Fock data remain opaque. K2 full cubic monomial commutator
and complete cubic source covariance remain unqualified.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K5
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L5K3
open FCP.BFSSSU2PhysicalDomainS3L5K4

/-- Entirely abstract real matrix identity. This controls the source
sign, the original 16-index sum, and placement of a scalar coefficient
without inspecting the concrete BFSS Clifford matrices. -/
theorem realMatrix_weightedNegativeProduct_entry
    (w : ℝ) (G H : GammaMatrix) (α γ : SpinIndex) :
    (w • (-(G * H))) α γ =
      -(∑ β : SpinIndex, G α β * (w * H β γ)) := by
  -- GammaMatrix is a matrix, not a generic function. Expose
  -- its two indexed entries using the exact matrix-specific laws.
  simp only [Matrix.smul_apply, Matrix.neg_apply, Matrix.mul_apply,
    smul_eq_mul]
  rw [mul_neg, Finset.mul_sum]
  congr 1
  apply Finset.sum_congr rfl
  intro β _
  ring

/-- Cast the EXACT real scalar and 16-index matrix product to the
complex scalar module of source SmoothCore endomorphisms. -/
theorem complexMatrix_weightedNegativeProduct_entry
    (w : ℝ) (G H : GammaMatrix) (α γ : SpinIndex) :
    (((w • (-(G * H))) α γ : ℝ) : ℂ) =
      -(∑ β : SpinIndex, (G α β : ℂ) *
        ((w * H β γ : ℝ) : ℂ)) := by
  exact_mod_cast realMatrix_weightedNegativeProduct_entry w G H α γ

/-- At every actual SU(2) source spatial and color label, the
original one-half times structureConstant and genuine gammaTwo
matrix combine with the TRUE paired spin-plane matrix to produce
minus the original finite free-spinor sum. -/
theorem pairedOriginalCubicGammaTwo_negativeFreeSpinor_coefficient
    (i j k l : SpaceIndex) (A B C : ColorIndex 2)
    (α γ : SpinIndex) :
    (((originalCubicStructureWeight A B C •
      (-(pairedPlaneSpinGenerator i j * pairedAlgebraData.gammaTwo k l))) α γ : ℝ) : ℂ) =
    -(∑ β : SpinIndex,
      (pairedPlaneSpinGenerator i j α β : ℂ) *
        ((originalCubicStructureWeight A B C *
          pairedAlgebraData.gammaTwo k l β γ : ℝ) : ℂ)) := by
  exact complexMatrix_weightedNegativeProduct_entry
    (originalCubicStructureWeight A B C)
    (pairedPlaneSpinGenerator i j) (pairedAlgebraData.gammaTwo k l) α γ

/-- The exact source-coefficient identity applies directly to a
genuine original cubic source operator monomial; the scalar equation
is independently proved and does not assert any new commutator. -/
theorem pairedOriginalCubicGammaTwo_negativeFreeSpinor_monomial
    (i j k l : SpaceIndex) (A B C : ColorIndex 2)
    (α γ : SpinIndex) :
    (((originalCubicStructureWeight A B C •
      (-(pairedPlaneSpinGenerator i j * pairedAlgebraData.gammaTwo k l))) α γ : ℝ) : ℂ) •
        originalCubicSourceMonomial k l γ A B C =
    (-(∑ β : SpinIndex,
      (pairedPlaneSpinGenerator i j α β : ℂ) *
        ((originalCubicStructureWeight A B C *
          pairedAlgebraData.gammaTwo k l β γ : ℝ) : ℂ))) •
        originalCubicSourceMonomial k l γ A B C := by
  exact congrArg (fun z : ℂ =>
      z • originalCubicSourceMonomial k l γ A B C)
    (pairedOriginalCubicGammaTwo_negativeFreeSpinor_coefficient
      i j k l A B C α γ)

#print axioms realMatrix_weightedNegativeProduct_entry
#print axioms complexMatrix_weightedNegativeProduct_entry
#print axioms pairedOriginalCubicGammaTwo_negativeFreeSpinor_coefficient
#print axioms pairedOriginalCubicGammaTwo_negativeFreeSpinor_monomial

end
end FCP.BFSSSU2PhysicalDomainS3L5K5
