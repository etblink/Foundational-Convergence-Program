import SU2BFSSPhysicalDomainS1V52L7A2SourceZYQuaternionTrigonometricMatrixProbe
import Mathlib.Analysis.Normed.Algebra.MatrixExponential
import Mathlib.Analysis.Complex.Trigonometric

/-!
S1V52-L7A3: isolate the FINITE 2×2 matrix exponential computation
needed by the ORIGINAL positive-i Z source-curve bridge.

The diagonal exponent has the EXACT mathematical form used in the
historical source's already-qualified L6H5E8R `sourceZDiagonal`,
but the angle `θ` remains an arbitrary real parameter. In the
original source it must later be identified with
`t * FCP.BFSSSU2.pauliScale` without inventing a substitute phase.

This theorem DOES NOT equate a native original GaugeGroup curve
with the matrix below. That equality must come from the source
pairedAlgebraData color tangent (historical R) or a separately
qualified source-exact thin bridge. No Fock/Gauss imports, axiom,
original Pauli sign change or new gauge group.
-/
set_option autoImplicit false
set_option maxHeartbeats 450000
set_option synthInstance.maxHeartbeats 170000

namespace FCP.BFSSS1V52L7A3
noncomputable section

open Matrix
open FCP.BFSSS1V52B1
open FCP.BFSSS1V52L7A2

/-- An actual 2×2 matrix exponential, not merely its (0,0) entry.
The input is the diagonal form of the ORIGINAL positive-i Pauli-Z
source tangent, after the genuine source-angle identification. -/
theorem finitePositiveIZDiagonal_exp_quaternion (θ : ℝ) :
    NormedSpace.exp
      (Matrix.diagonal
        (![((θ : ℂ) * Complex.I), -((θ : ℂ) * Complex.I)] : Fin 2 → ℂ)) =
    sourceQuaternionColorMatrix
      (⟨Real.cos θ, Real.sin θ, 0, 0⟩ : SourceQuaternionCoords) := by
  rw [Matrix.exp_diagonal, Pi.exp_def]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [sourceQuaternionColorMatrix, Matrix.diagonal_apply,
      Complex.exp_eq_exp_ℂ, Complex.exp_ofReal_mul_I,
      ← Complex.ofReal_neg, ← Complex.ofReal_mul] <;>
    ring

#print axioms finitePositiveIZDiagonal_exp_quaternion
end
end FCP.BFSSS1V52L7A3
