import SU2BFSSPhysicalDomainS1V14GlobalSixteenSpin48ColorTwoFixationProbe

/-!
S1V15 — CANDIDATE exact global source Spin48 z-quarter-turn action
on ALL 48 Majorana color axes, beyond accepted local S1V8.

The S1V11 product uses the literal original Fin16 spin-pair order.
This file attempts to prove that every one of its 16 spin blocks occurs
exactly once and uses a noncommutative ordered-list Clifford conjugation
induction to transport local (-,-,+) signs to the WHOLE source product.

Zero new mathematical assumptions; in particular no globally
commutative Spin group. This file has NOT been compiled or qualified.

The still-open ORIGINAL named S1V7/S1V13 import bridge, full
SU2→Spin48 group law/continuity and Fock representation remain
separate obligations even if this gate eventually qualifies.
-/

set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSS1V15
noncomputable section

open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSS1V8
open FCP.BFSSS1V9
open FCP.BFSSS1V11
open FCP.BFSSS1V14

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- Each actual block rotor reverses the chosen color 0 or 1
source Clifford generator in its OWN spin block. -/
theorem sourceColorPlaneRotor_conjugates_selected_same
    (α : RealSpinBlock) (A : Fin 3) (hA : A ≠ 2) :
    (sourceColorPlaneRotor α : C) *
        CliffordAlgebra.ι Q (sourceBlockColorAxis α A) *
        star (sourceColorPlaneRotor α : C) =
      -CliffordAlgebra.ι Q (sourceBlockColorAxis α A) := by
  fin_cases A
  · exact sourceColorPlaneRotor_conjugates_zero α
  · exact sourceColorPlaneRotor_conjugates_one α
  · exact False.elim (hA rfl)

/-- A finite noncommutative product of the concrete block rotors
has the exact selected-color sign determined by membership, PROVIDED
the list has no repeated spin indices. No original-list uniqueness is
assumed in the statement: it is a proof hypothesis. -/
theorem sourceListCliffordProduct_conjugates_selected
    (xs : List RealSpinBlock) (α : RealSpinBlock)
    (A : Fin 3) (hA : A ≠ 2) (hnd : xs.Nodup) :
    sourceListCliffordProduct xs *
        CliffordAlgebra.ι Q (sourceBlockColorAxis α A) *
        star (sourceListCliffordProduct xs) =
      if α ∈ xs then
        -CliffordAlgebra.ι Q (sourceBlockColorAxis α A)
      else CliffordAlgebra.ι Q (sourceBlockColorAxis α A) := by
  induction xs with
  | nil =>
      simp [sourceListCliffordProduct]
  | cons β rest ih =>
      have hrest : rest.Nodup := (List.nodup_cons.mp hnd).2
      have hβnot : β ∉ rest := (List.nodup_cons.mp hnd).1
      have hinner := ih hrest
      let V : C := CliffordAlgebra.ι Q (sourceBlockColorAxis α A)
      let R : C := sourceColorPlaneRotor β
      let P : C := sourceListCliffordProduct rest
      change (R * P) * V * star (R * P) =
        if α ∈ β :: rest then -V else V
      calc
        (R * P) * V * star (R * P) =
          R * (P * V * star P) * star R := by
            simp only [star_mul, mul_assoc]
        _ = R * (if α ∈ rest then -V else V) * star R := by
          rw [hinner]
        _ = (if α ∈ β :: rest then -V else V) := by
          by_cases hβα : β = α
          · subst β
            have ha : α ∉ rest := hβnot
            have hm : α ∈ α :: rest := by simp
            simp only [if_neg ha, if_pos hm]
            exact sourceColorPlaneRotor_conjugates_selected_same α A hA
          · by_cases hαrest : α ∈ rest
            · have hm : α ∈ β :: rest := by simp [hαrest]
              simp only [if_pos hαrest, if_pos hm, mul_neg, neg_mul]
              exact congrArg Neg
                (sourceColorPlaneRotor_conjugates_other_block β α hβα A)
            · have hm : α ∉ β :: rest := by
                simp [hβα, Ne.symm hβα, hαrest]
              simp only [if_neg hαrest, if_neg hm]
              exact sourceColorPlaneRotor_conjugates_other_block β α hβα A

/-- The concrete 16-block spin-pair listing genuinely contains no
duplicates; no uniqueness condition is added by assumption. -/
theorem sourceOrderedSpinBlocks_nodup :
    sourceOrderedSpinBlocks.Nodup := by
  unfold sourceOrderedSpinBlocks
  exact (List.nodup_finRange 16).map
    (finProdFinEquiv : RealSpinBlock ≃ Fin 16).symm.injective

/-- Every concrete source spin block occurs in the actual full
16-element original-index ordered product. -/
theorem sourceOrderedSpinBlocks_mem (α : RealSpinBlock) :
    α ∈ sourceOrderedSpinBlocks := by
  unfold sourceOrderedSpinBlocks
  apply List.mem_map.mpr
  refine ⟨(finProdFinEquiv : RealSpinBlock ≃ Fin 16) α, ?_, ?_⟩
  · simp
  · exact (finProdFinEquiv : RealSpinBlock ≃ Fin 16).symm_apply_apply α

/-- WHOLE actual ordered source Spin48 sixteen-block product reverses
each concrete color-0/1 real Majorana generator, without counting any
hypothetical extra rotations. -/
theorem sourceSixteenColorRotor_conjugates_selected
    (α : RealSpinBlock) (A : Fin 3) (hA : A ≠ 2) :
    (sourceSixteenColorRotor : C) *
        CliffordAlgebra.ι Q (sourceBlockColorAxis α A) *
        star (sourceSixteenColorRotor : C) =
      -CliffordAlgebra.ι Q (sourceBlockColorAxis α A) := by
  rw [sourceSixteenColorRotor_coe]
  have h := sourceListCliffordProduct_conjugates_selected
    sourceOrderedSpinBlocks α A hA sourceOrderedSpinBlocks_nodup
  simpa only [if_pos (sourceOrderedSpinBlocks_mem α)] using h

/-- The complete exact source-sized Pauli-z quarter sign rule on ALL
three colors and ALL sixteen actual real spin blocks. -/
theorem sourceSixteenColorRotor_conjugates_each_source_axis
    (α : RealSpinBlock) (A : Fin 3) :
    (sourceSixteenColorRotor : C) *
        CliffordAlgebra.ι Q (sourceBlockColorAxis α A) *
        star (sourceSixteenColorRotor : C) =
      (if A = (2 : Fin 3)
        then CliffordAlgebra.ι Q (sourceBlockColorAxis α A)
        else -CliffordAlgebra.ι Q (sourceBlockColorAxis α A)) := by
  by_cases h : A = (2 : Fin 3)
  · subst A
    simpa using sourceSixteenColorRotor_conjugates_color_two α
  · simpa [h] using
      sourceSixteenColorRotor_conjugates_selected α A h

#print axioms sourceColorPlaneRotor_conjugates_selected_same
#print axioms sourceListCliffordProduct_conjugates_selected
#print axioms sourceOrderedSpinBlocks_nodup
#print axioms sourceOrderedSpinBlocks_mem
#print axioms sourceSixteenColorRotor_conjugates_selected
#print axioms sourceSixteenColorRotor_conjugates_each_source_axis

end
end FCP.BFSSS1V15
