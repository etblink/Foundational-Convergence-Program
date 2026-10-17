import SU2BFSSPhysicalDomainS3L5K2E1CAbstractSixfoldSourceTransportProbe

/-!
# K2E1D — exact original BFSS six-index types, generic SourceEnd transport

K2E1D pinned qualification #1, unchanged theorem.\nSOURCE AND QUALIFICATION BOUNDARY:
* K2E1C has already compiled and axiom-audited at exact pinned sources.
* K2E1D instantiates ONLY six original types: 9-space, 9-space, three
  SU(2) colors, three colors, three colors, 16-component spinor.
* The scalar coefficient c, original source term T and response R remain
  explicit parameters, with the pointwise source identity h VISIBLE.
* Unlike original E1 #3, this source proof does NOT build a large
  concrete-index hFour or re-run the E1A/B nested algebra. It invokes
  exactly the accepted generic E1C theorem.
* This is NOT the complete original cubic-charge covariance. Physical
  specialization of c/T/R/h and K4 sourceCubicCharge equality remain
  independent kernel obligations, alongside K6C's coefficient response.

Pre-registered diagnostic: one bounded attempt. If it fails at whnf,
stop literal sixfold expression specialization variants; evaluate an
explicitly reversible product/single-index presentation instead.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K2E1D
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K2E1C

/-- Exact index-type specialization of qualified generic E1C. This
does not assume a BFSS physical response: h remains a visible premise. -/
theorem sourceComm_originalSixfoldIndices_of
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
  trace "K2E1D_ENTER_GENUINE_BFSS_INDEX_TYPES"
  exact sourceComm_sixfold_generic_of G c T R h

#print axioms sourceComm_originalSixfoldIndices_of

end
end FCP.BFSSSU2PhysicalDomainS3L5K2E1D
