import SU2BFSSPhysicalDomainS1V52L7B1NativeZYCoordinateSpinProductProbe

/-!
S1V52-L7B2 — STAGED, NOT STRICTLY QUALIFIED.

The actual original GaugeGroup 2 ZYZ triple product maps to genuine
original source Spin(48) when all THREE native source quaternion
coordinates are exact normalized Z/Y/Z circles. Reuses L7B1's
source-native ZY multiplication and independently accepted L3
source Z membership, WITHOUT assuming Euler factorization or
suppressing the native coordinate hypotheses.

After L7B1 and this gate qualify, original S1V23/L6H5E8R/T/Y
curve-to-quaternion and exact source Euler identities can be
transported into genuine Spin(48) using the historical source
closure. That last transport is not inferred here.

Original positive-i Pauli convention, t*pauliScale and actual
source48Quadratic; no surrogate GaugeGroup, no physical/spectral
claim and no global Spin hom at this stage.
-/
set_option autoImplicit false
set_option maxHeartbeats 450000
namespace FCP.BFSSS1V52L7B2
noncomputable section

open OAI.BFSSQuantum
open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSS1V52B1
open FCP.BFSSS1V52B2
open FCP.BFSSS1V52C1
open FCP.BFSSS1V52C2D
open FCP.BFSSS1V52L7B1

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic

/-- Genuine native SU(2) original ZYZ-product source Clifford
Spin membership, WITHOUT silently assuming the still-separate
historical positive-i curve and Euler identities. -/
theorem originalNativeZYZProduct_mem_spin
    (α : RealSpinBlock) (g h k : GaugeGroup 2)
    (c s u v w x : ℝ)
    (hg : originalNativeQuaternionCoords g =
      (⟨c,s,0,0⟩ : SourceQuaternionCoords))
    (hh : originalNativeQuaternionCoords h =
      (⟨u,0,v,0⟩ : SourceQuaternionCoords))
    (hk : originalNativeQuaternionCoords k =
      (⟨w,x,0,0⟩ : SourceQuaternionCoords))
    (hcs : c*c+s*s=1) (huv : u*u+v*v=1)
    (hwx : w*w+x*x=1) :
    sourceCliffordQuaternion α
      (originalNativeQuaternionCoords (g*h*k)) ∈ spinGroup Q := by
  rw [originalNativeQuaternionCoords_mul]
  rw [sourceCliffordQuaternion_compose]
  exact mul_mem
    (originalNativeZYProduct_mem_spin α g h c s u v hg hh hcs huv)
    (originalNativeZCoordinate_mem_spin α k w x hk hwx)

#print axioms originalNativeZYZProduct_mem_spin
end
end FCP.BFSSS1V52L7B2
