import FCPM4F7IndependentChargeOutputTypedE7A
import FCPM4F7GenericClosedRangeOutputsE7G
import FCPM4F7IndependentClosedChargePhysicalInputE6

/-!
M4F7 E7C — source-exact independent *literal invariant
smooth-core charge graph closure* physical-output certificate.

E7A and E7G are separately strictly accepted. They give,
respectively, the exact independent CAR/hermitian charge-vector
output on invariant core subtype, and the generic principle that
closed submodules contain outputs after graph closure. E6
supplies closedness of the actual J-free-defined physical L² space.

E7C deliberately mentions neither the actual E2 closed partial
operator in its theorem statement nor the source named D1
deformedModelGraph alias. It is a *supporting* source-specific
literal closed-graph theorem, not final physical closed operator
identity. No new assumptions and no weakened physical predicates.

The next independent leaf must compose accepted E7C with E3's
actual E2 LinearPMap graph equality; do not count this supporting
certificate as an additional principal physical operator root.
-/

set_option autoImplicit false
set_option maxHeartbeats 100000

namespace FCP.M4F7LiteralRestrictedClosurePhysicalOutputsE7C
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

/-- Every output of the literal independent invariant smooth-charge
graph closure is in the independently defined physical Hilbert space.
This includes closure points, not only smooth test sections.

The literal graph is exactly the original J-free E3 restricted range,
and this theorem does not use an E2 operator declaration. -/
theorem literalIndependentRestrictedCoreGraph_closure_all_outputs_physical
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
    (hp : p ∈ closure (LinearMap.range
      ((independentCoreToL2.comp
        (independentInvariantCore theta hCAR hHermitian).subtype).prod
        ((independentChargeVector color gamma theta).comp
          (independentInvariantCore theta hCAR hHermitian).subtype)) :
      Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ)))) :
    ∀ α : SpinIndex,
      p.2 α ∈ independentPhysicalSpace theta hCAR hHermitian := by
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
    hQ p hp α

#print axioms literalIndependentRestrictedCoreGraph_closure_all_outputs_physical
#check literalIndependentRestrictedCoreGraph_closure_all_outputs_physical

end
end FCP.M4F7LiteralRestrictedClosurePhysicalOutputsE7C
