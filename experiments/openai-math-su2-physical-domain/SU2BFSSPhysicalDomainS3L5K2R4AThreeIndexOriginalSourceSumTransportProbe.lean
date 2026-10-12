import SU2BFSSPhysicalDomainS3L5K2R1DOriginalWeightedFermionCoefficientBridgeProbe

/-!
# R4A — exact triple-index source response decomposition

The accepted original cubic fermion and spatial responses use
different finite-sum orders: R1D contracts the spinor index at fixed
spatial positions; R3C moves the spatial pair at fixed spinor index.
This module isolates the *reversible* K×L×Gamma sum reindex and the
distribution of physical SourceEnd scalar multiplication over its two
response parts, with NO assumptions, surrogate physics or BFSS Fock
expansion.

This is a finite linear-algebra dependency, not yet full cubic
commutator/charge covariance.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R4A
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS3L4B

/-- Swap one spinor-like finite index across two spatial-like indices,
while retaining the original ordering of the spatial pair. -/
theorem sourceThreeSum_moveLastIndexFirst
    {K L Γ : Type*} [Fintype K] [Fintype L] [Fintype Γ]
    (f : K → L → Γ → SourceEnd) :
    (∑ k : K, ∑ l : L, ∑ γ : Γ, f k l γ) =
      ∑ γ : Γ, ∑ k : K, ∑ l : L, f k l γ := by
  classical
  calc
    _ = ∑ k : K, ∑ γ : Γ, ∑ l : L, f k l γ := by
      apply Finset.sum_congr rfl
      intro k _
      exact Finset.sum_comm
    _ = _ := Finset.sum_comm

/-- Preserve original complex weights and noncommutative operator
terms while separating fermionic and spatial SourceEnd responses. -/
theorem sourceThreeSum_weightedResponse_split
    {K L Γ : Type*} [Fintype K] [Fintype L] [Fintype Γ]
    (c : K → L → Γ → ℂ)
    (F P : K → L → Γ → SourceEnd) :
    (∑ k : K, ∑ l : L, ∑ γ : Γ,
       c k l γ • (F k l γ + P k l γ)) =
    (∑ k : K, ∑ l : L, ∑ γ : Γ,
       c k l γ • F k l γ) +
    (∑ γ : Γ, ∑ k : K, ∑ l : L,
       c k l γ • P k l γ) := by
  classical
  calc
    _ = (∑ k : K, ∑ l : L, ∑ γ : Γ,
           c k l γ • F k l γ) +
        (∑ k : K, ∑ l : L, ∑ γ : Γ,
           c k l γ • P k l γ) := by
          simp only [smul_add, Finset.sum_add_distrib]
    _ = _ := congrArg
      (fun X : SourceEnd =>
        (∑ k : K, ∑ l : L, ∑ γ : Γ, c k l γ • F k l γ) + X)
      (sourceThreeSum_moveLastIndexFirst
        (fun k l γ => c k l γ • P k l γ))

#print axioms sourceThreeSum_moveLastIndexFirst
#print axioms sourceThreeSum_weightedResponse_split
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4A
