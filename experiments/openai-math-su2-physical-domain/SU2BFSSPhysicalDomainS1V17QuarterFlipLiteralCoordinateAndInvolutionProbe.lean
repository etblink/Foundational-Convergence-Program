import SU2BFSSPhysicalDomainS1V16GlobalSpin48AllRealSourceVectorActionProbe

/-!
S1V17 — candidate exact coordinatewise identification of the REAL
source-sized z-quarter-turn map constructed in S1V16.

This file aims to prove the source48QuarterFlip is precisely the
diagonal color (-,-,+) orthogonal real map at ALL source positions,
not merely a definition by an unexamined basis sum. In particular
the map should be involutive and preserve the source quadratic form
Q. Those statements have NO additional SU2 or Clifford assumptions.

Important: UNQUALIFIED until strict S1V16 and S1V17 Lean checks.
The original-named SU2 sourceRealMajoranaMatrix import remains OPEN.
-/
set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSS1V17
noncomputable section

open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSS1V6
open FCP.BFSSS1V16

/-- The linear-size real-vector flip has EXACTLY the announced sign
at every color-spin coordinate label. -/
theorem source48QuarterFlip_apply_label
    (v : Source48Vector) (α : RealSpinBlock) (A : ColorLabel) :
    source48QuarterFlip v (sourceBlockColorLabel α A) =
      if A = (2 : Fin 3)
        then v (sourceBlockColorLabel α A)
        else -v (sourceBlockColorLabel α A) := by
  classical
  change (∑ p : RealSpinBlock × ColorLabel,
    (v (sourceBlockColorLabel p.1 p.2)) •
      (if p.2 = (2 : Fin 3)
        then sourceBlockColorAxis p.1 p.2
        else -sourceBlockColorAxis p.1 p.2)) (sourceBlockColorLabel α A) = _
  simp only [Finset.sum_apply, Pi.smul_apply]
  have hzero (p : RealSpinBlock × ColorLabel) (hp : p ≠ (α, A)) :
      (v (sourceBlockColorLabel p.1 p.2)) •
        (if p.2 = (2 : Fin 3)
          then sourceBlockColorAxis p.1 p.2
          else -sourceBlockColorAxis p.1 p.2)
          (sourceBlockColorLabel α A) = 0 := by
    have hz := sourceBlockColorAxis_other p (α, A) hp
    by_cases h : p.2 = (2 : Fin 3)
    · simp [h, hz]
    · simp [h, hz]
  calc
    (∑ p : RealSpinBlock × ColorLabel,
      (v (sourceBlockColorLabel p.1 p.2)) •
        (if p.2 = (2 : Fin 3)
          then sourceBlockColorAxis p.1 p.2
          else -sourceBlockColorAxis p.1 p.2)
          (sourceBlockColorLabel α A)) =
        (v (sourceBlockColorLabel α A)) •
          (if A = (2 : Fin 3)
            then sourceBlockColorAxis α A
            else -sourceBlockColorAxis α A)
            (sourceBlockColorLabel α A) := by
      apply Finset.sum_eq_single (α, A)
      · intro p hp hne
        exact hzero p hne
      · intro hn
        exact False.elim (hn (Finset.mem_univ _))
    _ = (if A = (2 : Fin 3)
        then v (sourceBlockColorLabel α A)
        else -v (sourceBlockColorLabel α A)) := by
      by_cases h : A = (2 : Fin 3)
      · simp [h, sourceBlockColorAxis_self]
      · simp [h, sourceBlockColorAxis_self]

/-- The same exact source (-,-,+) real-coordinate formula without
any block index decomposition hypothesis. -/
theorem source48QuarterFlip_apply
    (v : Source48Vector) (i : SourceLabel) :
    source48QuarterFlip v i =
      if (sourceBlockColorEquiv.symm i).2 = (2 : Fin 3)
        then v i else -v i := by
  simpa only [sourceBlockColorLabel, Equiv.apply_symm_apply] using
    (source48QuarterFlip_apply_label v
      (sourceBlockColorEquiv.symm i).1
      (sourceBlockColorEquiv.symm i).2)

/-- The EXACT real-vector half-turn is involutive on all 48-source
vectors, not merely on basis elements. -/
theorem source48QuarterFlip_involution (v : Source48Vector) :
    source48QuarterFlip (source48QuarterFlip v) = v := by
  ext i
  simp only [source48QuarterFlip_apply]
  split_ifs <;> simp

#print axioms source48QuarterFlip_apply_label
#print axioms source48QuarterFlip_apply
#print axioms source48QuarterFlip_involution

end
end FCP.BFSSS1V17
