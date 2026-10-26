import SU2BFSSPhysicalDomainS4B17OriginalFieldVariationSelectorHalvesProbe

/-!
S4B18: strictly convert the *literal original source coefficient's*
quadruple (i,j,B,C) sum order into both already accepted Gate105
source coordinate-selector halves. No unproven signed combination or
manuscript B(x) conclusion.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B18
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B17

/-- Source's first differentiated monomial in its original i,j,B,C
nested order, including original source color and gamma factors. -/
theorem originalFieldVariation_first_original_order_selector
    {N : ℕ} (M : AlgebraData N) (x : Boson N)
    (k : SpaceIndex) (A D : ColorIndex N) (α β : SpinIndex) :
    (∑ i : SpaceIndex, ∑ j : SpaceIndex,
      ∑ B : ColorIndex N, ∑ C : ColorIndex N,
        M.structureConstant D B C *
          ((EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (i,B) * x (j,C)) *
            M.gammaTwo i j α β) =
      (∑ j : SpaceIndex, ∑ C : ColorIndex N,
        M.structureConstant D A C * x (j,C) * M.gammaTwo k j α β) := by
  calc
    _ = ∑ i : SpaceIndex, ∑ j : SpaceIndex,
          ∑ B : ColorIndex N, ∑ C : ColorIndex N,
            (EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (i,B) *
              (M.structureConstant D B C * x (j,C) * M.gammaTwo i j α β) := by
          apply Finset.sum_congr rfl
          intro i _hi
          apply Finset.sum_congr rfl
          intro j _hj
          apply Finset.sum_congr rfl
          intro B _hB
          apply Finset.sum_congr rfl
          intro C _hC
          ring
    _ = ∑ j : SpaceIndex, ∑ i : SpaceIndex,
          ∑ B : ColorIndex N, ∑ C : ColorIndex N,
            (EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (i,B) *
              (M.structureConstant D B C * x (j,C) * M.gammaTwo i j α β) := by
          rw [Finset.sum_comm]
    _ = ∑ j : SpaceIndex, ∑ C : ColorIndex N,
          ∑ i : SpaceIndex, ∑ B : ColorIndex N,
            (EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (i,B) *
              (M.structureConstant D B C * x (j,C) * M.gammaTwo i j α β) := by
          apply Finset.sum_congr rfl
          intro j _hj
          calc
            _ = ∑ i : SpaceIndex, ∑ C : ColorIndex N,
                  ∑ B : ColorIndex N,
                    (EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (i,B) *
                      (M.structureConstant D B C * x (j,C) * M.gammaTwo i j α β) := by
                  apply Finset.sum_congr rfl
                  intro i _hi
                  rw [Finset.sum_comm]
            _ = ∑ C : ColorIndex N, ∑ i : SpaceIndex,
                  ∑ B : ColorIndex N,
                    (EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (i,B) *
                      (M.structureConstant D B C * x (j,C) * M.gammaTwo i j α β) := by
                  rw [Finset.sum_comm]
    _ = _ := originalFieldVariation_first_selector_sum M x k A D α β

/-- Source's second differentiated monomial in original i,j,B,C order,
with its second genuine Boson single direction, contracted via Gate105. -/
theorem originalFieldVariation_second_original_order_selector
    {N : ℕ} (M : AlgebraData N) (x : Boson N)
    (k : SpaceIndex) (A D : ColorIndex N) (α β : SpinIndex) :
    (∑ i : SpaceIndex, ∑ j : SpaceIndex,
      ∑ B : ColorIndex N, ∑ C : ColorIndex N,
        M.structureConstant D B C *
          (x (i,B) * (EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (j,C)) *
            M.gammaTwo i j α β) =
      (∑ i : SpaceIndex, ∑ B : ColorIndex N,
        M.structureConstant D B A * x (i,B) * M.gammaTwo i k α β) := by
  calc
    _ = ∑ i : SpaceIndex, ∑ j : SpaceIndex,
          ∑ B : ColorIndex N, ∑ C : ColorIndex N,
            (EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (j,C) *
              (M.structureConstant D B C * x (i,B) * M.gammaTwo i j α β) := by
          apply Finset.sum_congr rfl
          intro i _hi
          apply Finset.sum_congr rfl
          intro j _hj
          apply Finset.sum_congr rfl
          intro B _hB
          apply Finset.sum_congr rfl
          intro C _hC
          ring
    _ = ∑ i : SpaceIndex, ∑ B : ColorIndex N,
          ∑ j : SpaceIndex, ∑ C : ColorIndex N,
            (EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (j,C) *
              (M.structureConstant D B C * x (i,B) * M.gammaTwo i j α β) := by
          apply Finset.sum_congr rfl
          intro i _hi
          rw [Finset.sum_comm]
    _ = _ := originalFieldVariation_second_selector_sum M x k A D α β

#print axioms originalFieldVariation_first_original_order_selector
#print axioms originalFieldVariation_second_original_order_selector

end
end FCP.BFSSSU2PhysicalDomainS4B18
