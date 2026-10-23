import FCPM4F6IndependentLiteralAliasBoundary

/-!
M4F7 C5A — source-exact raw independent graph inclusion, one theorem.

This is a deliberately smaller proof interface than the failed C5
generic closed-graph specialization. A witness from the actual independent
invariant smooth core is itself an unrestricted smooth-core witness.
Only the strictly accepted native A1 full-graph/range alias theorem
is used; no C2 full set equality or topological closure elaboration
occurs in this experiment. Gate #2 tests only structural map application
laws instead of reducing concrete charge maps with `rfl`.

No independent closed LinearPMap, density, Hamiltonian, or spectral
claim follows from this raw supporting statement.
-/

set_option autoImplicit false
set_option maxHeartbeats 600000

namespace FCP.M4F7IndependentRawGraphRangeWitnessC5A
noncomputable section

open OAI.BFSSQuantum
open FCP.IndependentSmoothCore
open FCP.IndependentSmoothSupercharge
open MeasureTheory

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]

private abbrev μ := (volume : Measure (Boson 2))

/-- Literal restricted independent source-actual charge graph range
is a submodule of the named unrestricted charge graph, without
any closed graph or physical-output assertion. -/
theorem independentRestrictedRawGraph_le_fullRawGraph
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric) :
    LinearMap.range
      ((independentCoreToL2.comp
        (independentInvariantCore theta hCAR hHermitian).subtype).prod
        ((independentChargeVector color gamma theta).comp
          (independentInvariantCore theta hCAR hHermitian).subtype)) ≤
      independentFullCoreGraph color gamma theta := by
  intro p hp
  rcases hp with ⟨w, rfl⟩
  rw [FCP.M4F6IndependentLiteralAliasBoundary.independentFullCoreGraph_eq_actualRange
    color gamma theta]
  refine ⟨(w : _), ?_⟩
  simp only [LinearMap.prod_apply, LinearMap.comp_apply]

#print axioms independentRestrictedRawGraph_le_fullRawGraph
#check independentRestrictedRawGraph_le_fullRawGraph

end
end FCP.M4F7IndependentRawGraphRangeWitnessC5A
