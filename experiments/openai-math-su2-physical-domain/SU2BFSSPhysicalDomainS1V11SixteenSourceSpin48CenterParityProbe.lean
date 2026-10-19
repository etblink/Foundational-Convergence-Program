import SU2BFSSPhysicalDomainS1V9OrderedSixteenSpin48RotorProductProbe
import SU2BFSSPhysicalDomainS1V10SourceColorBlockRotorCentralSignProbe

/-!
S1V11 — prospective ACTUAL sixteen-source-block central-sign parity.

The center sign cannot be inferred merely from each block acting as a
180° SO(3) rotation. S1V10 supplies the actual Spin Clifford square
(-1) per block; S1V9 supplies pairwise commuting source block factors
and a deterministically ordered product in genuine spinGroup Q.

This candidate derives in the real Clifford algebra that the square
of the ordered sixteen-block product is (-1)^16=+1. This is NOT the
identification of that product with a normalized-Pauli original SU2
group element; exact original G1A/S1L bridge, SU2 lift group law and
continuity remain open. No axioms added. Strict CI pending.
-/
set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSS1V11
noncomputable section

open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSS1V8
open FCP.BFSSS1V9
open FCP.BFSSS1V10

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

noncomputable def sourceListCliffordProduct (xs : List RealSpinBlock) : C :=
  (xs.map (fun α => (sourceColorPlaneRotor α : C))).prod

/-- Spin-group list product and its actual Clifford image agree.
We do NOT treat spinGroup Q as commutative. -/
theorem sourceSpinListProduct_coe (xs : List RealSpinBlock) :
    ((xs.map sourceColorPlaneRotor).prod : C) =
      sourceListCliffordProduct xs := by
  induction xs with
  | nil => rfl
  | cons α rest ih =>
    change (sourceColorPlaneRotor α : C) *
      ((rest.map sourceColorPlaneRotor).prod : C) =
      (sourceColorPlaneRotor α : C) *
        sourceListCliffordProduct rest
    rw [ih]

/-- Every concrete block Clifford rotor commutes with the actual
Clifford product for an arbitrary ordered list of real-spin blocks. -/
theorem sourceColorPlaneRotor_coe_comm_list
    (α : RealSpinBlock) (xs : List RealSpinBlock) :
    (sourceColorPlaneRotor α : C) * sourceListCliffordProduct xs =
      sourceListCliffordProduct xs * (sourceColorPlaneRotor α : C) := by
  have h : sourceColorPlaneRotor α * (xs.map sourceColorPlaneRotor).prod =
    (xs.map sourceColorPlaneRotor).prod * sourceColorPlaneRotor α :=
      sourceColorPlaneRotor_comm_list α xs
  have hc := congrArg (fun x : spinGroup Q => (x : C)) h
  change (sourceColorPlaneRotor α : C) *
      ((xs.map sourceColorPlaneRotor).prod : C) =
      ((xs.map sourceColorPlaneRotor).prod : C) *
        (sourceColorPlaneRotor α : C) at hc
  simpa only [sourceSpinListProduct_coe] using hc

/-- Central-sign multiplication for an arbitrary list of commuting
two-axis source rotors; each actual rotor has square -1. -/
theorem sourceListCliffordProduct_sq (xs : List RealSpinBlock) :
    sourceListCliffordProduct xs * sourceListCliffordProduct xs =
      (-1 : C) ^ xs.length := by
  induction xs with
  | nil => simp [sourceListCliffordProduct]
  | cons α rest ih =>
    let A : C := sourceColorPlaneRotor α
    let P : C := sourceListCliffordProduct rest
    have hcomm : A * P = P * A :=
      sourceColorPlaneRotor_coe_comm_list α rest
    have hs : A * A = -1 :=
      sourceColorPlaneRotor_coe_sq_neg_one α
    change (A * P) * (A * P) = (-1 : C) ^ (rest.length + 1)
    calc
      (A * P) * (A * P) = A * (P * A) * P := by
        simp only [mul_assoc]
      _ = A * (A * P) * P := by rw [← hcomm]
      _ = (A * A) * (P * P) := by simp only [mul_assoc]
      _ = (-1 : C) * (-1 : C) ^ rest.length := by rw [hs, ih]
      _ = (-1 : C) ^ (rest.length + 1) := by
        simp only [pow_succ, neg_one_mul, mul_neg_one]

/-- The sixteen real-spin indices in the ORIGINAL Fin16 order. -/
noncomputable def sourceOrderedSpinBlocks : List RealSpinBlock :=
  (List.finRange 16).map
    (finProdFinEquiv : RealSpinBlock ≃ Fin 16).symm

theorem sourceOrderedSpinBlocks_length :
    sourceOrderedSpinBlocks.length = 16 := by
  simp [sourceOrderedSpinBlocks]

/-- Exact Clifford image of the genuine Spin48 ordered 16-factor
product from S1V9, using no commutative surrogate group. -/
theorem sourceSixteenColorRotor_coe :
    (sourceSixteenColorRotor : C) =
      sourceListCliffordProduct sourceOrderedSpinBlocks := by
  have h := sourceSpinListProduct_coe sourceOrderedSpinBlocks
  simpa only [sourceSixteenColorRotor,
    sourceOrderedSixteenRotors, sourceOrderedSpinBlocks,
    sourceListCliffordProduct, List.map_map, Function.comp_def] using h

/-- Real Spin48 central-sign parity: the sixteen concrete commuting
color-plane rotors have TOTAL SQUARE +1, whereas each factor has
square -1. The global original SU2 lift remains a separate proof. -/
theorem sourceSixteenColorRotor_coe_sq_one :
    (sourceSixteenColorRotor : C) *
      (sourceSixteenColorRotor : C) = 1 := by
  rw [sourceSixteenColorRotor_coe]
  have h := sourceListCliffordProduct_sq sourceOrderedSpinBlocks
  rw [sourceOrderedSpinBlocks_length] at h
  have hparity : (-1 : C) ^ 16 = 1 := by norm_num
  rw [hparity] at h
  exact h

#print axioms sourceSpinListProduct_coe
#print axioms sourceColorPlaneRotor_coe_comm_list
#print axioms sourceListCliffordProduct_sq
#print axioms sourceOrderedSpinBlocks
#print axioms sourceOrderedSpinBlocks_length
#print axioms sourceSixteenColorRotor_coe
#print axioms sourceSixteenColorRotor_coe_sq_one

end
end FCP.BFSSS1V11
