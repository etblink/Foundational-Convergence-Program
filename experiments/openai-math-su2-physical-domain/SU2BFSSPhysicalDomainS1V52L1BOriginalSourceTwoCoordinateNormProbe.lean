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

/-- For two *arbitrary distinct* genuine 48-Majorana coordinates,
the original quadratic form evaluates directly to c²+s². This proof
has no generic QuadraticForm map_add instantiation and does not
unfold the 8x3 source mode equivalence or an original Fock operator. -/
theorem source48Quadratic_two_coordinate_norm
    (i j : SourceLabel) (hij : i ≠ j) (c s : ℝ) :
    source48Quadratic
        (c • (Pi.single i (1 : ℝ)) - s • (Pi.single j (1 : ℝ))) =
      c*c + s*s := by
  rw [source48Quadratic_eq_dot]
  change
      (∑ k : SourceLabel,
        (c • Pi.single i (1:ℝ) - s • Pi.single j (1:ℝ)) k *
        (c • Pi.single i (1:ℝ) - s • Pi.single j (1:ℝ)) k) =
      c*c+s*s
  classical
  calc
    (∑ k : SourceLabel,
       (c • Pi.single i (1:ℝ) - s • Pi.single j (1:ℝ)) k *
       (c • Pi.single i (1:ℝ) - s • Pi.single j (1:ℝ)) k) =
      ∑ k : SourceLabel,
        (if k = i then c*c else if k = j then s*s else 0) := by
          apply Finset.sum_congr rfl
          intro k _
          by_cases hki : k = i
          · subst k
            simp [Pi.single_apply, hij, hij.symm]
            ring
          · by_cases hkj : k = j
            · subst k
              simp [Pi.single_apply, hki, hki.symm]
              ring
            · simp [Pi.single_apply, hki, hkj, hki.symm, hkj.symm]
    _ = c*c+s*s := by
      simp [Finset.sum_ite, hij, hij.symm]

/-- Instantiate the elementary source coordinate result at the two
separate actual original color labels for one native real spin block.
No generic quadratic map unification is attempted. -/
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
  change source48Quadratic
      (c • Pi.single (sourceBlockColorLabel α 0) (1:ℝ) -
       s • Pi.single (sourceBlockColorLabel α 1) (1:ℝ)) = 1
  rw [source48Quadratic_two_coordinate_norm _ _ hij]
  exact hcs

#print axioms source48Quadratic_two_coordinate_norm
#print axioms sourceZPlane_firstVector_unit

end
end FCP.BFSSS1V52L1B
