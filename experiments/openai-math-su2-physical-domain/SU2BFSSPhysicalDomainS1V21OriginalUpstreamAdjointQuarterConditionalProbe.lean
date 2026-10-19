import SU2ColorCrossProbe
import SU2BFSSPhysicalDomainS1V12SourceLiteralPauliQuarterSpinSignProbe
import OAI.MathematicalPhysics.BFSS.GaugeCore

/-!
S1V21 — qualified-original-API interface candidate for a CHEAP,
bounded direct +i SU2 quarter-color coefficient theorem.

This uses:
- the ACTUAL original OAI.BFSSQuantum.AlgebraData.adjointCoefficient
  definition from pinned etblink/math/OAI/GaugeCore, NOT a surrogate;
- the ACTUAL FCP.BFSSSU2.normalizedPauli basis used definitionally
  by original G1A pairedAlgebraData, NOT a newly chosen 3-color basis;
- the already kernel-qualified S1V12 exact positive-i z-quarter
  conjugation of the literal Pauli matrices.

Crucially, the genuine OAI algebra color equality remains a VISIBLE
premise hcolor, and the source SU2 group-element matrix equality
remains a VISIBLE premise hg. In the original imported S1G/G1A bridge,
those premises are separately discharged by pairedAlgebraData_color,
concreteAlgebraData_color and source_quarter_z_matrix.

This is a REAL upstream API coefficient statement, but conditional:
it does NOT on its own construct the original paired Fock AlgebraData,
prove sourceZ(sourceQuarterTurnTime) has this value, or prove a
global SU2→Spin48 group law.

STATUS: RESEARCH CANDIDATE, NOT Lean compiled or axiom-qualified.
-/

set_option autoImplicit false
set_option maxHeartbeats 300000

namespace FCP.BFSSS1V21
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSS1V12

/-- The same exact normalizing scalar and same original standard Pauli
matrices, compared as actual typed Lean terms. -/
theorem original_normalizedPauli_eq_source_literal
    (A : Fin 3) :
    FCP.BFSSSU2.normalizedPauli A =
      sourceNormalizedPauliLiteral A := by
  fin_cases A <;> rfl

/-- The ORIGINAL FCP Pauli color basis transforms with the exact
+ i z-quarter adjoint signs, in the original ordered 0,1,2 colors. -/
theorem original_normalizedPauli_zquarter_sign
    (A : Fin 3) :
    sourceQuarterZLiteral *
      FCP.BFSSSU2.normalizedPauli A *
      sourceQuarterZLiteral.conjTranspose =
        (if A = (2 : Fin 3)
          then FCP.BFSSSU2.normalizedPauli A
          else -FCP.BFSSSU2.normalizedPauli A) := by
  rw [original_normalizedPauli_eq_source_literal]
  simpa only [original_normalizedPauli_eq_source_literal] using
    sourceQuarterZLiteral_conjugates_normalized A

/-- Evaluate the *actual upstream OAI AlgebraData.adjointCoefficient*
for a source-color basis identified with ORIGINAL FCP normalizedPauli
and an ACTUAL typed SU2 element with the exact +i quarter matrix.

Both assumptions must be independently discharged by ORIGINAL G1A
and original S1G. This theorem never assumes an arbitrary color
action equals the correct matrix for free. -/
theorem original_upstream_adjointCoefficient_of_pinned_quarter
    (M : AlgebraData 2)
    (hcolor : ∀ A : ColorIndex 2,
      M.color A = FCP.BFSSSU2.normalizedPauli A)
    (g : GaugeGroup 2)
    (hg : (g : ColorMatrix 2) = sourceQuarterZLiteral)
    (A B : ColorIndex 2) :
    M.adjointCoefficient g A B =
      if B = A then
        (if A = (2 : Fin 3) then (1 : ℝ) else -1)
      else 0 := by
  change (Matrix.trace (M.color B *
      ((g : ColorMatrix 2) * M.color A *
        (g : ColorMatrix 2).conjTranspose))).re = _
  rw [hg, hcolor A, hcolor B,
    original_normalizedPauli_zquarter_sign A]
  have hpair (C D : Fin 3) :
      (Matrix.trace (FCP.BFSSSU2.normalizedPauli C *
        FCP.BFSSSU2.normalizedPauli D)).re =
        if C = D then (1 : ℝ) else 0 := by
    rw [FCP.BFSSSU2.normalizedPauli_trace_pair]
    split_ifs <;> norm_num
  by_cases hA : A = (2 : Fin 3)
  · rw [if_pos hA, hpair]
    simp [hA]
  · rw [if_neg hA, Matrix.mul_neg, Matrix.trace_neg,
      Complex.neg_re, hpair]
    by_cases hBA : B = A
    · simp [hA, hBA]
    · simp [hA, hBA]

#print axioms original_normalizedPauli_eq_source_literal
#print axioms original_normalizedPauli_zquarter_sign
#print axioms original_upstream_adjointCoefficient_of_pinned_quarter

end
end FCP.BFSSS1V21
