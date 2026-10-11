import SU2BFSSPhysicalDomainS3L5K5OriginalCubicFreeSpinorCoefficientProbe

/-!
# S3L5K6A — generic original sixfold source-index transport

Isolated source-level finite-sum permutation and POSITIVE spinor
coefficient transport, on the actual SmoothCore 2 endomorphism module.
The full paired BFSS cubic expression and negative-coefficient
specialization are intentionally not elaborated in this module.
K6A first independent qualification: only the generic source-index proofs.
This split addresses the kernel timeout at K6 Gate #2 and 120-second
compile timeout at K6 Gate #3 without raising Lean resource budgets.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K6A
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS3L4B

/-- Move the genuine sixteen-valued free spinor index outside the
entire six-index cubic source monomial family. No concrete BFSS
operator is unfolded or recomputed. -/
theorem sourceCubicSevenSum_spinorFirst
    (F : SpinIndex → SpaceIndex → SpaceIndex →
      ColorIndex 2 → ColorIndex 2 → ColorIndex 2 →
      SpinIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      ∑ β : SpinIndex, F β k l A B C γ) =
    ∑ β : SpinIndex, ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      F β k l A B C γ := by
  calc
    _ = ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ β : SpinIndex,
      ∑ γ : SpinIndex, F β k l A B C γ := by
        apply Finset.sum_congr rfl
        intro k _
        apply Finset.sum_congr rfl
        intro l _
        apply Finset.sum_congr rfl
        intro A _
        apply Finset.sum_congr rfl
        intro B _
        apply Finset.sum_congr rfl
        intro C _
        rw [Finset.sum_comm]
    _ = ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ β : SpinIndex, ∑ C : ColorIndex 2,
      ∑ γ : SpinIndex, F β k l A B C γ := by
        apply Finset.sum_congr rfl
        intro k _
        apply Finset.sum_congr rfl
        intro l _
        apply Finset.sum_congr rfl
        intro A _
        apply Finset.sum_congr rfl
        intro B _
        rw [Finset.sum_comm]
    _ = ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ β : SpinIndex,
      ∑ B : ColorIndex 2, ∑ C : ColorIndex 2,
      ∑ γ : SpinIndex, F β k l A B C γ := by
        apply Finset.sum_congr rfl
        intro k _
        apply Finset.sum_congr rfl
        intro l _
        apply Finset.sum_congr rfl
        intro A _
        rw [Finset.sum_comm]
    _ = ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ β : SpinIndex, ∑ A : ColorIndex 2,
      ∑ B : ColorIndex 2, ∑ C : ColorIndex 2,
      ∑ γ : SpinIndex, F β k l A B C γ := by
        apply Finset.sum_congr rfl
        intro k _
        apply Finset.sum_congr rfl
        intro l _
        rw [Finset.sum_comm]
    _ = ∑ k : SpaceIndex, ∑ β : SpinIndex,
      ∑ l : SpaceIndex, ∑ A : ColorIndex 2,
      ∑ B : ColorIndex 2, ∑ C : ColorIndex 2,
      ∑ γ : SpinIndex, F β k l A B C γ := by
        apply Finset.sum_congr rfl
        intro k _
        rw [Finset.sum_comm]
    _ = _ := by rw [Finset.sum_comm]

/-- Transport the POSITIVE finite free-spinor sum first, following
the accepted J9 source transport pattern. This keeps the kernel proof
small and makes negative transport a separate one-line consequence. -/
theorem sourceCubicPositiveFreeSpinorSum_transport
    (d : SpinIndex → ℂ)
    (c : SpinIndex → SpaceIndex → SpaceIndex →
      ColorIndex 2 → ColorIndex 2 → ColorIndex 2 →
      SpinIndex → ℂ)
    (T : SpaceIndex → SpaceIndex → ColorIndex 2 →
      ColorIndex 2 → ColorIndex 2 → SpinIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (∑ β : SpinIndex, d β * c β k l A B C γ) •
        T k l A B C γ) =
    ∑ β : SpinIndex, d β •
      (∑ k : SpaceIndex, ∑ l : SpaceIndex,
        ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
        ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
        c β k l A B C γ • T k l A B C γ) := by
  calc
    _ = ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      ∑ β : SpinIndex,
        d β • (c β k l A B C γ • T k l A B C γ) := by
          simp_rw [Finset.sum_smul, mul_smul]
    _ = ∑ β : SpinIndex, ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
        d β • (c β k l A B C γ • T k l A B C γ) :=
          sourceCubicSevenSum_spinorFirst _
    _ = _ := by simp_rw [Finset.smul_sum]


#print axioms sourceCubicSevenSum_spinorFirst
#print axioms sourceCubicPositiveFreeSpinorSum_transport

end
end FCP.BFSSSU2PhysicalDomainS3L5K6A
