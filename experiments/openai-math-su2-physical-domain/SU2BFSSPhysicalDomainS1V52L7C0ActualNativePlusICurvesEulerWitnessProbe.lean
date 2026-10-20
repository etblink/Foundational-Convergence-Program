import SU2BFSSPhysicalDomainS1V52L7B3NativeEulerWitnessSpinHomProbe
import SU2BFSSPhysicalDomainS1V52L7A0NativeSourceCurveFirstRowTransportProbe
import SU2BFSSPhysicalDomainL6H5E8YOriginalSU2ExactSourceEulerFactorizationProbe
import SU2BFSSPhysicalDomainL6H5E8TSourcePositiveIYColorRealRotationProbe

/-!
S1V52-L7C0 — STAGED / NOT QUALIFIED:
the ORIGINAL native GaugeGroup 2 positive-i Pauli Z and Y
one-parameter curves have exact native quaternion coordinates,
and the already accepted original exact source Euler factorization
therefore discharges the explicit L7B3 ZYZ witness hypothesis.

The source is the unchanged historical
FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve,
NOT a substitute diagonal matrix or an abstract SU2 object.
Original real time enters as sourceYAngle t = t * pauliScale,
with both Z imaginary sine and Y upper-right sine POSITIVE.

The previous H5E8R/T/Y source modules remain outside the
currently cached S1V52 L7B3 .olean closure. A strict, exact
source-pinned integration with the historical physical-source
.olean closure is REQUIRED before counting these theorems.
Do not count this source file alone as a solved Euler bridge.
-/
set_option autoImplicit false
set_option maxHeartbeats 460000
set_option synthInstance.maxHeartbeats 170000

namespace FCP.BFSSS1V52L7C0
noncomputable section

open OAI.BFSSQuantum
open FCP.BFSSS1V52B1
open FCP.BFSSS1V52C1
open FCP.BFSSS1V52L7A0
open FCP.BFSSS1V52L7B3
open FCP.BFSSSU2PhysicalDomainL6G6X
open FCP.BFSSSU2PhysicalDomainL6H5E8R
open FCP.BFSSSU2PhysicalDomainL6H5E8T
open FCP.BFSSSU2PhysicalDomainL6H5E8W
open FCP.BFSSSU2PhysicalDomainL6H5E8Y

/-- The genuine original +i normalized Pauli-Z native group curve
has C1's literal source coordinates, for every real time. -/
theorem originalNativePositiveIZCurve_coords (t : ℝ) :
    originalNativeQuaternionCoords
      (sourcePlusIGaugeCurve (2 : Fin 3) t) =
      (⟨Real.cos (sourceYAngle t),
        Real.sin (sourceYAngle t), 0, 0⟩ : SourceQuaternionCoords) := by
  apply originalNativeQuaternionCoords_of_positiveIZ_firstRow
  · rw [source_z_gaugeCurve_diagonal_exp]
    simpa [Matrix.diagonal_apply] using sourceZDiagonal_exp_zero t
  · rw [source_z_gaugeCurve_diagonal_exp]
    simp [Matrix.diagonal_apply]

/-- The genuine original +i normalized Pauli-Y native curve has
C1's exact source positive real sine in the (0,1) coordinate. -/
theorem originalNativePositiveIYCurve_coords (t : ℝ) :
    originalNativeQuaternionCoords
      (sourcePlusIGaugeCurve (1 : Fin 3) t) =
      (⟨Real.cos (sourceYAngle t), 0,
        Real.sin (sourceYAngle t), 0⟩ : SourceQuaternionCoords) := by
  apply originalNativeQuaternionCoords_of_positiveIY_firstRow
  · rw [source_y_gaugeCurve_real_rotation]
    simp [sourceYRotation]
  · rw [source_y_gaugeCurve_real_rotation]
    simp [sourceYRotation]

/-- The original-source Euler theorem, with L7C0's exact
native quaternion coordinate identification, gives L7B3's
universal witness: no new premise for a genuine native g. -/
theorem originalNativeAll_ZYZWitness :
    ∀ g : GaugeGroup 2, originalNativeHasZYZWitness g := by
  intro g
  unfold originalNativeHasZYZWitness
  refine ⟨
    sourcePlusIGaugeCurve (2 : Fin 3) (originalEulerLeftTime g),
    sourcePlusIGaugeCurve (1 : Fin 3) (originalEulerMiddleTime g),
    sourcePlusIGaugeCurve (2 : Fin 3) (originalEulerRightTime g),
    Real.cos (sourceYAngle (originalEulerLeftTime g)),
    Real.sin (sourceYAngle (originalEulerLeftTime g)),
    Real.cos (sourceYAngle (originalEulerMiddleTime g)),
    Real.sin (sourceYAngle (originalEulerMiddleTime g)),
    Real.cos (sourceYAngle (originalEulerRightTime g)),
    Real.sin (sourceYAngle (originalEulerRightTime g)),
    ?_, ?_, ?_, ?_⟩
  · exact (original_source_zyz_exact_euler g).symm
  · exact originalNativePositiveIZCurve_coords (originalEulerLeftTime g)
  · exact originalNativePositiveIYCurve_coords (originalEulerMiddleTime g)
  · exact originalNativePositiveIZCurve_coords (originalEulerRightTime g)

#print axioms originalNativePositiveIZCurve_coords
#print axioms originalNativePositiveIYCurve_coords
#print axioms originalNativeAll_ZYZWitness
end
end FCP.BFSSS1V52L7C0
