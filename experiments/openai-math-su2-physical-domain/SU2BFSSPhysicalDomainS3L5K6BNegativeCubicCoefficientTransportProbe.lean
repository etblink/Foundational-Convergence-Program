import SU2BFSSPhysicalDomainS3L5K6AGenericOriginalSixfoldTransportProbe

/-!
# S3L5K6B — negative cubic coefficient transport

K6B #1 hit the 95s compile limit during the large
neg_smul / sixfold Finset.sum_neg_distrib simplification. This attempt
negates the sixteen-component SCALAR sum first, applies the already
qualified K6A positive transport with negated free-spinor coefficients,
then transports one outer negation. Original theorem statement retained.
No BFSS coefficient or sourceCubicCharge is elaborated here and the K2
operator commutator is not assumed.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K6B
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K6A

/-- Small complex-scalar lemma: move negation into the finite
free-spinor coefficient, BEFORE introducing six source-operator sums. -/
private theorem negativeScalarSpinorSum
    (d c : SpinIndex → ℂ) :
    -(∑ β : SpinIndex, d β * c β) =
      ∑ β : SpinIndex, (-d β) * c β := by
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro β _
  rw [neg_mul]

/-- The original 9×9×3×3×3×16 source sixfold endomorphism transport:
the negative coefficient contracts with the outer free-spinor index,
with all structure-constant and matrix data remaining opaque. -/
theorem sourceCubicNegativeFreeSpinorSum_transport
    (d : SpinIndex → ℂ)
    (c : SpinIndex → SpaceIndex → SpaceIndex →
      ColorIndex 2 → ColorIndex 2 → ColorIndex 2 →
      SpinIndex → ℂ)
    (T : SpaceIndex → SpaceIndex → ColorIndex 2 →
      ColorIndex 2 → ColorIndex 2 → SpinIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (-(∑ β : SpinIndex, d β * c β k l A B C γ)) •
        T k l A B C γ) =
    -(∑ β : SpinIndex, d β •
      (∑ k : SpaceIndex, ∑ l : SpaceIndex,
        ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
        ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
        c β k l A B C γ • T k l A B C γ)) := by
  calc
    _ = ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (∑ β : SpinIndex, (-d β) * c β k l A B C γ) •
        T k l A B C γ := by
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
          apply Finset.sum_congr rfl
          intro γ _
          exact congrArg (fun z : ℂ => z • T k l A B C γ)
            (negativeScalarSpinorSum d
              (fun β => c β k l A B C γ))
    _ = ∑ β : SpinIndex, (-d β) •
      (∑ k : SpaceIndex, ∑ l : SpaceIndex,
        ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
        ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
        c β k l A B C γ • T k l A B C γ) :=
          sourceCubicPositiveFreeSpinorSum_transport
            (fun β => -d β) c T
    _ = _ := by
      rw [← Finset.sum_neg_distrib]
      apply Finset.sum_congr rfl
      intro β _
      rw [neg_smul]

#print axioms sourceCubicNegativeFreeSpinorSum_transport

end
end FCP.BFSSSU2PhysicalDomainS3L5K6B
