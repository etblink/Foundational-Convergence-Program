import FCPM4F7IndependentRestrictedClosedGraphVerticalC1Cut
import Mathlib.Topology.Algebra.Module.LinearPMap

/-!
M4F7 V2 — prospective genuine independent minimal closed joint-charge
column as a Mathlib LinearPMap. The exact V1 vertical-fiber theorem
was strictly accepted at the C1Cut Gate #2 under the same hypotheses.

Unlike a free-standing closed linear relation, the new partial linear
operator has a genuinely single-valued graph. Its graph remains the
literal independent restricted 16-charge smooth-core graph closure.
No independent physical Hilbert-space domain density or Hamiltonian
equivalence is claimed; these require separate future proofs.
-/

set_option autoImplicit false
set_option maxHeartbeats 600000

namespace FCP.M4F7IndependentClosedChargeOperatorV2
noncomputable section

open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A FCP.BFSSSU2GaugeG4J
open FCP.IndependentSmoothCore
open FCP.IndependentSmoothSupercharge
open FCP.IndependentPhysicalSpace
open MeasureTheory Set

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]

private abbrev μ := (volume : Measure (Boson 2))

/-- The closed submodule is formed only from the actual independent
gauge-invariant smooth core and exact independent charge vector. It has
no J parameter, no surrogate source graph, and no new axiom. -/
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

/-- The required vertical uniqueness certificate is imported from
the separate V1 original-source/independent C4 transport proof. -/
private theorem independentRestrictedClosedGraph_vertical
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
    (hJ : ∀ α A w, J (theta α A w) = pairedTheta α A (J w)) :
    ∀ (p : Lp E 2 μ × (SpinIndex → Lp E 2 μ)),
      p ∈ independentRestrictedClosedGraph color gamma theta hCAR hHermitian →
      p.1 = 0 → p.2 = 0 := by
  rintro ⟨ψ,y⟩ hp hψ
  dsimp at hψ
  subst ψ
  exact FCP.M4F7IndependentRestrictedClosedGraphVertical.independentRestrictedCoreGraph_closure_vertical
    color gamma theta hCAR hHermitian J hColor hGamma hJ y
    (show ((0 : Lp E 2 μ), y) ∈
      closure (LinearMap.range
        ((independentCoreToL2.comp
          (independentInvariantCore theta hCAR hHermitian).subtype).prod
          ((independentChargeVector color gamma theta).comp
            (independentInvariantCore theta hCAR hHermitian).subtype)) :
        Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) from hp)

/-- Actual minimal *independent* partially-defined closed charge column.
J is a proof witness of vertical uniqueness, not a definition of the
underlying independent graph or its physical core. -/
noncomputable def independentRestrictedClosedChargeColumn
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
    (hJ : ∀ α A w, J (theta α A w) = pairedTheta α A (J w)) :
    Lp E 2 μ →ₗ.[ℂ] (SpinIndex → Lp E 2 μ) :=
  (independentRestrictedClosedGraph color gamma theta hCAR hHermitian).toLinearPMap

/-- Exact graph identity against the literal independent graph closure,
not an unverified differential extension. -/
theorem independentRestrictedClosedChargeColumn_graph_eq
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
    (hJ : ∀ α A w, J (theta α A w) = pairedTheta α A (J w)) :
    (independentRestrictedClosedChargeColumn color gamma theta
      hCAR hHermitian J hColor hGamma hJ).graph =
      independentRestrictedClosedGraph color gamma theta hCAR hHermitian := by
  exact Submodule.toLinearPMap_graph_eq _
    (independentRestrictedClosedGraph_vertical color gamma theta
      hCAR hHermitian J hColor hGamma hJ)

/-- The actual independent minimal charge column is closed as a
partially-defined linear operator. This does NOT assert domain density. -/
theorem independentRestrictedClosedChargeColumn_isClosed
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
    (hJ : ∀ α A w, J (theta α A w) = pairedTheta α A (J w)) :
    (independentRestrictedClosedChargeColumn color gamma theta
      hCAR hHermitian J hColor hGamma hJ).IsClosed := by
  change IsClosed ((independentRestrictedClosedChargeColumn color gamma theta
    hCAR hHermitian J hColor hGamma hJ).graph :
    Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ)))
  rw [independentRestrictedClosedChargeColumn_graph_eq
    color gamma theta hCAR hHermitian J hColor hGamma hJ]
  exact (LinearMap.range
    ((independentCoreToL2.comp
      (independentInvariantCore theta hCAR hHermitian).subtype).prod
      ((independentChargeVector color gamma theta).comp
        (independentInvariantCore theta hCAR hHermitian).subtype))).isClosed_topologicalClosure

#print axioms independentRestrictedClosedGraph
#print axioms independentRestrictedClosedChargeColumn
#print axioms independentRestrictedClosedChargeColumn_graph_eq
#print axioms independentRestrictedClosedChargeColumn_isClosed

end
end FCP.M4F7IndependentClosedChargeOperatorV2
