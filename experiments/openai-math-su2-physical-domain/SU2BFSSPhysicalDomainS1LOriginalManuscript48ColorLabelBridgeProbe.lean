import SU2BFSSPhysicalDomainS1KActualSO48SourceGaugeHomProbe

/-!
S1L — exact entrywise identification of the original source SU(2) color
action on 48 real Majoranas with the manuscript's O(g) ⊗ I16 action.

The source construction labels Majoranas by (Fin 24 × Fin 2), using
eight real/imaginary spin pairs and three colors.  The manuscript
uses (ColorIndex 2 × SpinIndex) with its color-then-spin order.

We transport ONLY the 48×48 REAL matrix along the already qualified
pairedLabelEquiv and prove literal equality to the source-defined
adjointColorMatrix ⊗ I16. No independent paper Clifford representation,
Spin(48) lift, Hilbert-space intertwiner, domain transport, or spectral
claim is constructed or assumed.
-/

set_option autoImplicit false
set_option maxHeartbeats 220000

namespace FCP.BFSSSU2PhysicalDomainS1L
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG3A
open FCP.BFSSSU2GaugeG3B
open FCP.BFSSSU2PhysicalDomainS1J

/-- The manuscript's 48 index ordering expressed via the ORIGINAL
source's already-proved paired 24-mode Majorana labeling. -/
noncomputable def sourceColorSpinMatrix (g : GaugeGroup 2) :
    Matrix (ColorIndex 2 × SpinIndex) (ColorIndex 2 × SpinIndex) ℝ :=
  fun p q =>
    sourceRealMajoranaMatrix g
      (pairedLabelEquiv (p.2, p.1)) (pairedLabelEquiv (q.2, q.1))

/-- Exact action of the original source matrix on two arbitrary
manuscript-ordered Majorana generator labels. -/
theorem sourceRealMajoranaMatrix_paper_entry (g : GaugeGroup 2)
    (A B : ColorIndex 2) (α β : SpinIndex) :
    sourceRealMajoranaMatrix g
      (pairedLabelEquiv (α, A)) (pairedLabelEquiv (β, B)) =
        if α = β then adjointColorMatrix g A B else 0 := by
  classical
  change sourceRealMajoranaMatrix g
    (colorModeEquiv ((spinPairEquiv α).1, A), (spinPairEquiv α).2)
    (colorModeEquiv ((spinPairEquiv β).1, B), (spinPairEquiv β).2) = _
  rw [sourceRealMajoranaMatrix_entry, oneParticleMatrix_block]
  by_cases hab : α = β
  · subst β
    simp
  · have hdiff :
        (spinPairEquiv α).1 ≠ (spinPairEquiv β).1 ∨
        (spinPairEquiv α).2 ≠ (spinPairEquiv β).2 := by
      by_contra hn
      push_neg at hn
      apply hab
      apply spinPairEquiv.injective
      exact Prod.ext hn.1 hn.2
    rcases hdiff with hfirst | hsecond
    · simp [hab, hfirst]
    · simp [hab, hsecond]

/-- Literal equality with the independently written manuscript COLOR
matrix O(g) ⊗ I16, on the actual original 48 source labels.

O(g) here is the exact source-defined adjointColorMatrix, with
output-color row / input-color column convention inherited from G3A.
This is a source-to-manuscript *matrix-formula* bridge, NOT an
independent paper Clifford-module or Spin(48)-lift theorem. -/
theorem sourceColorSpinMatrix_eq_adjoint_kronecker (g : GaugeGroup 2) :
    sourceColorSpinMatrix g =
      Matrix.kronecker (adjointColorMatrix g)
        (1 : Matrix SpinIndex SpinIndex ℝ) := by
  ext ⟨A, α⟩ ⟨B, β⟩
  change sourceRealMajoranaMatrix g
    (pairedLabelEquiv (α, A)) (pairedLabelEquiv (β, B)) =
      Matrix.kronecker (adjointColorMatrix g)
        (1 : Matrix SpinIndex SpinIndex ℝ) (A, α) (B, β)
  rw [sourceRealMajoranaMatrix_paper_entry]
  simp [Matrix.kronecker, Matrix.one_apply, mul_ite, mul_one, mul_zero]

#print axioms sourceColorSpinMatrix
#print axioms sourceRealMajoranaMatrix_paper_entry
#print axioms sourceColorSpinMatrix_eq_adjoint_kronecker

end
end FCP.BFSSSU2PhysicalDomainS1L
