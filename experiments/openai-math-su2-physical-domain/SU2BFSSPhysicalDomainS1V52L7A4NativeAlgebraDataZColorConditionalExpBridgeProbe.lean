import SU2BFSSPhysicalDomainS1V52L7A3FiniteZMatrixExponentialBridgeProbe

/-!
S1V52-L7A4 — original BFSS AlgebraData 2 *color-generator interface*
to the already-qualified positive-i Z Clifford/quaternion matrix.

This is deliberately not a fabricated gauge curve. `M` has the
ACTUAL upstream OAI.BFSSQuantum.AlgebraData 2 type, and the
left side is the literal exp(t • (i • M.color 2)) underlying
the source positive-i gauge-curve construction.

The color diagonal certificate is an EXPLICIT hypothesis.
For the unique paired source algebra it must be discharged with
the real original `pairedAlgebraData_color`,
`concreteAlgebraData_color`, and normalizedPauli equations;
the historical L6H5E8R already proves a related identity.
No claim of actual `sourcePlusIGaugeCurve` equality or
global native Spin lift until those original source objects are
imported and the certificate discharged in strict CI.

The scale `s` is not silently set to 1/2: eventual specialization
is precisely `FCP.BFSSSU2.pauliScale = sqrt(2)/2`.
-/
set_option autoImplicit false
set_option maxHeartbeats 420000

namespace FCP.BFSSS1V52L7A4
noncomputable section

open OAI.BFSSQuantum
open Matrix
open FCP.BFSSS1V52B1
open FCP.BFSSS1V52L7A3

/-- Actual BFSS AlgebraData color 2 plus the explicit normalized
Pauli-Z source diagonal certificate yields the whole native
finite color matrix exponential, not just one entry. -/
theorem originalAlgebraDataZColor_exp_of_diagonal
    (M : AlgebraData 2) (t s : ℝ)
    (hcolor : M.color (2 : Fin 3) =
      Matrix.diagonal (![ (s : ℂ), -(s : ℂ)] : Fin 2 → ℂ)) :
    NormedSpace.exp
      (t • ((Complex.I : ℂ) • M.color (2 : Fin 3))) =
    sourceQuaternionColorMatrix
      (⟨Real.cos (t * s), Real.sin (t * s), 0, 0⟩ :
         SourceQuaternionCoords) := by
  have htangent :
      t • ((Complex.I : ℂ) • M.color (2 : Fin 3)) =
        Matrix.diagonal
          (![(((t * s : ℝ) : ℂ) * Complex.I),
              -(((t * s : ℝ) : ℂ) * Complex.I)] : Fin 2 → ℂ) := by
    rw [hcolor]
    ext i j
    fin_cases i <;> fin_cases j <;>
      simp [Matrix.diagonal_apply, Matrix.smul_apply, smul_eq_mul,
        Complex.ofReal_mul] <;>
      ring
  rw [htangent]
  exact finitePositiveIZDiagonal_exp_quaternion (t * s)

#print axioms originalAlgebraDataZColor_exp_of_diagonal
end
end FCP.BFSSS1V52L7A4
