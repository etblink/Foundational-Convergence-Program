import SU2BFSSPhysicalDomainS1KActualSO48SourceGaugeHomProbe
import Mathlib.LinearAlgebra.Matrix.ToLin

/-!
S1P0 — strict source-normalized 48-real quadratic space baseline.

From S1J/S1K's literal source SO48 matrix, construct the actual
48-real linear equivalence and prove preservation of the normalized
sum-of-squares quadratic form. These five independent roots already
printed permitted axioms in S1O Gate2's RED file, but require a new
standalone strict PASS to count as a qualified module.

NO Clifford algebra map, module, Spin48 lift, physical operator
transport, or spectrum is asserted by S1P0.
-/

set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSSU2PhysicalDomainS1P0
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS1J
open FCP.BFSSSU2PhysicalDomainS1K

abbrev Source48Vector := OriginalMajoranaLabel → ℝ

/-- The normalized manuscript real Clifford quadratic form on all
48 *actual* Majorana labels. No external module or basis choice. -/
noncomputable def source48Quadratic : QuadraticForm ℝ Source48Vector :=
  QuadraticMap.weightedSumSquares ℝ
    (fun _ : OriginalMajoranaLabel => (1 : ℝ))

theorem source48Quadratic_eq_dot (v : Source48Vector) :
    source48Quadratic v = dotProduct v v := by
  simp [source48Quadratic, QuadraticMap.weightedSumSquares_apply,
    dotProduct]

/-- The actual source 48-real orthogonal matrix interpreted as a
linear isomorphism of the EXACT original generator label space. -/
noncomputable def source48LinearEquiv (g : GaugeGroup 2) :
    Source48Vector ≃ₗ[ℝ] Source48Vector := by
  have hright :
      sourceRealMajoranaMatrix g *
        (sourceRealMajoranaMatrix g)ᵀ = 1 := by
    have hmem : sourceRealMajoranaMatrix g ∈
        Matrix.orthogonalGroup OriginalMajoranaLabel ℝ :=
      (Matrix.mem_specialOrthogonalGroup_iff.mp
        (sourceRealMajoranaSO g).property).1
    exact (Matrix.mem_orthogonalGroup_iff OriginalMajoranaLabel ℝ).mp hmem
  exact Matrix.toLin'OfInv
    (sourceRealMajoranaMatrix_orthogonal g) hright

/-- Its action is literal source matrix-vector multiplication. -/
theorem source48LinearEquiv_apply (g : GaugeGroup 2) (v : Source48Vector) :
    source48LinearEquiv g v = (sourceRealMajoranaMatrix g).mulVec v := by
  change (Matrix.toLin' (sourceRealMajoranaMatrix g)) v = _
  simp only [Matrix.toLin'_apply', Matrix.mulVecLin_apply]

/-- Genuine source quadratic preservation — not an inserted
isometry hypothesis or an assumed Spin(48) action. -/
theorem source48LinearEquiv_preserves_quadratic
    (g : GaugeGroup 2) (v : Source48Vector) :
    source48Quadratic (source48LinearEquiv g v) = source48Quadratic v := by
  calc
    source48Quadratic (source48LinearEquiv g v) =
        dotProduct ((sourceRealMajoranaMatrix g).mulVec v)
          ((sourceRealMajoranaMatrix g).mulVec v) := by
            rw [source48LinearEquiv_apply, source48Quadratic_eq_dot]
    _ = dotProduct v
        ((sourceRealMajoranaMatrix g)ᵀ.mulVec
          ((sourceRealMajoranaMatrix g).mulVec v)) :=
            (Matrix.dotProduct_transpose_mulVec
              (sourceRealMajoranaMatrix g) v
              ((sourceRealMajoranaMatrix g).mulVec v)).symm
    _ = source48Quadratic v := by
      rw [Matrix.mulVec_mulVec,
        sourceRealMajoranaMatrix_orthogonal, Matrix.one_mulVec,
        ← source48Quadratic_eq_dot]


#print axioms source48Quadratic
#print axioms source48Quadratic_eq_dot
#print axioms source48LinearEquiv
#print axioms source48LinearEquiv_apply
#print axioms source48LinearEquiv_preserves_quadratic

end
end FCP.BFSSSU2PhysicalDomainS1P0
