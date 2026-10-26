import SU2BFSSPhysicalDomainS4B21OriginalRealFermionFieldGammaColorThetaProbe

/-!
S4B22: source-exact contraction of original real symmetric gamma and
original gammaTwo, at explicitly named 16-spinor entries. Necessary
to compare Gate109's actual ordered theta bilinear with manuscript B(x).
No color epsilon normalization, CAR reordering or operator B(x)
identification is asserted here.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B22
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B13

/-- The nine-direction original source contraction, in the EXACT
alpha,beta,delta spinor component order appearing in the real source
massless fermionic field. The transpose is resolved using the actual
AlgebraData.gamma_symmetric source hypothesis, not an invented matrix. -/
theorem originalSourceGammaTwo_spinor_entry_contraction
    {N : ℕ} (M : AlgebraData N)
    (j : SpaceIndex) (β δ : SpinIndex) :
    (∑ k : SpaceIndex, ∑ α : SpinIndex,
      M.gamma k α β * M.gammaTwo k j α δ) =
      (8 : ℝ) * M.gamma j β δ := by
  have hsymm (k : SpaceIndex) (α γ : SpinIndex) :
      M.gamma k α γ = M.gamma k γ α := by
    have h : (M.gamma k).transpose = M.gamma k :=
      M.gamma_symmetric k
    simpa only [Matrix.transpose_apply] using
      congrArg (fun T : GammaMatrix => T γ α) h
  have hmatrix :
      (∑ k : SpaceIndex, ∑ α : SpinIndex,
        M.gamma k β α * M.gammaTwo k j α δ) =
        (8 : ℝ) * M.gamma j β δ := by
    have h := congrArg (fun T : GammaMatrix => T β δ)
      (originalSourceGammaTwo_nine_direction_sum M j)
    simpa only [_root_.sum_apply, Matrix.mul_apply,
      Matrix.smul_apply, nsmul_eq_mul] using h
  calc
    _ = ∑ k : SpaceIndex, ∑ α : SpinIndex,
          M.gamma k β α * M.gammaTwo k j α δ := by
          apply Finset.sum_congr rfl
          intro k _hk
          apply Finset.sum_congr rfl
          intro α _hα
          rw [hsymm k α β]
    _ = (8 : ℝ) * M.gamma j β δ := hmatrix

#print axioms originalSourceGammaTwo_spinor_entry_contraction

end
end FCP.BFSSSU2PhysicalDomainS4B22
