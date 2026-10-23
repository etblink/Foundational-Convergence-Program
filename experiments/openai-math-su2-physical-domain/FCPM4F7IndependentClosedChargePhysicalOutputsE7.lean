import FCPM4F7IndependentClosedChargePhysicalInputE6
import FCPM4F1TypedIndependentInvariantCharge

/-!
M4F7 E7 — physical Hilbert-space invariance of ALL sixteen charge
OUTPUTS in the actual independent J-free E2 closed graph.

The accepted M4F1 S2 source-exact theorem proves the actual
independently defined smooth supercharge maps native gauge-invariant
smooth sections back into the native invariant core. E3's *named*
literal-range equality supplies the exact smooth-core graph witness.
The accepted E6 physical-space closedness then propagates this output
constraint under topological graph closure via closure_minimal.

No source named D1 graph alias is used, no new charge formula,
no weakening of the J/hCAR/hHermitian/source coefficient hypotheses,
no density, rebased physical Hilbert operator, quadratic form or spectrum.
-/

set_option autoImplicit false
set_option maxHeartbeats 100000

namespace FCP.M4F7IndependentClosedChargePhysicalOutputsE7
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

/-- Abstract typed range-output lemma. No BFSS object is expanded inside
the existential product-map witness elimination or output projection. -/
private theorem abstract_range_prod_output_mem
    {V X Y : Type*}
    [AddCommGroup V] [Module ℂ V]
    [AddCommGroup X] [Module ℂ X]
    [AddCommGroup Y] [Module ℂ Y]
    (F : V →ₗ[ℂ] X)
    (Q : V →ₗ[ℂ] (SpinIndex → Y))
    (P : Submodule ℂ Y)
    (hQ : ∀ (v : V) (β : SpinIndex), (Q v) β ∈ P)
    (p : X × (SpinIndex → Y))
    (hp : p ∈ (LinearMap.range (F.prod Q) :
      Set (X × (SpinIndex → Y))))
    (α : SpinIndex) : p.2 α ∈ P := by
  rcases hp with ⟨v, rfl⟩
  exact hQ v α


/-- Every independently defined smooth charge preserves the native
physical Hilbert subspace on genuine independent invariant smooth-core
sections. This small typed helper composes the accepted M4F1 S2 theorem
with the original independentInvariantCore comap definition. -/
theorem independentInvariantCoreChargeVector_output_physical
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
    (f : independentInvariantCore theta hCAR hHermitian)
    (α : SpinIndex) :
    independentChargeVector color gamma theta f.val α ∈
      independentPhysicalSpace theta hCAR hHermitian := by
  have hq :=
    FCP.IndependentSmoothSupercharge.independentCharge_mem_invariantCore
      color gamma theta hCAR hHermitian J hColor hGamma hJ α f
  change independentCoreToL2
    (independentCharge color gamma theta α f.val) ∈
      independentPhysicalSpace theta hCAR hHermitian at hq
  change independentCoreToL2
    (independentCharge color gamma theta α f.val) ∈
      independentPhysicalSpace theta hCAR hHermitian
  exact hq

/-- Actual full CLOSED E2 independent sixteen-charge minimal operator
has every one of its 16 outputs inside the original J-free independent
SU(2)-physical Hilbert subspace, including graph-norm limits, not just
the invariant test core. No density or Hamiltonian claim follows. -/
theorem independentPhysicalInputCutClosedChargeColumn_output_physical
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
        Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))))
    (α : SpinIndex) :
    p.2 α ∈ independentPhysicalSpace theta hCAR hHermitian := by
  have hclosed : IsClosed
      {q : Lp E 2 μ × (SpinIndex → Lp E 2 μ) |
        q.2 α ∈ independentPhysicalSpace theta hCAR hHermitian} :=
    (FCP.M4F7IndependentClosedChargePhysicalInputE6.independentPhysicalSpace_isClosed
      theta hCAR hHermitian J hJ).preimage
      ((continuous_apply α).comp continuous_snd)
  have hcore :
      (FCP.M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutCoreGraph
        color gamma theta hCAR hHermitian :
        Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) ⊆
      {q : Lp E 2 μ × (SpinIndex → Lp E 2 μ) |
        q.2 α ∈ independentPhysicalSpace theta hCAR hHermitian} := by
    intro q hq
    have hliteral : q ∈
        (LinearMap.range
          ((independentCoreToL2.comp
            (independentInvariantCore theta hCAR hHermitian).subtype).prod
            ((independentChargeVector color gamma theta).comp
              (independentInvariantCore theta hCAR hHermitian).subtype)) :
          Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) :=
      (Set.ext_iff.mp
        (FCP.M4F7IndependentLiteralRestrictedGraphBridgeE3.independentPhysicalInputCutCoreGraph_eq_literalRestrictedRange
          color gamma theta hCAR hHermitian) q).mp hq
    have hMap :
        ∀ (f : independentInvariantCore theta hCAR hHermitian)
          (β : SpinIndex),
          (((independentChargeVector color gamma theta).comp
            (independentInvariantCore theta hCAR hHermitian).subtype) f) β ∈
              independentPhysicalSpace theta hCAR hHermitian := by
      intro f β
      exact independentInvariantCoreChargeVector_output_physical
        color gamma theta hCAR hHermitian J hColor hGamma hJ f β
    exact abstract_range_prod_output_mem
      (independentCoreToL2.comp
        (independentInvariantCore theta hCAR hHermitian).subtype)
      ((independentChargeVector color gamma theta).comp
        (independentInvariantCore theta hCAR hHermitian).subtype)
      (independentPhysicalSpace theta hCAR hHermitian)
      hMap q hliteral α
  have hclosure := closure_minimal hcore hclosed
  rw [FCP.M4F7IndependentPhysicalInputCutOperatorE2.independentPhysicalInputCutClosedChargeColumn_graph_eq
    color gamma theta hCAR hHermitian J hColor hGamma hJ,
    Submodule.topologicalClosure_coe] at hp
  exact hclosure hp

#print axioms independentInvariantCoreChargeVector_output_physical
#print axioms independentPhysicalInputCutClosedChargeColumn_output_physical

end
end FCP.M4F7IndependentClosedChargePhysicalOutputsE7
