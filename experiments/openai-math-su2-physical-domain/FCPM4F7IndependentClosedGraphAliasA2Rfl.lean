import FCPM4F7IndependentRestrictedClosedGraphVerticalC1Cut

/-!
M4F7 A2 — source-exact, J-free named closure boundary.

A2 Gate #2 tests definitional equality by rfl rather than specializing
the large generic Mathlib closure-coe theorem. It preserves the exact
literal equality statement and already-compiling closedness proof. They do not
define a closed LinearPMap or assert any domain density. The source
graph remains the genuine independent color/gamma/theta graph.
-/

set_option autoImplicit false
set_option maxHeartbeats 600000

namespace FCP.M4F7IndependentClosedGraphAliasA2
noncomputable section

open OAI.BFSSQuantum
open FCP.IndependentSmoothCore
open FCP.IndependentSmoothSupercharge
open FCP.IndependentPhysicalSpace
open MeasureTheory Set

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]
private abbrev μ := (volume : Measure (Boson 2))

/-- J-free independent restricted closed graph, literally the closure
of the original smooth-core restricted charge-column graph. -/
noncomputable def independentRestrictedClosedGraph
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric) :
    Submodule ℂ (Lp E 2 μ × (SpinIndex → Lp E 2 μ)) :=
  (LinearMap.range
    ((independentCoreToL2.comp
      (independentInvariantCore theta hCAR hHermitian).subtype).prod
      ((independentChargeVector color gamma theta).comp
        (independentInvariantCore theta hCAR hHermitian).subtype))).topologicalClosure

/-- Exact Set-level alias certificate for the source-literal independent
restricted closed graph, without any fiber transport J. -/
theorem independentRestrictedClosedGraph_set_eq_literal
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric) :
    (independentRestrictedClosedGraph color gamma theta
      hCAR hHermitian : Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) =
      closure (LinearMap.range
        ((independentCoreToL2.comp
          (independentInvariantCore theta hCAR hHermitian).subtype).prod
          ((independentChargeVector color gamma theta).comp
            (independentInvariantCore theta hCAR hHermitian).subtype)) :
        Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) := by
  rfl

/-- Closedness of the NAMED genuine independent source-literal
restricted graph; no operator single-valuedness is inferred here. -/
theorem independentRestrictedClosedGraph_isClosed
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric) :
    IsClosed (independentRestrictedClosedGraph color gamma theta
      hCAR hHermitian : Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) := by
  unfold independentRestrictedClosedGraph
  exact Submodule.isClosed_topologicalClosure _

#print axioms independentRestrictedClosedGraph
#print axioms independentRestrictedClosedGraph_set_eq_literal
#print axioms independentRestrictedClosedGraph_isClosed

end
end FCP.M4F7IndependentClosedGraphAliasA2
