import FCPM4F7IndependentRestrictedClosedGraphVerticalC1Cut
import FCPM4F7GenericOpaqueClosedRelationBridgeImports
import Mathlib.Topology.Algebra.Module.LinearPMap

/-!
M4F7 D1 — a genuine independent J-free partial charge column, defined
directly from the literal restricted smooth-core source graph.

The actual mathematical target in this first gate is a qualified graph
identity. It composes the strictly accepted V1 literal graph-closure
vertical theorem with the independently qualified generic B2
opaque relation-to-LinearPMap graph certificate.

This file deliberately does not import A3, the failed A2 Set alias,
C5/C5A raw graph inclusion, or the deformed-model realization.
J appears only in the graph-identity theorem as a proof witness of
the true original/independent representation correspondence.
No density, physical output, Hamiltonian or spectrum claim.
-/

set_option autoImplicit false
set_option maxHeartbeats 600000

namespace FCP.M4F7LiteralIndependentClosedPartialOperatorD1
noncomputable section

open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.IndependentSmoothCore
open FCP.IndependentSmoothSupercharge
open MeasureTheory Set

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]

private abbrev μ := (volume : Measure (Boson 2))

/-- Genuine J-free independent charge column, defined without any
source-unitary transport, using the literal restricted raw BFSS
smooth-core graph and its native topological submodule closure. -/
noncomputable def independentLiteralRestrictedClosedChargeColumn
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric) :
    Lp E 2 μ →ₗ.[ℂ] (SpinIndex → Lp E 2 μ) :=
  ((LinearMap.range
    ((independentCoreToL2.comp
      (independentInvariantCore theta hCAR hHermitian).subtype).prod
      ((independentChargeVector color gamma theta).comp
        (independentInvariantCore theta hCAR hHermitian).subtype))).topologicalClosure).toLinearPMap

/-- The graph of the actual independently-defined partial charge column
equals the native closure of the genuine independent restricted
sixteen-charge graph. J is a theorem witness only, never an input to
the independent operator definition. -/
theorem independentLiteralRestrictedClosedChargeColumn_graph_eq
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
    (independentLiteralRestrictedClosedChargeColumn
      color gamma theta hCAR hHermitian).graph =
      (LinearMap.range
        ((independentCoreToL2.comp
          (independentInvariantCore theta hCAR hHermitian).subtype).prod
          ((independentChargeVector color gamma theta).comp
            (independentInvariantCore theta hCAR hHermitian).subtype))).topologicalClosure := by
  unfold independentLiteralRestrictedClosedChargeColumn
  apply FCP.M4F7GenericOpaqueClosedRelationBridge.topologicalClosure_toLinearPMap_graph_eq
  rintro ⟨x, y⟩ hp hx
  dsimp at hx
  subst x
  exact FCP.M4F7IndependentRestrictedClosedGraphVertical.independentRestrictedCoreGraph_closure_vertical
    color gamma theta hCAR hHermitian J hColor hGamma hJ y hp

#print axioms independentLiteralRestrictedClosedChargeColumn
#print axioms independentLiteralRestrictedClosedChargeColumn_graph_eq
#check independentLiteralRestrictedClosedChargeColumn_graph_eq

end
end FCP.M4F7LiteralIndependentClosedPartialOperatorD1
