import SU2BFSSPhysicalDomainS1V52L1CIsolatedSource48CoordinateNormProbe

/-!
S1V52-L1D — STAGED UNQUALIFIED exact-original-source specialization.
Only use after L1C has been independently strictly qualified.

A different proof boundary than L1B: first specialize the already
qualified 48-label dot-product computation to the source block axes
inside Matrix.dotProduct, with no source48Quadratic in that step.
Only AFTER the dot result, use the accepted S1V6 interface
`source48Quadratic_eq_dot` to transport back to the real original Q.

No `change` to source quadratic, no expensive source-level Pi.single
rewrite inside the quadratic form, no axioms/sorry.
This file is NOT a qualified theorem; no Spin membership implied.
-/
set_option autoImplicit false
set_option maxHeartbeats 450000

namespace FCP.BFSSS1V52L1D
noncomputable section
open Matrix
open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSS1V6
open FCP.BFSSS1V52L1C

/-- Genuine original color labels for the two Z-plane coordinates
are distinct by the accepted source 16×3 index equivalence. -/
theorem sourceZPlane_labels_ne (α : RealSpinBlock) :
    sourceBlockColorLabel α 0 ≠ sourceBlockColorLabel α 1 := by
  intro he
  have heq : (α, (0 : ColorLabel)) = (α, (1 : ColorLabel)) :=
    sourceBlockColorLabel_injective he
  have hc : (0 : ColorLabel) = 1 := congrArg Prod.snd heq
  exact (by decide : (0 : ColorLabel) ≠ 1) hc

/-- Source-exact Z-plane dot norm by specialization in the dot
interface ONLY; the original quadratic form is never elaborated. -/
theorem sourceZPlane_dot_unit
    (α : RealSpinBlock) (c s : ℝ)
    (hcs : c*c+s*s=1) :
    dotProduct
      (c • sourceBlockColorAxis α 0 - s • sourceBlockColorAxis α 1)
      (c • sourceBlockColorAxis α 0 - s • sourceBlockColorAxis α 1) = 1 := by
  have hdot :
      dotProduct
        (c • (Pi.single (sourceBlockColorLabel α 0) (1 : ℝ) : Source48Vector) -
         s • (Pi.single (sourceBlockColorLabel α 1) (1 : ℝ) : Source48Vector))
        (c • (Pi.single (sourceBlockColorLabel α 0) (1 : ℝ) : Source48Vector) -
         s • (Pi.single (sourceBlockColorLabel α 1) (1 : ℝ) : Source48Vector)) = 1 :=
      (source48Dot_two_coordinate_norm
        (sourceBlockColorLabel α 0)
        (sourceBlockColorLabel α 1)
        (sourceZPlane_labels_ne α) c s).trans hcs
  simpa only [sourceBlockColorAxis] using hdot

/-- Concrete original 48-Majorana Z-plane vector Q-norm, obtained
strictly by transporting the dot theorem through the already
accepted original S1V6 quadratic-to-dot equality. -/
theorem sourceZPlane_firstVector_unit
    (α : RealSpinBlock) (c s : ℝ)
    (hcs : c*c+s*s=1) :
    source48Quadratic
      (c • sourceBlockColorAxis α 0 - s • sourceBlockColorAxis α 1) = 1 := by
  rw [source48Quadratic_eq_dot]
  exact sourceZPlane_dot_unit α c s hcs

#print axioms sourceZPlane_labels_ne
#print axioms sourceZPlane_dot_unit
#print axioms sourceZPlane_firstVector_unit
end
end FCP.BFSSS1V52L1D
