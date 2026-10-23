import FCPM4F7OpaqueLiteralGraphInterfaceE7D

/-!
M4F7 E7E — PROSPECTIVE physical output membership for the
exactly named J-free independent literal restricted closed graph.

Only the exact source-identity certificate from E7D is unfolded,
not the 16-charge formulas and not the actual E2 partial operator.
The source-specific charge-output premise is the strictly accepted
E7A typed `LinearMap.comp` output theorem, and graph output
closure is the strictly accepted generic E7G lemma. Genuine
independent physical subspace closedness is strict-accepted E6.

NO acceptance until E7D has a current-branch qualified .olean and
E7E is independently compiled with a strict permitted-axiom report.
A later proof must compose this with accepted E3 to conclude the
actual E2 closed-operator graph has physical outputs.

No J-dependent replacement for the independent definition.
No density or Hamiltonian claim.
-/

set_option autoImplicit false
set_option maxHeartbeats 100000

namespace FCP.M4F7OpaqueLiteralClosedPhysicalOutputsE7E
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

/-- The exact named native independent literal graph closure has
all sixteen output coordinates in the actual independent SU(2)
physical Hilbert space, under original source coefficient matching. -/
theorem literalRestrictedClosedGraphSet_all_outputs_physical
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
      FCP.M4F7OpaqueLiteralGraphInterfaceE7D.literalRestrictedClosedGraphSet
        color gamma theta hCAR hHermitian)
    (α : SpinIndex) :
    p.2 α ∈ independentPhysicalSpace theta hCAR hHermitian := by
  have hQ :
      ∀ (f : independentInvariantCore theta hCAR hHermitian)
        (β : SpinIndex),
        (((independentChargeVector color gamma theta).comp
          (independentInvariantCore theta hCAR hHermitian).subtype) f) β ∈
            independentPhysicalSpace theta hCAR hHermitian := by
    intro f β
    exact FCP.M4F7IndependentChargeOutputTypedE7A.independentChargeVector_comp_invariantCore_output_physical
      color gamma theta hCAR hHermitian J hColor hGamma hJ f β
  have hsource :
      p ∈ closure (LinearMap.range
        ((independentCoreToL2.comp
          (independentInvariantCore theta hCAR hHermitian).subtype).prod
          ((independentChargeVector color gamma theta).comp
            (independentInvariantCore theta hCAR hHermitian).subtype)) :
        Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) := by
    rw [FCP.M4F7OpaqueLiteralGraphInterfaceE7D.literalRestrictedClosedGraphSet_eq] at hp
    exact hp
  exact FCP.M4F7GenericClosedRangeOutputsE7G.closed_product_range_output_mem
    (independentCoreToL2.comp
      (independentInvariantCore theta hCAR hHermitian).subtype)
    ((independentChargeVector color gamma theta).comp
      (independentInvariantCore theta hCAR hHermitian).subtype)
    (independentPhysicalSpace theta hCAR hHermitian)
    (FCP.M4F7IndependentClosedChargePhysicalInputE6.independentPhysicalSpace_isClosed
      theta hCAR hHermitian J hJ)
    hQ p hsource α

#print axioms literalRestrictedClosedGraphSet_all_outputs_physical

end
end FCP.M4F7OpaqueLiteralClosedPhysicalOutputsE7E
