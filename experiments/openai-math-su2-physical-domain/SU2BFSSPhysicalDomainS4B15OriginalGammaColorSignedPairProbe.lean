import SU2BFSSPhysicalDomainS4B14OriginalGammaColorSkewProbe

/-!
S4B15: exact cancellation of two SOURCE gamma/color antisymmetries in
the signed terms of the true original massless potential-field
variation. Does not assert full single-coordinate selector expansion
or final manuscript B(x).
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B15
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B14

/-- The two halves of an original differentiated bracket coefficient
combine without changing color, gamma, theta, or real scalar conventions.
Actual original source structureConstant and gammaTwo are retained. -/
theorem originalSourceGammaColor_signed_pair
    {N : ℕ} (M : AlgebraData N) (x : Boson N)
    (k j : SpaceIndex) (D A C : ColorIndex N)
    (α β : SpinIndex) :
    (1 / 2 : ℝ) *
      (M.structureConstant D A C * x (j,C) * M.gammaTwo k j α β +
       M.structureConstant D C A * x (j,C) * M.gammaTwo j k α β) =
        M.structureConstant D A C * x (j,C) * M.gammaTwo k j α β := by
  rw [originalSourceStructureConstant_last_two_skew M D C A]
  have hg := congrArg
    (fun T : GammaMatrix => T α β) (originalSourceGammaTwo_skew M j k)
  simp only [Matrix.neg_apply] at hg
  rw [hg]
  ring

/-- The same signed pair reduction under the genuine original spatial
and color finite sums, ready for a later true-coordinate selector step. -/
theorem originalSourceGammaColor_signed_pair_sum
    {N : ℕ} (M : AlgebraData N) (x : Boson N)
    (k : SpaceIndex) (D A : ColorIndex N)
    (α β : SpinIndex) :
    (∑ j : SpaceIndex, ∑ C : ColorIndex N,
       (1 / 2 : ℝ) *
         (M.structureConstant D A C * x (j,C) * M.gammaTwo k j α β +
          M.structureConstant D C A * x (j,C) * M.gammaTwo j k α β)) =
      (∑ j : SpaceIndex, ∑ C : ColorIndex N,
        M.structureConstant D A C * x (j,C) * M.gammaTwo k j α β) := by
  apply Finset.sum_congr rfl
  intro j _hj
  apply Finset.sum_congr rfl
  intro C _hC
  exact originalSourceGammaColor_signed_pair M x k j D A C α β

#print axioms originalSourceGammaColor_signed_pair
#print axioms originalSourceGammaColor_signed_pair_sum

end
end FCP.BFSSSU2PhysicalDomainS4B15
