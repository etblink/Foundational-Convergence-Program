import Mathlib

namespace OAI

/-!
A bounded proof-of-concept for the finite Clifford-algebra step used in
Family 270-B, Lemma 2.1 of "Positive eigenvalues of the relative SU(2)
BFSS Hamiltonian".

The definitions and prerequisite lemmas below intentionally mirror the
corresponding interface in openai/math at commit
adc7f1241b42e322a6451854ab7e4b4c146bf78a,
lean/OAI/MathematicalPhysics/BFSS/GammaWords.lean.

This experiment does not formalize the spectral theorem or the whole
quadratic-form lemma.
-/

namespace BFSSGamma
noncomputable section
open Matrix Finset

abbrev Space := Fin 9
abbrev Spin := Fin 16
abbrev Mat := Matrix Spin Spin ℝ

variable (G : Space → Mat)
variable (hG : ∀ i j, G i * G j + G j * G i =
  (if i = j then 2 else 0) • (1 : Mat))

def gammaTwo (i j : Space) : Mat :=
  (1 / 2 : ℝ) • (G i * G j - G j * G i)

include hG

lemma gamma_sq (i : Space) : G i * G i = 1 := by
  have h := hG i i
  simp only [ite_true, two_smul] at h
  ext a b
  have hab := congr_fun (congr_fun h a) b
  simp only [Matrix.add_apply] at hab
  linarith

lemma gamma_anti {i j : Space} (hij : i ≠ j) :
    G i * G j = -(G j * G i) := by
  have h := hG i j
  simpa only [ite_eq_right hij, zero_smul, add_eq_zero_iff_eq_neg] using h

lemma gammaTwo_alt (i j : Space) :
    gammaTwo G i j =
      G i * G j - (if i = j then (1 : ℝ) else 0) • (1 : Mat) := by
  by_cases hij : i = j
  · subst j
    simp [gammaTwo, gamma_sq G hG]
  · have hji := gamma_anti G hG (Ne.symm hij)
    rw [gammaTwo, hji, ite_eq_right hij, zero_smul, sub_zero]
    module

/-- For distinct indices, γʲ γʲᵏ = γᵏ. -/
lemma gamma_mul_gammaTwo_same_left {j k : Space} (hjk : j ≠ k) :
    G j * gammaTwo G j k = G k := by
  rw [gammaTwo_alt G hG, if_neg hjk, zero_smul, sub_zero]
  rw [← Matrix.mul_assoc, gamma_sq G hG, one_mul]

/-- For distinct indices, γᵏ γʲᵏ = -γʲ. -/
lemma gamma_mul_gammaTwo_same_right {j k : Space} (hjk : j ≠ k) :
    G k * gammaTwo G j k = -G j := by
  rw [gammaTwo_alt G hG, if_neg hjk, zero_smul, sub_zero]
  rw [← Matrix.mul_assoc, gamma_anti G hG (Ne.symm hjk), neg_mul,
    Matrix.mul_assoc, gamma_sq G hG, mul_one]

/--
The nine-dimensional contraction used in the Family 270-B cross term:
for fixed ℓ, exactly the eight indices j ≠ ℓ contribute γˡ.
-/
lemma sum_gamma_mul_gammaTwo (l : Space) :
    ∑ j, G j * gammaTwo G j l = (8 : ℝ) • G l := by
  have hterm (j : Space) :
      G j * gammaTwo G j l = if j = l then 0 else G l := by
    by_cases hjl : j = l
    · subst j
      simp [gammaTwo]
    · rw [gamma_mul_gammaTwo_same_left G hG hjl]
      simp [hjl]
  simp_rw [hterm]
  rw [Finset.sum_ite]
  simp only [Finset.sum_const_zero, zero_add, Finset.sum_const]
  have hcard :
      (Finset.univ.filter (fun j : Space => ¬j = l)).card = 8 := by
    have he :
        Finset.univ.filter (fun j : Space => ¬j = l) = Finset.univ.erase l := by
      ext j
      simp
    rw [he, Finset.card_erase_of_mem (by simp)]
    simp [Space]
  rw [hcard]
  ext a b
  simp [Matrix.mul_apply]

end
end BFSSGamma

end OAI
