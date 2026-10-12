import SU2BFSSPhysicalDomainS3L5K2E2D0OriginalCubicNamedSourceDefinitionsProbe

/-!
# E2D1 — bounded one-factor literal-to-named source bridge

K2D3 already proved the unconditional original 48-Majorana cubic-factor
commutator at the literal source level. E2C1 then failed due to whnf
heartbeat while comparing a named sixfold source sum with the accepted
generic E1D transport. Rather than retry that operation, isolate
exactly ONE generator-factor-response definitional interface here.

This module has NO finite sum, NO source scalar coefficient and NO
new physical assumption beyond i != j. A red at its sole theorem
localizes the named-source interface issue; no run of the old C1
sixfold proof is authorized by this test.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2E2D1
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K2D3
open FCP.BFSSSU2PhysicalDomainS3L5K2E2D0

/-- A source-faithful pointwise theorem for the THREE genuine named
operators; no conversion across any sixfold source sums. -/
theorem pairedCubicSourceFactor_pointwise_named
    (i j k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) (hij : i ≠ j) :
    (pairedCubicSourceGenerator i j).comp
      (pairedCubicSourceFactor k l γ A B C) -
    (pairedCubicSourceFactor k l γ A B C).comp
      (pairedCubicSourceGenerator i j) =
    pairedCubicSourceResponse i j k l γ A B C := by
  trace "E2D1_SINGLE_SOURCE_FACTOR_BRIDGE"
  exact pairedActualCombined_comm_cubicFactor i j k l γ A B C hij

#print axioms pairedCubicSourceFactor_pointwise_named
end
end FCP.BFSSSU2PhysicalDomainS3L5K2E2D1
