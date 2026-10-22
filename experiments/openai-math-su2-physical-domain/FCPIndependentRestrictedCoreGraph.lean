import FCPIndependentFullCoreGraphClosure
import FCPIndependentInvariantSmoothEquiv

/-!
M4F6A — PROSPECTIVE / UNCOMPILED candidate.

Actual original BFSS SU(2) *gauge-restricted smooth-core* sixteen-charge
graph equals the image of an independently defined gauge-restricted
smooth-core graph under the accepted M4F5 graph-ambient homeomorphism.

The independent graph is defined J-free from its own invariant smooth
core and independently defined charge column, before any witness J.
The original target graph is defined from the literal original
pairedGaugeData.invariantCore and pairedAlgebraData.chargeVector, not
by transporting the independent graph.

All conclusions are conditional on exact hColor/hGamma/hJ plus
hCAR/hHermitian. This candidate does NOT assume D3B, M4F1 or physical
smooth-core charge preservation. It therefore cannot yet prove every
output belongs to the physical Hilbert space, graph closability,
self-adjoint Hamiltonian identification, or any spectral claim.
No new theorem root can be counted until strict source-pinned CI.
-/

set_option autoImplicit false
set_option maxHeartbeats 600000

namespace FCP.IndependentSmoothSupercharge
noncomputable section

open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.IndependentSmoothCore
open FCP.IndependentFullL2GaugeTransport
open MeasureTheory
open Set

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]

private abbrev μ := (volume : Measure (Boson 2))

/-- The genuine J-free independent SU(2)-invariant smooth-core
sixteen-supercharge graph. The core and all charges are independently
constructed, not defined as an image of the original source graph. -/
def independentRestrictedCoreGraph
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric) :
    Submodule ℂ (Lp E 2 μ × (SpinIndex → Lp E 2 μ)) :=
  LinearMap.range
    ((independentCoreToL2.comp
      (independentInvariantCore theta hCAR hHermitian).subtype).prod
      ((independentChargeVector color gamma theta).comp
        (independentInvariantCore theta hCAR hHermitian).subtype))

/-- The literal original source gauge-restricted smooth-core
sixteen-charge graph, independently specified by the original charge
and invariant-core types, not by the transported independent graph. -/
def sourceOriginalRestrictedCoreGraph :
    Submodule ℂ (FullL2 2 × (SpinIndex → FullL2 2)) :=
  LinearMap.range
    ((coreToL2.comp pairedGaugeData.invariantCore.subtype).prod
      (pairedAlgebraData.chargeVector.comp
        pairedGaugeData.invariantCore.subtype))

/-- Pointwise input-and-sixteen-output equality on the actual
independent invariant test core. This does not require assuming
that the independent charge preserves invariant-core membership. -/
theorem independentRestrictedGraph_transport_apply
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
    (f : independentInvariantCore theta hCAR hHermitian) :
    (independentGraphTransportHomeomorph J)
        (((independentCoreToL2.comp
          (independentInvariantCore theta hCAR hHermitian).subtype).prod
          ((independentChargeVector color gamma theta).comp
            (independentInvariantCore theta hCAR hHermitian).subtype)) f) =
      ((coreToL2.comp pairedGaugeData.invariantCore.subtype).prod
        (pairedAlgebraData.chargeVector.comp
          pairedGaugeData.invariantCore.subtype))
        (independentInvariantCoreLinearEquiv
          theta hCAR hHermitian J hJ f) := by
  change
    (fiberTransport J (independentCoreToL2 f.val),
      fun α : SpinIndex =>
        fiberTransport J (independentChargeVector color gamma theta f.val α)) =
      (coreToL2 (independentSmoothTransport J f.val),
        pairedAlgebraData.chargeVector (independentSmoothTransport J f.val))
  apply Prod.ext
  · exact independentSmoothTransport_coreToL2 J f.val
  · exact independentChargeVector_all_components_intertwining
      color gamma theta J hColor hGamma hJ f.val

