import FCPM4F7IndependentClosedGraphAliasA3
import FCPM4F7GenericRestrictedProductRangeInclusion
import FCPM4F6IndependentLiteralAliasBoundary

/-!
M4F7 C5 — one source-exact independent named restricted closed graph inclusion.

Proves only the native-submodule inclusion of the genuine A3
J-free independent physically restricted closed graph into the named
independent UNRESTRICTED closed graph. Uses the strictly qualified
generic restricted-product-range inclusion and A1's separate exact
unrestricted graph/range alias equality. In particular, the rejected
C2 large concrete Set equality is neither imported nor rewritten.

Supporting statement only. Does not construct a closed partial
operator or assert physical density or any Hamiltonian theorem.
-/

set_option autoImplicit false
set_option maxHeartbeats 600000

namespace FCP.M4F7IndependentNamedClosedGraphRangeInclusionC5
noncomputable section

open OAI.BFSSQuantum
open FCP.IndependentSmoothCore
open FCP.IndependentSmoothSupercharge
open MeasureTheory

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]

private abbrev μ := (volume : Measure (Boson 2))

/-- The genuine independently-defined J-free physically input-restricted
closed graph relation is contained in the named full closed independent
sixteen-charge graph. No J is required for this native inclusion. -/
theorem independentRestrictedClosedGraph_le_fullClosedGraph
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric) :
    FCP.M4F7IndependentClosedGraphAliasA3.independentRestrictedClosedGraph
        color gamma theta hCAR hHermitian ≤
      (independentFullCoreGraph color gamma theta).topologicalClosure := by
  unfold FCP.M4F7IndependentClosedGraphAliasA3.independentRestrictedClosedGraph
  exact FCP.M4F7GenericRestrictedProductRangeInclusion.restricted_product_closure_le_named
    (independentCoreToL2 (E := E))
    (independentChargeVector color gamma theta)
    (independentInvariantCore theta hCAR hHermitian)
    (independentFullCoreGraph color gamma theta)
    (FCP.M4F6IndependentLiteralAliasBoundary.independentFullCoreGraph_eq_actualRange
      color gamma theta)

#print axioms independentRestrictedClosedGraph_le_fullClosedGraph
#check independentRestrictedClosedGraph_le_fullClosedGraph

end
end FCP.M4F7IndependentNamedClosedGraphRangeInclusionC5
