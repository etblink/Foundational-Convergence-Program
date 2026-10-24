import FCPM4F8IndependentActualE2PhysicalInputRebaseDE1
import FCPM4F8IndependentE2UnconditionalPhysicalDomainDenseDC

/-!
M4F8 DE1C -- PROSPECTIVE exact domain identification and unconditional
physical-Hilbert NORM-density of the actual input-rebased E2 operator.

The operator and physical Hilbert space are independently defined and
J-free. The external color/gamma/CAR/Hermitian/J conditions appear
only in the proof of source-specified unconditional domain density.

Requires separate DE1 strict acceptance before this may be imported
and separately qualified; source-staged is NOT an accepted proof.
-/
set_option autoImplicit false
set_option maxHeartbeats 200000

namespace FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1C
noncomputable section
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A FCP.BFSSSU2GaugeG4J
open FCP.IndependentPhysicalSpace
open MeasureTheory Set

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]
private abbrev μ := (volume : Measure (Boson 2))

/-- The actual E2 physical-input rebase has EXACTLY the original
native E2 domain when interpreted as a physical-subtype input.
This is literal graph correspondence, not an extension and not
a new graph closure or a transported source operator. -/
theorem independentE2PhysicalInputChargeColumn_domain_iff
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric)
    (u : independentPhysicalSpace theta hCAR hHermitian) :
    u ∈
      (FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputChargeColumn
        color gamma theta hCAR hHermitian).domain ↔
      (u : Lp E 2 μ) ∈
        (FCP.M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutClosedChargeColumn
          color gamma theta hCAR hHermitian).domain := by
  constructor
  · intro hu
    obtain ⟨y, hy⟩ := (LinearPMap.mem_domain_iff).mp hu
    have hgraph :
        ((u : independentPhysicalSpace theta hCAR hHermitian), y) ∈
          FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputGraph
            color gamma theta hCAR hHermitian := by
      rw [← FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputChargeColumn_graph_eq]
      exact hy
    exact (LinearPMap.mem_domain_iff).mpr
      ⟨y, (FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputGraph_mem_iff
        color gamma theta hCAR hHermitian _).mp hgraph⟩
  · intro hu
    obtain ⟨y, hy⟩ := (LinearPMap.mem_domain_iff).mp hu
    apply (LinearPMap.mem_domain_iff).mpr
    refine ⟨y, ?_⟩
    rw [FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputChargeColumn_graph_eq]
    exact (FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputGraph_mem_iff
      color gamma theta hCAR hHermitian _).mpr hy

/-- Unconditional Hilbert-norm density in the exact J-free physical
input space, deduced solely from the original Haar-qualified DC
theorem and the exact (rather than merely subset) native E2
domain correspondence. Not graph-norm density. -/
theorem independentE2PhysicalInputChargeColumn_domain_dense
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
    Dense ((FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputChargeColumn
      color gamma theta hCAR hHermitian).domain :
        Set (independentPhysicalSpace theta hCAR hHermitian)) := by
  have hset :
      ((FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputChargeColumn
        color gamma theta hCAR hHermitian).domain :
          Set (independentPhysicalSpace theta hCAR hHermitian)) =
        {u : independentPhysicalSpace theta hCAR hHermitian |
          (u : Lp E 2 μ) ∈
            (FCP.M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutClosedChargeColumn
              color gamma theta hCAR hHermitian).domain} := by
    ext u
    exact independentE2PhysicalInputChargeColumn_domain_iff
      color gamma theta hCAR hHermitian u
  rw [hset]
  exact FCP.M4F8IndependentE2UnconditionalPhysicalDomainDenseDC.independentE2_actual_closed_domain_dense_in_physical
    color gamma theta hCAR hHermitian J hColor hGamma hJ

#print axioms independentE2PhysicalInputChargeColumn_domain_iff
#print axioms independentE2PhysicalInputChargeColumn_domain_dense

end
end FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1C
