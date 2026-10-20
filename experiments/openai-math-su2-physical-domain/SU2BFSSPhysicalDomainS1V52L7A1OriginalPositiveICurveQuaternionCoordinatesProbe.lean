import SU2BFSSPhysicalDomainS1V52L7A0NativeSourceCurveFirstRowTransportProbe
import SU2BFSSPhysicalDomainL6H5E8TSourcePositiveIYColorRealRotationProbe

/-!
S1V52-L7A1 — STAGED / NOT ACCEPTED original +i native curve
coordinate identification, with exact original time normalization.

L7A0 first-row coordinate transport is a separate independently
qualified target. The two original source matrix identities are
historically proved in L6H5E8R and L6H5E8T; their qualified
historical LEAN .olean import closure must be restored or rebuilt
with strict pinned source validation before ANY claim of acceptance.

Unlike earlier original H5E8P/Q/R/S/T import chains, this new
proof contains no Fock/Gauss mathematical definitions itself.
It cannot erase those dependencies until a finite thin interface
is separately kernel-qualified. No surrogate gauge element.
-/
set_option autoImplicit false
set_option maxHeartbeats 350000

namespace FCP.BFSSS1V52L7A1
noncomputable section

open OAI.BFSSQuantum
open FCP.BFSSS1V52B1
open FCP.BFSSS1V52C1
open FCP.BFSSS1V52L7A0
open FCP.BFSSSU2PhysicalDomainL6G6X
open FCP.BFSSSU2PhysicalDomainL6H5E8R
open FCP.BFSSSU2PhysicalDomainL6H5E8T

/-- Literal original native SU2 +i Pauli-Z gauge curve:
time enters via t * pauliScale, with a positive imaginary Z
coordinate and no new source convention or factor 1/2. -/
theorem originalPositiveIZCurveQuaternionCoords (t : ℝ) :
    originalNativeQuaternionCoords
      (sourcePlusIGaugeCurve (2 : Fin 3) t) =
    (⟨Real.cos (sourceYAngle t), Real.sin (sourceYAngle t),0,0⟩ :
       SourceQuaternionCoords) := by
  apply originalNativeQuaternionCoords_of_positiveIZ_firstRow
  · rw [source_z_gaugeCurve_diagonal_exp]
    simpa [Matrix.diagonal_apply] using sourceZDiagonal_exp_zero t
  · rw [source_z_gaugeCurve_diagonal_exp]
    simp

/-- Literal original native SU2 +i Pauli-Y gauge curve:
the (0,1) entry is POSITIVE sin(t*pauliScale), as qualified
for the original source's real 2x2 rotation matrix. -/
theorem originalPositiveIYCurveQuaternionCoords (t : ℝ) :
    originalNativeQuaternionCoords
      (sourcePlusIGaugeCurve (1 : Fin 3) t) =
    (⟨Real.cos (sourceYAngle t),0,Real.sin (sourceYAngle t),0⟩ :
       SourceQuaternionCoords) := by
  apply originalNativeQuaternionCoords_of_positiveIY_firstRow
  · rw [source_y_gaugeCurve_real_rotation]
    simp [sourceYRotation]
  · rw [source_y_gaugeCurve_real_rotation]
    simp [sourceYRotation]

#print axioms originalPositiveIZCurveQuaternionCoords
#print axioms originalPositiveIYCurveQuaternionCoords
end
end FCP.BFSSS1V52L7A1
