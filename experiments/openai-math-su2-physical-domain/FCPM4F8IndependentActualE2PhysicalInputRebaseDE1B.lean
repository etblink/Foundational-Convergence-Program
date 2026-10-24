import FCPM4F8IndependentActualE2PhysicalInputRebaseDE1

/-!
M4F8 DE1B — PROSPECTIVE independent physical-input rebased E2
closedness and 16 physical outputs, from exact source-qualified
accepted E2 and E7N2, not a source-transported charge.

DE1 itself must pass its own strict Gate #1 before this file may be
compiled or accepted. All mathematical parameters remain the
actual original independent color, gamma, theta, CAR and physical
Hilbert definitions. No density, DE2 output-space rebase, adjoint,
Hamiltonian or spectrum asserted in this candidate.
-/
set_option autoImplicit false
set_option maxHeartbeats 200000

namespace FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1B
noncomputable section
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A FCP.BFSSSU2GaugeG4J
open FCP.IndependentPhysicalSpace
open MeasureTheory Set

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]
private abbrev μ := (volume : Measure (Boson 2))

/-- Closedness of the genuine E2 graph inherited by the topology of
the independently defined physical Hilbert input subtype. -/
theorem independentE2PhysicalInputChargeColumn_isClosed
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
    (FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputChargeColumn
      color gamma theta hCAR hHermitian).IsClosed := by
  change IsClosed ((FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputChargeColumn
    color gamma theta hCAR hHermitian).graph :
      Set (independentPhysicalSpace theta hCAR hHermitian ×
        (SpinIndex → Lp E 2 μ)))
  rw [FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputChargeColumn_graph_eq]
  change IsClosed {p : independentPhysicalSpace theta hCAR hHermitian ×
      (SpinIndex → Lp E 2 μ) |
    ((p.1 : Lp E 2 μ),p.2) ∈
      (FCP.M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutClosedChargeColumn
        color gamma theta hCAR hHermitian).graph}
  exact (FCP.M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutClosedChargeColumn_isClosed
    color gamma theta hCAR hHermitian J hColor hGamma hJ).preimage
    ((continuous_subtype_val.comp continuous_fst).prodMk continuous_snd)

/-- ALL sixteen ambient outputs of this input-rebased native E2
operator are members of the original independent SU(2) physical
Hilbert submodule; this does not redefine its codomain. -/
theorem independentE2PhysicalInputChargeColumn_output_physical
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
    (u : (FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputChargeColumn
      color gamma theta hCAR hHermitian).domain)
    (α : SpinIndex) :
    ((FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputChargeColumn
      color gamma theta hCAR hHermitian) u) α ∈
      independentPhysicalSpace theta hCAR hHermitian := by
  have hgraph :
      ((u : independentPhysicalSpace theta hCAR hHermitian),
        (FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputChargeColumn
          color gamma theta hCAR hHermitian) u) ∈
      FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputGraph
        color gamma theta hCAR hHermitian := by
    rw [← FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputChargeColumn_graph_eq]
    exact (FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputChargeColumn
      color gamma theta hCAR hHermitian).mem_graph u
  have hp :
      (((u : independentPhysicalSpace theta hCAR hHermitian) : Lp E 2 μ),
        (FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputChargeColumn
          color gamma theta hCAR hHermitian) u) ∈
      (FCP.M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutClosedChargeColumn
        color gamma theta hCAR hHermitian).graph :=
    (FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputGraph_mem_iff
      color gamma theta hCAR hHermitian _).mp hgraph
  exact (FCP.M4F7IndependentPhysicalOutputPredicateE7I.mem_independentAllSixteenOutputsPhysicalSet_iff
    theta hCAR hHermitian _).mp
      (FCP.M4F7IndependentActualClosedPhysicalOutputsE7N2.independentPhysicalInputCutClosedChargeColumn_graph_all_outputs_physical
        color gamma theta hCAR hHermitian J hColor hGamma hJ hp) α

#print axioms independentE2PhysicalInputChargeColumn_isClosed
#print axioms independentE2PhysicalInputChargeColumn_output_physical

end
end FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1B
