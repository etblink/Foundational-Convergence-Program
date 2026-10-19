import SU2BFSSPhysicalDomainS1V0StandaloneOrthogonalGeometryProbe
import Mathlib.LinearAlgebra.CliffordAlgebra.SpinGroup

/-!
S1V1 — ISOLATED EXACT SOURCE-48-LABEL Mathlib test.
Compile accepted S1S/S1T/S1U rotor calculations verbatim on the exact
48-real Fin 24 × Fin 2 source label space and S1P0's literal
unit-weight QuadraticMap.weightedSumSquares Q.

The independently compiled S1V0 orthogonal plane decomposition is
imported as a named theorem rather than requiring the entire PR25
historical operator/Mathlib closure.

This deliberately verifies local Spin(48) generator action only,
NOT the original SU2 gauge action, a continuous group lift,
the manuscript's complex irreducible module, Hamiltonian,
Spin9 invariance, physical spectrum, or experimental BFSS validity.

Research candidate — do not claim a green until strict CI qualification.
-/

set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSS1V1
noncomputable section

open Matrix
open FCP.BFSSS1V0

private abbrev Q : QuadraticForm ℝ Source48Vector :=
  source48Quadratic
private abbrev C := CliffordAlgebra Q
private abbrev B : Source48Vector →ₗ[ℝ] Source48Vector →ₗ[ℝ] ℝ :=
  QuadraticMap.associated Q

noncomputable def sourceUnitVector (a : Source48Vector) (ha : Q a = 1) :
    Cˣ := by
  have hsq : (CliffordAlgebra.ι Q a) * (CliffordAlgebra.ι Q a) = 1 := by
    rw [CliffordAlgebra.ι_sq_scalar, ha, map_one]
  exact ⟨CliffordAlgebra.ι Q a,
    CliffordAlgebra.ι Q a, hsq, hsq⟩

theorem sourceUnitVector_coe (a : Source48Vector) (ha : Q a = 1) :
    (sourceUnitVector a ha : C) = CliffordAlgebra.ι Q a := rfl

/-- The actual unit vector belongs to the defining Lipschitz
closure, NOT to the (positive-sign) Pin group individually. -/
theorem sourceUnitVector_mem_lipschitz
    (a : Source48Vector) (ha : Q a = 1) :
    sourceUnitVector a ha ∈ lipschitzGroup Q := by
  apply Subgroup.subset_closure
  change (sourceUnitVector a ha : C) ∈
    Set.range (CliffordAlgebra.ι Q)
  exact ⟨a, sourceUnitVector_coe a ha⟩

/-- Two unit real source Clifford vectors yield an ACTUAL
element of the pinned Mathlib Spin group, with an explicit
even/Pin/Clifford-unitarity proof. -/
noncomputable def sourceSpinPair (a b : Source48Vector)
    (ha : Q a = 1) (hb : Q b = 1) : spinGroup Q := by
  let A : C := CliffordAlgebra.ι Q a
  let B : C := CliffordAlgebra.ι Q b
  have hA : A * A = 1 := by
    dsimp [A]
    rw [CliffordAlgebra.ι_sq_scalar, ha, map_one]
  have hB : B * B = 1 := by
    dsimp [B]
    rw [CliffordAlgebra.ι_sq_scalar, hb, map_one]
  refine ⟨A * B, ?_⟩
  rw [spinGroup.mem_iff]
  constructor
  · rw [pinGroup.mem_iff]
    constructor
    · have hLip :
          (sourceUnitVector a ha * sourceUnitVector b hb) ∈
            lipschitzGroup Q :=
        mul_mem (sourceUnitVector_mem_lipschitz a ha)
          (sourceUnitVector_mem_lipschitz b hb)
      exact ⟨sourceUnitVector a ha * sourceUnitVector b hb,
        hLip, rfl⟩
    · rw [Unitary.mem_iff]
      constructor
      · have hstar : star (A * B) = B * A := by
          dsimp [A, B]
          simp only [star_mul, CliffordAlgebra.star_ι, neg_mul_neg]
        rw [hstar]
        calc
          (B * A) * (A * B) = B * (A * A) * B := by
            simp only [mul_assoc]
          _ = 1 := by rw [hA, mul_one, hB]
      · have hstar : star (A * B) = B * A := by
          dsimp [A, B]
          simp only [star_mul, CliffordAlgebra.star_ι, neg_mul_neg]
        rw [hstar]
        calc
          (A * B) * (B * A) = A * (B * B) * A := by
            simp only [mul_assoc]
          _ = 1 := by rw [hB, mul_one, hA]
  · change (CliffordAlgebra.ι Q a) *
      (CliffordAlgebra.ι Q b) ∈ CliffordAlgebra.evenOdd Q 0
    exact CliffordAlgebra.ι_mul_ι_mem_evenOdd_zero Q a b

