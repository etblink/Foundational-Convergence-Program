import SU2BFSSPhysicalDomainS4B16OriginalBosonCoordinateSelectorProbe

/-!
S4B17: use the actual original Boson N coordinate selector (Gate104)
to collapse separately the first and second terms in the literal
sourceMasslessComplexVariationCoefficient. The combined source field
identity and October manuscript B(x) remain separate proof obligations.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B17
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B16

/-- First original quadratic variation half: the derivative acts on
x(i,B). Keep the actual source color structure constants and original
two-gamma matrix entries, and select i=k, B=A using Gate104. -/
theorem originalFieldVariation_first_selector_sum
    {N : ℕ} (M : AlgebraData N) (x : Boson N)
    (k : SpaceIndex) (A D : ColorIndex N) (α β : SpinIndex) :
    (∑ j : SpaceIndex, ∑ C : ColorIndex N,
      ∑ i : SpaceIndex, ∑ B : ColorIndex N,
        (EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (i,B) *
          (M.structureConstant D B C * x (j,C) * M.gammaTwo i j α β)) =
    (∑ j : SpaceIndex, ∑ C : ColorIndex N,
        M.structureConstant D A C * x (j,C) * M.gammaTwo k j α β) := by
  apply Finset.sum_congr rfl
  intro j _hj
  apply Finset.sum_congr rfl
  intro C _hC
  exact originalBoson_single_coordinate_nested k A
    (fun i B =>
      M.structureConstant D B C * x (j,C) * M.gammaTwo i j α β)

/-- Second original quadratic variation half: the derivative acts on
x(j,C). Select j=k, C=A without altering the source index ordering. -/
theorem originalFieldVariation_second_selector_sum
    {N : ℕ} (M : AlgebraData N) (x : Boson N)
    (k : SpaceIndex) (A D : ColorIndex N) (α β : SpinIndex) :
    (∑ i : SpaceIndex, ∑ B : ColorIndex N,
      ∑ j : SpaceIndex, ∑ C : ColorIndex N,
        (EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (j,C) *
          (M.structureConstant D B C * x (i,B) * M.gammaTwo i j α β)) =
    (∑ i : SpaceIndex, ∑ B : ColorIndex N,
        M.structureConstant D B A * x (i,B) * M.gammaTwo i k α β) := by
  apply Finset.sum_congr rfl
  intro i _hi
  apply Finset.sum_congr rfl
  intro B _hB
  exact originalBoson_single_coordinate_nested k A
    (fun j C =>
      M.structureConstant D B C * x (i,B) * M.gammaTwo i j α β)

#print axioms originalFieldVariation_first_selector_sum
#print axioms originalFieldVariation_second_selector_sum

end
end FCP.BFSSSU2PhysicalDomainS4B17
