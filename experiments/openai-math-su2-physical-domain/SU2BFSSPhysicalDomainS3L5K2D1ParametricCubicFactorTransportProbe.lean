import SU2BFSSPhysicalDomainS3L5K2AOriginalFermionActionCovarianceProbe

/-!
# S3L5K2D1 — source-parametric cubic factor transport, before original specialization

This is a NEW theorem architecture, not K2B with aliases:
  * Keep the genuine Fock generator K and source AlgebraData M as VARIABLES.
  * Assume the fermionAction commutator response hF explicitly.
  * Discharge the position-pair factor through accepted source-parametric K1.
  * Discharge operator multiplication through accepted sourceComm_comp.
  * DO NOT elaborate pairedFermionPlaneSpinGenerator or pairedAlgebraData
    anywhere in this statement or proof.

The original concrete physical hF is independently established by K2A,
but this theorem deliberately does NOT specialize it. Its future concrete
discharge remains a separate, unqualified scientific/formalization obligation.

Genuine original SourceEnd ℂ (SmoothCore 2); original position multipliers,
fermionAction field, and order preserved. No extra axioms or physics models.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K2D1
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5F
open FCP.BFSSSU2PhysicalDomainS3L5K1

/-- The genuine source-parametric cubic factor covariance follows from
a VISIBLE fermionAction commutator premise and K1's original position-pair
commutator. No literal paired 48-Majorana specialization is claimed here. -/
theorem sourceCombined_comm_cubicFactor_of_fermionResponse
    (M : AlgebraData 2) (K : FockEnd)
    (i j k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) (ΔF : SourceEnd)
    (hij : i ≠ j)
    (hF :
      (sourceParametricCombinedPlane K i j).comp (M.fermionAction γ A) -
        (M.fermionAction γ A).comp (sourceParametricCombinedPlane K i j) =
          ΔF) :
    (sourceParametricCombinedPlane K i j).comp
      ((M.fermionAction γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C))) -
    ((M.fermionAction γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C))).comp
          (sourceParametricCombinedPlane K i j) =
      ΔF.comp ((position (N := 2) k B).comp (position (N := 2) l C)) +
      (M.fermionAction γ A).comp
        ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
          (position (N := 2) k B).comp (sourcePositionVariation i j l C)) := by
  -- Distinction from K2B #1-#5: no full paired source Fock term is
  -- elaborated here. K1 successfully used this same abstract-K regime.
  exact sourceComm_comp
    (sourceParametricCombinedPlane K i j)
    (M.fermionAction γ A)
    ((position (N := 2) k B).comp (position (N := 2) l C))
    ΔF
    ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
      (position (N := 2) k B).comp (sourcePositionVariation i j l C))
    hF
    (sourceCombined_comm_positionPair K i j k l B C hij)

#print axioms sourceCombined_comm_cubicFactor_of_fermionResponse

end
end FCP.BFSSSU2PhysicalDomainS3L5K2D1
