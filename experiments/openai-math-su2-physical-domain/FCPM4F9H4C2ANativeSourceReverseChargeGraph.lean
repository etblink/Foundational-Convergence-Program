import FCPM4F9H4C1BSourceDomainIndependentNativeRecovery
import FCPM4F9H4B1CNativeSourceGraphForward

/-!
BFSS M4F9 H4C2A — actual original AY native charge graph → genuinely
independent J-free E2 native charge graph under inverse PHYSICAL INPUT
and SIXTEEN-OUTPUT HILBERT unitaries.

This uses exact H4C1B source natural-domain recovery, accepted H4B1C
native forward charge graph inclusion and the frozen Mathlib theorem
LinearPMap.mem_graph_snd_inj'. NO SOURCE OPERATOR REDEFINITION.
-/
set_option autoImplicit false
set_option maxHeartbeats 200000

namespace FCP.M4F9H4C2ANativeSourceReverseChargeGraph
noncomputable section

open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A FCP.BFSSSU2GaugeG4J
open FCP.IndependentPhysicalSpace
open FCP.M4F9H2APhysicalHilbertOutputUnitary
open FCP.M4F9H2CActualE2NativeHilbertChargeColumn
open FCP.M4F9H3B2OriginalAYNativePhysicalHilbertChargeColumn
open MeasureTheory Set

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]
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
include color gamma hColor hGamma

/-- Entire ACTUAL source-native charge graph transports into actual J-free
independent E2 native graph by the inverse genuine physical Hilbert
input and output unitaries. Source output equality follows by literal
original AY partial charge graph single-valuedness, not an assumed
operator equality. -/
theorem nativeSourceGraph_mem_independentGraph
    (p : pairedGaugeData.physicalSpace ×
      PiLp 2 (fun _ : SpinIndex => pairedGaugeData.physicalSpace))
    (hp : p ∈ pairedOriginalNativePhysicalHilbertChargeColumn.graph) :
    ((independentPhysicalUnitary theta hCAR hHermitian J hJ).symm p.1,
      (independentPhysicalHilbertOutputUnitary
        theta hCAR hHermitian J hJ).symm p.2) ∈
      (independentActualE2NativeHilbertChargeColumn
        theta hCAR hHermitian color gamma).graph := by
  let U := independentPhysicalUnitary theta hCAR hHermitian J hJ
  let V := independentPhysicalHilbertOutputUnitary
    theta hCAR hHermitian J hJ
  have hdom : p.1 ∈ pairedOriginalNativePhysicalHilbertChargeColumn.domain :=
    LinearPMap.mem_domain_of_mem_graph hp
  have hIndDom : U.symm p.1 ∈
      (independentActualE2NativeHilbertChargeColumn
        theta hCAR hHermitian color gamma).domain :=
    FCP.M4F9H4C1BSourceDomainIndependentNativeRecovery.nativeSourceDomain_symm_mem_independentDomain
      theta hCAR hHermitian color gamma J hColor hGamma hJ p.1 hdom
  obtain ⟨v, hv⟩ := (LinearPMap.mem_domain_iff).mp hIndDom
  have hForward : (U (U.symm p.1), V v) ∈
      pairedOriginalNativePhysicalHilbertChargeColumn.graph :=
    FCP.M4F9H4B1CNativeSourceGraphForward.nativeIndependentGraph_mem_sourceGraph
      theta hCAR hHermitian color gamma J hColor hGamma hJ
      (U.symm p.1, v) hv
  have hInput : U (U.symm p.1) = p.1 := U.apply_symm_apply p.1
  have hOutput : V v = p.2 :=
    LinearPMap.mem_graph_snd_inj'
      pairedOriginalNativePhysicalHilbertChargeColumn hForward hp hInput
  have hLift : V.symm p.2 = v := by
    rw [← hOutput]
    exact V.symm_apply_apply v
  change (U.symm p.1, V.symm p.2) ∈
      (independentActualE2NativeHilbertChargeColumn
        theta hCAR hHermitian color gamma).graph
  rw [hLift]
  exact hv

#print axioms nativeSourceGraph_mem_independentGraph
end
end FCP.M4F9H4C2ANativeSourceReverseChargeGraph
