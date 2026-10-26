import SU2BFSSPhysicalDomainS4B18OriginalFieldCoefficientQuadrupleReorderProbe

/-!
S4B19: first exact original massless fermionic field coefficient
at a genuine bosonic coordinate selector. Two separately qualified
S4B18 selector halves, followed by S4B15 true source gamma/color signs.
No manuscript B(x) contraction or unproved physical assertion.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B19
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B11
open FCP.BFSSSU2PhysicalDomainS4B18
open FCP.BFSSSU2PhysicalDomainS4B15

/-- The literal ORIGINAL sourceMasslessComplexVariationCoefficient at
a real bosonic single-coordinate direction equals the two source-exact
gamma/color selector halves, keeping source half normalization. -/
theorem originalSourceMasslessVariation_actual_signed_pair
    {N : ℕ} (M : AlgebraData N) (x : Boson N)
    (k : SpaceIndex) (A D : ColorIndex N) (α β : SpinIndex) :
    sourceMasslessComplexVariationCoefficient M x
      (EuclideanSpace.single (k,A) (1 : ℝ)) α (β,D) =
    (1 / 2 : ℝ) *
      ((∑ j : SpaceIndex, ∑ C : ColorIndex N,
        M.structureConstant D A C * x (j,C) * M.gammaTwo k j α β) +
       (∑ j : SpaceIndex, ∑ C : ColorIndex N,
        M.structureConstant D C A * x (j,C) * M.gammaTwo j k α β)) := by
  unfold sourceMasslessComplexVariationCoefficient
  congr 1
  calc
    _ = (∑ i : SpaceIndex, ∑ j : SpaceIndex,
      ∑ B : ColorIndex N, ∑ C : ColorIndex N,
        M.structureConstant D B C *
          (((EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (i,B) * x (j,C)) +
            (x (i,B) * (EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (j,C))) *
          M.gammaTwo i j α β) := by
          simp only [Finset.sum_mul]
    _ = (∑ i : SpaceIndex, ∑ j : SpaceIndex,
      ∑ B : ColorIndex N, ∑ C : ColorIndex N,
        (M.structureConstant D B C *
          ((EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (i,B) * x (j,C)) *
          M.gammaTwo i j α β +
         M.structureConstant D B C *
          (x (i,B) * (EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (j,C)) *
          M.gammaTwo i j α β)) := by
          apply Finset.sum_congr rfl
          intro i _hi
          apply Finset.sum_congr rfl
          intro j _hj
          apply Finset.sum_congr rfl
          intro B _hB
          apply Finset.sum_congr rfl
          intro C _hC
          ring
    _ = (∑ i : SpaceIndex, ∑ j : SpaceIndex, ∑ B : ColorIndex N, ∑ C : ColorIndex N,
          M.structureConstant D B C *
            ((EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (i,B) * x (j,C)) *
            M.gammaTwo i j α β) +
        (∑ i : SpaceIndex, ∑ j : SpaceIndex, ∑ B : ColorIndex N, ∑ C : ColorIndex N,
          M.structureConstant D B C *
            (x (i,B) * (EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (j,C)) *
            M.gammaTwo i j α β) := by
          simp only [Finset.sum_add_distrib]
    _ = _ := by
          rw [originalFieldVariation_first_original_order_selector,
            originalFieldVariation_second_original_order_selector]

/-- The actual original source massless variation coefficient reduces
to one unambiguous signed gamma/color sum. No theta reordering or
manuscript B(x) operator claim is made here. -/
theorem originalSourceMasslessVariation_actual_reduced
    {N : ℕ} (M : AlgebraData N) (x : Boson N)
    (k : SpaceIndex) (A D : ColorIndex N) (α β : SpinIndex) :
    sourceMasslessComplexVariationCoefficient M x
      (EuclideanSpace.single (k,A) (1 : ℝ)) α (β,D) =
    (∑ j : SpaceIndex, ∑ C : ColorIndex N,
      M.structureConstant D A C * x (j,C) * M.gammaTwo k j α β) := by
  rw [originalSourceMasslessVariation_actual_signed_pair]
  calc
    _ = (∑ j : SpaceIndex, ∑ C : ColorIndex N,
          (1 / 2 : ℝ) *
            (M.structureConstant D A C * x (j,C) * M.gammaTwo k j α β +
             M.structureConstant D C A * x (j,C) * M.gammaTwo j k α β)) := by
          simp only [mul_add, Finset.mul_sum, Finset.sum_add_distrib]
    _ = _ := originalSourceGammaColor_signed_pair_sum M x k D A α β

#print axioms originalSourceMasslessVariation_actual_signed_pair
#print axioms originalSourceMasslessVariation_actual_reduced

end
end FCP.BFSSSU2PhysicalDomainS4B19
