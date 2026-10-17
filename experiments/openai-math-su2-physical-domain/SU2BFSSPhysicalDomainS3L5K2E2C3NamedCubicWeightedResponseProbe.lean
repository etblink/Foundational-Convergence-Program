import SU2BFSSPhysicalDomainS3L5K2E2C2NamedCubicPointwiseDischargeProbe

/-!
# K2E2C3 — physically discharged sixfold source cubic operator transport

The original paired generator, original ordered cubic source factor,
and exact K2D3 response are named definitions in C1; C2 discharges
their pointwise covariance without new physical assumptions. This
module composes the two accepted theorems for ALL six original BFSS
indices and arbitrary complex coefficient family c. Full original
charge/cubic gammaTwo coefficient specialization remains independent.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2E2C3
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5F
open FCP.BFSSSU2PhysicalDomainS3L5K1
open FCP.BFSSSU2PhysicalDomainS3L5K2
open FCP.BFSSSU2PhysicalDomainS3L5K2D3
open FCP.BFSSSU2PhysicalDomainS3L5K2E1D
open FCP.BFSSSU2PhysicalDomainS3L5K2E2C1
open FCP.BFSSSU2PhysicalDomainS3L5K2E2C2

/-- Unconditional sixfold source cubic factor covariance for actual
48-Majorana BFSS source definitions, still parametric in scalar c. -/
theorem pairedCubicNamedWeighted_comm
    (i j : SpaceIndex) (hij : i ≠ j) (c : SpaceIndex → SpaceIndex → ColorIndex 2 →
      ColorIndex 2 → ColorIndex 2 → SpinIndex → ℂ) :
    (pairedCubicSourceGenerator i j).comp (pairedCubicWeightedSum c) -
      (pairedCubicWeightedSum c).comp (pairedCubicSourceGenerator i j) =
      pairedCubicWeightedResponse i j c := by
  have hPoint : ∀ k l A B C γ,
      (pairedCubicSourceGenerator i j).comp
        (pairedCubicSourceFactor k l γ A B C) -
      (pairedCubicSourceFactor k l γ A B C).comp
        (pairedCubicSourceGenerator i j) =
      pairedCubicSourceResponse i j k l γ A B C := by
    intro k l A B C γ
    exact pairedCubicSourceFactor_pointwise i j k l γ A B C hij
  trace "K2E2C3_K2D3_SOURCE_POINTWISE_DISCHARGED"
  exact pairedCubicNamedWeighted_comm_of_pointwise i j c hPoint

#print axioms pairedCubicNamedWeighted_comm
end
end FCP.BFSSSU2PhysicalDomainS3L5K2E2C3
