import SU2BFSSPhysicalDomainS3L5K6AGenericOriginalSixfoldTransportProbe

/-!
# S3L5K6B — negative cubic coefficient transport

K6A independently qualified positive seven-index transport over the
original source SmoothCore 2 endomorphism module. This isolated layer
takes one minus sign outside the original six source sums, then applies
the ALREADY COMPILED K6A positive transport. It does not elaborate the
BFSS coefficient or sourceCubicCharge and makes no K2 commutator claim.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K6B
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K6A

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
    _ = -(∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (∑ β : SpinIndex, d β * c β k l A B C γ) •
        T k l A B C γ) := by
          simp_rw [neg_smul, Finset.sum_neg_distrib]
    _ = _ := congrArg Neg.neg
      (sourceCubicPositiveFreeSpinorSum_transport d c T)

#print axioms sourceCubicNegativeFreeSpinorSum_transport

end
end FCP.BFSSSU2PhysicalDomainS3L5K6B
