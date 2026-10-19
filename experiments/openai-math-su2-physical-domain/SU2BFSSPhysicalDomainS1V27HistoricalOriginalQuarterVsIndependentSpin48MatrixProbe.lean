import SU2BFSSPhysicalDomainS1V25HistoricalSourceQuarter48BlockEntryProbe
import SU2BFSSPhysicalDomainS1V18QuarterFlipRealMajoranaDiagonalMatrixProbe

/-!
S1V27 — candidate exact equality of original historical positive-i
L6G6X source SU(2) gauge curve's S1J 48-real action with the REAL
source-sized transformation implemented by the independently
constructed sixteen-block Spin(48) rotor.

Uses exact S1V23 historical group equality and G4K adjoint signs
through newly authored S1V25 original matrix entry theorem. Imports
separate, independently compiled S1V18 source-sized Spin(48) diagonal
quarter action. The original 8×3 Fock/real-majorana index pairing is
explicitly identified, not merely equated by dimension.

S1V25 and S1V26 are separately accepted and cached. In the first
joint S1V27 gate, its three label/coefficient roots compiled, but
both matrix equality roots failed elaboration; these are still
unqualified until a NEW pinned strict CI compiles this file.
This establishes ONE original SU(2) group point's 48-real action, not
a global continuous SU(2)→Spin(48) group lift, independent manuscript
Clifford-module intertwiner, Hamiltonian domain equivalence or mass gap.
-/

set_option autoImplicit false
set_option maxHeartbeats 400000

namespace FCP.BFSSS1V27
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG3A
open FCP.BFSSSU2GaugeG3B
open FCP.BFSSSU2GaugeG4M
open FCP.BFSSSU2PhysicalDomainS1J
open FCP.BFSSS1V5
open FCP.BFSSS1V16
open FCP.BFSSS1V18
open FCP.BFSSS1V25

/-- The standalone original-size source packing IS definitionally
the original 8×3 Fock color mode packing, with the original real
Majorana bit left unchanged. This equality must be compiled with
both namespaces imported, not inferred from matching dimensions. -/
theorem standalone_source_label_eq_original
    (j : Fin 8) (s : Fin 2) (A : Fin 3) :
    sourceBlockColorLabel (j,s) A =
      (colorModeEquiv (j,A),s) := by
  rfl

/-- The 48-real Spin source packing is EXACTLY the original Fock
Majorana pairing, for ALL actual sixteen original SpinIndex labels.
This identifies the ORIGINAL `spinPairEquiv` and `pairedLabelEquiv`
with the standalone 8×2 blocks, not merely equal cardinalities. -/
theorem standalone_source_label_eq_paired_original
    (α : SpinIndex) (A : ColorIndex 2) :
    sourceBlockColorLabel (spinPairEquiv α) A =
      pairedLabelEquiv (α,A) := by
  change (sourceColorModeEquiv ((spinPairEquiv α).1,A),
      (spinPairEquiv α).2) =
    (colorModeEquiv ((spinPairEquiv α).1,A),
      (spinPairEquiv α).2)
  rfl

/-- The source 48-real diagonal quarter matrix's diagonal color
coefficient at the exact original Fock source index. -/
theorem standalone_quarter_coeff_original
    (j : Fin 8) (s : Fin 2) (A : Fin 3) :
    source48QuarterDiagonalCoeff (sourceBlockColorLabel (j,s) A) =
      if A = (2 : Fin 3) then (1 : ℝ) else -1 := by
  unfold source48QuarterDiagonalCoeff sourceBlockColorLabel
  rw [Equiv.symm_apply_apply]

