import SU2BFSSPhysicalDomainS3L5K2R4KOriginalSixfoldWeightedNestedCompBridgeProbe

/-!
# R4L — native sixfold source-index spatial/color sum interchange

The literal source R4K normalization has k,l,A,B,C,γ order, while the
literal source R4I original color-first response has A,B,C,k,l,γ order.
This theorem proves the precise sixfold finite-sum order interchange,
without inspecting or changing SourceEnd operators, scalar coefficients,
Spin(9) matrices, or physical color weights. Actual BFSS instantiation
is a subsequent independent theorem, not part of this generic gate.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R4L
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B

/-- Native BFSS 9-space × 9-space × 3-color × 3-color × 3-color ×
16-spinor sum order interchange; no assumptions on the operator family. -/
theorem sourceSixfold_spatialColor_to_colorSpatial
    (F : SpaceIndex → SpaceIndex → ColorIndex 2 →
      ColorIndex 2 → ColorIndex 2 → SpinIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      F k l A B C γ) =
    (∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ k : SpaceIndex,
      ∑ l : SpaceIndex, ∑ γ : SpinIndex,
      F k l A B C γ) := by
  calc
    _ = ∑ k : SpaceIndex, ∑ A : ColorIndex 2,
      ∑ l : SpaceIndex, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      F k l A B C γ := by
        apply Finset.sum_congr rfl
        intro k _
        exact Finset.sum_comm
    _ = ∑ A : ColorIndex 2, ∑ k : SpaceIndex,
      ∑ l : SpaceIndex, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      F k l A B C γ := Finset.sum_comm
    _ = ∑ A : ColorIndex 2, ∑ k : SpaceIndex,
      ∑ B : ColorIndex 2, ∑ l : SpaceIndex,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      F k l A B C γ := by
        apply Finset.sum_congr rfl
        intro A _
        apply Finset.sum_congr rfl
        intro k _
        exact Finset.sum_comm
    _ = ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      F k l A B C γ := by
        apply Finset.sum_congr rfl
        intro A _
        exact Finset.sum_comm
    _ = ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ k : SpaceIndex, ∑ C : ColorIndex 2,
      ∑ l : SpaceIndex, ∑ γ : SpinIndex,
      F k l A B C γ := by
        apply Finset.sum_congr rfl
        intro A _
        apply Finset.sum_congr rfl
        intro B _
        apply Finset.sum_congr rfl
        intro k _
        exact Finset.sum_comm
    _ = _ := by
      apply Finset.sum_congr rfl
      intro A _
      apply Finset.sum_congr rfl
      intro B _
      exact Finset.sum_comm

#print axioms sourceSixfold_spatialColor_to_colorSpatial
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4L
