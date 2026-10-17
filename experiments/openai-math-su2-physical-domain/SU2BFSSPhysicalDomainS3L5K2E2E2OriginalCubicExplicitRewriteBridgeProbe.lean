import SU2BFSSPhysicalDomainS3L5K2E2E1OriginalCubicDefiningEquationProbe

/-!
# E2E2: use independently checked explicit defining equations for K2D3

The E2D1 bare 'exact K2D3' exceeds maxRecDepth when asked to compare
the literal 48-Majorana source and three named definitions. E2E1
separately qualifies one defining equation per existing original
generator, cubic factor, and exact response. This proof attempts to
rewrite these named references BEFORE applying sealed literal K2D3.

No global declaration transparency changes, new axioms, surrogate
operators, scalar weights or sixfold sums. If the rewrite itself is
expensive, classify the first diagnostic and STOP old alias variants.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2E2E2
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

theorem pairedCubicSourceFactor_pointwise_named_via_equations
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

#print axioms pairedCubicSourceFactor_pointwise_named_via_equations
end
end FCP.BFSSSU2PhysicalDomainS3L5K2E2E2
