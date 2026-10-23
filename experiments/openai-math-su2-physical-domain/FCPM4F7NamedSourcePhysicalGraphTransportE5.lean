import FCPM4F7PhysicalGraphTransportE4
import SU2BFSSPhysicalDomainD1RestrictedSourceGraphProbe

/-!
M4F7 E5 — PROSPECTIVE source-named restricted closed 16-charge graph
identification with the transported genuine J-free independent E2
closed operator graph.

E4 already proves the equality for the literal SOURCE restricted
smooth-core graph closure. The independently strict-accepted source-only
D1 sourceGaugeRestrictedClosedGraph_equal identifies that literal closure
with the named upstream pairedGaugeData.deformedModelGraph 1 0.

This E5 leaf must NOT be counted or reported as compiled until its
separate current-branch qualified ancestor import closure and strict
Lean gate succeed. Historical D1 success was on a separate research
branch and does not imply that its .olean is available in E4's cache.

No original source/Hamiltonian statement, independent definition,
CAR hypothesis, source unitary, measure, graph or topology is changed.
-/

set_option autoImplicit false
set_option maxHeartbeats 100000

namespace FCP.M4F7NamedSourcePhysicalGraphTransportE5
noncomputable section

open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A FCP.BFSSSU2GaugeG4J
open FCP.IndependentSmoothCore
open FCP.IndependentSmoothSupercharge
open FCP.IndependentFullL2GaugeTransport
open FCP.IndependentPhysicalSpace
open MeasureTheory Set

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]
private abbrev μ := (volume : Measure (Boson 2))

/-- PROSPECTIVE: the named ORIGINAL source gauge-restricted CLOSED graph
is the exact 17-slot image of the actual INDEPENDENT J-free E2
physical-input-cut minimal closed partial operator graph.
This does not yet claim source/independent physical rebased domain
density, output-as-physical operator or equality of Hamiltonians. -/
theorem pairedSourceNamedPhysicalClosedGraph_eq_independentOperatorGraph_image
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
      ((FCP.M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutClosedChargeColumn
        color gamma theta hCAR hHermitian).graph :
          Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) := by
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
      ((FCP.M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutClosedChargeColumn
        color gamma theta hCAR hHermitian).graph :
          Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) :=
      FCP.M4F7PhysicalGraphTransportE4.sourceRestrictedCoreClosure_eq_independentPhysicalOperatorGraph_image
        color gamma theta hCAR hHermitian J hColor hGamma hJ

#print axioms pairedSourceNamedPhysicalClosedGraph_eq_independentOperatorGraph_image
#check pairedSourceNamedPhysicalClosedGraph_eq_independentOperatorGraph_image

end
end FCP.M4F7NamedSourcePhysicalGraphTransportE5
