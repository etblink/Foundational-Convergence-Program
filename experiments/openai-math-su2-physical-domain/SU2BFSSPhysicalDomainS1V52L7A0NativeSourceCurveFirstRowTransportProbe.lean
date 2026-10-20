import SU2BFSSPhysicalDomainS1V52C1OriginalNativeGaugeQuaternionCoordinatesProbe

/-!
S1V52-L7A0 — small source-exact REAL COORDINATE TRANSPORT
for the first row of a literal ORIGINAL GaugeGroup 2 element.

This gate deliberately does NOT import the historical huge
L6H5E8P/Q/R/S/T/Y dependency closure, whose upstream source
transitively includes Gauss/physical-Hilbert stages. It DOES NOT
assume the normalized Pauli exponent matrix formulas have been
discharged for any specific curve. Each theorem carries exact
native matrix-entry equalities as EXPLICIT hypotheses to be
discharged by qualified original source R/T in a later bridge.
No replacement SU2 group, source sign/scale change, or Spin claim.
-/
set_option autoImplicit false
set_option maxHeartbeats 350000

namespace FCP.BFSSS1V52L7A0
noncomputable section
open OAI.BFSSQuantum
open FCP.BFSSS1V52B1
open FCP.BFSSS1V52C1

/-- Native original quaternion coordinates of an exactly
positive-i Z first row; matrix equalities remain visible premises. -/
theorem originalNativeQuaternionCoords_of_positiveIZ_firstRow
    (g : GaugeGroup 2) (c s : ℝ)
    (h00 : (g : ColorMatrix 2) 0 0 =
      (c : ℂ) + (s : ℂ) * Complex.I)
    (h01 : (g : ColorMatrix 2) 0 1 = 0) :
    originalNativeQuaternionCoords g =
      (⟨c,s,0,0⟩ : SourceQuaternionCoords) := by
  simp [originalNativeQuaternionCoords, h00, h01]

/-- Native original quaternion coordinates of an exactly
positive-i Y first row with literal real off-diagonal sign;
the input is still an actual GaugeGroup 2 element. -/
theorem originalNativeQuaternionCoords_of_positiveIY_firstRow
    (g : GaugeGroup 2) (c s : ℝ)
    (h00 : (g : ColorMatrix 2) 0 0 = (c : ℂ))
    (h01 : (g : ColorMatrix 2) 0 1 = (s : ℂ)) :
    originalNativeQuaternionCoords g =
      (⟨c,0,s,0⟩ : SourceQuaternionCoords) := by
  simp [originalNativeQuaternionCoords, h00, h01]

#print axioms originalNativeQuaternionCoords_of_positiveIZ_firstRow
#print axioms originalNativeQuaternionCoords_of_positiveIY_firstRow
end
end FCP.BFSSS1V52L7A0