/-- Its underlying actual Clifford algebra word is precisely
the product of the two original normalized generators. -/
theorem sourceSpinPair_coe (a b : Source48Vector)
    (ha : Q a = 1) (hb : Q b = 1) :
    (sourceSpinPair a b ha hb : C) =
      (CliffordAlgebra.ι Q a) * (CliffordAlgebra.ι Q b) := rfl

/-- Nontrivial inner Spin projection test: for orthogonal
unit vectors the source Clifford word implements the half-turn
on the first generator. Its inverse is Clifford star. -/
theorem sourceSpinPair_conjugates_first
    (a b : Source48Vector) (ha : Q a = 1) (hb : Q b = 1)
    (hab : Q.IsOrtho a b) :
    (sourceSpinPair a b ha hb : C) *
      CliffordAlgebra.ι Q a *
      star (sourceSpinPair a b ha hb : C) =
        -CliffordAlgebra.ι Q a := by
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
  change (A * B) * A * star (A * B) = -A
  have hstar : star (A * B) = B * A := by
    dsimp [A, B]
    simp only [star_mul, CliffordAlgebra.star_ι, neg_mul_neg]
  rw [hstar]
  have hleft : (A * B) * A = -B := by
    calc
      (A * B) * A = A * (B * A) := by rw [mul_assoc]
      _ = A * (-(A * B)) := by rw [hcomm]
      _ = -(A * A * B) := by rw [mul_neg, ← mul_assoc]
      _ = -B := by rw [hA, one_mul]
  calc
    (A * B) * A * (B * A) = (-B) * (B * A) := by rw [hleft]
    _ = -((B * B) * A) := by rw [neg_mul, ← mul_assoc]
    _ = -A := by rw [hB, one_mul]



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


/-- The same actual 48-source-label two-plane flip specified without
choosing an unrelated orthogonal representation. -/
noncomputable def sourcePlaneFlip (a b v : Source48Vector) :
    Source48Vector :=
  (-(B a v)) • a + (-(B b v)) • b +
    sourcePlaneComplement a b v

/-- Exact source-size local inner Spin48 half-turn on *every*
normalized original Majorana-label real generator. -/
theorem sourceSpinPair_conjugates_every_source_vector
    (a b v : Source48Vector)
    (ha : Q a = 1) (hb : Q b = 1)
    (hab : Q.IsOrtho a b) :
    (sourceSpinPair a b ha hb : C) *
      CliffordAlgebra.ι Q v *
      star (sourceSpinPair a b ha hb : C) =
        CliffordAlgebra.ι Q (sourcePlaneFlip a b v) := by
  have hv := sourcePlane_decomposition a b v
  have hac := sourcePlaneComplement_ortho_first a b v ha hb hab
  have hbc := sourcePlaneComplement_ortho_second a b v ha hb hab
  calc
    (sourceSpinPair a b ha hb : C) * CliffordAlgebra.ι Q v *
        star (sourceSpinPair a b ha hb : C) =
      (sourceSpinPair a b ha hb : C) *
        CliffordAlgebra.ι Q
          ((B a v) • a + (B b v) • b +
            sourcePlaneComplement a b v) *
        star (sourceSpinPair a b ha hb : C) := by rw [← hv]
    _ = CliffordAlgebra.ι Q
          ((-(B a v)) • a + (-(B b v)) • b +
            sourcePlaneComplement a b v) := by
      exact sourceSpinPair_conjugates_plane_combination
        a b (sourcePlaneComplement a b v)
        ha hb hab hac hbc (B a v) (B b v)
    _ = CliffordAlgebra.ι Q (sourcePlaneFlip a b v) := rfl

#print axioms sourceSpinPair
#print axioms sourceSpinPair_conjugates_first
#print axioms sourceSpinPair_conjugates_second
#print axioms sourceSpinPair_conjugates_perpendicular
#print axioms sourceSpinPair_conjugates_plane_combination
#print axioms sourceSpinPair_conjugates_every_source_vector

end
end FCP.BFSSS1V1
