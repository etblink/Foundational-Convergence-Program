import SU2BFSSPhysicalDomainS3L5K2R4IOriginalThreeColorSourceResponseLiftProbe

/-!
# R4J — exact original cubic factor response composition-add bridge

K2D3's literal original cubic-factor commutator response contains
fermionAction.comp (position-variation-left + position-variation-right).
The separately accepted R4D/R4I source response is in expanded
fermionAction.comp left + fermionAction.comp right form.

This single original-factor lemma certifies their exact equality
without changing the original source generator or postulating a
pointwise commutator. Subsequent sixfold named-response identification
is a distinct unproved obligation.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R4J
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K1
open FCP.BFSSSU2PhysicalDomainS3L5K2
open FCP.BFSSSU2PhysicalDomainS3L5K3

/-- The actual original fermion/position response's additive
composition law: precisely the two conventions used in K2D3 and
R4D/R4I, retaining all 9-space, 16-spinor and SU(2)-color labels. -/
theorem pairedOriginalCubicResponse_nestedAdd_eq_expanded
    (i j k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) :
    (sourceCubicFermionVariation i j γ A).comp
      ((position (N := 2) k B).comp (position (N := 2) l C)) +
    (pairedAlgebraData.fermionAction γ A).comp
      ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
       (position (N := 2) k B).comp (sourcePositionVariation i j l C)) =
    (sourceCubicFermionVariation i j γ A).comp
      ((position (N := 2) k B).comp (position (N := 2) l C)) +
    ((pairedAlgebraData.fermionAction γ A).comp
      ((sourcePositionVariation i j k B).comp (position (N := 2) l C)) +
     (pairedAlgebraData.fermionAction γ A).comp
      ((position (N := 2) k B).comp (sourcePositionVariation i j l C))) := by
  rw [LinearMap.comp_add]

#print axioms pairedOriginalCubicResponse_nestedAdd_eq_expanded
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R4J
