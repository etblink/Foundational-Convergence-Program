import SU2BFSSPhysicalDomainS1V8ConcreteSource48SixteenSpinRotorsProbe

/-!
S1V10 — check the exact CENTRAL SIGN of each concrete source-colored
unit Spin48 rotor. For two distinct Q-unit coordinate axes, the
positive real Clifford relation ι(a)^2=ι(b)^2=1 and anticommutation
imply (ι(a)ι(b))² = -1, not +1.

This is the correct local sign input to a future 16-block
(-1)^16 cancellation. No full product sign, continuous lift,
Pauli SU2 action, physical domain, or spectral claim is made.

UNQUALIFIED research candidate until pinned strict CI.
-/
set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSS1V10
noncomputable section

open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSS1V6
open FCP.BFSSS1V8

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- Exact negative square of each ACTUAL source-sized color-plane
spin rotor, in the original normalized Clifford algebra. -/
theorem sourceColorPlaneRotor_coe_sq_neg_one
    (α : RealSpinBlock) :
    (sourceColorPlaneRotor α : C) *
      (sourceColorPlaneRotor α : C) = -1 := by
  let A : C := CliffordAlgebra.ι Q
    (sourceBlockColorAxis α (0 : Fin 3))
  let B : C := CliffordAlgebra.ι Q
    (sourceBlockColorAxis α (1 : Fin 3))
  have hA : A * A = 1 := by
    dsimp [A]
    rw [CliffordAlgebra.ι_sq_scalar,
      sourceBlockColorAxis_unit α (0 : Fin 3), map_one]
  have hB : B * B = 1 := by
    dsimp [B]
    rw [CliffordAlgebra.ι_sq_scalar,
      sourceBlockColorAxis_unit α (1 : Fin 3), map_one]
  have hBA : B * A = -(A * B) := by
    dsimp [A, B]
    exact CliffordAlgebra.ι_mul_ι_comm_of_isOrtho
      (sourceColorAxis_ortho_zero_one α).symm
  change (A * B) * (A * B) = -1
  calc
    (A * B) * (A * B) = A * (B * A) * B := by
      simp only [mul_assoc]
    _ = A * (-(A * B)) * B := by rw [hBA]
    _ = -((A * A) * (B * B)) := by
      simp only [mul_assoc, mul_neg, neg_mul]
    _ = -1 := by rw [hA, hB, one_mul]

/-- One concrete 16-block rotor factor has order four as a Clifford
unit; this avoids confusing a 180° orthogonal rotation with its Spin
lift. -/
theorem sourceColorPlaneRotor_coe_fourth_power_one
    (α : RealSpinBlock) :
    (sourceColorPlaneRotor α : C) *
      (sourceColorPlaneRotor α : C) *
      (sourceColorPlaneRotor α : C) *
      (sourceColorPlaneRotor α : C) = 1 := by
  have hs := sourceColorPlaneRotor_coe_sq_neg_one α
  calc
    (sourceColorPlaneRotor α : C) *
        (sourceColorPlaneRotor α : C) *
        (sourceColorPlaneRotor α : C) *
        (sourceColorPlaneRotor α : C) =
      ((sourceColorPlaneRotor α : C) *
        (sourceColorPlaneRotor α : C)) *
      ((sourceColorPlaneRotor α : C) *
        (sourceColorPlaneRotor α : C)) := by simp only [mul_assoc]
    _ = 1 := by rw [hs]; simp

#print axioms sourceColorPlaneRotor_coe_sq_neg_one
#print axioms sourceColorPlaneRotor_coe_fourth_power_one

end
end FCP.BFSSS1V10
