import OAI.MathematicalPhysics.BFSS.GammaWords

namespace OAI
namespace BFSSGamma
noncomputable section
open Matrix Finset

variable (G : Space → Mat)
variable (hG : ∀ i j, G i * G j + G j * G i =
  (if i = j then 2 else 0) • (1 : Mat))
include hG

/-- Family 270-B finite identity: for distinct indices, γʲ γʲᵏ = γᵏ. -/
lemma family270B_gamma_mul_gammaTwo_same_left {j k : Space} (hjk : j ≠ k) :
    G j * gammaTwo G j k = G k := by
  rw [gammaTwo_alt G hG, ite_eq_right hjk, zero_smul, sub_zero]
  rw [← Matrix.mul_assoc, gamma_sq G hG, one_mul]

/-- Family 270-B finite identity: for distinct indices, γᵏ γʲᵏ = -γʲ. -/
lemma family270B_gamma_mul_gammaTwo_same_right {j k : Space} (hjk : j ≠ k) :
    G k * gammaTwo G j k = -G j := by
  rw [gammaTwo_alt G hG, ite_eq_right hjk, zero_smul, sub_zero]
  rw [← Matrix.mul_assoc, gamma_anti G hG (Ne.symm hjk), neg_mul,
    Matrix.mul_assoc, gamma_sq G hG, mul_one]

/--
Repository-native form of the nine-dimensional contraction used in the
Family 270-B Lemma 2.1 cross term.
-/
lemma family270B_sum_gamma_mul_gammaTwo (l : Space) :
    ∑ j, G j * gammaTwo G j l = (8 : ℝ) • G l := by
  have hterm (j : Space) :
      G j * gammaTwo G j l = if j = l then 0 else G l := by
    by_cases hjl : j = l
    · subst j
      simp [gammaTwo]
    · rw [family270B_gamma_mul_gammaTwo_same_left G hG hjl]
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
