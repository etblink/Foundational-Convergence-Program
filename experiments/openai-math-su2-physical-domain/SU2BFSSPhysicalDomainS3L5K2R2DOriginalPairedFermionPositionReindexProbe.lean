import SU2BFSSPhysicalDomainS3L5K2R2COriginalPositionVariationReindexProbe
import SU2BFSSPhysicalDomainS3L5K2AOriginalFermionActionCovarianceProbe

/-!
# K2R2D — actual paired SU(2) fermionAction under source spatial reindex

R2C proves exact K1 spatial response for original source coordinate
multipliers and arbitrary F. This new theorem specializes only F to
the genuine pairedAlgebraData.fermionAction γ A, whose source is the
original 48-Majorana BFSS model. No original full generator is
expanded, no sixfold cubic charge is evaluated and no fake physics
object is introduced. Later R3 must still show original gammaTwo
spatial coefficient transport.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R2D
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K1
open FCP.BFSSSU2PhysicalDomainS3L5K2
open FCP.BFSSSU2PhysicalDomainS3L5K2R2C

/-- Exact original fermionic cubic factor with its two independent
spatial responses and arbitrary complex spatial weight, retaining
ordered original source composition. -/
theorem pairedOriginalCubicPositionResponse_reindex
    (i j : SpaceIndex) (hij : i ≠ j)
    (γ : SpinIndex) (A B C : ColorIndex 2)
    (c : SpaceIndex → SpaceIndex → ℂ) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      c k l •
        ((pairedAlgebraData.fermionAction γ A).comp
          ((sourcePositionVariation i j k B).comp
            (position (N := 2) l C)) +
         (pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp
            (sourcePositionVariation i j l C)))) =
    ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ((if k = i then c j l else if k = j then -(c i l) else 0) +
       (if l = i then c k j else if l = j then -(c k i) else 0)) •
         (pairedAlgebraData.fermionAction γ A).comp
           ((position (N := 2) k B).comp
             (position (N := 2) l C)) := by
  exact sourceOriginalPositionPairSpatial_reindex i j hij
    (pairedAlgebraData.fermionAction γ A) B C c

#print axioms pairedOriginalCubicPositionResponse_reindex
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R2D
