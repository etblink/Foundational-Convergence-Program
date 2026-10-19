import SU2BFSSPhysicalDomainS1V17QuarterFlipLiteralCoordinateAndInvolutionProbe

/-!
S1V18 — precise source48 diagonal matrix realization of the
actual sixteen-block Spin48 quarter flip.

The original accepted S1J uses a 48×48 source real Majorana matrix
with output row / input column ordering. Here we construct a SINGLE
explicit diagonal real matrix on the *same SourceLabel type* using
S1V17's qualified pointwise color-sign rule and prove its actual
Matrix.mulVec action coincides with S1V16's genuine Spin conjugation
vector target.

This file does NOT import original S1J, so the typed original gauge
source matrix identification is still an open separate lemma.
No all-parameter SU2 Spin group law or Fock intertwiner is assumed.

UNQUALIFIED until pinned strict CI.
-/
set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSS1V18
noncomputable section

open Matrix
open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSS1V6
open FCP.BFSSS1V16
open FCP.BFSSS1V17

/-- Exact source-label diagonal coefficients, -1 on Pauli colors
0 and 1, +1 on color 2, using S1V5's exact 16×3 packing. -/
noncomputable def source48QuarterDiagonalCoeff (i : SourceLabel) : ℝ :=
  if (sourceBlockColorEquiv.symm i).2 = (2 : Fin 3)
    then 1 else -1

/-- Literal 48×48 REAL source-Majorana matrix for the color
quarter-flip; output-label rows and input-label columns. -/
noncomputable def source48QuarterDiagonalMatrix :
    Matrix SourceLabel SourceLabel ℝ :=
  Matrix.diagonal source48QuarterDiagonalCoeff

/-- Pointwise equality: the exact source 48-real Spin quarter-flip
is multiplication by the single diagonal 48×48 source matrix. -/
theorem source48QuarterDiagonalMatrix_mulVec
    (v : Source48Vector) :
    source48QuarterDiagonalMatrix *ᵥ v =
      source48QuarterFlip v := by
  funext i
  rw [source48QuarterFlip_apply]
  rw [source48QuarterDiagonalMatrix, Matrix.mulVec_diagonal]
  unfold source48QuarterDiagonalCoeff
  split_ifs <;> simp

/-- The actual finite-matrix realization has involutive action
on all 48-real vectors, as follows from S1V17's verified pointwise
source half-turn — no matrix group homomorphism is postulated. -/
theorem source48QuarterDiagonalMatrix_mulVec_twice
    (v : Source48Vector) :
    source48QuarterDiagonalMatrix *ᵥ
      (source48QuarterDiagonalMatrix *ᵥ v) = v := by
  rw [source48QuarterDiagonalMatrix_mulVec,
      source48QuarterDiagonalMatrix_mulVec]
  exact source48QuarterFlip_involution v

/-- The real source-48 quadratic form of the original Majorana
Clifford algebra is preserved by the concrete quarter-flip. -/
theorem source48QuarterFlip_preserves_quadratic
    (v : Source48Vector) :
    source48Quadratic (source48QuarterFlip v) =
      source48Quadratic v := by
  rw [source48Quadratic_eq_dot, source48Quadratic_eq_dot]
  simp only [dotProduct]
  apply Finset.sum_congr rfl
  intro i hi
  rw [source48QuarterFlip_apply]
  split_ifs <;> ring

#print axioms source48QuarterDiagonalCoeff
#print axioms source48QuarterDiagonalMatrix
#print axioms source48QuarterDiagonalMatrix_mulVec
#print axioms source48QuarterDiagonalMatrix_mulVec_twice
#print axioms source48QuarterFlip_preserves_quadratic

end
end FCP.BFSSS1V18
