import SU2BFSSPhysicalDomainS1V52L1AIsolatedAbstractNormAndOriginalZCliffordFactorProbe

/-!
S1V52-L1B RESEARCH CANDIDATE — independent genuine-source
48-Majorana quadratic norm computed through TWO coordinate selectors,
rather than attempting to instantiate generic quadratic-form theorems
through the large concrete typeclass normalizer. This is deliberately
structurally different from failed L1 Gates #1–#4.

The original 48-source quadratic form is exactly
`source48Quadratic`, already accepted in S1V0; coordinate axes
are the original `sourceBlockColorAxis` from S1V5.
Both source conventions and original +i Clifford signs unchanged.

No declaration accepted until dedicated pinned CI + axiom audit.
-/
set_option autoImplicit false
set_option maxHeartbeats 450000

namespace FCP.BFSSS1V52L1B
noncomputable section

open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSS1V6
open Matrix

/-- Dot-product squared norm of two distinct ORIGINAL 48-label
Pi.single coordinates.  The result is proved purely by finite
coordinate arithmetic, NOT by elaborating source48Quadratic. -/
theorem source48Dot_two_coordinate_norm
    (i j : SourceLabel) (hij : i ≠ j) (c s : ℝ) :
    dotProduct
      (c • (Pi.single i (1 : ℝ) : Source48Vector) -
       s • (Pi.single j (1 : ℝ) : Source48Vector))
      (c • (Pi.single i (1 : ℝ) : Source48Vector) -
       s • (Pi.single j (1 : ℝ) : Source48Vector)) = c*c+s*s := by
  classical
  let v : Source48Vector :=
    c • (Pi.single i (1 : ℝ) : Source48Vector) -
    s • (Pi.single j (1 : ℝ) : Source48Vector)
  have hpoint (k : SourceLabel) :
      v k * v k = if k = i then c*c else if k = j then s*s else 0 := by
    by_cases hki : k = i
    · subst k
      simp [v, Pi.single_apply, hij, hij.symm] <;> ring
    · by_cases hkj : k = j
      · subst k
        simp [v, Pi.single_apply, hki, hki.symm] <;> ring
      · simp [v, Pi.single_apply, hki, hkj, hki.symm, hkj.symm]
  calc
    dotProduct
        (c • (Pi.single i (1 : ℝ) : Source48Vector) -
         s • (Pi.single j (1 : ℝ) : Source48Vector))
        (c • (Pi.single i (1 : ℝ) : Source48Vector) -
         s • (Pi.single j (1 : ℝ) : Source48Vector)) =
        ∑ k : SourceLabel, v k * v k := by
          rfl
    _ = ∑ k : SourceLabel,
          (if k = i then c*c else if k = j then s*s else 0) := by
          apply Finset.sum_congr rfl
          intro k _
          exact hpoint k
    _ = c*c+s*s := by
          simp [Finset.sum_ite, hij, hij.symm]

/-- Bridge the accepted original `source48Quadratic_eq_dot`
interface to the independent two-coordinate calculation.
No `change` of source48Quadratic or 48-dimensional structure. -/
theorem source48Quadratic_two_coordinate_norm
    (i j : SourceLabel) (hij : i ≠ j) (c s : ℝ) :
    source48Quadratic
      (c • (Pi.single i (1 : ℝ) : Source48Vector) -
       s • (Pi.single j (1 : ℝ) : Source48Vector)) = c*c+s*s := by
  calc
    source48Quadratic
        (c • (Pi.single i (1 : ℝ) : Source48Vector) -
         s • (Pi.single j (1 : ℝ) : Source48Vector)) =
      dotProduct
        (c • (Pi.single i (1 : ℝ) : Source48Vector) -
         s • (Pi.single j (1 : ℝ) : Source48Vector))
        (c • (Pi.single i (1 : ℝ) : Source48Vector) -
         s • (Pi.single j (1 : ℝ) : Source48Vector)) :=
      source48Quadratic_eq_dot _
    _ = c*c+s*s := source48Dot_two_coordinate_norm i j hij c s

/-- Specialize the original coordinate norm at two distinct actual
source block/color labels. Use only a named axis definition rewrite:
never unfold the concrete source quadratic or its indexing equivalence. -/
theorem sourceZPlane_firstVector_unit
    (α : RealSpinBlock) (c s : ℝ) (hcs : c*c+s*s=1) :
    source48Quadratic
      (c • sourceBlockColorAxis α 0 -
       s • sourceBlockColorAxis α 1) = 1 := by
  have hij : sourceBlockColorLabel α 0 ≠
      sourceBlockColorLabel α 1 := by
    intro he
    have heq : (α, (0 : ColorLabel)) = (α, (1 : ColorLabel)) :=
      sourceBlockColorLabel_injective he
    have hcolor : (0 : ColorLabel) = 1 := congrArg Prod.snd heq
    exact (by decide : (0 : ColorLabel) ≠ 1) hcolor
  have hcoordinate :
      source48Quadratic
        (c • (Pi.single (sourceBlockColorLabel α 0) (1:ℝ) : Source48Vector) -
         s • (Pi.single (sourceBlockColorLabel α 1) (1:ℝ) : Source48Vector)) = 1 :=
    (source48Quadratic_two_coordinate_norm _ _ hij c s).trans hcs
  simpa only [sourceBlockColorAxis] using hcoordinate

#print axioms source48Dot_two_coordinate_norm
#print axioms source48Quadratic_two_coordinate_norm
#print axioms sourceZPlane_firstVector_unit

end
end FCP.BFSSS1V52L1B
