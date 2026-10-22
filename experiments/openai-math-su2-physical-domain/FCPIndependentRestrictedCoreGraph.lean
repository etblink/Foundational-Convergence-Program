import FCPRestrictedGraphInputCut

/-!
M4F6 — PROSPECTIVE input-restriction proof architecture.

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
open FCP.BFSSSU2GaugeG1A FCP.BFSSSU2GaugeG4J
open FCP.IndependentSmoothCore
open FCP.IndependentFullL2GaugeTransport
open MeasureTheory
open Set
open FCP.IndependentPhysicalSpace
open FCP.RestrictedGraphInputCut

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


/-- The independent invariant core is the preimage of its own physical
space. Characterize its graph by input membership, without converting
any concrete invariant-core equivalence inside a source charge map. -/
theorem independentRestrictedCoreGraph_eq_input_cut
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric) :
    (independentRestrictedCoreGraph color gamma theta hCAR hHermitian :
      Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) =
      {p | p ∈ independentFullCoreGraph color gamma theta ∧
        p.1 ∈ independentPhysicalSpace theta hCAR hHermitian} := by
  unfold independentRestrictedCoreGraph independentFullCoreGraph independentInvariantCore
  exact core_graph_input_cut independentCoreToL2
    (independentChargeVector color gamma theta)
    (independentPhysicalSpace theta hCAR hHermitian)

/-- The literal original restricted core graph has precisely the
original full-core graph and original physical-input constraint. -/
theorem sourceOriginalRestrictedCoreGraph_eq_input_cut :
    (sourceOriginalRestrictedCoreGraph :
      Set (FullL2 2 × (SpinIndex → FullL2 2))) =
      {p | p ∈ pairedAlgebraData.fullCoreGraph ∧
        p.1 ∈ pairedGaugeData.physicalSpace} := by
  unfold sourceOriginalRestrictedCoreGraph
  exact original_core_graph_input_cut pairedAlgebraData pairedGaugeData

/-- Exact original restricted graph transport, using already qualified
unrestricted graph equality and physical-input equivalence. -/
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
  have hPhysical (p : Lp E 2 μ × (SpinIndex → Lp E 2 μ)) :
      p.1 ∈ independentPhysicalSpace theta hCAR hHermitian ↔
        (independentGraphTransportHomeomorph J p).1 ∈
          pairedGaugeData.physicalSpace := by
    exact independentPhysicalSpace_iff_source theta hCAR hHermitian J hJ p.1
  have hFull :
      (pairedAlgebraData.fullCoreGraph :
        Set (FullL2 2 × (SpinIndex → FullL2 2))) =
      (independentGraphTransportHomeomorph J) ''
        (independentFullCoreGraph color gamma theta :
          Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) := by
    exact sourceFullCoreGraph_eq_independent_image
      color gamma theta J hColor hGamma hJ
  calc
    (sourceOriginalRestrictedCoreGraph :
        Set (FullL2 2 × (SpinIndex → FullL2 2))) =
      {q | q ∈ pairedAlgebraData.fullCoreGraph ∧
        q.1 ∈ pairedGaugeData.physicalSpace} :=
      sourceOriginalRestrictedCoreGraph_eq_input_cut
    _ = (independentGraphTransportHomeomorph J) ''
        {p | p ∈ independentFullCoreGraph color gamma theta ∧
          p.1 ∈ independentPhysicalSpace theta hCAR hHermitian} :=
      image_input_cut (independentGraphTransportHomeomorph J)
        (independentFullCoreGraph color gamma theta : Set _)
        (pairedAlgebraData.fullCoreGraph : Set _)
        (fun p => p.1 ∈ independentPhysicalSpace theta hCAR hHermitian)
        (fun q => q.1 ∈ pairedGaugeData.physicalSpace) hFull hPhysical
    _ = (independentGraphTransportHomeomorph J) ''
        (independentRestrictedCoreGraph color gamma theta hCAR hHermitian :
          Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) :=
      congrArg
        (fun S : Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ)) =>
          (independentGraphTransportHomeomorph J) '' S)
        (independentRestrictedCoreGraph_eq_input_cut
          color gamma theta hCAR hHermitian).symm

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
#print axioms independentRestrictedCoreGraph_eq_input_cut
#print axioms sourceOriginalRestrictedCoreGraph_eq_input_cut
#print axioms sourceOriginalRestrictedCoreGraph_eq_independent_image
#print axioms sourceOriginalRestrictedCoreGraph_closure_eq_independent_image_closure

end
end FCP.IndependentSmoothSupercharge
