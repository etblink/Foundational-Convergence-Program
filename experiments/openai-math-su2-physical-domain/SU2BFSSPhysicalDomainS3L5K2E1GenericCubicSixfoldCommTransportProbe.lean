import SU2BFSSPhysicalDomainS3L5K2D3OriginalSourceUnconditionalCubicFactorProbe

/-!
# S3L5K2E1 — sixfold original cubic source-index commutator transport

This is the next substantive transport obligation after kernel-qualified
K2D3's LITERAL 48-Majorana cubic-factor commutator. The previous K2B
theorem's conversion of that literal factor to the separate named
pairedOriginalCubicMonomial failed; it is NOT imported or assumed.

Use only accepted S3L5H sourceComm_sum and sourceComm_weighted_sum
on real SourceEnd := (SmoothCore 2 →ₗ[ℂ] SmoothCore 2).
Keep G/c/T/R entirely parametric; six original source-index types and
operator order remain unchanged. A pointwise source-commutator proof
is a VISIBLE hypothesis in this first theorem.

NEXT independent obligation: specialize c to actual 1/2 SU2 structure
constant times original gammaTwo, T to literal original ordered
fermionAction-position-position, and R to qualified K2D3 response,
then identify the aggregate with sourceCubicCharge via accepted K4.
None of those concrete obligations is claimed by this theorem.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K2E1
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5H

/-- Transport an exact pointwise source commutator through the original
six cubic-charge index types without unfolding physical source operators.
Every index and every scalar weight remains present. -/
theorem sourceComm_sixfold_weighted_sums_of
    (G : SourceEnd)
    (c : SpaceIndex → SpaceIndex → ColorIndex 2 →
      ColorIndex 2 → ColorIndex 2 → SpinIndex → ℂ)
    (T R : SpaceIndex → SpaceIndex → ColorIndex 2 →
      ColorIndex 2 → ColorIndex 2 → SpinIndex → SourceEnd)
    (h : ∀ k l A B C γ,
      G.comp (T k l A B C γ) - (T k l A B C γ).comp G =
        R k l A B C γ) :
    G.comp (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      c k l A B C γ • T k l A B C γ) -
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      c k l A B C γ • T k l A B C γ).comp G =
    ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      c k l A B C γ • R k l A B C γ := by
  classical
  -- Staged finite-sum source algebra already used successfully for I1.
  -- Each 'rw' only sees a parametric operator family; no 48-Majorana body.
  rw [sourceComm_sum]
  apply Finset.sum_congr rfl
  intro k _
  rw [sourceComm_sum]
  apply Finset.sum_congr rfl
  intro l _
  rw [sourceComm_sum]
  apply Finset.sum_congr rfl
  intro A _
  rw [sourceComm_sum]
  apply Finset.sum_congr rfl
  intro B _
  rw [sourceComm_sum]
  apply Finset.sum_congr rfl
  intro C _
  rw [sourceComm_weighted_sum]
  apply Finset.sum_congr rfl
  intro γ _
  rw [h k l A B C γ]

#print axioms sourceComm_sixfold_weighted_sums_of

end
end FCP.BFSSSU2PhysicalDomainS3L5K2E1
