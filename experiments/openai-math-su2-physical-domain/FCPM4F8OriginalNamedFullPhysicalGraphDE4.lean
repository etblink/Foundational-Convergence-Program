import FCPM4F8IndependentActualPhysicalGraphSourceTransportDE3
import SU2BFSSPhysicalDomainD1RestrictedSourceGraphProbe

/-!
BFSS M4F8 DE4 — PROSPECTIVE source-NAMED restricted graph identity with
the actual closed densely-defined independent J-free P → P^16 E2
charge column. This is NOT accepted until the DE3 strict closure gate
and the separate DE3C original G4K9D→G4K10A→D1 ancestry are qualified
and this leaf is freshly compiled by a separate strict gate.

The left side is the ORIGINAL pairedGaugeData.deformedModelGraph 1 0,
not an invented stand-in. The right side is a 17-slot actual
independent physical-to-physical graph included in ambient L² and
transported by the already source-exact full graph homeomorphism.
Source hCAR/hHermitian/J matching are still theorem hypotheses.

Neither source nor independent charge operator is redefined through J.
No equality of self-adjoint Hamiltonians, closures of physical quadratic
forms, spectral gaps or positive-eigenvalue statements are inferred.
-/
set_option autoImplicit false
set_option maxHeartbeats 100000

namespace FCP.M4F8OriginalNamedFullPhysicalGraphDE4
noncomputable section
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A FCP.BFSSSU2GaugeG4J
open FCP.IndependentPhysicalSpace
open FCP.IndependentSmoothSupercharge
open FCP.IndependentFullL2GaugeTransport
open MeasureTheory Set

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]
private abbrev μ := (volume : Measure (Boson 2))

/-- Literal originally named source gauge-restricted 16-charge closed
graph equals the full 17-slot transported actual independently defined
physical-to-physical E2 graph. D1 source original identity and DE3
physical graph transport are the exact two unweakened dependencies. -/
theorem pairedSourceNamedClosedGraph_eq_actualIndependentFullPhysicalGraph_image
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
    (pairedGaugeData.deformedModelGraph 1 0 :
      Set (FullL2 2 × (SpinIndex → FullL2 2))) =
    (independentGraphTransportHomeomorph J) ''
      ((fun p : independentPhysicalSpace theta hCAR hHermitian ×
        FCP.M4F8IndependentActualE2FullPhysicalGraphRebaseDE2.independentActualPhysicalOutputs
          theta hCAR hHermitian =>
        ((p.1 : Lp E 2 μ), (p.2 : SpinIndex → Lp E 2 μ))) ''
        ((FCP.M4F8IndependentActualE2FullPhysicalGraphRebaseDE2.independentActualE2FullPhysicalChargeColumn
          color gamma theta hCAR hHermitian).graph : Set _)) := by
  have hD1 :
      (pairedGaugeData.deformedModelGraph 1 0 :
        Set (FullL2 2 × (SpinIndex → FullL2 2))) =
      (FCP.BFSSSU2PhysicalDomainD1.originalRestrictedClosedGraph
        pairedAlgebraData pairedGaugeData :
        Set (FullL2 2 × (SpinIndex → FullL2 2))) :=
    congrArg
      (fun S : Submodule ℂ (FullL2 2 × (SpinIndex → FullL2 2)) =>
        (S : Set (FullL2 2 × (SpinIndex → FullL2 2))))
      (FCP.BFSSSU2PhysicalDomainD1.sourceGaugeRestrictedClosedGraph_equal
        pairedAlgebraData pairedGaugeData)
  calc
    (pairedGaugeData.deformedModelGraph 1 0 :
      Set (FullL2 2 × (SpinIndex → FullL2 2))) =
      (FCP.BFSSSU2PhysicalDomainD1.originalRestrictedClosedGraph
        pairedAlgebraData pairedGaugeData : Set _) := hD1
    _ = closure (LinearMap.range
      ((coreToL2.comp pairedGaugeData.invariantCore.subtype).prod
        (pairedAlgebraData.chargeVector.comp
          pairedGaugeData.invariantCore.subtype)) :
        Set (FullL2 2 × (SpinIndex → FullL2 2))) := by
      change
        ((LinearMap.range
          ((coreToL2.comp pairedGaugeData.invariantCore.subtype).prod
            (pairedAlgebraData.chargeVector.comp
              pairedGaugeData.invariantCore.subtype))).topologicalClosure :
          Set (FullL2 2 × (SpinIndex → FullL2 2))) =
        closure (LinearMap.range
          ((coreToL2.comp pairedGaugeData.invariantCore.subtype).prod
            (pairedAlgebraData.chargeVector.comp
              pairedGaugeData.invariantCore.subtype)) :
          Set (FullL2 2 × (SpinIndex → FullL2 2)))
      exact Submodule.topologicalClosure_coe _
    _ = (independentGraphTransportHomeomorph J) ''
      ((fun p : independentPhysicalSpace theta hCAR hHermitian ×
        FCP.M4F8IndependentActualE2FullPhysicalGraphRebaseDE2.independentActualPhysicalOutputs
          theta hCAR hHermitian =>
        ((p.1 : Lp E 2 μ), (p.2 : SpinIndex → Lp E 2 μ))) ''
        ((FCP.M4F8IndependentActualE2FullPhysicalGraphRebaseDE2.independentActualE2FullPhysicalChargeColumn
          color gamma theta hCAR hHermitian).graph : Set _)) :=
      FCP.M4F8IndependentActualPhysicalGraphSourceTransportDE3.sourceRestrictedClosure_eq_actualFullPhysicalE2Graph_image
        color gamma theta hCAR hHermitian J hColor hGamma hJ

#print axioms pairedSourceNamedClosedGraph_eq_actualIndependentFullPhysicalGraph_image

end
end FCP.M4F8OriginalNamedFullPhysicalGraphDE4
