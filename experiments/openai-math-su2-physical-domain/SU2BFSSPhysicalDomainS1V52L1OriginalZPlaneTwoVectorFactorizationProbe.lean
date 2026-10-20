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

/-- Generic real quadratic norm calculation: for *any* quadratic
form on *any* real vector space, a normalized orthogonal pair and a
circle pair of scalar coefficients yield another unit vector.
Keeping map_add/polar lemmas abstract avoids evaluating the actual
48-Majorana indexing and weightedSumSquares in elaboration. -/
theorem orthogonalUnitLinearCombination_norm
    {V : Type*} [AddCommGroup V] [Module ℝ V]
    (q : QuadraticForm ℝ V) (a b : V) (c s : ℝ)
    (ha : q a = 1) (hb : q b = 1)
    (hab : q.IsOrtho a b) (hcs : c*c+s*s=1) :
    q (c • a - s • b) = 1 := by
  have hpolar : QuadraticMap.polar q a b = 0 := hab.polar_eq_zero
  calc
    q (c • a - s • b) =
        q (c • a + (-s) • b) := by
          simp only [neg_smul, sub_eq_add_neg]
    _ = q (c • a) + q ((-s) • b) +
        QuadraticMap.polar q (c • a) ((-s) • b) :=
      QuadraticMap.map_add q _ _
    _ = 1 := by
      rw [QuadraticMap.map_smul, QuadraticMap.map_smul,
        QuadraticMap.polar_smul_left,
        QuadraticMap.polar_smul_right, hpolar]
      simp only [ha, hb, smul_eq_mul, smul_zero, add_zero]
      nlinarith [hcs]

/-- The first vector in the genuine original 48-source Z-plane has
norm one. Instantiate an abstract result with the *exact* accepted
S1V6 normalized axis and orthogonality certificates. -/
theorem sourceZPlane_firstVector_unit
    (α : RealSpinBlock) (c s : ℝ)
    (hcs : c * c + s * s = 1) :
    Q (c • sourceBlockColorAxis α 0 -
      s • sourceBlockColorAxis α 1) = 1 := by
  -- Gate #3 inferred the generic theorem through the concrete Q
  -- abbreviation and exhausted recursion. Fix all generic inputs,
  -- and discharge original unit/ortho certificates as separate goals.
  change source48Quadratic
    (c • sourceBlockColorAxis α 0 -
     s • sourceBlockColorAxis α 1) = 1
  refine orthogonalUnitLinearCombination_norm
    (V := Source48Vector) (q := source48Quadratic)
    (a := sourceBlockColorAxis α 0)
    (b := sourceBlockColorAxis α 1)
    (c := c) (s := s) ?_ ?_ ?_ hcs
  · exact sourceBlockColorAxis_unit α 0
  · exact sourceBlockColorAxis_unit α 1
  · exact sourceBlockColorAxis_ortho (α,0) (α,1) (by simp)

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

#print axioms orthogonalUnitLinearCombination_norm
#print axioms sourceZPlane_firstVector_unit
#print axioms sourceZPlane_twoVector_factor

end
end FCP.BFSSS1V52L1
