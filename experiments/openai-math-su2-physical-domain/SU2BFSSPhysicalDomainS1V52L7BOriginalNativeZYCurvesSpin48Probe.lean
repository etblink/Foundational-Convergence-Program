import SU2BFSSPhysicalDomainS1V52L7A1OriginalPositiveICurveQuaternionCoordinatesProbe
import SU2BFSSPhysicalDomainS1V52L3OriginalZPlaneSpinMembershipProbe
import SU2BFSSPhysicalDomainS1V52L6OriginalYPlaneSpinMembershipProbe
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

/-!
S1V52-L7B — STAGED UNQUALIFIED true original GaugeGroup 2
positive-i one-parameter curve transport to the actual
spinGroup source48Quadratic.

The theorem statements retain the original native
sourcePlusIGaugeCurve, originalNativeQuaternionCoords and
original exact 48-source Clifford polynomial, with the unchanged
theta=t*pauliScale from accepted historical H5E8R/T.

This is NOT accepted until L7A1 is separately qualified in a
strict source-pinned environment with its complete original
historical imports, and L7B itself compiles with allowed axioms.

No global native SU2 Spin hom or continuity is asserted.
-/
set_option autoImplicit false
set_option maxHeartbeats 400000

namespace FCP.BFSSS1V52L7B
noncomputable section
open OAI.BFSSQuantum
open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSS1V52B2
open FCP.BFSSS1V52C1
open FCP.BFSSS1V52L3
open FCP.BFSSS1V52L6
open FCP.BFSSS1V52L7A1
open FCP.BFSSSU2PhysicalDomainL6G6X
open FCP.BFSSSU2PhysicalDomainL6H5E8T

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic

/-- The positive-i Z native curve's literal source Clifford
quaternion lies in true pinned Mathlib Spin48. -/
theorem sourceNativeZCurve_mem_spin
    (α : RealSpinBlock) (t : ℝ) :
    sourceCliffordQuaternion α
      (originalNativeQuaternionCoords
        (sourcePlusIGaugeCurve (2 : Fin 3) t)) ∈ spinGroup Q := by
  rw [originalPositiveIZCurveQuaternionCoords]
  have hcs : Real.cos (sourceYAngle t) * Real.cos (sourceYAngle t) +
      Real.sin (sourceYAngle t) * Real.sin (sourceYAngle t) = 1 := by
    nlinarith [Real.sin_sq_add_cos_sq (sourceYAngle t)]
  exact sourceZPlaneQuaternion_mem_spin α _ _ hcs

/-- The positive-i Y native curve's literal source Clifford
quaternion lies in true pinned Mathlib Spin48. -/
theorem sourceNativeYCurve_mem_spin
    (α : RealSpinBlock) (t : ℝ) :
    sourceCliffordQuaternion α
      (originalNativeQuaternionCoords
        (sourcePlusIGaugeCurve (1 : Fin 3) t)) ∈ spinGroup Q := by
  rw [originalPositiveIYCurveQuaternionCoords]
  have hcs : Real.cos (sourceYAngle t) * Real.cos (sourceYAngle t) +
      Real.sin (sourceYAngle t) * Real.sin (sourceYAngle t) = 1 := by
    nlinarith [Real.sin_sq_add_cos_sq (sourceYAngle t)]
  exact sourceYPlaneQuaternion_mem_spin α _ _ hcs

#print axioms sourceNativeZCurve_mem_spin
#print axioms sourceNativeYCurve_mem_spin
end
end FCP.BFSSS1V52L7B
