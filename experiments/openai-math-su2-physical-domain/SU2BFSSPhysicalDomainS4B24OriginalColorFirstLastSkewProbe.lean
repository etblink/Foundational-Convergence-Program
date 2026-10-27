import SU2BFSSPhysicalDomainS4B23OriginalSourceVariationFullGammaContractionProbe

/-!
S4B24: FIRST/LAST color structureConstant antisymmetry in actual
original AlgebraData N. This supplies the signed color reindex needed
to compare the accepted S4B23 scalar contraction with the October 5
manuscript's ordered fermionic B(x) expression. This lemma does not
choose Pauli handedness, exchange theta factors, or assert B(x) equality.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B24
noncomputable section
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData

/-- True source color constants: first/last skew with middle index fixed.
Derive from the original cyclic matrix trace and the source Lie-bracket
trace skew lemma; valid for any original AlgebraData N, without
an orientation-dependent epsilon specialization. -/
theorem originalSourceStructureConstant_first_last_skew
    {N : ℕ} (M : AlgebraData N) (D A C : ColorIndex N) :
    M.structureConstant D A C = -M.structureConstant C A D := by
  unfold AlgebraData.structureConstant
  have ht :
      Matrix.trace (M.color D *
        AlgebraData.bracket (M.color A) (M.color C)) =
        -Matrix.trace (M.color C *
          AlgebraData.bracket (M.color A) (M.color D)) := by
    calc
      _ = Matrix.trace (AlgebraData.bracket (M.color A) (M.color C) *
            M.color D) :=
          Matrix.trace_mul_comm _ _
      _ = _ := AlgebraData.bracket_trace_skew _ _ _
  rw [ht]
  simp only [Complex.neg_re]

#print axioms originalSourceStructureConstant_first_last_skew

end
end FCP.BFSSSU2PhysicalDomainS4B24
