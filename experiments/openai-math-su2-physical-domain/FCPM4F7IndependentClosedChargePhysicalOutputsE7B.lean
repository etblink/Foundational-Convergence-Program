import FCPM4F7IndependentChargeOutputTypedE7A
import FCPM4F7GenericClosedRangeOutputsE7G
import FCPM4F7IndependentClosedChargePhysicalInputE6

/-!
M4F7 E7B — PROSPECTIVE final source-exact sixteen-output
physical Hilbert invariance for the *actual* J-free independent
E2 physical-input-cut minimally closed charge operator.

This is not accepted until its exact independent E7A, abstract E7G,
and original E6/E3 qualified caches restore and a dedicated
source-pinned strict Lean gate succeeds. No separate E7B CI is
launched when initially staging this file.

The proof deliberately does NOT eliminate a concrete graph witness,
does not unfold the independent charge-vector map, and does not
reconstruct the M4F1 S2 covariance argument within a large BFSS
closed-graph proof.

E7A supplies a source-exact typed output certificate for the
original independent Core.subtype-comp Q column; E7G supplies a
generic range closure theorem; E3 identifies that literal closure
with the actual E2 closed operator graph; E6 supplies physical
subspace closedness. J is an exact representation witness, never
part of the independently defined physical subspace or operator.
No input-domain density, physical rebasing, Hamiltonian, or spectral
conclusion is claimed.
-/

set_option autoImplicit false
set_option maxHeartbeats 100000

namespace FCP.M4F7IndependentClosedChargePhysicalOutputsE7B
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

/-- Exact true independent E2 closed sixteen-charge operator maps
every point of its graph to a vector of physical Hilbert outputs.
This includes the graph-closure limit and all SpinIndex entries.

Conditional on the original pinned CAR, Hermiticity and exact
representation/charge-coordinate matching hypotheses; does NOT
assert dense physical domain or Hamiltonian equivalence. -/
theorem independentPhysicalInputCutClosedChargeColumn_all_outputs_physical
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
    (p : Lp E 2 μ × (SpinIndex → Lp E 2 μ))
    (hp : p ∈
      ((FCP.M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutClosedChargeColumn
        color gamma theta hCAR hHermitian).graph :
        Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ)))) :
    ∀ α : SpinIndex,
      p.2 α ∈ independentPhysicalSpace theta hCAR hHermitian := by
  have hgraph :
      p ∈ closure (LinearMap.range
        ((independentCoreToL2.comp
          (independentInvariantCore theta hCAR hHermitian).subtype).prod
          ((independentChargeVector color gamma theta).comp
            (independentInvariantCore theta hCAR hHermitian).subtype)) :
        Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) :=
    (Set.ext_iff.mp
      (FCP.M4F7IndependentLiteralRestrictedGraphBridgeE3.independentPhysicalInputCutClosedChargeColumn_graph_eq_literal
        color gamma theta hCAR hHermitian J hColor hGamma hJ) p).mp hp
  have hQ :
      ∀ (f : independentInvariantCore theta hCAR hHermitian)
        (α : SpinIndex),
        (((independentChargeVector color gamma theta).comp
          (independentInvariantCore theta hCAR hHermitian).subtype) f) α ∈
            independentPhysicalSpace theta hCAR hHermitian := by
    intro f α
    exact FCP.M4F7IndependentChargeOutputTypedE7A.independentChargeVector_comp_invariantCore_output_physical
      color gamma theta hCAR hHermitian J hColor hGamma hJ f α
  intro α
  exact FCP.M4F7GenericClosedRangeOutputsE7G.closed_product_range_output_mem
    (independentCoreToL2.comp
      (independentInvariantCore theta hCAR hHermitian).subtype)
    ((independentChargeVector color gamma theta).comp
      (independentInvariantCore theta hCAR hHermitian).subtype)
    (independentPhysicalSpace theta hCAR hHermitian)
    (FCP.M4F7IndependentClosedChargePhysicalInputE6.independentPhysicalSpace_isClosed
      theta hCAR hHermitian J hJ)
    hQ p hgraph α

#print axioms independentPhysicalInputCutClosedChargeColumn_all_outputs_physical
#check independentPhysicalInputCutClosedChargeColumn_all_outputs_physical

end
end FCP.M4F7IndependentClosedChargePhysicalOutputsE7B
