import SU2BFSSPhysicalDomainS1LOriginalManuscript48ColorLabelBridgeProbe
import OAI.MathematicalPhysics.BFSS.GaugeGeometry

/-!
S1M: continuity of the ACTUAL source SU(2) to SO(48) action.

S1K established the exact group homomorphism algebraically, S1L
matched its 48×48 matrix against the manuscript's O(g) ⊗ I16 after
the actual paired-Majorana index transport. Here continuity is
derived FROM the pinned source adjoint coefficients and finite matrix
operations. The matrix representation is not replaced by a surrogate.

This supplies a necessary topological input for a possible double-cover
Spin(48) lift. It does NOT construct a lift, an independent Clifford
module, or a manuscript Hilbert-space operator identification.
-/

set_option autoImplicit false
set_option maxHeartbeats 230000

namespace FCP.BFSSSU2PhysicalDomainS1M
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG3A
open FCP.BFSSSU2PhysicalDomainS1J
open FCP.BFSSSU2PhysicalDomainS1K
open FCP.BFSSSU2PhysicalDomainS1L

private abbrev M : AlgebraData 2 := pairedAlgebraData

/-- Original normalized-Pauli adjoint coefficient is continuous in
the TRUE source SU(2) parameter, using GaugeGeometry.colorExtract. -/
theorem source_adjointColorMatrix_entry_continuous
    (A B : ColorIndex 2) :
    Continuous (fun g : GaugeGroup 2 => adjointColorMatrix g A B) := by
  have hmatrix : Continuous (fun g : GaugeGroup 2 =>
      (g : ColorMatrix 2) * M.colorEmbed (colorUnit B) *
        (g : ColorMatrix 2)ᴴ) :=
    ((continuous_subtype_val.mul continuous_const).mul
      continuous_subtype_val.star)
  have hcoordinate : Continuous (fun g : GaugeGroup 2 =>
      (M.colorConjugate (g : ColorMatrix 2) (colorUnit B)) A) := by
    change Continuous (fun g : GaugeGroup 2 =>
      M.colorExtract ((g : ColorMatrix 2) * M.colorEmbed (colorUnit B) *
        (g : ColorMatrix 2)ᴴ) A)
    exact (PiLp.continuous_apply 2 _ A).comp
      (M.colorExtract.toContinuousLinearMap.continuous.comp hmatrix)
  simpa only [adjointColorMatrix, adjointCoefficient_on_basis] using
    hcoordinate

/-- Every ACTUAL color-first/spin-second manuscript-labeled matrix
entry depends continuously on the original group parameter. -/
theorem sourceColorSpinMatrix_entry_continuous
    (A B : ColorIndex 2) (α β : SpinIndex) :
    Continuous (fun g : GaugeGroup 2 =>
      sourceColorSpinMatrix g (A, α) (B, β)) := by
  have h : Continuous (fun g : GaugeGroup 2 =>
      if α = β then adjointColorMatrix g A B else (0 : ℝ)) := by
    by_cases hab : α = β
    · simpa only [hab, ite_true] using
        source_adjointColorMatrix_entry_continuous A B
    · simpa only [hab, ite_false] using
        (continuous_const : Continuous (fun _ : GaugeGroup 2 => (0 : ℝ)))
  simpa only [sourceColorSpinMatrix,
    sourceRealMajoranaMatrix_paper_entry] using h

/-- Continuity of the entire *concrete* 48×48 source color-spin matrix. -/
theorem sourceColorSpinMatrix_continuous :
    Continuous sourceColorSpinMatrix := by
  apply continuous_pi
  rintro ⟨A, α⟩
  apply continuous_pi
  rintro ⟨B, β⟩
  exact sourceColorSpinMatrix_entry_continuous A B α β

/-- The original 48-index source matrix is continuous too, before
reindexing to the manuscript order. -/
theorem sourceRealMajoranaMatrix_continuous :
    Continuous sourceRealMajoranaMatrix := by
  apply continuous_pi
  intro p
  apply continuous_pi
  intro q
  obtain ⟨⟨α, A⟩, hp⟩ := pairedLabelEquiv.surjective p
  obtain ⟨⟨β, B⟩, hq⟩ := pairedLabelEquiv.surjective q
  subst p
  subst q
  change Continuous (fun g : GaugeGroup 2 =>
    sourceColorSpinMatrix g (A, α) (B, β))
  exact sourceColorSpinMatrix_entry_continuous A B α β

/-- Upgrade S1K's algebraic SU(2) → SO(48) hom to a continuous
group representation, without an assumed continuity hypothesis. -/
theorem sourceRealMajoranaSOHom_continuous :
    Continuous (fun g : GaugeGroup 2 => sourceRealMajoranaSOHom g) := by
  change Continuous (fun g : GaugeGroup 2 => sourceRealMajoranaSO g)
  have h : Continuous (fun g : GaugeGroup 2 =>
      (⟨sourceRealMajoranaMatrix g,
        (sourceRealMajoranaSO g).property⟩ :
        Matrix.specialOrthogonalGroup OriginalMajoranaLabel ℝ)) :=
    sourceRealMajoranaMatrix_continuous.subtype_mk
      (fun g => (sourceRealMajoranaSO g).property)
  exact h

#print axioms source_adjointColorMatrix_entry_continuous
#print axioms sourceColorSpinMatrix_entry_continuous
#print axioms sourceColorSpinMatrix_continuous
#print axioms sourceRealMajoranaMatrix_continuous
#print axioms sourceRealMajoranaSOHom_continuous

end
end FCP.BFSSSU2PhysicalDomainS1M
