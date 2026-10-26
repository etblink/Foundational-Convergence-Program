import SU2BFSSPhysicalDomainS4B11OriginalComplexGammaThetaExpansionProbe

/-!
S4B12: source-original gamma-two matrix contraction, before spatial sum.
Never infer manuscript B(x) or spectral claims from this local identity.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B12
noncomputable section
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData

/-- Direct source Clifford alternate form of gammaTwo, using the original
GammaWords result, original 16-spinor matrices and exact AlgebraData. -/
theorem originalSourceGammaTwo_alternate
    {N : ℕ} (M : AlgebraData N) (k j : SpaceIndex) :
    M.gammaTwo k j =
      M.gamma k * M.gamma j -
        (if k = j then (1 : ℝ) else 0) • (1 : GammaMatrix) := by
  have h := BFSSGamma.gammaTwo_alt M.gamma M.gamma_clifford k j
  change M.gammaTwo k j =
      M.gamma k * M.gamma j -
        (if k = j then (1 : ℝ) else 0) • (1 : GammaMatrix) at h
  exact h

/-- An original gamma matrix multiplied by its two-form gamma contracts to
the remaining gamma for distinct indices, and zero on the diagonal. This
identity is before the nine-direction sum that produces an eight factor. -/
theorem originalSourceGammaTwo_left_contraction
    {N : ℕ} (M : AlgebraData N) (k j : SpaceIndex) :
    M.gamma k * M.gammaTwo k j =
      if k = j then (0 : GammaMatrix) else M.gamma j := by
  by_cases hkj : k = j
  · subst j
    simp only [if_pos rfl]
    simp [AlgebraData.gammaTwo]
  · rw [if_neg hkj]
    have h := originalSourceGammaTwo_alternate M k j
    simp only [if_neg hkj, zero_smul, sub_zero] at h
    rw [h, ← mul_assoc, BFSSGamma.gamma_sq M.gamma M.gamma_clifford k, one_mul]

#print axioms originalSourceGammaTwo_alternate
#print axioms originalSourceGammaTwo_left_contraction

end
end FCP.BFSSSU2PhysicalDomainS4B12
