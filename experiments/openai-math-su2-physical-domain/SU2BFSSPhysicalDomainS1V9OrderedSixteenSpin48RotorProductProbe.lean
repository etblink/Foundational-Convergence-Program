import SU2BFSSPhysicalDomainS1V8ConcreteSource48SixteenSpinRotorsProbe

/-!
S1V9 — single concrete 16-block Spin48 element and its block centralizer.

The original source spin labels use (Fin 8 × Fin 2) ≃ Fin 16,
and accepted S1V8 constructs an actual Mathlib spinGroup Q element
for each of those 16 source-sized, mutually orthogonal color planes.
This candidate uses a DETERMINISTIC LIST PRODUCT (not Finset.prod,
which would require a commutative Spin group!) in the exact source
Fin16 order. It proves each factor commutes with the entire product.

No continuous SU2→Spin48 map, abstract spin covering, Pauli source
normalization, center-parity calculation, or manuscript Hilbert
representation is asserted. Strict qualification remains pending.
-/
set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSS1V9
noncomputable section

open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSS1V8

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic

/-- Every pair of ACTUAL block Spin48 elements commutes, including
the identical-block case; the nonidentical case is S1V8. -/
theorem sourceColorPlaneRotor_comm_all (α β : RealSpinBlock) :
    sourceColorPlaneRotor α * sourceColorPlaneRotor β =
      sourceColorPlaneRotor β * sourceColorPlaneRotor α := by
  by_cases h : α = β
  · subst β
    rfl
  · exact sourceColorPlaneRotor_comm_of_ne α β h

/-- The original paired-spin order Fin16 uses exactly the pinned
finProdFinEquiv on (Fin8 × Fin2) as does the original G1A source. -/
noncomputable def sourceOrderedSixteenRotors : List (spinGroup Q) :=
  (List.finRange 16).map
    (fun α : Fin 16 =>
      sourceColorPlaneRotor
        ((finProdFinEquiv : RealSpinBlock ≃ Fin 16).symm α))

theorem sourceOrderedSixteenRotors_length :
    sourceOrderedSixteenRotors.length = 16 := by
  simp [sourceOrderedSixteenRotors]

/-- A well-typed concrete Spin48 product of precisely 16 source
block rotor elements in canonical original spin-label order. -/
noncomputable def sourceSixteenColorRotor : spinGroup Q :=
  sourceOrderedSixteenRotors.prod

/-- The concrete rotor for any source spin block commutes with a
product of arbitrary concrete block rotors, with no commuting-group
assumption inserted. -/
theorem sourceColorPlaneRotor_comm_list
    (α : RealSpinBlock) (xs : List RealSpinBlock) :
    sourceColorPlaneRotor α * (xs.map sourceColorPlaneRotor).prod =
      (xs.map sourceColorPlaneRotor).prod * sourceColorPlaneRotor α := by
  induction xs with
  | nil => simp
  | cons β rest ih =>
    simp only [List.map_cons, List.prod_cons]
    calc
      sourceColorPlaneRotor α *
          (sourceColorPlaneRotor β *
            (rest.map sourceColorPlaneRotor).prod) =
        (sourceColorPlaneRotor α * sourceColorPlaneRotor β) *
          (rest.map sourceColorPlaneRotor).prod := by simp only [mul_assoc]
      _ = (sourceColorPlaneRotor β * sourceColorPlaneRotor α) *
          (rest.map sourceColorPlaneRotor).prod := by
            rw [sourceColorPlaneRotor_comm_all α β]
      _ = sourceColorPlaneRotor β *
          (sourceColorPlaneRotor α *
            (rest.map sourceColorPlaneRotor).prod) := by simp only [mul_assoc]
      _ = sourceColorPlaneRotor β *
          ((rest.map sourceColorPlaneRotor).prod *
            sourceColorPlaneRotor α) := by rw [ih]
      _ = (sourceColorPlaneRotor β *
          (rest.map sourceColorPlaneRotor).prod) *
            sourceColorPlaneRotor α := by simp only [mul_assoc]

/-- The literal source 16-block Spin48 product centralizes every
one of its block factors (in Spin48, not a commutative surrogate). -/
theorem sourceSixteenColorRotor_comm_block
    (α : RealSpinBlock) :
    sourceColorPlaneRotor α * sourceSixteenColorRotor =
      sourceSixteenColorRotor * sourceColorPlaneRotor α := by
  unfold sourceSixteenColorRotor sourceOrderedSixteenRotors
  simpa only [List.map_map, Function.comp_def] using
    (sourceColorPlaneRotor_comm_list α
      ((List.finRange 16).map
        (finProdFinEquiv : RealSpinBlock ≃ Fin 16).symm))

#print axioms sourceColorPlaneRotor_comm_all
#print axioms sourceOrderedSixteenRotors
#print axioms sourceOrderedSixteenRotors_length
#print axioms sourceSixteenColorRotor
#print axioms sourceColorPlaneRotor_comm_list
#print axioms sourceSixteenColorRotor_comm_block

end
end FCP.BFSSS1V9
