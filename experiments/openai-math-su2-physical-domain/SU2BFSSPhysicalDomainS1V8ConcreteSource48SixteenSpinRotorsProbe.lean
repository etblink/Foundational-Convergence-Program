import SU2BFSSPhysicalDomainS1V4TwoDisjointSpinRotorsCommuteProbe
import SU2BFSSPhysicalDomainS1V6ConcreteSource48ColorAxisOrthogonalityProbe

/-!
S1V8: Actual coordinate Spin48 rotors for EACH of sixteen concrete
three-color Majorana blocks. Uses the literal Fin 24 × Fin 2 source
labels and the Q = unit-weight sum of squares. No abstract lift is
postulated. Concrete within-block Q-orthogonality and every
cross-block hypothesis are discharged using qualified S1V6.

This is a source-sized algebraic Spin48 block construction, NOT the
continuous original normalized-Pauli SU2 → Spin48 homomorphism.
Original G1A pairedLabelEquiv equality remains separate S1V7 candidate.
-/

set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSS1V8
noncomputable section

open FCP.BFSSS1V0
open FCP.BFSSS1V1
open FCP.BFSSS1V4
open FCP.BFSSS1V5
open FCP.BFSSS1V6

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- Two distinct colors at the SAME concrete spin block give
genuinely Q-orthogonal Majorana generators, without an axiom. -/
theorem sourceColorAxis_ortho_zero_one (α : RealSpinBlock) :
    Q.IsOrtho
      (sourceBlockColorAxis α (0 : Fin 3))
      (sourceBlockColorAxis α (1 : Fin 3)) := by
  exact sourceBlockColorAxis_ortho
    (α, (0 : Fin 3)) (α, (1 : Fin 3)) (by simp)

/-- The actual Mathlib Spin48 element made by the two color-0 and
color-1 Clifford unit generators at one original-sized spin block. -/
noncomputable def sourceColorPlaneRotor (α : RealSpinBlock) : spinGroup Q :=
  sourceSpinPair
    (sourceBlockColorAxis α (0 : Fin 3))
    (sourceBlockColorAxis α (1 : Fin 3))
    (sourceBlockColorAxis_unit α (0 : Fin 3))
    (sourceBlockColorAxis_unit α (1 : Fin 3))

/-- Explicit genuine Spin rotor reverses its block's first selected
color generator. -/
theorem sourceColorPlaneRotor_conjugates_zero (α : RealSpinBlock) :
    (sourceColorPlaneRotor α : C) *
      CliffordAlgebra.ι Q (sourceBlockColorAxis α (0 : Fin 3)) *
      star (sourceColorPlaneRotor α : C) =
        -CliffordAlgebra.ι Q (sourceBlockColorAxis α (0 : Fin 3)) := by
  unfold sourceColorPlaneRotor
  exact sourceSpinPair_conjugates_first
    (sourceBlockColorAxis α (0 : Fin 3))
    (sourceBlockColorAxis α (1 : Fin 3))
    (sourceBlockColorAxis_unit α (0 : Fin 3))
    (sourceBlockColorAxis_unit α (1 : Fin 3))
    (sourceColorAxis_ortho_zero_one α)

/-- Explicit rotor reverses the second selected color generator. -/
theorem sourceColorPlaneRotor_conjugates_one (α : RealSpinBlock) :
    (sourceColorPlaneRotor α : C) *
      CliffordAlgebra.ι Q (sourceBlockColorAxis α (1 : Fin 3)) *
      star (sourceColorPlaneRotor α : C) =
        -CliffordAlgebra.ι Q (sourceBlockColorAxis α (1 : Fin 3)) := by
  unfold sourceColorPlaneRotor
  exact sourceSpinPair_conjugates_second
    (sourceBlockColorAxis α (0 : Fin 3))
    (sourceBlockColorAxis α (1 : Fin 3))
    (sourceBlockColorAxis_unit α (0 : Fin 3))
    (sourceBlockColorAxis_unit α (1 : Fin 3))
    (sourceColorAxis_ortho_zero_one α)

/-- The third color is fixed by that same block's actual rotor. -/
theorem sourceColorPlaneRotor_conjugates_two (α : RealSpinBlock) :
    (sourceColorPlaneRotor α : C) *
      CliffordAlgebra.ι Q (sourceBlockColorAxis α (2 : Fin 3)) *
      star (sourceColorPlaneRotor α : C) =
        CliffordAlgebra.ι Q (sourceBlockColorAxis α (2 : Fin 3)) := by
  unfold sourceColorPlaneRotor
  exact sourceSpinPair_conjugates_perpendicular
    (sourceBlockColorAxis α (0 : Fin 3))
    (sourceBlockColorAxis α (1 : Fin 3))
    (sourceBlockColorAxis α (2 : Fin 3))
    (sourceBlockColorAxis_unit α (0 : Fin 3))
    (sourceBlockColorAxis_unit α (1 : Fin 3))
    (sourceBlockColorAxis_ortho (α, (0 : Fin 3)) (α, (2 : Fin 3)) (by simp))
    (sourceBlockColorAxis_ortho (α, (1 : Fin 3)) (α, (2 : Fin 3)) (by simp))

/-- Different ACTUAL concrete spin blocks give four proven
cross-orthogonality facts; hence their real Spin48 rotors commute. -/
theorem sourceColorPlaneRotor_comm_of_ne
    (α β : RealSpinBlock) (hab : α ≠ β) :
    sourceColorPlaneRotor α * sourceColorPlaneRotor β =
      sourceColorPlaneRotor β * sourceColorPlaneRotor α := by
  have hcross (i j : Fin 3) :
      Q.IsOrtho (sourceBlockColorAxis α i) (sourceBlockColorAxis β j) := by
    apply sourceBlockColorAxis_ortho (α, i) (β, j)
    intro h
    exact hab (congrArg Prod.fst h)
  unfold sourceColorPlaneRotor
  exact sourceSpinPair_comm_of_cross_ortho
    (sourceBlockColorAxis α (0 : Fin 3))
    (sourceBlockColorAxis α (1 : Fin 3))
    (sourceBlockColorAxis β (0 : Fin 3))
    (sourceBlockColorAxis β (1 : Fin 3))
    (sourceBlockColorAxis_unit α (0 : Fin 3))
    (sourceBlockColorAxis_unit α (1 : Fin 3))
    (sourceBlockColorAxis_unit β (0 : Fin 3))
    (sourceBlockColorAxis_unit β (1 : Fin 3))
    (hcross 0 0) (hcross 0 1) (hcross 1 0) (hcross 1 1)

#print axioms sourceColorAxis_ortho_zero_one
#print axioms sourceColorPlaneRotor
#print axioms sourceColorPlaneRotor_conjugates_zero
#print axioms sourceColorPlaneRotor_conjugates_one
#print axioms sourceColorPlaneRotor_conjugates_two
#print axioms sourceColorPlaneRotor_comm_of_ne

end
end FCP.BFSSS1V8
