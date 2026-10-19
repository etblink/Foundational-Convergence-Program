import SU2BFSSPhysicalDomainS1V19OriginalSourceZQuarterAdjointCoefficientBridgeProbe

/-!
BFSS S1V20 — exact ORIGINAL sourceZ quarter 48-real gauge matrix
versus the already qualified concrete Spin48 quarter matrix.

Unlike previous standalone S1V16-18, this deliberately imports
the ORIGINAL G1A source mode labels and G3B/S1J source real
Majorana matrix, and does not postulate a substitute SU2 action.

THIS FILE IS UNCOMPILED AND UNQUALIFIED. Its source import closure
requires the historical original Fock/OAI prerequisite module layer,
currently unavailable in the isolated Actions cache namespace.
No new assumptions, no sorries and no surrogates are introduced.

The theorem is one fixed SU2 group element ONLY, not a globally
continuous group homomorphism SU2→Spin48, nor a Fock Hilbert
representation equivalence, nor a BFSS spectral statement.
-/

set_option autoImplicit false
set_option maxHeartbeats 400000

namespace FCP.BFSSS1V20
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG3A
open FCP.BFSSSU2GaugeG3B
open FCP.BFSSSU2PhysicalDomainS1G
open FCP.BFSSSU2PhysicalDomainS1J
open FCP.BFSSS1V5
open FCP.BFSSS1V16
open FCP.BFSSS1V18
open FCP.BFSSS1V19

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
theorem original_source_quarter_48_matrix_block_entry
    (j k : Fin 8) (s t : Fin 2) (B A : Fin 3) :
    sourceRealMajoranaMatrix (sourceZ sourceQuarterTurnTime)
      (sourceBlockColorLabel (j,s) B)
      (sourceBlockColorLabel (k,t) A) =
    source48QuarterDiagonalMatrix
      (sourceBlockColorLabel (j,s) B)
      (sourceBlockColorLabel (k,t) A) := by
  classical
  have hsource :
      sourceRealMajoranaMatrix (sourceZ sourceQuarterTurnTime)
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
        standalone_source_label_eq_original,
        sourceRealMajoranaMatrix_entry,
        oneParticleMatrix_block,
        original_zquarter_adjoint_matrix]
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
theorem original_source_zquarter_48_matrix_eq_spin_quarter :
    sourceRealMajoranaMatrix (sourceZ sourceQuarterTurnTime) =
      source48QuarterDiagonalMatrix := by
  ext i k
  let p := sourceBlockColorEquiv.symm i
  let q := sourceBlockColorEquiv.symm k
  have hi : sourceBlockColorLabel p.1 p.2 = i := by
    change sourceBlockColorEquiv (sourceBlockColorEquiv.symm i) = i
    exact Equiv.apply_symm_apply i
  have hk : sourceBlockColorLabel q.1 q.2 = k := by
    change sourceBlockColorEquiv (sourceBlockColorEquiv.symm k) = k
    exact Equiv.apply_symm_apply k
  have h := original_source_quarter_48_matrix_block_entry
    p.1.1 q.1.1 p.1.2 q.1.2 p.2 q.2
  simpa only [hi, hk] using h

#print axioms standalone_source_label_eq_original
#print axioms standalone_source_label_eq_paired_original
#print axioms standalone_quarter_coeff_original
#print axioms original_source_quarter_48_matrix_block_entry
#print axioms original_source_zquarter_48_matrix_eq_spin_quarter

end
end FCP.BFSSS1V20
