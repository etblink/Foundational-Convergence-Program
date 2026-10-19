import SU2BFSSPhysicalDomainS1V1StandaloneSpin48AllVectorProbe

/-!
S1V4 — source-sized real-Clifford two-block Spin rotor commutation.

This is a necessary algebraic interface for multiplying sixteen
mutually orthogonal source color-spin blocks. It does NOT construct
those sixteen blocks, identify their original SU2 Pauli action, prove
a group homomorphism, or establish topology/continuity.

Uses the exact original 48-real Fin 24 × Fin 2 label space and Q(v)
as the source normalized sum of squares. All four cross-orthogonality
hypotheses are EXPLICIT; none are postulated as true for any concrete
block family. Research candidate until strict kernel audit.
-/
set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSS1V4
noncomputable section

open FCP.BFSSS1V0
open FCP.BFSSS1V1

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- An exact real-Clifford source generator commutes with a product
of two generators orthogonal to it. No commutative algebra premise. -/
private theorem generator_commutes_orthogonal_pair
    (a c d : Source48Vector)
    (hac : Q.IsOrtho a c) (had : Q.IsOrtho a d) :
    CliffordAlgebra.ι Q a *
        (CliffordAlgebra.ι Q c * CliffordAlgebra.ι Q d) =
      (CliffordAlgebra.ι Q c * CliffordAlgebra.ι Q d) *
        CliffordAlgebra.ι Q a := by
  let A : C := CliffordAlgebra.ι Q a
  let Cc : C := CliffordAlgebra.ι Q c
  let D : C := CliffordAlgebra.ι Q d
  have hAC : A * Cc = -(Cc * A) := by
    exact CliffordAlgebra.ι_mul_ι_comm_of_isOrtho hac
  have hAD : A * D = -(D * A) := by
    exact CliffordAlgebra.ι_mul_ι_comm_of_isOrtho had
  change A * (Cc * D) = (Cc * D) * A
  calc
    A * (Cc * D) = (A * Cc) * D := by rw [mul_assoc]
    _ = (-(Cc * A)) * D := by rw [hAC]
    _ = -(Cc * (A * D)) := by rw [neg_mul, mul_assoc]
    _ = -(Cc * (-(D * A))) := by rw [hAD]
    _ = Cc * (D * A) := by rw [mul_neg, neg_neg]
    _ = (Cc * D) * A := by rw [mul_assoc]

/-- The actual two source-sized inner Spin(48) rotors commute in
the concrete Clifford algebra when their two source planes are
mutually orthogonal.  The within-pair Q-unit hypotheses are proved
or assumed explicitly as in S1S; only the four required cross-plane
orthogonality hypotheses appear here. -/
theorem sourceSpinPair_coe_comm_of_cross_ortho
    (a b c d : Source48Vector)
    (ha : Q a = 1) (hb : Q b = 1)
    (hc : Q c = 1) (hd : Q d = 1)
    (hac : Q.IsOrtho a c) (had : Q.IsOrtho a d)
    (hbc : Q.IsOrtho b c) (hbd : Q.IsOrtho b d) :
    (sourceSpinPair a b ha hb : C) *
      (sourceSpinPair c d hc hd : C) =
      (sourceSpinPair c d hc hd : C) *
        (sourceSpinPair a b ha hb : C) := by
  let A : C := CliffordAlgebra.ι Q a
  let B : C := CliffordAlgebra.ι Q b
  let Cc : C := CliffordAlgebra.ι Q c
  let D : C := CliffordAlgebra.ι Q d
  have hACD : A * (Cc * D) = (Cc * D) * A := by
    exact generator_commutes_orthogonal_pair a c d hac had
  have hBCD : B * (Cc * D) = (Cc * D) * B := by
    exact generator_commutes_orthogonal_pair b c d hbc hbd
  change (A * B) * (Cc * D) = (Cc * D) * (A * B)
  calc
    (A * B) * (Cc * D) = A * (B * (Cc * D)) := by rw [mul_assoc]
    _ = A * ((Cc * D) * B) := by rw [hBCD]
    _ = (A * (Cc * D)) * B := by simp only [mul_assoc]
    _ = ((Cc * D) * A) * B := by rw [hACD]
    _ = (Cc * D) * (A * B) := by rw [mul_assoc]

/-- The same identity as an equality in Mathlib's genuine
spinGroup Q rather than only in the underlying Clifford algebra. -/
theorem sourceSpinPair_comm_of_cross_ortho
    (a b c d : Source48Vector)
    (ha : Q a = 1) (hb : Q b = 1)
    (hc : Q c = 1) (hd : Q d = 1)
    (hac : Q.IsOrtho a c) (had : Q.IsOrtho a d)
    (hbc : Q.IsOrtho b c) (hbd : Q.IsOrtho b d) :
    sourceSpinPair a b ha hb * sourceSpinPair c d hc hd =
      sourceSpinPair c d hc hd * sourceSpinPair a b ha hb := by
  apply Subtype.ext
  exact sourceSpinPair_coe_comm_of_cross_ortho
    a b c d ha hb hc hd hac had hbc hbd

#print axioms sourceSpinPair_coe_comm_of_cross_ortho
#print axioms sourceSpinPair_comm_of_cross_ortho

end
end FCP.BFSSS1V4
