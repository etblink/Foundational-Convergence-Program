import SU2BFSSPhysicalDomainS3L5K2E1ATwoSumOperatorTransportProbe

/-! K2E1B: a kernel-separate generic four-sum bridge using E1A.
No original BFSS source generator is elaborated in this theorem. -/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2E1B
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5H
open FCP.BFSSSU2PhysicalDomainS3L5K2E1A

theorem sourceComm_four_weighted_sums_of
    {ι κ λ μ : Type*}
    [Fintype ι] [Fintype κ] [Fintype λ] [Fintype μ]
    (G : SourceEnd)
    (c : ι → κ → λ → μ → ℂ)
    (T R : ι → κ → λ → μ → SourceEnd)
    (h : ∀ x y z w,
      G.comp (T x y z w) - (T x y z w).comp G = R x y z w) :
    G.comp (∑ x : ι, ∑ y : κ, ∑ z : λ, ∑ w : μ,
      c x y z w • T x y z w) -
    (∑ x : ι, ∑ y : κ, ∑ z : λ, ∑ w : μ,
      c x y z w • T x y z w).comp G =
    ∑ x : ι, ∑ y : κ, ∑ z : λ, ∑ w : μ,
      c x y z w • R x y z w := by
  classical
  exact sourceComm_two_unweighted_sums_of G
    (fun x y => ∑ z : λ, ∑ w : μ, c x y z w • T x y z w)
    (fun x y => ∑ z : λ, ∑ w : μ, c x y z w • R x y z w)
    (by
      intro x y
      calc
        _ = ∑ z : λ, (G.comp (∑ w : μ, c x y z w • T x y z w) -
                (∑ w : μ, c x y z w • T x y z w).comp G) :=
          sourceComm_sum Finset.univ G
            (fun z => ∑ w : μ, c x y z w • T x y z w)
        _ = _ := by
          apply Finset.sum_congr rfl
          intro z _
          exact sourceComm_one_weighted_sum_of G
            (fun w => c x y z w)
            (fun w => T x y z w)
            (fun w => R x y z w)
            (fun w => h x y z w))

#print axioms sourceComm_four_weighted_sums_of
end
end FCP.BFSSSU2PhysicalDomainS3L5K2E1B
