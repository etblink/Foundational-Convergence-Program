import FCPM4F9H4ANativeHilbertAmbientCoordinateTransport

/-!
M4F9 H4B1 — first genuine NATIVE physical Hilbert graph inclusion:
every actual J-free independent E2 closed charge graph point transports
through the already-qualified physical input/output unitaries into the
ORIGINAL AY physical-to-physical Hilbert charge graph. Not a definition
by transporting source operators. Not the reverse inclusion or yet a
Hamiltonian equivalence. All source-matching witnesses explicit.
-/
set_option autoImplicit false
set_option maxHeartbeats 200000

namespace FCP.M4F9H4B1NativeSourceIndependentGraphInclusion
noncomputable section
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A FCP.BFSSSU2GaugeG4J
open FCP.BFSSSU2PhysicalDomainL6H5E8AY
open FCP.BFSSSU2PhysicalDomainL6H5E8BF
open FCP.IndependentPhysicalSpace
open FCP.IndependentSmoothSupercharge
open FCP.M4F9H2APhysicalHilbertOutputUnitary
open FCP.M4F9H2BPhysicalHilbertE2GraphRebase
open FCP.M4F9H2CActualE2NativeHilbertChargeColumn
open FCP.M4F9H3B1OriginalAYNativePhysicalHilbertGraphRebase
open FCP.M4F9H3B2OriginalAYNativePhysicalHilbertChargeColumn
open FCP.M4F9H4ANativeHilbertAmbientCoordinateTransport
open MeasureTheory Set

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]
private abbrev μ := (volume : Measure (Boson 2))
variable (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
variable (hCAR : ∀ α β A B,
  theta α A * theta β B + theta β B * theta α A =
    (if α = β ∧ A = B then (1 : ℂ) else 0) • (1 : Module.End ℂ E))
variable (hHermitian : ∀ α A, (theta α A).IsSymmetric)
variable (color : ColorIndex 2 → ColorMatrix 2)
variable (gamma : SpaceIndex → GammaMatrix)
variable (J : E ≃ₗᵢ[ℂ] Fermion 2)
variable (hColor : color = pairedAlgebraData.color)
variable (hGamma : gamma = pairedAlgebraData.gamma)
variable (hJ : ∀ α A w, J (theta α A w) = pairedTheta α A (J w))

/-- Full native independent → source AY physical graph inclusion.
The SOURCE graph is exactly the H3B2 source-defined AY operator graph;
the INDEPENDENT graph is the H2C genuinely J-free E2 operator graph.
Proof uses literal DE4 named source ambient graph identity plus the
native coordinate-transport compatibility of H4A. -/
theorem nativeIndependentGraph_mem_sourceGraph
    (p : independentPhysicalSpace theta hCAR hHermitian ×
      PiLp 2 (fun _ : SpinIndex =>
        independentPhysicalSpace theta hCAR hHermitian))
    (hp : p ∈ (independentActualE2NativeHilbertChargeColumn
      theta hCAR hHermitian color gamma).graph) :
    (independentPhysicalUnitary theta hCAR hHermitian J hJ p.1,
      independentPhysicalHilbertOutputUnitary
        theta hCAR hHermitian J hJ p.2) ∈
      pairedOriginalNativePhysicalHilbertChargeColumn.graph := by
  have hgraph :
      p ∈ independentActualE2HilbertPhysicalGraph
        theta hCAR hHermitian color gamma := by
    rwa [independentActualE2NativeHilbertChargeColumn_graph_eq] at hp
  have hDE2 :
      (p.1, hilbertPhysicalOutputsToActualOutputs
        theta hCAR hHermitian p.2) ∈
      (FCP.M4F8IndependentActualE2FullPhysicalGraphRebaseDE2.independentActualE2FullPhysicalChargeColumn
        color gamma theta hCAR hHermitian).graph :=
    (independentActualE2HilbertPhysicalGraph_mem_iff
      theta hCAR hHermitian color gamma p).mp hgraph
  let q : independentPhysicalSpace theta hCAR hHermitian ×
      FCP.M4F8IndependentActualE2FullPhysicalGraphRebaseDE2.independentActualPhysicalOutputs
        theta hCAR hHermitian :=
    (p.1, hilbertPhysicalOutputsToActualOutputs
      theta hCAR hHermitian p.2)
  have hq : q ∈ (FCP.M4F8IndependentActualE2FullPhysicalGraphRebaseDE2.independentActualE2FullPhysicalChargeColumn
      color gamma theta hCAR hHermitian).graph := hDE2
  have hq_ambient :
      (((q.1 : Lp E 2 μ), (q.2 : SpinIndex → Lp E 2 μ))) =
      ((p.1 : Lp E 2 μ),
        fun α : SpinIndex => ((p.2 α : independentPhysicalSpace theta hCAR hHermitian) : Lp E 2 μ)) := by
    apply Prod.ext
    · rfl
    · funext α
      rfl
  have hsrc :
      (((independentPhysicalUnitary theta hCAR hHermitian J hJ p.1 :
          pairedGaugeData.physicalSpace) : FullL2 2),
        (fun α : SpinIndex =>
          (((independentPhysicalHilbertOutputUnitary
            theta hCAR hHermitian J hJ p.2) α :
            pairedGaugeData.physicalSpace) : FullL2 2))) ∈
        (pairedGaugeData.deformedModelGraph 1 0 :
          Set (FullL2 2 × (SpinIndex → FullL2 2))) := by
    rw [FCP.M4F8OriginalNamedFullPhysicalGraphDE4.pairedSourceNamedClosedGraph_eq_actualIndependentFullPhysicalGraph_image
      color gamma theta hCAR hHermitian J hColor hGamma hJ]
    refine ⟨((p.1 : Lp E 2 μ),
      fun α : SpinIndex => ((p.2 α : independentPhysicalSpace theta hCAR hHermitian) : Lp E 2 μ)), ?_, ?_⟩
    · exact ⟨q, hq, hq_ambient⟩
    · exact (nativePair_eq_ambientFiberTransport theta hCAR hHermitian J hJ p).symm
  have hhilbert :
      originalMinimalHilbertOutputEquiv
        (pairedPhysicalHilbertOutputsToOriginalAmbient
          (independentPhysicalHilbertOutputUnitary
            theta hCAR hHermitian J hJ p.2)) =
      (fun α : SpinIndex =>
        (((independentPhysicalHilbertOutputUnitary
            theta hCAR hHermitian J hJ p.2) α :
          pairedGaugeData.physicalSpace) : FullL2 2)) := by
    rfl
  have hsourceAY :
      (independentPhysicalUnitary theta hCAR hHermitian J hJ p.1,
        pairedPhysicalHilbertOutputsToOriginalAmbient
          (independentPhysicalHilbertOutputUnitary
            theta hCAR hHermitian J hJ p.2)) ∈
      (originalMinimalPhysicalHilbertChargeColumn
        pairedAlgebraData pairedGaugeData).graph := by
    rw [originalMinimalPhysicalHilbertChargeColumn_graph_eq]
    apply (originalMinimalPhysicalHilbertChargeGraph_mem_source_iff
      pairedAlgebraData pairedGaugeData _).mpr
    simpa only [hhilbert] using hsrc
  rw [pairedOriginalNativePhysicalHilbertChargeColumn_graph_eq]
  exact (pairedOriginalPhysicalHilbertChargeGraph_mem_iff _).mpr hsourceAY

#print axioms nativeIndependentGraph_mem_sourceGraph
end
end FCP.M4F9H4B1NativeSourceIndependentGraphInclusion
