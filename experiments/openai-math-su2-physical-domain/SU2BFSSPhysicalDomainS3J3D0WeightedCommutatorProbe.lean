import Mathlib

/-!
# S3J3D0 — finite weighted commutator and matrix-index interchange

Small general-purpose algebra, deliberately free from the source's
2^24-dimensional concrete Fock implementation and from exponentiation.
To be qualified by the pinned Lean compiler before source application.
-/

namespace FCP.BFSSSU2PhysicalDomainS3J3D0
noncomputable section
open scoped BigOperators

/-- A finite complex-linear combination commutes with taking
commutators in a complex algebra, without expanding its elements. -/
theorem weighted_commutator
    {A ι : Type*} [Ring A] [Algebra ℂ A] [Fintype ι]
    (K : A) (theta : ι → A) (v : ι → ℂ) :
    K * (∑ γ : ι, v γ • theta γ) -
      (∑ γ : ι, v γ • theta γ) * K =
        ∑ γ : ι, v γ • (K * theta γ - theta γ * K) := by
  calc
    _ = (∑ γ : ι, v γ • (K * theta γ)) -
        (∑ γ : ι, v γ • (theta γ * K)) := by
          simp only [Finset.mul_sum, Finset.sum_mul,
            mul_smul_comm, smul_mul_assoc]
    _ = _ := by
          simp only [smul_sub, Finset.sum_sub_distrib]

/-- Finite matrix-action interchange for source spinor coefficients,
again independent of any specific fermionic Hilbert space. -/
theorem weighted_matrix_sum
    {A ι : Type*} [Ring A] [Algebra ℂ A] [Fintype ι]
    (J : ι → ι → ℂ) (theta : ι → A) (v : ι → ℂ) :
    (∑ γ : ι, v γ • (∑ α : ι, J α γ • theta α)) =
      ∑ α : ι, (∑ γ : ι, J α γ * v γ) • theta α := by
  calc
    _ = ∑ γ : ι, ∑ α : ι, (v γ * J α γ) • theta α := by
          simp only [Finset.smul_sum, smul_smul]
    _ = ∑ α : ι, ∑ γ : ι, (v γ * J α γ) • theta α :=
          Finset.sum_comm
    _ = ∑ α : ι, (∑ γ : ι, v γ * J α γ) • theta α := by
          simp only [Finset.sum_smul]
    _ = _ := by
          apply Finset.sum_congr rfl
          intro α _
          apply congrArg (fun z : ℂ => z • theta α)
          apply Finset.sum_congr rfl
          intro γ _
          exact mul_comm (v γ) (J α γ)

#print axioms weighted_commutator
#print axioms weighted_matrix_sum

end
end FCP.BFSSSU2PhysicalDomainS3J3D0
