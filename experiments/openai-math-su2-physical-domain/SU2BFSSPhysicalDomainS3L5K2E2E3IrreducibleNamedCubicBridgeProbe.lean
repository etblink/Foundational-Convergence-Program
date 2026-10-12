import SU2BFSSPhysicalDomainS3L5K2E2E1OriginalCubicDefiningEquationProbe

/-!
# E2E3: final bounded Grok irreducibility differential test

E2E1's three source defining equations compiled, but E2E2's final
exact after simp only exceeded Lean recursion. Grok's original
proposal also changed reducibility of the three names. This probe
isolates that one difference. The mathematical statement and tactic
body, source objects, assumptions, pins and axioms are unchanged.
If this still fails, stop further alias conversion attempts.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2E2E3
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
open FCP.BFSSSU2PhysicalDomainS3L5K2E2D0
open FCP.BFSSSU2PhysicalDomainS3L5K2E2E1

-- Contained in this probe's imported environment; upstream D0 is unchanged.
attribute [irreducible]
  pairedCubicSourceGenerator
  pairedCubicSourceFactor
  pairedCubicSourceResponse

theorem pairedCubicSourceFactor_pointwise_named_irreducible
    (i j k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) (hij : i ≠ j) :
    (pairedCubicSourceGenerator i j).comp
      (pairedCubicSourceFactor k l γ A B C) -
    (pairedCubicSourceFactor k l γ A B C).comp
      (pairedCubicSourceGenerator i j) =
    pairedCubicSourceResponse i j k l γ A B C := by
  -- Unlike failed E2D1, perform syntactically targeted rewrites first.
  simp only [pairedCubicSourceGenerator_eq,
    pairedCubicSourceFactor_eq, pairedCubicSourceResponse_eq]
  exact pairedActualCombined_comm_cubicFactor i j k l γ A B C hij

#print axioms pairedCubicSourceFactor_pointwise_named_irreducible
end
end FCP.BFSSSU2PhysicalDomainS3L5K2E2E3
