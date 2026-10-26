import SU2BFSSPhysicalDomainS4B22OriginalGammaSpinorEntryContractionProbe

/-!
S4B23: true SOURCE original variation coefficient (not manually chosen
gamma/color scalars), contracted against the genuine symmetric gamma
entries from the original kinetic term. Combine original Gate107 and
Gate110 with fully explicit finite reindexing. This is an entrywise
scalar identity, NOT a CAR-reordered operator nor manuscript B(x).
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B23
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B19
open FCP.BFSSSU2PhysicalDomainS4B22

/-- Exactly the original massless field-variation coefficient at the
true bosonic coordinate direction, contracted with the true source
gamma kinetic entry. The eight coefficient comes solely from nine
original spatial directions, no assumed color/epsilon normalization. -/
theorem originalSourceVariationCoefficient_full_gamma_spinor_contraction
    {N : ℕ} (M : AlgebraData N) (x : Boson N)
    (A D : ColorIndex N) (β δ : SpinIndex) :
    (∑ k : SpaceIndex, ∑ α : SpinIndex,
      M.gamma k α β *
        sourceMasslessComplexVariationCoefficient M x
          (EuclideanSpace.single (k,A) (1 : ℝ)) α (δ,D)) =
      (8 : ℝ) *
        (∑ j : SpaceIndex, ∑ C : ColorIndex N,
          M.structureConstant D A C * x (j,C) * M.gamma j β δ) := by
  calc
    _ = ∑ k : SpaceIndex, ∑ α : SpinIndex,
          ∑ j : SpaceIndex, ∑ C : ColorIndex N,
            M.gamma k α β *
              (M.structureConstant D A C * x (j,C) * M.gammaTwo k j α δ) := by
          apply Finset.sum_congr rfl
          intro k _hk
          apply Finset.sum_congr rfl
          intro α _hα
          rw [originalSourceMasslessVariation_actual_reduced M x k A D α δ]
          simp only [Finset.mul_sum]
    _ = ∑ k : SpaceIndex, ∑ j : SpaceIndex,
          ∑ α : SpinIndex, ∑ C : ColorIndex N,
            M.gamma k α β *
              (M.structureConstant D A C * x (j,C) * M.gammaTwo k j α δ) := by
          apply Finset.sum_congr rfl
          intro k _hk
          rw [Finset.sum_comm]
    _ = ∑ j : SpaceIndex, ∑ k : SpaceIndex,
          ∑ α : SpinIndex, ∑ C : ColorIndex N,
            M.gamma k α β *
              (M.structureConstant D A C * x (j,C) * M.gammaTwo k j α δ) := by
          rw [Finset.sum_comm]
    _ = ∑ j : SpaceIndex, ∑ k : SpaceIndex,
          ∑ C : ColorIndex N, ∑ α : SpinIndex,
            M.gamma k α β *
              (M.structureConstant D A C * x (j,C) * M.gammaTwo k j α δ) := by
          apply Finset.sum_congr rfl
          intro j _hj
          apply Finset.sum_congr rfl
          intro k _hk
          rw [Finset.sum_comm]
    _ = ∑ j : SpaceIndex, ∑ C : ColorIndex N,
          ∑ k : SpaceIndex, ∑ α : SpinIndex,
            M.gamma k α β *
              (M.structureConstant D A C * x (j,C) * M.gammaTwo k j α δ) := by
          apply Finset.sum_congr rfl
          intro j _hj
          rw [Finset.sum_comm]
    _ = ∑ j : SpaceIndex, ∑ C : ColorIndex N,
          (M.structureConstant D A C * x (j,C)) *
            (∑ k : SpaceIndex, ∑ α : SpinIndex,
              M.gamma k α β * M.gammaTwo k j α δ) := by
          apply Finset.sum_congr rfl
          intro j _hj
          apply Finset.sum_congr rfl
          intro C _hC
          calc
            _ = ∑ k : SpaceIndex, ∑ α : SpinIndex,
                  (M.structureConstant D A C * x (j,C)) *
                    (M.gamma k α β * M.gammaTwo k j α δ) := by
                  apply Finset.sum_congr rfl
                  intro k _hk
                  apply Finset.sum_congr rfl
                  intro α _hα
                  ring
            _ = _ := by simp only [Finset.mul_sum]
    _ = ∑ j : SpaceIndex, ∑ C : ColorIndex N,
          (M.structureConstant D A C * x (j,C)) *
            ((8 : ℝ) * M.gamma j β δ) := by
          apply Finset.sum_congr rfl
          intro j _hj
          apply Finset.sum_congr rfl
          intro C _hC
          rw [originalSourceGammaTwo_spinor_entry_contraction M j β δ]
    _ = (8 : ℝ) *
          (∑ j : SpaceIndex, ∑ C : ColorIndex N,
            M.structureConstant D A C * x (j,C) * M.gamma j β δ) := by
          simp only [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro j _hj
          apply Finset.sum_congr rfl
          intro C _hC
          ring

#print axioms originalSourceVariationCoefficient_full_gamma_spinor_contraction

end
end FCP.BFSSSU2PhysicalDomainS4B23
