import SU2BFSSPhysicalDomainS1V52L9D7OriginalNativeFockMajorana48MatrixBlockEntryProbe

/-!
S1V52L9D8 — STAGED until a strict source-pinned Lean/axiom gate.
Translate the accepted actual 48-real original Fock Majorana MATRIX
entry formula L9D7 into its action on the SAME original 16×3
source-coordinate Majorana basis as the accepted canonical Spin48
action L9D6.

Use the pinned Mathlib Matrix.mulVec_single_one theorem, avoiding
unnecessary expansion of 48×48 matrix multiplication. Test output
row/input column precisely, and preserve the original Fock
real/imaginary Majorana bit.

One candidate root. No claim about arbitrary vectors or universal
sourceSpin48CoversActualGauge until separately kernel-qualified.
-/

set_option autoImplicit false
set_option maxHeartbeats 400000

namespace FCP.BFSSS1V52L9D8
noncomputable section

open OAI.BFSSQuantum
open Matrix
open FCP.BFSSS1V5
open FCP.BFSSS1V52L9D7
open FCP.BFSSSU2GaugeG3A
open FCP.BFSSSU2PhysicalDomainS1J

/-- Actual original BFSS Fock 48-real Majorana matrix acts on
each source block/color basis axis by its genuine native
adjointColorMatrix column; this is the source-side mulVec theorem,
NOT an invented SO48 surrogate. -/
theorem originalSourceRealMajoranaMatrix_mulVec_sourceAxis
    (g : GaugeGroup 2) (α : RealSpinBlock) (A : Fin 3) :
    (sourceRealMajoranaMatrix g).mulVec (sourceBlockColorAxis α A) =
      ∑ B : Fin 3,
        (adjointColorMatrix g B A) • sourceBlockColorAxis α B := by
  classical
  change (sourceRealMajoranaMatrix g *ᵥ
      Pi.single (sourceBlockColorLabel α A) (1 : ℝ)) =
    ∑ B : Fin 3,
      (adjointColorMatrix g B A) • sourceBlockColorAxis α B
  rw [Matrix.mulVec_single_one]
  funext p
  obtain ⟨⟨β, C⟩, rfl⟩ := sourceBlockColorEquiv.surjective p
  change sourceRealMajoranaMatrix g
      (sourceBlockColorLabel β C) (sourceBlockColorLabel α A) =
    (∑ B : Fin 3, (adjointColorMatrix g B A) •
      sourceBlockColorAxis α B) (sourceBlockColorLabel β C)
  rw [originalSourceRealMajoranaMatrix_sourceBlock_entry]
  have hcoord (B : Fin 3) :
      sourceBlockColorAxis α B (sourceBlockColorLabel β C) =
        if α = β ∧ B = C then (1 : ℝ) else 0 := by
    have hlabel :
        (sourceBlockColorLabel α B = sourceBlockColorLabel β C) ↔
          (α = β ∧ B = C) := by
      constructor
      · intro h
        exact Prod.mk.inj_iff.mp (sourceBlockColorLabel_injective h)
      · rintro ⟨rfl, rfl⟩
        rfl
    simp [sourceBlockColorAxis, Pi.single_apply, hlabel]
  simp only [Finset.sum_apply, Pi.smul_apply]
  simp_rw [hcoord]
  by_cases hab : β = α
  · have hba : α = β := hab.symm
    simp [hab, hba]
  · have hba : α ≠ β := Ne.symm hab
    simp [hab, hba]

#print axioms originalSourceRealMajoranaMatrix_mulVec_sourceAxis

end
end FCP.BFSSS1V52L9D8
