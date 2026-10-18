import SU2BFSSPhysicalDomainS1RActualClifford48AlgebraAutomorphismProbe
import Mathlib.LinearAlgebra.CliffordAlgebra.SpinGroup

/-!
S1S — a nontrivial INNER Spin(48) test on the genuine
normalized source-label real Clifford algebra.

For any two unit vectors in the already qualified quadratic
space Q(v) = sum_i v_i^2, construct their canonical units.
The PRODUCT of these two units lies in Mathlib's actual
spinGroup Q: it is in the Lipschitz closure, is Clifford-
unitary, and lies in the even Clifford subalgebra.

For orthogonal vectors, check an explicit conjugation:
the resulting spin element sends the first generator to its
negative (one of the two half-turn axes).

No g ↦ Spin(48) map, continuous lift, independent manuscript
complex Clifford module, or Hamiltonian-domain claim is made.
-/

set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSSU2PhysicalDomainS1S
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS1P0
open FCP.BFSSSU2PhysicalDomainS1R

private abbrev Q : QuadraticForm ℝ Source48Vector :=
  source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- For Q(a)=1, the actual canonical normalized Clifford
generator is a unit whose inverse is itself. -/
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

#print axioms sourceUnitVector
#print axioms sourceUnitVector_coe
#print axioms sourceUnitVector_mem_lipschitz
#print axioms sourceSpinPair
#print axioms sourceSpinPair_coe
#print axioms sourceSpinPair_conjugates_first

end
end FCP.BFSSSU2PhysicalDomainS1S
