import SU2BFSSPhysicalDomainS1SSourceSpin48TwoVectorRotorProbe

/-!
S1T — complete the local two-plane half-turn test for the
ACTUAL source-normalized real Clifford(48) Spin group.

S1S qualified an actual even unitary Lipschitz Spin element
s=ι(a)ι(b), for Q(a)=Q(b)=1, and proved its conjugation flips
ι(a) when a and b are orthogonal.

S1T proves the same element flips ι(b), while fixing ι(c)
for every c orthogonal to both a and b. Together with S1S
and Clifford generator linearity, these facts identify the
orthogonal reflection-pair (two-plane half-turn) action.

No SU(2) → Spin(48) source-gauge lifting theorem is assumed
or claimed. No manuscript irreducible module, Hilbert operator
domain transport or spectral result is introduced.
-/

set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSSU2PhysicalDomainS1T
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS1P0
open FCP.BFSSSU2PhysicalDomainS1S

private abbrev Q : QuadraticForm ℝ Source48Vector :=
  source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- The SAME actual Spin element from S1S reverses the second
orthogonal unit Clifford generator, not just the first. -/
theorem sourceSpinPair_conjugates_second
    (a b : Source48Vector) (ha : Q a = 1) (hb : Q b = 1)
    (hab : Q.IsOrtho a b) :
    (sourceSpinPair a b ha hb : C) *
      CliffordAlgebra.ι Q b *
      star (sourceSpinPair a b ha hb : C) =
        -CliffordAlgebra.ι Q b := by
  let A : C := CliffordAlgebra.ι Q a
  let B : C := CliffordAlgebra.ι Q b
  have hA : A * A = 1 := by
    dsimp [A]
    rw [CliffordAlgebra.ι_sq_scalar, ha, map_one]
  have hB : B * B = 1 := by
    dsimp [B]
    rw [CliffordAlgebra.ι_sq_scalar, hb, map_one]
  have hcomm : B * A = -(A * B) := by
    dsimp [A, B]
    exact CliffordAlgebra.ι_mul_ι_comm_of_isOrtho hab.symm
  change (A * B) * B * star (A * B) = -B
  have hstar : star (A * B) = B * A := by
    dsimp [A, B]
    simp only [star_mul, CliffordAlgebra.star_ι, neg_mul_neg]
  rw [hstar]
  have hleft : (A * B) * B = A := by
    calc
      (A * B) * B = A * (B * B) := by rw [mul_assoc]
      _ = A := by rw [hB, mul_one]
  have hright : A * (B * A) = -B := by
    calc
      A * (B * A) = A * (-(A * B)) := by rw [hcomm]
      _ = -(A * A * B) := by rw [mul_neg, ← mul_assoc]
      _ = -B := by rw [hA, one_mul]
  calc
    (A * B) * B * (B * A) = A * (B * A) := by rw [hleft]
    _ = -B := hright

/-- The actual two-plane Spin half-turn FIXES every Clifford
generator orthogonal to BOTH unit axes. This proves the
non-plane part of the real 48-dimensional conjugation action. -/
theorem sourceSpinPair_conjugates_perpendicular
    (a b c : Source48Vector) (ha : Q a = 1) (hb : Q b = 1)
    (hac : Q.IsOrtho a c) (hbc : Q.IsOrtho b c) :
    (sourceSpinPair a b ha hb : C) *
      CliffordAlgebra.ι Q c *
      star (sourceSpinPair a b ha hb : C) =
        CliffordAlgebra.ι Q c := by
  let A : C := CliffordAlgebra.ι Q a
  let B : C := CliffordAlgebra.ι Q b
  let D : C := CliffordAlgebra.ι Q c
  have hBD : B * D = -(D * B) := by
    dsimp [B, D]
    exact CliffordAlgebra.ι_mul_ι_comm_of_isOrtho hbc
  have hAD : A * D = -(D * A) := by
    dsimp [A, D]
    exact CliffordAlgebra.ι_mul_ι_comm_of_isOrtho hac
  have hswap : (A * B) * D = D * (A * B) := by
    calc
      (A * B) * D = A * (B * D) := by rw [mul_assoc]
      _ = A * (-(D * B)) := by rw [hBD]
      _ = -((A * D) * B) := by rw [mul_neg, ← mul_assoc]
      _ = -((-(D * A)) * B) := by rw [hAD]
      _ = D * (A * B) := by rw [neg_mul, neg_neg, mul_assoc]
  have hrightunit : (A * B) * star (A * B) = 1 := by
    have h := spinGroup.coe_mul_star_self (sourceSpinPair a b ha hb)
    change (A * B) * star (A * B) = 1 at h
    exact h
  change (A * B) * D * star (A * B) = D
  calc
    (A * B) * D * star (A * B) =
        (D * (A * B)) * star (A * B) := by rw [hswap]
    _ = D * ((A * B) * star (A * B)) := by rw [mul_assoc]
    _ = D := by rw [hrightunit, mul_one]

#print axioms sourceSpinPair_conjugates_second
#print axioms sourceSpinPair_conjugates_perpendicular

end
end FCP.BFSSSU2PhysicalDomainS1T
