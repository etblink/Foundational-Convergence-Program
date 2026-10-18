import SU2BFSSPhysicalDomainS1KActualSO48SourceGaugeHomProbe
import Mathlib.LinearAlgebra.CliffordAlgebra.SpinGroup
import Mathlib.LinearAlgebra.Matrix.ToLin

/-!
S1O — the ACTUAL original BFSS SU(2) 48-real-Majorana matrix
induces an algebra automorphism of the INDEPENDENT REAL Clifford
algebra on its precisely indexed 48-dimensional quadratic space.

S1J constructs the original source matrix, S1K proves the exact
SU(2) → SO(48) homomorphism. From the SAME source matrix we construct
a genuine linear isometry on the 48-real generator space, then a
quadratic-form isometry and finally Mathlib's CliffordAlgebra
equivOfIsometry, with literal generator covariance.

Quadratic form Q(v) = Σ_i v_i² corresponds to manuscript's
NORMALIZED √2 θ generators (each squares to one).
This is an action on the abstract Clifford ALGEBRA, not a physical
Clifford MODULE. It does NOT construct a Spin(48)-valued lift or
equate the abstract module with original Fermion 2.
-/

set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSSU2PhysicalDomainS1O
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
    source48Quadratic v = Matrix.dotProduct v v := by
  simp [source48Quadratic, QuadraticMap.weightedSumSquares_apply,
    Matrix.dotProduct]

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
    exact (Matrix.mem_orthogonalGroup_iff).mp hmem
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
  rw [source48LinearEquiv_apply]
  rw [source48Quadratic_eq_dot, source48Quadratic_eq_dot]
  calc
    Matrix.dotProduct ((sourceRealMajoranaMatrix g).mulVec v)
        ((sourceRealMajoranaMatrix g).mulVec v) =
      Matrix.dotProduct v
        ((sourceRealMajoranaMatrix g)ᵀ.mulVec
          ((sourceRealMajoranaMatrix g).mulVec v)) :=
        (Matrix.dotProduct_transpose_mulVec
          (sourceRealMajoranaMatrix g) v
          ((sourceRealMajoranaMatrix g).mulVec v)).symm
    _ = Matrix.dotProduct v v := by
      rw [Matrix.mulVec_mulVec,
        sourceRealMajoranaMatrix_orthogonal, Matrix.one_mulVec]

/-- A typed quadratic isometry, built from the exact original
SU(2)-dependent source matrix and the normalized 48-label Q. -/
noncomputable def source48QuadraticIsometry (g : GaugeGroup 2) :
    source48Quadratic.IsometryEquiv source48Quadratic where
  toLinearEquiv := source48LinearEquiv g
  map_app' := source48LinearEquiv_preserves_quadratic g

/-- The *abstract* normalized Cl(48) algebra autoequivalence
induced by the original BFSS source gauge transformation. -/
noncomputable def source48CliffordAut (g : GaugeGroup 2) :
    CliffordAlgebra source48Quadratic ≃ₐ[ℝ]
      CliffordAlgebra source48Quadratic :=
  CliffordAlgebra.equivOfIsometry (source48QuadraticIsometry g)

/-- Exact covariance of all Clifford generators under the resulting
independent abstract Clifford algebra automorphism. -/
theorem source48CliffordAut_generator
    (g : GaugeGroup 2) (v : Source48Vector) :
    source48CliffordAut g (CliffordAlgebra.ι source48Quadratic v) =
      CliffordAlgebra.ι source48Quadratic
        ((sourceRealMajoranaMatrix g).mulVec v) := by
  change CliffordAlgebra.map
    (source48QuadraticIsometry g).toIsometry
    (CliffordAlgebra.ι source48Quadratic v) = _
  rw [CliffordAlgebra.map_apply_ι]
  exact congrArg (CliffordAlgebra.ι source48Quadratic)
    (source48LinearEquiv_apply g v)

#print axioms source48Quadratic
#print axioms source48Quadratic_eq_dot
#print axioms source48LinearEquiv
#print axioms source48LinearEquiv_apply
#print axioms source48LinearEquiv_preserves_quadratic
#print axioms source48QuadraticIsometry
#print axioms source48CliffordAut
#print axioms source48CliffordAut_generator

end
end FCP.BFSSSU2PhysicalDomainS1O
