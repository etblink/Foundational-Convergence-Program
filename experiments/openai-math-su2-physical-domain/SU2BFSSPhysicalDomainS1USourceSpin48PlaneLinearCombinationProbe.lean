import SU2BFSSPhysicalDomainS1TSourceSpin48FullRotorActionProbe

/-!
S1U — extend the accepted exact inner source Spin48 rotor action
to every real linear combination of two orthogonal Q-unit axes
and an arbitrary common-orthogonal vector.

This uses ONLY linearity of CliffordAlgebra.ι, distributivity and
the exact S1S/S1T source-normalized inner-conjugation equalities.
It does not assume a Spin48-to-SO48 projection, Clifford ι
injectivity, an SU2-valued spin implementer, or a manuscript
Hilbert-space module equivalence.
-/
set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSSU2PhysicalDomainS1U
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS1P0
open FCP.BFSSSU2PhysicalDomainS1S
open FCP.BFSSSU2PhysicalDomainS1T

private abbrev Q : QuadraticForm ℝ Source48Vector :=
  source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- The actual spin pair reverses the entire two-plane
linear combination, leaving every common-orthogonal component
unchanged, as an equality of literal Clifford generators. -/
theorem sourceSpinPair_conjugates_plane_combination
    (a b c : Source48Vector)
    (ha : Q a = 1) (hb : Q b = 1)
    (hab : Q.IsOrtho a b)
    (hac : Q.IsOrtho a c) (hbc : Q.IsOrtho b c)
    (x y : ℝ) :
    (sourceSpinPair a b ha hb : C) *
      CliffordAlgebra.ι Q (x • a + y • b + c) *
      star (sourceSpinPair a b ha hb : C) =
        CliffordAlgebra.ι Q ((-x) • a + (-y) • b + c) := by
  let s : C := (sourceSpinPair a b ha hb : C)
  let A : C := CliffordAlgebra.ι Q a
  let B : C := CliffordAlgebra.ι Q b
  let D : C := CliffordAlgebra.ι Q c
  have hA : s * A * star s = -A := by
    exact sourceSpinPair_conjugates_first a b ha hb hab
  have hB : s * B * star s = -B := by
    exact sourceSpinPair_conjugates_second a b ha hb hab
  have hD : s * D * star s = D := by
    exact sourceSpinPair_conjugates_perpendicular a b c ha hb hac hbc
  have hleft :
      CliffordAlgebra.ι Q (x • a + y • b + c) =
        x • A + y • B + D := by
    simp only [map_add, map_smul]
    rfl
  have hright :
      CliffordAlgebra.ι Q ((-x) • a + (-y) • b + c) =
        (-x) • A + (-y) • B + D := by
    simp only [map_add, map_smul]
    rfl
  change s * (CliffordAlgebra.ι Q (x • a + y • b + c)) *
      star s = CliffordAlgebra.ι Q ((-x) • a + (-y) • b + c)
  rw [hleft, hright]
  calc
    s * (x • A + y • B + D) * star s =
        x • (s * A * star s) +
        y • (s * B * star s) +
        s * D * star s := by
          simp only [mul_add, add_mul, mul_smul_comm, smul_mul_assoc]
    _ = x • (-A) + y • (-B) + D := by rw [hA, hB, hD]
    _ = (-x) • A + (-y) • B + D := by
      simp only [smul_neg, neg_smul]

#print axioms sourceSpinPair_conjugates_plane_combination

end
end FCP.BFSSSU2PhysicalDomainS1U
