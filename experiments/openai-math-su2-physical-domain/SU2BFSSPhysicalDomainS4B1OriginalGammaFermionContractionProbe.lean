import OAI.MathematicalPhysics.BFSS.Core
import OAI.MathematicalPhysics.BFSS.GammaWords

/-!
# S4B1 — source γᶦ γⁱʲ contraction, exact 8 in nine real spatial directions

This is a SMALL source-aligned algebraic lemma intended for the exact
fermi-remainder identification in the original BFSS source closed form.

The pinned source defines:
* SpaceIndex = Fin 9; GammaMatrix = Matrix (Fin 16) (Fin 16) ℝ;
* AlgebraData.gamma_clifford; AlgebraData.gammaTwo;
* BFSSGamma.gammaTwo_alt and BFSSGamma.gamma_sq.

This does not claim the original deformedFermionField equals the manuscript
B(x), nor a global Spin(9) lift or physical closed-form spectral theorem.
Kernel acceptance is conditional on the *separate strict gate*, not this file.
-/

set_option autoImplicit false

namespace FCP.BFSSSU2PhysicalDomainS4B1
noncomputable section
open Matrix Finset
open OAI.BFSSGamma
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData

/-- Exact Clifford contraction in the original **nine-dimensional**
source gamma index, not a generic dimensionless surrogate. -/
theorem sourceGammaTwo_contract
    (G : Space → Mat)
    (hG : ∀ i j, G i * G j + G j * G i =
      (if i = j then 2 else 0) • (1 : Mat))
    (j : Space) :
    (∑ i : Space, G i * gammaTwo G i j) = (8 : ℝ) • G j := by
  have hterm (i : Space) :
      G i * gammaTwo G i j =
        G j - (if i = j then G j else 0) := by
    by_cases hij : i = j
    · subst i
      simp [gammaTwo]
    · rw [gammaTwo_alt G hG]
      simp only [if_neg hij, zero_smul, sub_zero]
      rw [← Matrix.mul_assoc, gamma_sq G hG i, one_mul]
  calc
    (∑ i : Space, G i * gammaTwo G i j) =
        ∑ i : Space, (G j - (if i = j then G j else 0)) := by
          apply Finset.sum_congr rfl
          intro i _
          exact hterm i
    _ = (9 : ℕ) • G j - G j := by
          rw [Finset.sum_sub_distrib]
          simp
    _ = (8 : ℝ) • G j := by
          simp only [nsmul_eq_mul]
          module

/-- The SAME contraction in the concrete original pinned source
AlgebraData matrix types and original gammaTwo definition. -/
theorem originalSourceGammaTwo_contract
    {N : ℕ} (M : AlgebraData N) (j : SpaceIndex) :
    (∑ i : SpaceIndex, M.gamma i * M.gammaTwo i j) =
      (8 : ℝ) • M.gamma j := by
  exact sourceGammaTwo_contract M.gamma M.gamma_clifford j

#print axioms sourceGammaTwo_contract
#print axioms originalSourceGammaTwo_contract

end
end FCP.BFSSSU2PhysicalDomainS4B1
