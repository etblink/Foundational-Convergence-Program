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
        Complex.I_mul_I, Complex.I_sq] <;> ring_nf <;> norm_num [Complex.I_sq]


/-- Scale of the orthonormal SU(2) color basis Tₐ = σₐ / √2. -/
def pauliScale : ℝ := Real.sqrt 2 / 2

lemma pauliScale_sq : pauliScale ^ 2 = (1/2 : ℝ) := by
  dsimp [pauliScale]
  rw [div_pow, Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)]
  norm_num

lemma pauliScale_mul_sqrt : pauliScale * Real.sqrt 2 = 1 := by
  dsimp [pauliScale]
  have hs : (Real.sqrt 2) ^ 2 = (2 : ℝ) :=
    Real.sq_sqrt (by norm_num)
  calc
    (Real.sqrt 2 / 2) * Real.sqrt 2 =
        (Real.sqrt 2) ^ 2 / 2 := by ring
    _ = 1 := by rw [hs]; norm_num

def normalizedPauli (a : Fin 3) : Matrix (Fin 2) (Fin 2) ℂ :=
  (pauliScale : ℂ) • pauli a

/-- Trace orthogonality of the unnormalized Pauli basis. -/
lemma pauli_trace_zero (a : Fin 3) : Matrix.trace (pauli a) = 0 := by
  fin_cases a <;> norm_num [pauli, Matrix.trace, Fin.sum_univ_two]

lemma pauli_trace_pair (a b : Fin 3) :
    Matrix.trace (pauli a * pauli b) =
      (if a = b then 2 else 0 : ℂ) := by
  fin_cases a <;> fin_cases b <;>
    norm_num [pauli, Matrix.trace, Matrix.mul_apply, Fin.sum_univ_two,
      Complex.I_sq] <;>
    ring_nf <;> norm_num [Complex.I_sq]

/-- The scaled basis is trace-orthonormal, as required by AlgebraData 2. -/
lemma normalizedPauli_trace_pair (a b : Fin 3) :
    Matrix.trace (normalizedPauli a * normalizedPauli b) =
      (if a = b then 1 else 0 : ℂ) := by
  have hs : (pauliScale : ℂ) ^ 2 = (1/2 : ℂ) := by
    exact_mod_cast pauliScale_sq
  simp only [normalizedPauli, Matrix.smul_mul, Matrix.mul_smul,
    Matrix.trace_smul, smul_smul, smul_eq_mul]
  rw [pauli_trace_pair]
  by_cases h : a = b
  · simp [h, ← pow_two, hs]
  · simp [h]

/-- The normalized Pauli basis has the manuscript's √2 structure constants. -/
lemma normalizedPauli_commutator (a b : Fin 3) :
    normalizedPauli a * normalizedPauli b -
        normalizedPauli b * normalizedPauli a =
      (Complex.I * (Real.sqrt 2 : ℂ)) •
        (∑ c : Fin 3, (epsilon3 a b c : ℂ) • normalizedPauli c) := by
  have hsq : (pauliScale : ℂ) ^ 2 = (1/2 : ℂ) := by
    exact_mod_cast pauliScale_sq
  have hroot : (pauliScale : ℂ) * (Real.sqrt 2 : ℂ) = 1 := by
    exact_mod_cast pauliScale_mul_sqrt
  have hscale : (pauliScale : ℂ) ^ 2 * (2 * Complex.I) =
      (Complex.I * (Real.sqrt 2 : ℂ)) * (pauliScale : ℂ) := by
    rw [hsq]
    calc
      (1/2 : ℂ) * (2 * Complex.I) = Complex.I := by ring
      _ = Complex.I * ((pauliScale : ℂ) * (Real.sqrt 2 : ℂ)) := by
        rw [hroot, mul_one]
      _ = (Complex.I * (Real.sqrt 2 : ℂ)) * (pauliScale : ℂ) := by ring
  calc
    _ = ((pauliScale : ℂ)^2) •
          (pauli a * pauli b - pauli b * pauli a) := by
          simp [normalizedPauli, Matrix.smul_mul, Matrix.mul_smul,
            smul_sub, smul_smul, pow_two]
    _ = ((pauliScale : ℂ)^2 * (2 * Complex.I)) •
          (∑ c : Fin 3, (epsilon3 a b c : ℂ) • pauli c) := by
          rw [pauli_commutator, smul_smul]
    _ = (Complex.I * (Real.sqrt 2 : ℂ)) •
          (∑ c : Fin 3, (epsilon3 a b c : ℂ) • normalizedPauli c) := by
          rw [hscale]
          simp only [normalizedPauli, Finset.sum_smul, smul_smul]
          congr 1
          simp [mul_assoc, mul_comm, mul_left_comm]

#print axioms pauliScale_sq
#print axioms pauli_trace_pair
#print axioms normalizedPauli_trace_pair
#print axioms normalizedPauli_commutator

#print axioms pauli_commutator

#print axioms epsilon3_contraction
#print axioms normalized_cross_energy

end
end FCP.BFSSSU2
