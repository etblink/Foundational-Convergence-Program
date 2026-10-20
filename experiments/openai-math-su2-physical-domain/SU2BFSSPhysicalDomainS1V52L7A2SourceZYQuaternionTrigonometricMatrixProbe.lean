import SU2BFSSPhysicalDomainS1V52L7A0NativeSourceCurveFirstRowTransportProbe
import Mathlib.Analysis.Complex.Trigonometric

/-!
S1V52-L7A2 — source-sized, finite quaternion ↔ Z/Y angle matrix
identities that do not import historical Gauss/Fock source modules.

This checks only the EXACT accepted B1 positive-i quaternion
matrix and ordinary complex sine/cosine identities. The real angle
theta here is a parameter; when used with the ORIGINAL positive-i
source curve it MUST be theta = t * FCP.BFSSSU2.pauliScale,
NOT t/2. Neither original sourcePlusIGaugeCurve nor original
H5E8R/T matrix-exponential evaluation is claimed by this gate.
No alternative gauge group, quaternion sign or matrix order.
-/
set_option autoImplicit false
set_option maxHeartbeats 380000

namespace FCP.BFSSS1V52L7A2
noncomputable section
open FCP.BFSSS1V52B1
open Matrix

/-- Quaternion with original positive-i Z coefficient has the
exact complex first-row/second-row source matrix shape. -/
theorem sourcePositiveIZQuaternionMatrix (θ : ℝ) :
    sourceQuaternionColorMatrix
      (⟨Real.cos θ, Real.sin θ, 0, 0⟩ : SourceQuaternionCoords) =
    !![
      (Real.cos θ : ℂ) + (Real.sin θ : ℂ) * Complex.I, 0;
      0, (Real.cos θ : ℂ) - (Real.sin θ : ℂ) * Complex.I
    ] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [sourceQuaternionColorMatrix]

/-- Quaternion with original positive-i Y coefficient has the
exact real-rotation matrix with upper-right POSITIVE sine. -/
theorem sourcePositiveIYQuaternionMatrix (θ : ℝ) :
    sourceQuaternionColorMatrix
      (⟨Real.cos θ, 0, Real.sin θ, 0⟩ : SourceQuaternionCoords) =
    !![
      (Real.cos θ : ℂ), (Real.sin θ : ℂ);
      -(Real.sin θ : ℂ), (Real.cos θ : ℂ)
    ] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [sourceQuaternionColorMatrix]

/-- The first original positive-i quaternion Z diagonal is
exactly the scalar complex exponential at theta. -/
theorem sourcePositiveIZQuaternion_exp_first (θ : ℝ) :
    sourceQuaternionColorMatrix
      (⟨Real.cos θ, Real.sin θ, 0, 0⟩ : SourceQuaternionCoords) 0 0 =
    Complex.exp ((θ : ℂ) * Complex.I) := by
  rw [Complex.exp_ofReal_mul_I]
  simp [sourceQuaternionColorMatrix]

#print axioms sourcePositiveIZQuaternionMatrix
#print axioms sourcePositiveIYQuaternionMatrix
#print axioms sourcePositiveIZQuaternion_exp_first
end
end FCP.BFSSS1V52L7A2
