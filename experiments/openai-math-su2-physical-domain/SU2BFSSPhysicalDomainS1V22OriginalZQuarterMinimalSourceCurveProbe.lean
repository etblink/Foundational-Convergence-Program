import SU2BFSSPhysicalDomainL6G6XOriginalSU2GaugeCurveProbe
import Mathlib.Analysis.Normed.Algebra.MatrixExponential
import Mathlib.Analysis.SpecialFunctions.Exponential
import Mathlib.Analysis.Complex.Trigonometric

/-!
S1V22 — bounded original +i SU(2) z-curve quarter matrix, no S1G Euler import.

The actual original `sourcePlusIGaugeCurve` (pinned L6G6X) is applied
to the actual pairedAlgebraData normalized Pauli generator A=2.
The matrices, angle, and positive-i convention are unchanged.
The first two proofs are the source mathematical calculations from
original L6H5E8R, but the unnecessary L6H5E8Q quaternion import
is absent, and the scalar exponential proofs follow original L6H5E8T.

NOT A STRICT ACCEPTED RESULT until a separate exact pinned Lean CI
compiles this source and audits all eight named roots. This is NOT a
standalone alternative group, global Spin(48) lift, manuscript
intertwiner, or spectral proof.
-/

set_option autoImplicit false
set_option maxHeartbeats 450000
set_option synthInstance.maxHeartbeats 170000

namespace FCP.BFSSS1V22
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2Full
open FCP.BFSSSU2PhysicalDomainL6G6X

/-- Diagonal coordinates for the actual positive-i normalized Pauli-z source tangent. -/
noncomputable def originalZDiagonal (t : ℝ) : Fin 2 → ℂ :=
  ![((t : ℂ) * Complex.I * (FCP.BFSSSU2.pauliScale : ℂ)),
    -((t : ℂ) * Complex.I * (FCP.BFSSSU2.pauliScale : ℂ))]

theorem original_z_tangent_diagonal (t : ℝ) :
    t • ((Complex.I : ℂ) • pairedAlgebraData.color (2 : Fin 3)) =
      Matrix.diagonal (originalZDiagonal t) := by
  rw [pairedAlgebraData_color, concreteAlgebraData_color]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [originalZDiagonal, FCP.BFSSSU2.normalizedPauli,
      FCP.BFSSSU2.pauli, Matrix.smul_apply, Matrix.diagonal_apply] <;> ring

/-- Literal original source SU(2) group curve, not an arbitrary complex matrix. -/
theorem original_z_exponential_diagonal (t : ℝ) :
    (sourcePlusIGaugeCurve (2 : Fin 3) t : ColorMatrix 2) =
      Matrix.diagonal (fun i => Complex.exp (originalZDiagonal t i)) := by
  calc
    (sourcePlusIGaugeCurve (2 : Fin 3) t : ColorMatrix 2) =
        NormedSpace.exp (Matrix.diagonal (originalZDiagonal t)) := by
          change NormedSpace.exp
            (t • ((Complex.I : ℂ) • pairedAlgebraData.color (2 : Fin 3))) = _
          rw [original_z_tangent_diagonal]
    _ = Matrix.diagonal (fun i => NormedSpace.exp (originalZDiagonal t i)) := by
      rw [Matrix.exp_diagonal, Pi.exp_def]
    _ = Matrix.diagonal (fun i => Complex.exp (originalZDiagonal t i)) := by
      simp only [Complex.exp_eq_exp_ℂ]

/-- Actual source parameter (π/2)√2. -/
def originalZQuarterTime : ℝ := (Real.pi / 2) * Real.sqrt 2

/-- The original positive-i Pauli angle, without any auxiliary phase. -/
def originalZAngle (t : ℝ) : ℝ := t * FCP.BFSSSU2.pauliScale

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

/-- Exactly the upstream sourcePlusIGaugeCurve at the paired Pauli z quarter. -/
theorem original_source_zquarter_matrix :
    (sourcePlusIGaugeCurve (2 : Fin 3) originalZQuarterTime : ColorMatrix 2) =
      !![Complex.I, 0; 0, -Complex.I] := by
  rw [original_z_exponential_diagonal]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Matrix.diagonal_apply, original_z_exp_zero, original_z_exp_one,
      original_zquarter_angle, Real.cos_pi_div_two, Real.sin_pi_div_two]

#print axioms originalZDiagonal
#print axioms original_z_tangent_diagonal
#print axioms original_z_exponential_diagonal
#print axioms originalZQuarterTime
#print axioms originalZAngle
#print axioms original_zquarter_angle
#print axioms original_z_exp_zero
#print axioms original_z_exp_one
#print axioms original_source_zquarter_matrix

end
end FCP.BFSSS1V22
