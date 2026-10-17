import SU2BFSSPhysicalDomainS3L5K2D3OriginalSourceUnconditionalCubicFactorProbe

/-! K2E1A: small source-endomorphism transport building blocks.
The original E1 #1 sixfold rewrite chain timed out; isolate universal
one-weight and two-unweighted-sum transport before specializing indices. -/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2E1A
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5H

theorem sourceComm_one_weighted_sum_of
    {ι : Type*} [Fintype ι]
    (G : SourceEnd) (c : ι → ℂ) (T R : ι → SourceEnd)
    (h : ∀ x, G.comp (T x) - (T x).comp G = R x) :
    G.comp (∑ x : ι, c x • T x) -
      (∑ x : ι, c x • T x).comp G =
      ∑ x : ι, c x • R x := by
  classical
  calc
    _ = ∑ x : ι, c x • (G.comp (T x) - (T x).comp G) :=
      sourceComm_weighted_sum Finset.univ G c T
    _ = _ := by
      apply Finset.sum_congr rfl
      intro x _
      rw [h x]

theorem sourceComm_two_unweighted_sums_of
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (G : SourceEnd) (T R : ι → κ → SourceEnd)
    (h : ∀ x y, G.comp (T x y) - (T x y).comp G = R x y) :
    G.comp (∑ x : ι, ∑ y : κ, T x y) -
      (∑ x : ι, ∑ y : κ, T x y).comp G =
      ∑ x : ι, ∑ y : κ, R x y := by
  classical
  calc
    _ = ∑ x : ι, (G.comp (∑ y : κ, T x y) -
          (∑ y : κ, T x y).comp G) :=
      sourceComm_sum Finset.univ G (fun x => ∑ y : κ, T x y)
    _ = _ := by
      apply Finset.sum_congr rfl
      intro x _
      calc
        _ = ∑ y : κ, (G.comp (T x y) - (T x y).comp G) :=
          sourceComm_sum Finset.univ G (T x)
        _ = _ := by
          apply Finset.sum_congr rfl
          intro y _
          exact h x y

#print axioms sourceComm_one_weighted_sum_of
#print axioms sourceComm_two_unweighted_sums_of
end
end FCP.BFSSSU2PhysicalDomainS3L5K2E1A
