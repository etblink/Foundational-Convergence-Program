import Mathlib

/-!
# Concrete SU(2) color algebra, first independently compiled gate

This deliberately proves only a finite-dimensional scalar identity, not
existence of OAI.BFSSQuantum.AlgebraData 2, gauge covariance, or the
positive-eigenvalue theorem. The normalization sqrt 2 is that in the
October 5, 2026 relative SU(2) BFSS manuscript.

Next unproved bridge obligations: exhibit the normalized Pauli basis
T_a = sigma_a / sqrt 2, show f_abc = sqrt 2 * epsilon_abc,
and prove that OAI's deformedBosonicPotential 1 0 specializes to
the concrete wedge potential.
-/

namespace FCP.BFSSSU2
noncomputable section
open Finset

/-- The oriented Levi-Civita symbol in three color dimensions. -/
def epsilon3 : Fin 3 → Fin 3 → Fin 3 → ℝ
  | 0, 1, 2 => 1
  | 1, 2, 0 => 1
  | 2, 0, 1 => 1
  | 0, 2, 1 => -1
  | 2, 1, 0 => -1
  | 1, 0, 2 => -1
  | _, _, _ => 0

/-- The components of the ordinary oriented cross product. -/
def colorCross (u v : Fin 3 → ℝ) : Fin 3 → ℝ
  | 0 => u 1 * v 2 - u 2 * v 1
  | 1 => u 2 * v 0 - u 0 * v 2
  | 2 => u 0 * v 1 - u 1 * v 0

/-- A normalized structure-constant contraction becomes sqrt(2) times the cross product. -/
lemma epsilon3_contraction (u v : Fin 3 → ℝ) (a : Fin 3) :
    (∑ b : Fin 3, ∑ c : Fin 3,
        (Real.sqrt 2 * epsilon3 a b c) * u b * v c) =
      Real.sqrt 2 * colorCross u v a := by
  fin_cases a <;> simp [epsilon3, colorCross, Fin.sum_univ_three] <;> ring

/-- Half the squared length of the normalized bracket equals its three squared minors. -/
lemma normalized_cross_energy (u v : Fin 3 → ℝ) :
    (1/2 : ℝ) * ∑ a : Fin 3,
      (∑ b : Fin 3, ∑ c : Fin 3,
        (Real.sqrt 2 * epsilon3 a b c) * u b * v c)^2 =
      (u 0 * v 1 - u 1 * v 0)^2 +
      (u 0 * v 2 - u 2 * v 0)^2 +
      (u 1 * v 2 - u 2 * v 1)^2 := by
  simp_rw [epsilon3_contraction]
  rw [Fin.sum_univ_three]
  simp only [colorCross, mul_pow, Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)]
  ring


/-- The standard ordered Pauli matrices (σₓ, σᵧ, σ_z) over ℂ. -/
def pauli : Fin 3 → Matrix (Fin 2) (Fin 2) ℂ
  | 0 => !![0, 1; 1, 0]
  | 1 => !![0, -Complex.I; Complex.I, 0]
  | 2 => !![1, 0; 0, -1]

/--
Unnormalized Pauli commutators. This is a finite, fully explicit matrix
check. The normalized Tₐ=σₐ/√2 identity is a *subsequent* milestone.
-/
lemma pauli_commutator (a b : Fin 3) :
    pauli a * pauli b - pauli b * pauli a =
      (2 * Complex.I) • (∑ c : Fin 3, (epsilon3 a b c : ℂ) • pauli c) := by
  fin_cases a <;> fin_cases b <;>
    ext i j <;> fin_cases i <;> fin_cases j <;>
      norm_num [pauli, epsilon3, Matrix.mul_apply, Fin.sum_univ_two,
        Fin.sum_univ_three, Matrix.smul_apply, Matrix.sub_apply,
        Complex.I_mul_I] <;>
      (ring <|> (simp [mul_assoc, Complex.I_mul_I] <;> ring))

#print axioms pauli_commutator

#print axioms epsilon3_contraction
#print axioms normalized_cross_energy

end
end FCP.BFSSSU2
