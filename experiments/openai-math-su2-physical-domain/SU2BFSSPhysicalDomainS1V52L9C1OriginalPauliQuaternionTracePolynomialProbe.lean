import SU2BFSSPhysicalDomainS1V52L9B4OriginalSameBlockQuaternionConjugationProbe
import SU2ColorCrossProbe

/-!
S1V52L9C1 — source-faithful native Pauli quaternion finite trace audit.

This computes the EXACT original FCP.BFSSSU2.pauli (sigma_x,sigma_y,sigma_z)
2x2 trace under the B1 +i original native SU(2) quaternion matrix,
without introducing a replacement Pauli basis, alternative SU(2),
invented color action, physical Hilbert identification or mass gap.

The polynomial R has rows B=output, columns A=input. This is only
the unscaled Pauli trace; qualification of the ORIGINAL BFSS
pairedAlgebraData.color=normalizedPauli, normalization pauliScale²=1/2,
and source adjointColorMatrix still require subsequent source transport.

STAGED UNQUALIFIED until strict pinned proof and #print axioms CI.
-/
set_option autoImplicit false
set_option maxHeartbeats 440000

namespace FCP.BFSSS1V52L9C1
noncomputable section

open Matrix
open FCP.BFSSS1V52B1
open FCP.BFSSSU2

/-- Actual source quaternion-to-color real adjoint coefficients,
in output-row/input-column order. No surrogate group defined. -/
def originalQuaternionAdjointPolynomial
    (p : SourceQuaternionCoords) : Matrix (Fin 3) (Fin 3) ℝ :=
  !![
    p.a^2-p.b^2-p.c^2+p.d^2,   2*p.a*p.b+2*p.c*p.d,      -2*p.a*p.c+2*p.b*p.d;
    -2*p.a*p.b+2*p.c*p.d,      p.a^2-p.b^2+p.c^2-p.d^2, 2*p.a*p.d+2*p.b*p.c;
    2*p.a*p.c+2*p.b*p.d,       -2*p.a*p.d+2*p.b*p.c,    p.a^2+p.b^2-p.c^2-p.d^2
  ]

/-- The nine EXACT original source unnormalized Pauli traces.
The source normalization transport to pairedAlgebraData is separate. -/
theorem originalPauliQuaternion_trace_polynomial
    (p : SourceQuaternionCoords) (B A : Fin 3) :
    Matrix.trace
      (pauli B *
        (sourceQuaternionColorMatrix p * pauli A *
          (sourceQuaternionColorMatrix p).conjTranspose)) =
      ((2 : ℝ) * originalQuaternionAdjointPolynomial p B A : ℂ) := by
  -- First reduce every original 2×2 matrix trace to its actual entries.
  -- Split complex equality BEFORE normalizing: the nine cases then become
  -- elementary real polynomial identities, avoiding the Gate #2 ring_nf
  -- failure caused by incompletely simplified complex expressions.
  fin_cases B <;> fin_cases A <;>
    apply Complex.ext <;>
    simp [originalQuaternionAdjointPolynomial, pauli,
      sourceQuaternionColorMatrix,
      Matrix.trace, Matrix.mul_apply, Matrix.conjTranspose_apply,
      Fin.sum_univ_two, Complex.star_def,
      Complex.mul_re, Complex.mul_im, Complex.add_re, Complex.add_im,
      Complex.sub_re, Complex.sub_im, Complex.neg_re, Complex.neg_im,
      Complex.conj_re, Complex.conj_im,
      Complex.I_re, Complex.I_im] <;>
    ring

#print axioms originalPauliQuaternion_trace_polynomial

end
end FCP.BFSSS1V52L9C1
