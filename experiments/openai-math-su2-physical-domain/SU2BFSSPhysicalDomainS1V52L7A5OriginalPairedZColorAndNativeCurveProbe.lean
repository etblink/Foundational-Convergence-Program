import SU2BFSSPhysicalDomainS1V52L7A4NativeAlgebraDataZColorConditionalExpBridgeProbe
import SU2BFSSPhysicalDomainL6H5E8RSourceNormalizedZColorFlowDiagonalProbe

/-!
S1V52-L7A5 — STAGED, NOT YET STRICTLY QUALIFIED.

Specialize L7A4's hypothesis to the genuine, original
FCP.BFSSSU2GaugeG1A.pairedAlgebraData, whose color field
is definitionally the original FCP.BFSSSU2.normalizedPauli.
Then relate the original +i native GaugeGroup 2 exponential
to the previously qualified positive-i quaternion matrix.

No surrogate GaugeGroup, alternate quaternion convention,
new assumptions, changed source normalization, or postulated
matrix exponential.

IMPORTANT: importing the accepted historical L6H5E8R *source*
requires historical L6G6X source-plus-i curve and the upstream
physical-Hilbert/Gauss proof .olean closure, not present in the
S1V52L7A4 accepted cache by default. This file MUST NOT be
counted in the S1V52 root ledger unless a separately pinned
strict compile and axiom audit obtains that full closure.
-/
set_option autoImplicit false
set_option maxHeartbeats 450000
set_option synthInstance.maxHeartbeats 170000

namespace FCP.BFSSS1V52L7A5
noncomputable section
open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2Full
open FCP.BFSSSU2PhysicalDomainL6G6X
open FCP.BFSSS1V52B1
open FCP.BFSSS1V52L7A4

/-- The missing EXACT source certificate for L7A4, discharged
from the original paired BFSS AlgebraData color field. -/
theorem originalPairedZColor_exact_diagonal :
    pairedAlgebraData.color (2 : Fin 3) =
      Matrix.diagonal
        (![ (FCP.BFSSSU2.pauliScale : ℂ),
            -(FCP.BFSSSU2.pauliScale : ℂ)] : Fin 2 → ℂ) := by
  rw [pairedAlgebraData_color, concreteAlgebraData_color]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [FCP.BFSSSU2.normalizedPauli, FCP.BFSSSU2.pauli,
      Matrix.diagonal_apply, Matrix.smul_apply, smul_eq_mul] <;>
    ring

/-- For the ACTUAL normalized paired BFSS algebra, the original
positive-i source GaugeGroup 2 curve is exactly the accepted
quaternion matrix, at angle t*pauliScale. -/
theorem originalNativePositiveIZCurve_eq_quaternion (t : ℝ) :
    (sourcePlusIGaugeCurve (2 : Fin 3) t : ColorMatrix 2) =
    sourceQuaternionColorMatrix
      (⟨Real.cos (t * FCP.BFSSSU2.pauliScale),
        Real.sin (t * FCP.BFSSSU2.pauliScale),
        0,0⟩ : SourceQuaternionCoords) := by
  rw [sourcePlusIGaugeCurve_coe]
  change NormedSpace.exp
    (t • ((Complex.I : ℂ) • pairedAlgebraData.color (2 : Fin 3))) = _
  exact originalAlgebraDataZColor_exp_of_diagonal
    pairedAlgebraData t FCP.BFSSSU2.pauliScale
    originalPairedZColor_exact_diagonal

#print axioms originalPairedZColor_exact_diagonal
#print axioms originalNativePositiveIZCurve_eq_quaternion
end
end FCP.BFSSS1V52L7A5
