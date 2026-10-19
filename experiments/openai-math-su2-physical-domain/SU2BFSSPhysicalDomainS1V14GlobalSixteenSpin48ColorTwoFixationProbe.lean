import SU2BFSSPhysicalDomainS1V11SixteenSourceSpin48CenterParityProbe

/-!
S1V14 — the ACTUAL ordered sixteen-block source Spin48 rotor fixes
every one of the sixteen independent color-2 Majorana generators,
not just the color-2 generator in an isolated single plane.

Proof uses only already qualified S1V6 real Q-orthogonality,
S1V8 per-block Clifford conjugation, and the S1V11 actual ordered
Spin48 product, without an assumed SU2 lift, Fock equivalence,
global original-namespace bridge, or commutative Spin-group axiom.

New theorem is candidate until strict pinned Lean+axiom qualification.
-/

set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSS1V14
noncomputable section

open FCP.BFSSS1V0
open FCP.BFSSS1V1
open FCP.BFSSS1V5
open FCP.BFSSS1V6
open FCP.BFSSS1V8
open FCP.BFSSS1V9
open FCP.BFSSS1V11

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- An actual source plane rotor fixes EVERY concrete Majorana color
generator belonging to a DIFFERENT one of the sixteen spin blocks. -/
theorem sourceColorPlaneRotor_conjugates_other_block
    (α β : RealSpinBlock) (h : α ≠ β) (A : Fin 3) :
    (sourceColorPlaneRotor α : C) *
        CliffordAlgebra.ι Q (sourceBlockColorAxis β A) *
        star (sourceColorPlaneRotor α : C) =
      CliffordAlgebra.ι Q (sourceBlockColorAxis β A) := by
  have hac : Q.IsOrtho (sourceBlockColorAxis α (0 : Fin 3))
      (sourceBlockColorAxis β A) := by
    apply sourceBlockColorAxis_ortho (α, (0 : Fin 3)) (β, A)
    intro heq
    exact h (congrArg Prod.fst heq)
  have hbc : Q.IsOrtho (sourceBlockColorAxis α (1 : Fin 3))
      (sourceBlockColorAxis β A) := by
    apply sourceBlockColorAxis_ortho (α, (1 : Fin 3)) (β, A)
    intro heq
    exact h (congrArg Prod.fst heq)
  unfold sourceColorPlaneRotor
  exact sourceSpinPair_conjugates_perpendicular
    (sourceBlockColorAxis α (0 : Fin 3))
    (sourceBlockColorAxis α (1 : Fin 3))
    (sourceBlockColorAxis β A)
    (sourceBlockColorAxis_unit α (0 : Fin 3))
    (sourceBlockColorAxis_unit α (1 : Fin 3))
    hac hbc

/-- Every block factor, including the one sharing the same spin index,
fixes the color-2 Clifford generator at any chosen source block. -/
theorem sourceColorPlaneRotor_conjugates_any_color_two
    (α β : RealSpinBlock) :
    (sourceColorPlaneRotor α : C) *
        CliffordAlgebra.ι Q (sourceBlockColorAxis β (2 : Fin 3)) *
        star (sourceColorPlaneRotor α : C) =
      CliffordAlgebra.ι Q (sourceBlockColorAxis β (2 : Fin 3)) := by
  by_cases h : α = β
  · subst β
    exact sourceColorPlaneRotor_conjugates_two α
  · exact sourceColorPlaneRotor_conjugates_other_block α β h 2

/-- A noncommutative ordered product of ANY actual source block
rotors fixes each color-2 generator. The proof explicitly handles
the star reversal and parenthesization of the ordered product. -/
theorem sourceListCliffordProduct_conjugates_color_two
    (xs : List RealSpinBlock) (β : RealSpinBlock) :
    sourceListCliffordProduct xs *
        CliffordAlgebra.ι Q (sourceBlockColorAxis β (2 : Fin 3)) *
        star (sourceListCliffordProduct xs) =
      CliffordAlgebra.ι Q (sourceBlockColorAxis β (2 : Fin 3)) := by
  induction xs with
  | nil =>
      simp [sourceListCliffordProduct]
  | cons α rest ih =>
      have hfirst :=
        sourceColorPlaneRotor_conjugates_any_color_two α β
      change ((sourceColorPlaneRotor α : C) *
          sourceListCliffordProduct rest) *
          CliffordAlgebra.ι Q (sourceBlockColorAxis β (2 : Fin 3)) *
          star ((sourceColorPlaneRotor α : C) *
            sourceListCliffordProduct rest) = _
      calc
        ((sourceColorPlaneRotor α : C) *
            sourceListCliffordProduct rest) *
            CliffordAlgebra.ι Q (sourceBlockColorAxis β (2 : Fin 3)) *
            star ((sourceColorPlaneRotor α : C) *
              sourceListCliffordProduct rest) =
          (sourceColorPlaneRotor α : C) *
            (sourceListCliffordProduct rest *
              CliffordAlgebra.ι Q (sourceBlockColorAxis β (2 : Fin 3)) *
              star (sourceListCliffordProduct rest)) *
            star (sourceColorPlaneRotor α : C) := by
              simp only [star_mul, mul_assoc]
        _ = (sourceColorPlaneRotor α : C) *
            CliffordAlgebra.ι Q (sourceBlockColorAxis β (2 : Fin 3)) *
            star (sourceColorPlaneRotor α : C) := by rw [ih]
        _ = CliffordAlgebra.ι Q
            (sourceBlockColorAxis β (2 : Fin 3)) := hfirst

/-- The ACTUAL sixteen-block ordered Spin48 element fixes all
sixteen source real-Majorana color-2 Clifford generators. -/
theorem sourceSixteenColorRotor_conjugates_color_two
    (β : RealSpinBlock) :
    (sourceSixteenColorRotor : C) *
        CliffordAlgebra.ι Q (sourceBlockColorAxis β (2 : Fin 3)) *
        star (sourceSixteenColorRotor : C) =
      CliffordAlgebra.ι Q (sourceBlockColorAxis β (2 : Fin 3)) := by
  rw [sourceSixteenColorRotor_coe]
  exact sourceListCliffordProduct_conjugates_color_two
    sourceOrderedSpinBlocks β

#print axioms sourceColorPlaneRotor_conjugates_other_block
#print axioms sourceColorPlaneRotor_conjugates_any_color_two
#print axioms sourceListCliffordProduct_conjugates_color_two
#print axioms sourceSixteenColorRotor_conjugates_color_two

end
end FCP.BFSSS1V14
