import SU2BFSSPhysicalDomainS1V52S2Original48CliffordQuaternionEvennessProbe

/-!
S1V52-L1 research candidate: the first genuinely constructive
Lipschitz-membership interface, *inside the original 48-real
Clifford algebra*. The original Z-plane rotor is a literal
product of two `ι source48Quadratic` generators.

The critical geometric fact is that the first vector
  c • sourceBlockColorAxis α 0 - s • sourceBlockColorAxis α 1
has Q-norm one when c²+s²=1. No substitute three-real model,
weak density criterion, or postulated Spin membership.

L1 proves only the vector norm and the Clifford factorization.
Subsequent L2 must certify BOTH generator units lie in Mathlib's
lipschitzGroup closure; the Y-plane and global Euler factorization
will remain separate obligations. NO DECLARATION ACCEPTED UNTIL CI.
-/

set_option autoImplicit false
set_option maxHeartbeats 450000

namespace FCP.BFSSS1V52L1
noncomputable section

open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSS1V6
open FCP.BFSSS1V52A

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- The exact source 48-Majorana vector generating a Z-plane
unit quaternion rotor is Q-normalized whenever c²+s²=1. -/
theorem sourceZPlane_firstVector_unit
    (α : RealSpinBlock) (c s : ℝ)
    (hcs : c * c + s * s = 1) :
    Q (c • sourceBlockColorAxis α 0 -
      s • sourceBlockColorAxis α 1) = 1 := by
  let a : Source48Vector := sourceBlockColorAxis α 0
  let b : Source48Vector := sourceBlockColorAxis α 1
  have ha : Q a = 1 := sourceBlockColorAxis_unit α 0
  have hb : Q b = 1 := sourceBlockColorAxis_unit α 1
  have hab : Q.IsOrtho a b :=
    sourceBlockColorAxis_ortho (α,0) (α,1) (by simp)
  have hzero : QuadraticMap.polar Q a b = 0 := hab.polar_eq_zero
  change Q (c • a - s • b) = 1
  calc
    Q (c • a - s • b) =
        Q (c • a + (-s) • b) := by
          simp only [neg_smul, sub_eq_add_neg]
    _ = Q (c • a) + Q ((-s) • b) +
          QuadraticMap.polar Q (c • a) ((-s) • b) :=
      QuadraticMap.map_add Q _ _
    _ = 1 := by
      rw [QuadraticMap.map_smul, QuadraticMap.map_smul,
        QuadraticMap.polar_smul_left,
        QuadraticMap.polar_smul_right, hzero]
      simp only [ha, hb, smul_eq_mul, smul_zero, add_zero]
      nlinarith [hcs]

/-- A normalized source Z-plane rotor equals exactly the product
of two ORIGINAL Clifford vector generators, with the +i sign:
(ι(c a - s b)) (ι a) = c • 1 + s • (ι a)(ι b). -/
theorem sourceZPlane_twoVector_factor
    (α : RealSpinBlock) (c s : ℝ) :
    CliffordAlgebra.ι Q
      (c • sourceBlockColorAxis α 0 -
       s • sourceBlockColorAxis α 1) *
      CliffordAlgebra.ι Q (sourceBlockColorAxis α 0) =
      c • (1 : C) + s • sourceZBivector α := by
  let a : Source48Vector := sourceBlockColorAxis α 0
  let b : Source48Vector := sourceBlockColorAxis α 1
  have haa : CliffordAlgebra.ι Q a * CliffordAlgebra.ι Q a = 1 :=
    sourceAxis_square α 0
  have hba : CliffordAlgebra.ι Q b * CliffordAlgebra.ι Q a =
      -(CliffordAlgebra.ι Q a * CliffordAlgebra.ι Q b) :=
    sourceAxis_anticomm α 1 0 (by decide)
  change CliffordAlgebra.ι Q (c • a - s • b) *
      CliffordAlgebra.ι Q a =
      c • (1 : C) +
        s • (CliffordAlgebra.ι Q a * CliffordAlgebra.ι Q b)
  calc
    CliffordAlgebra.ι Q (c • a - s • b) *
        CliffordAlgebra.ι Q a =
        (c • CliffordAlgebra.ι Q a -
          s • CliffordAlgebra.ι Q b) * CliffordAlgebra.ι Q a := by
        rw [map_sub, map_smul, map_smul]
    _ = c • (CliffordAlgebra.ι Q a * CliffordAlgebra.ι Q a) -
        s • (CliffordAlgebra.ι Q b * CliffordAlgebra.ι Q a) := by
        simp only [sub_mul, smul_mul_assoc]
    _ = c • (1 : C) +
        s • (CliffordAlgebra.ι Q a * CliffordAlgebra.ι Q b) := by
        rw [haa, hba]
        simp only [smul_neg, sub_neg_eq_add]

#print axioms sourceZPlane_firstVector_unit
#print axioms sourceZPlane_twoVector_factor

end
end FCP.BFSSS1V52L1
