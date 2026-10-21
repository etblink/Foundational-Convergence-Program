import SU2BFSSPhysicalDomainS1V52L9E5AFiniteRealWeightedFockCliffordSquareProbe

/-!
L9E5B — STAGED, UNQUALIFIED original BFSS 48-real Fock square.

The mathematical target is source-exact. It uses the REAL original
Source48Vector = (Fin 24 × Fin 2) → ℝ, the accepted exact original
16×3 ↔ 48 source-Fock label equivalence, and the positive sqrt(2)
normalization of actual pairedTheta on original Fermion 2.

This is NOT an accepted theorem until a later, separately pinned
strict source/axiom gate verifies it, after L9E5A itself qualifies.
-/

set_option autoImplicit false
set_option maxHeartbeats 400000

namespace FCP.BFSSS1V52L9E5B
noncomputable section

open OAI.BFSSQuantum
open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSS1V52L9E2
open FCP.BFSSS1V52L9E3
open FCP.BFSSS1V52L9E4
open FCP.BFSSS1V52L9E5A

private abbrev FockOp := Fermion 2 →L[ℂ] Fermion 2

/-- The exact ORIGINAL real-linear Fock gamma map obeys Q(v) on
ALL source vectors, not merely the 48 axes. This is the required
quadratic property for an eventual universal CliffordAlgebra.lift. -/
theorem originalFockGammaRealLinear_sq
    (v : Source48Vector) :
    originalFockGammaRealLinear v *
      originalFockGammaRealLinear v =
        (source48Quadratic v) • (1 : FockOp) := by
  classical
  let γ (p : SourceLabel) : FockOp :=
    originalNormalizedFockMajorana
      (sourceBlockColorEquiv.symm p).1
      (sourceBlockColorEquiv.symm p).2
  have hdiag (p : SourceLabel) :
      γ p * γ p = (1 : FockOp) :=
    originalNormalizedFockMajorana_sq_one
      (sourceBlockColorEquiv.symm p).1
      (sourceBlockColorEquiv.symm p).2
  have hanti (p q : SourceLabel) (hpq : p ≠ q) :
      γ p * γ q + γ q * γ p = 0 := by
    have hnot :
        ¬ ((sourceBlockColorEquiv.symm p).1 =
              (sourceBlockColorEquiv.symm q).1 ∧
            (sourceBlockColorEquiv.symm p).2 =
              (sourceBlockColorEquiv.symm q).2) := by
      rintro ⟨ha, hb⟩
      exact hpq (sourceBlockColorEquiv.symm.injective (Prod.ext ha hb))
    change originalNormalizedFockMajorana
        (sourceBlockColorEquiv.symm p).1
        (sourceBlockColorEquiv.symm p).2 *
        originalNormalizedFockMajorana
          (sourceBlockColorEquiv.symm q).1
          (sourceBlockColorEquiv.symm q).2 +
      originalNormalizedFockMajorana
          (sourceBlockColorEquiv.symm q).1
          (sourceBlockColorEquiv.symm q).2 *
        originalNormalizedFockMajorana
          (sourceBlockColorEquiv.symm p).1
          (sourceBlockColorEquiv.symm p).2 = 0
    simpa only [if_neg hnot, zero_smul] using
      (originalNormalizedFockMajorana_pairwise_CAR
        (sourceBlockColorEquiv.symm p).1
        (sourceBlockColorEquiv.symm q).1
        (sourceBlockColorEquiv.symm p).2
        (sourceBlockColorEquiv.symm q).2)
  have hfinite :
      (∑ p : SourceLabel, (v p) • γ p) *
        (∑ p : SourceLabel, (v p) • γ p) =
      (∑ p : SourceLabel, v p * v p) • (1 : FockOp) := by
    simpa only [Finset.sum_univ] using
      finiteRealWeightedFockClifford_square
        (Finset.univ : Finset SourceLabel) v γ hdiag hanti
  calc
    originalFockGammaRealLinear v *
        originalFockGammaRealLinear v =
      (∑ p : SourceLabel, (v p) • γ p) *
        (∑ p : SourceLabel, (v p) • γ p) := by
          rfl
    _ = (∑ p : SourceLabel, v p * v p) • (1 : FockOp) := hfinite
    _ = (source48Quadratic v) • (1 : FockOp) := by
          rw [FCP.BFSSS1V6.source48Quadratic_eq_dot]
          rfl

#print axioms originalFockGammaRealLinear_sq

end
end FCP.BFSSS1V52L9E5B
