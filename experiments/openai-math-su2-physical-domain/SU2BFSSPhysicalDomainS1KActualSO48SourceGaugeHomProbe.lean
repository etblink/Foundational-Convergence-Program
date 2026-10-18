import SU2BFSSPhysicalDomainS1JActual48RealMajoranaColorActionProbe

/-!
S1K — the ACTUAL original SU(2) gauge action with codomain the
Mathlib REAL special orthogonal group on the original 48 paired
Majorana labels Fin 24 × Fin 2.

This takes the exact matrix construction, transpose-orthogonality,
positive determinant and group law from S1J, and packages them into
a genuine group homomorphism to SO(48), not merely a list of matrix
identities. The ordered 48 labels are those of G1A.pairedLabelEquiv.

This is the SO(48) BASE of a potential paper Spin(48) double-cover
lift; the lift, second Clifford module, and unitary intertwiners
are not constructed by this source matrix group homomorphism.
-/

set_option autoImplicit false
set_option maxHeartbeats 220000

namespace FCP.BFSSSU2PhysicalDomainS1K
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS1J

/-- No assumed SO(48) action: this is the original source matrix,
whose own source-pinned transpose orthogonality and det=1 were proved. -/
noncomputable def sourceRealMajoranaSO (g : GaugeGroup 2) :
    Matrix.specialOrthogonalGroup OriginalMajoranaLabel ℝ := by
  refine ⟨sourceRealMajoranaMatrix g, ?_⟩
  rw [Matrix.mem_specialOrthogonalGroup_iff]
  exact ⟨(Matrix.mem_orthogonalGroup_iff' OriginalMajoranaLabel ℝ).2
      (sourceRealMajoranaMatrix_orthogonal g),
    sourceRealMajoranaMatrix_det_one g⟩

/-- The resulting SO(48) element is exactly the original source
48×48 matrix, with no extra sign, phase, or chosen orthogonal action. -/
theorem sourceRealMajoranaSO_coe (g : GaugeGroup 2) :
    (sourceRealMajoranaSO g : OriginalMajoranaMatrix) =
      sourceRealMajoranaMatrix g := rfl

/-- Genuine original SU(2) group homomorphism into the exact
Mathlib 48-real-dimensional special orthogonal matrix group. -/
noncomputable def sourceRealMajoranaSOHom :
    GaugeGroup 2 →* Matrix.specialOrthogonalGroup OriginalMajoranaLabel ℝ where
  toFun := sourceRealMajoranaSO
  map_one' := by
    apply Subtype.ext
    change sourceRealMajoranaMatrix 1 = 1
    exact sourceRealMajoranaMatrix_one
  map_mul' g h := by
    apply Subtype.ext
    change sourceRealMajoranaMatrix (g*h) =
      sourceRealMajoranaMatrix g * sourceRealMajoranaMatrix h
    exact sourceRealMajoranaMatrix_mul g h

#print axioms sourceRealMajoranaSO
#print axioms sourceRealMajoranaSO_coe
#print axioms sourceRealMajoranaSOHom

end
end FCP.BFSSSU2PhysicalDomainS1K
