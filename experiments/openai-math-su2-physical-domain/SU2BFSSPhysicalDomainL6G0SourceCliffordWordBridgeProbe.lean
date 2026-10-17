import SU2RealGammaProbe
import OAI.MathematicalPhysics.BFSS.GammaWords

/-!
L6-G0: source-gamma Clifford-word bridge; initial UNCOMPILED candidate.
The actual FCP.BFSSGamma9.gamma is the accepted paired-source gamma,
not an independent replacement. Reuse pinned upstream GammaWords.
-/
namespace FCP.BFSSSU2PhysicalDomainL6G0
noncomputable section
open OAI.BFSSGamma

abbrev originalGamma : OAI.BFSSGamma.Space → OAI.BFSSGamma.Mat :=
  FCP.BFSSGamma9.gamma

theorem originalGamma_clifford (i j : OAI.BFSSGamma.Space) :
    originalGamma i * originalGamma j +
      originalGamma j * originalGamma i =
        (if i = j then 2 else 0) • (1 : OAI.BFSSGamma.Mat) := by
  exact FCP.BFSSGamma9.gamma_clifford i j

theorem originalGamma_symmetric (i : OAI.BFSSGamma.Space) :
    (originalGamma i).transpose = originalGamma i := by
  exact FCP.BFSSGamma9.gamma_symmetric i

theorem originalGamma_word_transpose
    (s : Finset OAI.BFSSGamma.Space) :
    (OAI.BFSSGamma.word originalGamma s).transpose =
      OAI.BFSSGamma.rankSign s.card •
        OAI.BFSSGamma.word originalGamma s := by
  exact OAI.BFSSGamma.word_transpose originalGamma
    originalGamma_clifford originalGamma_symmetric s

theorem originalGamma_trace_words
    {s t : Finset OAI.BFSSGamma.Space}
    (hs : s.card ≤ 4) (ht : t.card ≤ 4) :
    Matrix.trace
      (OAI.BFSSGamma.reverseWord originalGamma s *
        OAI.BFSSGamma.word originalGamma t) =
      if s = t then 16 else 0 := by
  exact OAI.BFSSGamma.trace_reverseWord_word originalGamma
    originalGamma_clifford hs ht

theorem originalGamma_words_span :
    Submodule.span ℝ
      (Set.range (fun a : OAI.BFSSGamma.ShortIndex =>
        OAI.BFSSGamma.word originalGamma
          (OAI.BFSSGamma.shortSet a))) = ⊤ := by
  exact OAI.BFSSGamma.words_span originalGamma originalGamma_clifford

theorem originalGamma_sandwich_word
    (s : Finset OAI.BFSSGamma.Space) :
    (∑ i : OAI.BFSSGamma.Space,
      originalGamma i * OAI.BFSSGamma.word originalGamma s *
        originalGamma i) =
      ((-1 : ℝ) ^ s.card * (9 - 2 * (s.card : ℝ))) •
        OAI.BFSSGamma.word originalGamma s := by
  exact OAI.BFSSGamma.sum_word_conj originalGamma
    originalGamma_clifford s

theorem originalGamma_matrix_eq_of_word_traces
    {A B : OAI.BFSSGamma.Mat}
    (h : ∀ a : OAI.BFSSGamma.ShortIndex,
      Matrix.trace
        (OAI.BFSSGamma.word originalGamma
          (OAI.BFSSGamma.shortSet a) * A) =
      Matrix.trace
        (OAI.BFSSGamma.word originalGamma
          (OAI.BFSSGamma.shortSet a) * B)) :
    A = B := by
  exact OAI.BFSSGamma.matrix_eq_of_trace_words originalGamma
    originalGamma_clifford h

#print axioms originalGamma_clifford
#print axioms originalGamma_symmetric
#print axioms originalGamma_word_transpose
#print axioms originalGamma_trace_words
#print axioms originalGamma_words_span
#print axioms originalGamma_sandwich_word
#print axioms originalGamma_matrix_eq_of_word_traces

end
end FCP.BFSSSU2PhysicalDomainL6G0
