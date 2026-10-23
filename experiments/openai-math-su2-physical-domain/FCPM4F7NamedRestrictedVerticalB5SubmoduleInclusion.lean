import FCPM4F7IndependentClosedGraphAliasA3
import FCPM4F7FullClosedGraphVerticalB4CoeAlign
import FCPM4F6IndependentGraphInputCutNamedAlias

/-!
M4F7 B5 — a source-exact named restricted closed graph vertical bridge.

Use the already strictly accepted C2 genuine physical input cut to show
raw restricted graph inclusion in the J-free named unrestricted graph.
Then use Submodule.topologicalClosure_mono and accepted B4 unrestricted
vertical uniqueness. This avoids the two red A2 literal set-closure
equalities and does NOT alter the independent physical graph definition.

Gate #3 replaces the failed local-graph-alias conversion with a
native A3-to-full submodule inclusion. All original J/CAR/Hermitian
hypotheses and the final B4 theorem target are unchanged.
No acceptance without a separately verified strict gate.
-/

set_option autoImplicit false
set_option maxHeartbeats 600000

namespace FCP.M4F7NamedRestrictedVerticalB5
noncomputable section

open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.IndependentSmoothCore
open FCP.IndependentSmoothSupercharge
open FCP.IndependentPhysicalSpace
open MeasureTheory Set

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]

private abbrev μ := (volume : Measure (Boson 2))

/-- A3's actual J-free independent physically input-restricted closed
sixteen-charge relation has a trivial vertical fiber. The unitary J
is a proof witness of the true independent/source representation
identification, NOT part of this relation's definition. -/
theorem namedIndependentRestrictedClosedGraph_vertical
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric)
    (J : E ≃ₗᵢ[ℂ] Fermion 2)
    (hColor : color = pairedAlgebraData.color)
    (hGamma : gamma = pairedAlgebraData.gamma)
    (hJ : ∀ α A w, J (theta α A w) = pairedTheta α A (J w))
    (y : SpinIndex → Lp E 2 μ)
    (hy : ((0 : Lp E 2 μ), y) ∈
      FCP.M4F7IndependentClosedGraphAliasA3.independentRestrictedClosedGraph
        color gamma theta hCAR hHermitian) :
    y = 0 := by
  have hClosed_le :
      FCP.M4F7IndependentClosedGraphAliasA3.independentRestrictedClosedGraph
        color gamma theta hCAR hHermitian ≤
      (independentFullCoreGraph color gamma theta).topologicalClosure := by
    unfold FCP.M4F7IndependentClosedGraphAliasA3.independentRestrictedClosedGraph
    apply Submodule.topologicalClosure_mono
    intro p hp
    have hcut :
        p ∈ {q : Lp E 2 μ × (SpinIndex → Lp E 2 μ) |
          q ∈ independentFullCoreGraph color gamma theta ∧
          q.1 ∈ independentPhysicalSpace theta hCAR hHermitian} := by
      rw [← FCP.M4F6IndependentGraphInputCut.independentCoreGraph_eq_physicalInputCut
        color gamma theta hCAR hHermitian]
      exact hp
    exact hcut.1
  have hfull :
      ((0 : Lp E 2 μ), y) ∈
        (independentFullCoreGraph color gamma theta).topologicalClosure :=
    hClosed_le hy
  have hset :
      ((0 : Lp E 2 μ), y) ∈
        closure (independentFullCoreGraph color gamma theta :
          Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) := by
    rw [← Submodule.topologicalClosure_coe
      (independentFullCoreGraph color gamma theta)]
    exact hfull
  exact FCP.M4F7FullClosedGraphVerticalB4.independentFullCoreGraph_closure_vertical
    color gamma theta J hColor hGamma hJ y hset

#print axioms namedIndependentRestrictedClosedGraph_vertical
#check namedIndependentRestrictedClosedGraph_vertical

end
end FCP.M4F7NamedRestrictedVerticalB5