/-- Exact set-theoretic equality of the two genuine
GAUGE-RESTRICTED original and independent smooth-core charge graphs.
The inverse witness uses the *accepted* two-sided invariant smooth-core
equivalence, not source-graph surjectivity assumed as a hypothesis. -/
theorem sourceOriginalRestrictedCoreGraph_eq_independent_image
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
    (sourceOriginalRestrictedCoreGraph : Set
        (FullL2 2 × (SpinIndex → FullL2 2))) =
      (independentGraphTransportHomeomorph J) ''
        (independentRestrictedCoreGraph
          color gamma theta hCAR hHermitian : Set
            (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) := by
  ext q
  constructor
  · intro hq
    rcases hq with ⟨g, hg⟩
    let T := independentInvariantCoreLinearEquiv
      theta hCAR hHermitian J hJ
    let f := T.symm g
    have hf : T f = g := T.apply_symm_apply g
    let p : Lp E 2 μ × (SpinIndex → Lp E 2 μ) :=
      ((independentCoreToL2.comp
        (independentInvariantCore theta hCAR hHermitian).subtype).prod
        ((independentChargeVector color gamma theta).comp
          (independentInvariantCore theta hCAR hHermitian).subtype)) f
    refine ⟨p, ?_, ?_⟩
    · exact ⟨f, rfl⟩
    · calc
        (independentGraphTransportHomeomorph J) p =
          ((coreToL2.comp pairedGaugeData.invariantCore.subtype).prod
            (pairedAlgebraData.chargeVector.comp
              pairedGaugeData.invariantCore.subtype)) (T f) := by
                exact independentRestrictedGraph_transport_apply
                  color gamma theta hCAR hHermitian J hColor hGamma hJ f
        _ = ((coreToL2.comp pairedGaugeData.invariantCore.subtype).prod
              (pairedAlgebraData.chargeVector.comp
                pairedGaugeData.invariantCore.subtype)) g :=
            congrArg _ hf
        _ = q := hg
  · rintro ⟨p, hp, rfl⟩
    rcases hp with ⟨f, rfl⟩
    refine ⟨(independentInvariantCoreLinearEquiv
      theta hCAR hHermitian J hJ f), ?_⟩
    exact (independentRestrictedGraph_transport_apply
      color gamma theta hCAR hHermitian J hColor hGamma hJ f).symm

/-- Exact equality of closures of the genuine GAUGE-RESTRICTED
smooth-core graph relations. Still not an operator closability or
physical Hamiltonian theorem: that needs separate domain evidence. -/
theorem sourceOriginalRestrictedCoreGraph_closure_eq_independent_image_closure
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
    closure (sourceOriginalRestrictedCoreGraph : Set
      (FullL2 2 × (SpinIndex → FullL2 2))) =
    (independentGraphTransportHomeomorph J) ''
      closure (independentRestrictedCoreGraph
        color gamma theta hCAR hHermitian : Set
          (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) := by
  calc
    closure (sourceOriginalRestrictedCoreGraph : Set
        (FullL2 2 × (SpinIndex → FullL2 2))) =
      closure ((independentGraphTransportHomeomorph J) ''
        (independentRestrictedCoreGraph
          color gamma theta hCAR hHermitian : Set
            (Lp E 2 μ × (SpinIndex → Lp E 2 μ)))) := by
        exact congrArg closure
          (sourceOriginalRestrictedCoreGraph_eq_independent_image
            color gamma theta hCAR hHermitian J hColor hGamma hJ)
    _ = (independentGraphTransportHomeomorph J) ''
      closure (independentRestrictedCoreGraph
        color gamma theta hCAR hHermitian : Set
          (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) :=
        ((independentGraphTransportHomeomorph J).image_closure
          (independentRestrictedCoreGraph
            color gamma theta hCAR hHermitian : Set
              (Lp E 2 μ × (SpinIndex → Lp E 2 μ)))).symm

#print axioms independentRestrictedCoreGraph
#print axioms sourceOriginalRestrictedCoreGraph
#print axioms independentRestrictedGraph_transport_apply
#print axioms sourceOriginalRestrictedCoreGraph_eq_independent_image
#print axioms sourceOriginalRestrictedCoreGraph_closure_eq_independent_image_closure

end
end FCP.IndependentSmoothSupercharge
