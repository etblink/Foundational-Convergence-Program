import SU2BFSSG4LNativeQuarterSourceGaugeWitnessProbe
import Mathlib.Analysis.Normed.Algebra.MatrixExponential
import Mathlib.Analysis.SpecialFunctions.Exponential
import Mathlib.Analysis.Complex.Trigonometric

/-!
G4M — exact ORIGINAL pairedAlgebraData color-z matrix exponential
at the original positive-i SU2 quarter parameter, using accepted
G4J/G4K/G4L only; no previous 30+ physical-operator module imports.

The matrix expression below is definitionally the underlying
expression of the historical `sourcePlusIColorMatrix 2 t` from
L6G6V, as documented and checked against the original source.
The *Lean theorem* that historical `sourcePlusIGaugeCurve 2 t`
equals the explicit G4L native quarter element still requires
importing the historical L6G6X module and qualifying a separate
Subtype.ext identification. Not asserted here.

Original source normalization, Pauli basis, +i sign, parameter,
actual GaugeGroup 2 and original 48 paired theta all preserved.
No unproved assumptions or new physical spectral claims.
UNQUALIFIED until a strict pinned Lean compiler gate passes.
-/

set_option autoImplicit false
set_option maxHeartbeats 450000
set_option synthInstance.maxHeartbeats 170000

namespace FCP.BFSSSU2GaugeG4M
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG4K
open FCP.BFSSSU2GaugeG4L

/-- Original real t times +i paired Pauli-z generator, diagonalized. -/
noncomputable def originalZDiagonal (t : ℝ) : Fin 2 → ℂ :=
  ![((t : ℂ) * Complex.I * (FCP.BFSSSU2.pauliScale : ℂ)),
    -((t : ℂ) * Complex.I * (FCP.BFSSSU2.pauliScale : ℂ))]

/-- THIS is the real original Pauli-z EXPRESSION in the source's
ColorMatrix 2, not an arbitrary or abstract SU2 representation. -/
noncomputable def originalPairedZExponential (t : ℝ) : ColorMatrix 2 :=
  NormedSpace.exp
    (t • ((Complex.I : ℂ) • pairedAlgebraData.color (2 : Fin 3)))

def originalZQuarterTime : ℝ := (Real.pi / 2) * Real.sqrt 2

def originalZAngle (t : ℝ) : ℝ := t * FCP.BFSSSU2.pauliScale

theorem original_z_tangent_diagonal (t : ℝ) :
    t • ((Complex.I : ℂ) • pairedAlgebraData.color (2 : Fin 3)) =
      Matrix.diagonal (originalZDiagonal t) := by
  rw [pairedAlgebraData_color, FCP.BFSSSU2Full.concreteAlgebraData_color]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [originalZDiagonal, FCP.BFSSSU2.normalizedPauli,
      FCP.BFSSSU2.pauli, Matrix.smul_apply, Matrix.diagonal_apply] <;> ring

theorem originalPairedZExponential_diagonal (t : ℝ) :
    originalPairedZExponential t =
      Matrix.diagonal (fun i => Complex.exp (originalZDiagonal t i)) := by
  calc
    originalPairedZExponential t =
      NormedSpace.exp (Matrix.diagonal (originalZDiagonal t)) := by
        change NormedSpace.exp
          (t • ((Complex.I : ℂ) • pairedAlgebraData.color (2 : Fin 3))) = _
        rw [original_z_tangent_diagonal]
    _ = Matrix.diagonal (fun i => NormedSpace.exp (originalZDiagonal t i)) := by
      rw [Matrix.exp_diagonal, Pi.exp_def]
    _ = Matrix.diagonal (fun i => Complex.exp (originalZDiagonal t i)) := by
      simp only [Complex.exp_eq_exp_ℂ]

theorem original_zquarter_angle :
    originalZAngle originalZQuarterTime = Real.pi / 2 := by
  unfold originalZAngle originalZQuarterTime
  calc
    (Real.pi / 2 * Real.sqrt 2) * FCP.BFSSSU2.pauliScale =
        (Real.pi / 2) * (FCP.BFSSSU2.pauliScale * Real.sqrt 2) := by ring
    _ = Real.pi / 2 := by
      rw [FCP.BFSSSU2.pauliScale_mul_sqrt]
      ring

theorem original_z_exp_zero (t : ℝ) :
    Complex.exp (originalZDiagonal t (0 : Fin 2)) =
      (Real.cos (originalZAngle t) : ℂ) +
        (Real.sin (originalZAngle t) : ℂ) * Complex.I := by
  have hz : originalZDiagonal t (0 : Fin 2) =
      ((originalZAngle t : ℝ) : ℂ) * Complex.I := by
    simp [originalZDiagonal, originalZAngle]
    ring
  rw [hz, Complex.exp_ofReal_mul_I]

theorem original_z_exp_one (t : ℝ) :
    Complex.exp (originalZDiagonal t (1 : Fin 2)) =
      (Real.cos (originalZAngle t) : ℂ) -
        (Real.sin (originalZAngle t) : ℂ) * Complex.I := by
  have hz : originalZDiagonal t (1 : Fin 2) =
      -(((originalZAngle t : ℝ) : ℂ) * Complex.I) := by
    simp [originalZDiagonal, originalZAngle]
    ring
  calc
    Complex.exp (originalZDiagonal t (1 : Fin 2)) =
        Complex.exp (((-originalZAngle t : ℝ) : ℂ) * Complex.I) := by
          rw [hz]
          push_cast
          ring
    _ = (Real.cos (originalZAngle t) : ℂ) -
          (Real.sin (originalZAngle t) : ℂ) * Complex.I := by
          rw [Complex.exp_ofReal_mul_I]
          simp only [Real.cos_neg, Real.sin_neg, Complex.ofReal_neg]
          ring

/-- Exact Pauli-z exponent at original source time is the
same 2x2 complex quarter matrix as the ACCEPTED genuine SU2 element. -/
theorem originalPairedZExponential_quarter_matrix :
    originalPairedZExponential originalZQuarterTime =
      originalZQuarterMatrix := by
  rw [originalPairedZExponential_diagonal]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Matrix.diagonal_apply, originalZQuarterMatrix,
      original_z_exp_zero, original_z_exp_one, original_zquarter_angle,
      Real.cos_pi_div_two, Real.sin_pi_div_two]

/-- Equality of original Pauli-z exponent's underlying matrix and
the G4L ORIGINAL SU2 element at t=(pi/2)*sqrt2. This is NOT
an identification with the historical L6G6X curve symbol yet. -/
theorem originalPairedZExponential_quarter_eq_actualGauge :
    originalPairedZExponential originalZQuarterTime =
      (actualQuarterGauge : ColorMatrix 2) := by
  rw [actualQuarterGauge_coe]
  exact originalPairedZExponential_quarter_matrix

#print axioms originalZDiagonal
#print axioms originalPairedZExponential
#print axioms originalZQuarterTime
#print axioms originalZAngle
#print axioms original_z_tangent_diagonal
#print axioms originalPairedZExponential_diagonal
#print axioms original_zquarter_angle
#print axioms original_z_exp_zero
#print axioms original_z_exp_one
#print axioms originalPairedZExponential_quarter_matrix
#print axioms originalPairedZExponential_quarter_eq_actualGauge

end
end FCP.BFSSSU2GaugeG4M
