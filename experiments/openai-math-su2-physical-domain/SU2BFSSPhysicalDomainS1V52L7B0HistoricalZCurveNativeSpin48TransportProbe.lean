import SU2BFSSPhysicalDomainS1V52L7A2SourceZYQuaternionTrigonometricMatrixProbe
import SU2BFSSPhysicalDomainS1V52L3OriginalZPlaneSpinMembershipProbe
import SU2BFSSPhysicalDomainS1V23OriginalPlusICurveNativeQuarterBridgeProbe

/-!
S1V52-L7B0 — STAGED, NOT QUALIFIED.

Avoid re-proving source G4M/S1V23 exact native positive-i Z-curve
matrix equality: those ORIGINAL source theorems were already
strictly accepted in October 19's S1V19/S1V23 proof chains.
The novel remaining statement is that the native original
+ i curve, mapped through the accepted S1V52 C1 original
quaternion coordinates, produces an element of the actual
original 48-source Mathlib spinGroup.

This source has NO new gauge generator, no surrogate SU2,
no t/2 substitution: angle = originalZAngle t = t*pauliScale.
Imports of S1V23 and L3 demand two independently qualified
.olean cache families. Acceptance requires one fail-closed,
pinned, combined build that restores or reconstructs their
actual complete source dependencies, not only source text.

No global native group Spin hom, Y curve, continuity, original
Majorana action or spectral equivalence is asserted here.
-/
set_option autoImplicit false
set_option maxHeartbeats 440000
namespace FCP.BFSSS1V52L7B0
noncomputable section
open OAI.BFSSQuantum
open Matrix
open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSSU2GaugeG4M
open FCP.BFSSS1V52B1
open FCP.BFSSS1V52C1
open FCP.BFSSS1V52L7A0
open FCP.BFSSS1V52L7A2
open FCP.BFSSS1V52L3
open FCP.BFSSS1V52B2

/-- The ACTUAL native historical positive-i Z gauge curve has
the original source quaternion matrix, at all real times. -/
theorem originalNativeZCurve_quaternion_matrix (t : ℝ) :
    (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
      (2 : Fin 3) t : ColorMatrix 2) =
    sourceQuaternionColorMatrix
      (⟨Real.cos (originalZAngle t),
        Real.sin (originalZAngle t), 0, 0⟩ : SourceQuaternionCoords) := by
  rw [FCP.BFSSS1V23.original_sourcePlusIGaugeCurve_z_matrix_eq,
    originalPairedZExponential_diagonal,
    sourcePositiveIZQuaternionMatrix]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Matrix.diagonal_apply,
      original_z_exp_zero, original_z_exp_one]

/-- Actual native GaugeGroup 2 Z-curve has the original first-row
quaternion coordinates, with positive-i sin in the second slot. -/
theorem originalNativeZCurve_quaternion_coords (t : ℝ) :
    originalNativeQuaternionCoords
      (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
        (2 : Fin 3) t) =
      (⟨Real.cos (originalZAngle t),
        Real.sin (originalZAngle t), 0, 0⟩ : SourceQuaternionCoords) := by
  apply originalNativeQuaternionCoords_of_positiveIZ_firstRow
  · rw [originalNativeZCurve_quaternion_matrix,
      sourcePositiveIZQuaternionMatrix]
    simp
  · rw [originalNativeZCurve_quaternion_matrix,
      sourcePositiveIZQuaternionMatrix]
    simp

/-- The literal native original +i Z curve lies in genuine
source48Quadratic Spin(48) for every source real spin block. -/
theorem originalNativeZCurve_mem_sourceSpin48
    (α : FCP.BFSSS1V5.RealSpinBlock) (t : ℝ) :
    FCP.BFSSS1V52B2.sourceCliffordQuaternion α
      (originalNativeQuaternionCoords
        (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
          (2 : Fin 3) t)) ∈
        spinGroup FCP.BFSSS1V0.source48Quadratic := by
  rw [originalNativeZCurve_quaternion_coords]
  have hcs : Real.cos (originalZAngle t) * Real.cos (originalZAngle t) +
      Real.sin (originalZAngle t) * Real.sin (originalZAngle t) = 1 := by
    nlinarith [Real.sin_sq_add_cos_sq (originalZAngle t)]
  exact sourceZPlaneQuaternion_mem_spin α _ _ hcs

#print axioms originalNativeZCurve_quaternion_matrix
#print axioms originalNativeZCurve_quaternion_coords
#print axioms originalNativeZCurve_mem_sourceSpin48
end
end FCP.BFSSS1V52L7B0
