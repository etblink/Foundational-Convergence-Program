import SU2BFSSPhysicalDomainS3L5HFiniteSumAndCoefficientEntryProbe

/-!
# S3L5I1 — independently qualified exact triple weighted-sum transport

Gate #51 proved the two general triple-sum transport lemmas but failed
to elaborate a DIRECT original 48-Majorana charge specialization.
This small module isolates ONLY the already-compiled mathematical
transport on the original SmoothCore 2, without a concrete Fock expansion.

Any subsequent source physical specialization must be proved in its
own small gate, with explicit source identities and no hidden premises.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5I1
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5H

/-- Three successive finite sums, keeping the innermost complex scalar
weights exactly intact. This is an identity of original SmoothCore 2
endomorphisms, not a claim about a BFSS spectrum. -/
theorem sourceComm_three_weighted_sums
    (G : SourceEnd)
    (c : SpaceIndex → ColorIndex 2 → SpinIndex → ℂ)
    (T : SpaceIndex → ColorIndex 2 → SpinIndex → SourceEnd) :
    G.comp (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c k A γ • T k A γ) -
      (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c k A γ • T k A γ).comp G =
      ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c k A γ • (G.comp (T k A γ) - (T k A γ).comp G) := by
  classical
  calc
    _ = ∑ k : SpaceIndex,
        (G.comp (∑ A : ColorIndex 2, ∑ γ : SpinIndex, c k A γ • T k A γ) -
          (∑ A : ColorIndex 2, ∑ γ : SpinIndex, c k A γ • T k A γ).comp G) :=
      sourceComm_sum Finset.univ G
        (fun k => ∑ A : ColorIndex 2, ∑ γ : SpinIndex, c k A γ • T k A γ)
    _ = ∑ k : SpaceIndex, ∑ A : ColorIndex 2,
        (G.comp (∑ γ : SpinIndex, c k A γ • T k A γ) -
          (∑ γ : SpinIndex, c k A γ • T k A γ).comp G) := by
      apply Finset.sum_congr rfl
      intro k _
      exact sourceComm_sum Finset.univ G
        (fun A => ∑ γ : SpinIndex, c k A γ • T k A γ)
    _ = ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c k A γ • (G.comp (T k A γ) - (T k A γ).comp G) := by
      apply Finset.sum_congr rfl
      intro k _
      apply Finset.sum_congr rfl
      intro A _
      exact sourceComm_weighted_sum Finset.univ G
        (fun γ => c k A γ) (fun γ => T k A γ)

/-- Specialized transport through all three sums when every term's
commutator has already been proven. This makes the concrete S3L5G
source hypothesis visible, never tacitly assumed. -/
theorem sourceComm_three_weighted_sums_of
    (G : SourceEnd)
    (c : SpaceIndex → ColorIndex 2 → SpinIndex → ℂ)
    (T R : SpaceIndex → ColorIndex 2 → SpinIndex → SourceEnd)
    (h : ∀ k A γ, G.comp (T k A γ) - (T k A γ).comp G = R k A γ) :
    G.comp (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c k A γ • T k A γ) -
      (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c k A γ • T k A γ).comp G =
      ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c k A γ • R k A γ := by
  rw [sourceComm_three_weighted_sums]
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro A _
  apply Finset.sum_congr rfl
  intro γ _
  rw [h k A γ]


#print axioms sourceComm_three_weighted_sums
#print axioms sourceComm_three_weighted_sums_of

end
end FCP.BFSSSU2PhysicalDomainS3L5I1
