import FCPM4F6RestrictedGraphClosureC4

/-!
M4F7 V1 — genuine independent physically restricted closed joint-charge
graph has trivial vertical fiber, under the exact representation J witnesses.

Key simplification: use pinned source M.fullClosedGraph_vertical and
the literal restriction-to-unrestricted graph inclusion. This does NOT
depend on the older D1 deformedModelGraph source alias or its cache.
No independent closed operator or domain identification is claimed.
-/

set_option autoImplicit false
set_option maxHeartbeats 600000

namespace FCP.M4F7IndependentRestrictedClosedGraphVertical
noncomputable section

open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A FCP.BFSSSU2GaugeG4J
open FCP.IndependentSmoothCore
open FCP.IndependentSmoothSupercharge
open FCP.IndependentFullL2GaugeTransport
open FCP.IndependentPhysicalSpace
open MeasureTheory
open Set

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]

private abbrev μ := (volume : Measure (Boson 2))

/-- The literal source gauge-restricted smooth graph closure is contained
in the original source full closed graph, without rewriting through the
deformed source charge realization or assuming any closability. -/
theorem sourceRestrictedGraphClosure_le_fullClosedGraph :
    (LinearMap.range
      ((coreToL2.comp pairedGaugeData.invariantCore.subtype).prod
        (pairedAlgebraData.chargeVector.comp
          pairedGaugeData.invariantCore.subtype))).topologicalClosure ≤
      pairedAlgebraData.fullClosedGraph := by
  apply Submodule.topologicalClosure_mono
  rintro p ⟨f, rfl⟩
  exact ⟨f.val, rfl⟩

/-- Trivial vertical fiber of the actual independently defined
physically input-restricted closed BFSS 16-charge graph relation.
A genuine full-graph source theorem and C4 transport prove this,
without importing a distinct source deformed-graph alias.

This does NOT assert density of the operator domain or identify the
resulting partial operator with a maximal differential realization. -/
theorem independentRestrictedCoreGraph_closure_vertical
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
    (y : SpinIndex → Lp E 2 μ)
    (hy : ((0 : Lp E 2 μ), y) ∈
      closure (LinearMap.range
        ((independentCoreToL2.comp
          (independentInvariantCore theta hCAR hHermitian).subtype).prod
          ((independentChargeVector color gamma theta).comp
            (independentInvariantCore theta hCAR hHermitian).subtype)) :
        Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ)))) :
    y = 0 := by
  let H := independentGraphTransportHomeomorph J
  have hsrc :
      H ((0 : Lp E 2 μ), y) ∈
        closure (LinearMap.range
          ((coreToL2.comp pairedGaugeData.invariantCore.subtype).prod
            (pairedAlgebraData.chargeVector.comp
              pairedGaugeData.invariantCore.subtype)) :
          Set (FullL2 2 × (SpinIndex → FullL2 2))) := by
    rw [FCP.M4F6RestrictedGraphClosureC4.sourceRestrictedCoreGraph_closure_eq_independent_image_closure
      color gamma theta hCAR hHermitian J hColor hGamma hJ]
    exact ⟨((0 : Lp E 2 μ), y), hy, rfl⟩
  have hfull : H ((0 : Lp E 2 μ), y) ∈
      pairedAlgebraData.fullClosedGraph := by
    apply sourceRestrictedGraphClosure_le_fullClosedGraph
    exact hsrc
  have hsourceZero :
      ((0 : FullL2 2), fun α : SpinIndex => fiberTransport J (y α)) ∈
      pairedAlgebraData.fullClosedGraph := by
    have hh := hfull
    change (fiberTransport J (0 : Lp E 2 μ),
      fun α : SpinIndex => fiberTransport J (y α)) ∈
        pairedAlgebraData.fullClosedGraph at hh
    simpa only [(fiberTransport J).map_zero] using hh
  have hfiberZero : (fun α : SpinIndex => fiberTransport J (y α)) = 0 :=
    pairedAlgebraData.fullClosedGraph_vertical hsourceZero
  funext α
  apply (fiberTransportUnitary J).injective
  change fiberTransport J (y α) = fiberTransport J (0 : Lp E 2 μ)
  have hα : fiberTransport J (y α) = 0 := by
    simpa only [Pi.zero_apply] using congrFun hfiberZero α
  simpa only [(fiberTransport J).map_zero] using hα

#print axioms sourceRestrictedGraphClosure_le_fullClosedGraph
#print axioms independentRestrictedCoreGraph_closure_vertical
#check independentRestrictedCoreGraph_closure_vertical

end
end FCP.M4F7IndependentRestrictedClosedGraphVertical