/-- At arbitrary two original color-mode and Majorana indices, the
original sourceZ quarter gauge matrix and the exact standalone
Spin quarter matrix have the SAME entry. This is the original
output B row / input A column direction. -/
theorem historical_source_quarter_48_matrix_block_entry
    (j k : Fin 8) (s t : Fin 2) (B A : Fin 3) :
    sourceRealMajoranaMatrix
      (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
        (2 : Fin 3) originalZQuarterTime)
      (sourceBlockColorLabel (j,s) B)
      (sourceBlockColorLabel (k,t) A) =
    source48QuarterDiagonalMatrix
      (sourceBlockColorLabel (j,s) B)
      (sourceBlockColorLabel (k,t) A) := by
  classical
  have hsource :
      sourceRealMajoranaMatrix
      (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
        (2 : Fin 3) originalZQuarterTime)
        (sourceBlockColorLabel (j,s) B)
        (sourceBlockColorLabel (k,t) A) =
      if s = t then
        (if j = k then
          (if B = A then
            (if A = (2 : Fin 3) then (1 : ℝ) else -1)
          else 0)
        else 0)
      else 0 := by
    rw [standalone_source_label_eq_original,
        standalone_source_label_eq_original]
    exact actualHistoricalQuarter_sourceRealMajoranaMatrix_entry
      j k s t B A
  rw [hsource]
  by_cases hs : s = t
  · subst t
    by_cases hj : j = k
    · subst k
      by_cases hBA : B = A
      · subst A
        simp [source48QuarterDiagonalMatrix, Matrix.diagonal_apply,
          standalone_quarter_coeff_original]
      · have hneq :
          sourceBlockColorLabel (j,s) B ≠
            sourceBlockColorLabel (j,s) A := by
          intro heq
          exact hBA (congrArg Prod.snd
            (sourceBlockColorLabel_injective heq))
        simp [hs, hj, hBA, source48QuarterDiagonalMatrix,
          Matrix.diagonal_apply, hneq]
    · have hneq :
        sourceBlockColorLabel (j,s) B ≠
          sourceBlockColorLabel (k,s) A := by
        intro heq
        have h := sourceBlockColorLabel_injective heq
        exact hj (congrArg Prod.fst (congrArg Prod.fst h))
      simp [hs, hj, source48QuarterDiagonalMatrix,
        Matrix.diagonal_apply, hneq]
  · have hneq :
        sourceBlockColorLabel (j,s) B ≠
          sourceBlockColorLabel (k,t) A := by
      intro heq
      have h := sourceBlockColorLabel_injective heq
      exact hs (congrArg Prod.snd (congrArg Prod.fst h))
    simp [hs, source48QuarterDiagonalMatrix,
      Matrix.diagonal_apply, hneq]

/-- ORIGINAL named SU2 gauge source z-quarter 48-Majorana REAL matrix
equals the 48-real diagonal transformation ACTUALLY implemented by
the honest ordered sixteen-factor source Spin48 rotor. -/
theorem historical_source_quarter_48_matrix_eq_independent_spin_quarter :
    sourceRealMajoranaMatrix
        (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
          (2 : Fin 3) originalZQuarterTime) =
      source48QuarterDiagonalMatrix := by
  ext i k
  let p := sourceBlockColorEquiv.symm i
  let q := sourceBlockColorEquiv.symm k
  have hi : sourceBlockColorLabel p.1 p.2 = i := by
    change sourceBlockColorEquiv (sourceBlockColorEquiv.symm i) = i
    exact sourceBlockColorEquiv.apply_symm_apply i
  have hk : sourceBlockColorLabel q.1 q.2 = k := by
    change sourceBlockColorEquiv (sourceBlockColorEquiv.symm k) = k
    exact sourceBlockColorEquiv.apply_symm_apply k
  have h := historical_source_quarter_48_matrix_block_entry
    p.1.1 q.1.1 p.1.2 q.1.2 p.2 q.2
  simpa only [hi, hk] using h

#print axioms standalone_source_label_eq_original
#print axioms standalone_source_label_eq_paired_original
#print axioms standalone_quarter_coeff_original
#print axioms historical_source_quarter_48_matrix_block_entry
#print axioms historical_source_quarter_48_matrix_eq_independent_spin_quarter

end
end FCP.BFSSS1V27
