import SU2BFSSPhysicalDomainS3L5K2E1DOriginalSixfoldIndexSpecializationProbe

/-!
# K2E3A — original BFSS source six-index product-type representation

New representation following repeated E2A literal specialization
recursion/whnf failures. This module certifies exact finite index
geometry and product-index source commutator transport under a visible
pointwise hypothesis. Actual source fermionic/position operator
substitution and cubic charge identification remain unproved.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2E3A
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K2E1A

/-- Bundling all six true BFSS SU(2) cubic source indices without
projection, restriction, or simplifying the original physical labels. -/
abbrev OriginalCubicSixLabel :=
  SpaceIndex × (SpaceIndex ×
    (ColorIndex 2 × (ColorIndex 2 × (ColorIndex 2 × SpinIndex))))

/-- Exact source-native sixfold nested sum ↔ single product-index sum
for any genuine original smooth-core endomorphism family. -/
theorem originalSixfold_nested_eq_product
    (F : SpaceIndex → SpaceIndex → ColorIndex 2 →
      ColorIndex 2 → ColorIndex 2 → SpinIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      F k l A B C γ) =
    ∑ p : OriginalCubicSixLabel,
      F p.1 p.2.1 p.2.2.1 p.2.2.2.1
        p.2.2.2.2.1 p.2.2.2.2.2 := by
  classical
  simp only [Fintype.sum_prod_type']

/-- One-index source commutator transport on the exact BFSS tuple,
without specializing the enormous literal cubic source operators. -/
theorem sourceComm_originalProductSixfold_of
    (G : SourceEnd)
    (c : OriginalCubicSixLabel → ℂ)
    (T R : OriginalCubicSixLabel → SourceEnd)
    (h : ∀ p, G.comp (T p) - (T p).comp G = R p) :
    G.comp (∑ p : OriginalCubicSixLabel, c p • T p) -
      (∑ p : OriginalCubicSixLabel, c p • T p).comp G =
      ∑ p : OriginalCubicSixLabel, c p • R p := by
  exact sourceComm_one_weighted_sum_of G c T R h

#print axioms originalSixfold_nested_eq_product
#print axioms sourceComm_originalProductSixfold_of

end
end FCP.BFSSSU2PhysicalDomainS3L5K2E3A
