import SU2BFSSPhysicalDomainS3L5K2E2C1NamedCubicSourceFamilyTransportProbe

/-!
# K2E2C2 — physical discharge at ONE original cubic source factor

This is the critical *single-factor* definitional bridge from already
kernel-qualified literal K2D3 to the source-faithful named operators
defined in C1. No finite sum or scalar coefficient occurs in this
theorem, and no physical hypothesis is added beyond i ≠ j.

Theorem UNQUALIFIED until compiler and axiom audit finish. If name
conversion itself hits maxRecDepth, preserve C1 and investigate an
explicit source-defining equation instead of retries of K2B simpa.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2E2C2
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

/-- K2D3 exact 48-Majorana source commutator, one named cubic factor. -/
theorem pairedCubicSourceFactor_pointwise
    (i j k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) (hij : i ≠ j) :
    (pairedCubicSourceGenerator i j).comp
      (pairedCubicSourceFactor k l γ A B C) -
    (pairedCubicSourceFactor k l γ A B C).comp
      (pairedCubicSourceGenerator i j) =
    pairedCubicSourceResponse i j k l γ A B C := by
  trace "K2E2C2_ENTER_SINGLE_ORIGINAL_SOURCE_FACTOR"
  exact pairedActualCombined_comm_cubicFactor i j k l γ A B C hij

#print axioms pairedCubicSourceFactor_pointwise
end
end FCP.BFSSSU2PhysicalDomainS3L5K2E2C2
