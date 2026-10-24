import FCPM4F8IndependentE2ConditionalPhysicalDomainDenseDD
import FCPM4F7IndependentActualClosedPhysicalOutputsE7N2

/-!
Prospective M4F8 DE1: literal independently specified E2 closed charge
operator graph pulled back into the actual J-free physical Hilbert INPUT.
Uses the original physical submodule inclusion, not a source transported
operator. Output codomain is still 16 ambient L² slots; DE2 must rebase
all outputs to the independent physical Hilbert space separately.
THIS FILE IS UNCOMPILED AND UNACCEPTED.
-/
set_option autoImplicit false
set_option maxHeartbeats 200000

namespace FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1
noncomputable section
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A FCP.BFSSSU2GaugeG4J
open FCP.IndependentPhysicalSpace
open MeasureTheory Set

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]
private abbrev μ := (volume : Measure (Boson 2))

/-- This is a comap of the ORIGINAL J-free E2 graph, no new charge. -/
noncomputable def independentE2PhysicalInputGraph
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric) :
    Submodule ℂ (independentPhysicalSpace theta hCAR hHermitian ×
      (SpinIndex → Lp E 2 μ)) :=
  (FCP.M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutClosedChargeColumn
    color gamma theta hCAR hHermitian).graph.comap
      ((independentPhysicalSpace theta hCAR hHermitian).subtype.prodMap
        (LinearMap.id : (SpinIndex → Lp E 2 μ) →ₗ[ℂ]
          (SpinIndex → Lp E 2 μ)))

theorem independentE2PhysicalInputGraph_mem_iff
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric)
    (p : independentPhysicalSpace theta hCAR hHermitian ×
       (SpinIndex → Lp E 2 μ)) :
    p ∈ independentE2PhysicalInputGraph
      color gamma theta hCAR hHermitian ↔
      ((p.1 : Lp E 2 μ), p.2) ∈
        (FCP.M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutClosedChargeColumn
          color gamma theta hCAR hHermitian).graph := by
  rfl

private theorem independentE2PhysicalInputGraph_vertical
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric) :
    ∀ (p : independentPhysicalSpace theta hCAR hHermitian ×
         (SpinIndex → Lp E 2 μ)),
      p ∈ independentE2PhysicalInputGraph
        color gamma theta hCAR hHermitian →
      p.1 = 0 → p.2 = 0 := by
  rintro ⟨ψ,y⟩ hp hz
  have hp' : ((ψ : Lp E 2 μ), y) ∈
      (FCP.M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutClosedChargeColumn
        color gamma theta hCAR hHermitian).graph :=
    (independentE2PhysicalInputGraph_mem_iff
      color gamma theta hCAR hHermitian _).mp hp
  have hz' : (ψ : Lp E 2 μ) = 0 :=
    congrArg (fun x : independentPhysicalSpace theta hCAR hHermitian =>
      (x : Lp E 2 μ)) hz
  have hzero : ((0 : Lp E 2 μ), y) ∈
      (FCP.M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutClosedChargeColumn
        color gamma theta hCAR hHermitian).graph := by
    simpa only [hz'] using hp'
  exact (FCP.M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutClosedChargeColumn
    color gamma theta hCAR hHermitian).graph_fst_eq_zero_snd hzero rfl

/-- A true partially-defined ℂ-linear map on the J-free physical Hilbert
INPUT whose graph is drawn from the exact original E2 partial map. -/
noncomputable def independentE2PhysicalInputChargeColumn
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric) :
    independentPhysicalSpace theta hCAR hHermitian →ₗ.[ℂ]
      (SpinIndex → Lp E 2 μ) :=
  (independentE2PhysicalInputGraph
    color gamma theta hCAR hHermitian).toLinearPMap

theorem independentE2PhysicalInputChargeColumn_graph_eq
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric) :
    (independentE2PhysicalInputChargeColumn
      color gamma theta hCAR hHermitian).graph =
      independentE2PhysicalInputGraph
        color gamma theta hCAR hHermitian := by
  exact Submodule.toLinearPMap_graph_eq _
    (independentE2PhysicalInputGraph_vertical
      color gamma theta hCAR hHermitian)

#print axioms independentE2PhysicalInputGraph
#print axioms independentE2PhysicalInputGraph_mem_iff
#print axioms independentE2PhysicalInputChargeColumn
#print axioms independentE2PhysicalInputChargeColumn_graph_eq

end
end FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1
