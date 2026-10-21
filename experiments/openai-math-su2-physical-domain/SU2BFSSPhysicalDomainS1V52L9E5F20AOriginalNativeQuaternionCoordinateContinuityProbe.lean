import SU2BFSSPhysicalDomainS1V52L9E5F19AOriginalNativeFockFullL2GaugePhysicalBridgeProbe
import SU2BFSSPhysicalDomainS1V52L7C7OriginalNativeEulerWitnessAndSpinHomProbe
import SU2BFSSPhysicalDomainS1MSourceSO48GaugeContinuityProbe

/-!
S1V52-L9E5F20A — exact native quaternion-coordinate continuity
for the GENUINE original BFSS source GaugeGroup 2.

This is an independently useful prerequisite for continuity of the
source Spin(48)-valued lift: all four real coefficients of the EXACT
native Clifford quaternion are continuous in the source SU2 parameter.

No topological structure on the full 48-dimensional Clifford algebra
or on the Spin(48) subtype is constructed or assumed here. In
particular the formal conclusion is NOT the continuity of the lift.
The source original matrix, positive-i convention, genuine Spin48
algebraic lift, and qualified F19A FullL2 physical bridge are kept.
-/

set_option autoImplicit false
set_option maxHeartbeats 260000

namespace FCP.BFSSS1V52L9E5F20A
noncomputable section

open OAI.BFSSQuantum
open FCP.BFSSS1V52B1
open FCP.BFSSS1V52C1
open FCP.BFSSS1V52L7C7

/-- ALL FOUR of the literal original source SU(2) quaternion
coefficients are continuous. These are precisely the a,b,c,d
coefficients of the qualified source Clifford polynomial whose
underlying algebra element equals the genuine native Spin lift. -/
theorem originalNativeQuaternionCoefficients_continuous :
    Continuous (fun g : GaugeGroup 2 => (originalNativeQuaternionCoords g).a) ∧
    Continuous (fun g : GaugeGroup 2 => (originalNativeQuaternionCoords g).b) ∧
    Continuous (fun g : GaugeGroup 2 => (originalNativeQuaternionCoords g).c) ∧
    Continuous (fun g : GaugeGroup 2 => (originalNativeQuaternionCoords g).d) := by
  have hu : Continuous
      (fun g : GaugeGroup 2 => (g : ColorMatrix 2) 0 0) :=
    (continuous_subtype_val :
      Continuous (fun g : GaugeGroup 2 => (g : ColorMatrix 2))).matrix_elem 0 0
  have hv : Continuous
      (fun g : GaugeGroup 2 => (g : ColorMatrix 2) 0 1) :=
    (continuous_subtype_val :
      Continuous (fun g : GaugeGroup 2 => (g : ColorMatrix 2))).matrix_elem 0 1
  constructor
  · change Continuous (fun g : GaugeGroup 2 =>
      ((g : ColorMatrix 2) 0 0).re)
    exact Complex.continuous_re.comp hu
  constructor
  · change Continuous (fun g : GaugeGroup 2 =>
      ((g : ColorMatrix 2) 0 0).im)
    exact Complex.continuous_im.comp hu
  constructor
  · change Continuous (fun g : GaugeGroup 2 =>
      ((g : ColorMatrix 2) 0 1).re)
    exact Complex.continuous_re.comp hv
  · change Continuous (fun g : GaugeGroup 2 =>
      ((g : ColorMatrix 2) 0 1).im)
    exact Complex.continuous_im.comp hv

#print axioms originalNativeQuaternionCoefficients_continuous

end
end FCP.BFSSS1V52L9E5F20A
