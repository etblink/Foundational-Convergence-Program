import SU2BFSSPhysicalDomainS3L5K2AOriginalFermionActionCovarianceProbe

/-!
# S3L5K2 — source cubic monomial from qualified fermion-action covariance

The source-defined 48-Majorana fermionAction commutator is compiled
SEPARATELY in S3L5K2A. Here the actual cubic composition follows from
the already qualified K1 position-pair commutator and K2A fiber
specialization through a generic source-operator Leibniz rule.
No reconstructed physical model, new premises, or cubic sum claim.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K2
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3L1
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L4C
open FCP.BFSSSU2PhysicalDomainS3L4D
open FCP.BFSSSU2PhysicalDomainS3L5C
open FCP.BFSSSU2PhysicalDomainS3L5F
open FCP.BFSSSU2PhysicalDomainS3L5K1

/-- The EXACT source operator factor of Core.lean's original cubic
supercharge, including composition order and all three colors. -/
noncomputable def pairedOriginalCubicMonomial
    (k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) : SourceEnd :=
  (pairedAlgebraData.fermionAction γ A).comp
    ((position (N := 2) k B).comp (position (N := 2) l C))


/-- Source-parametric cubic composition Leibniz rule, keeping
the actual 48-Majorana fiber hypothesis visible for separate discharge.
No potential coefficient, sum, or replacement source representation. -/
private theorem sourceCombined_comm_cubicMonomial_of_fermionCovariance
    (M : AlgebraData 2) (K : FockEnd) (c : SpinIndex → ℂ)
    (i j k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) (hij : i ≠ j)
    (hF : (sourceParametricCombinedPlane K i j).comp (M.fermionAction γ A) -
      (M.fermionAction γ A).comp (sourceParametricCombinedPlane K i j) =
        ∑ β : SpinIndex, c β • M.fermionAction β A) :
    (sourceParametricCombinedPlane K i j).comp
        ((M.fermionAction γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) -
      ((M.fermionAction γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))).comp
        (sourceParametricCombinedPlane K i j) =
      (∑ β : SpinIndex, c β • M.fermionAction β A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)) +
      (M.fermionAction γ A).comp
        ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
          (position (N := 2) k B).comp
            (sourcePositionVariation i j l C)) := by
  exact sourceComm_comp
    (sourceParametricCombinedPlane K i j)
    (M.fermionAction γ A)
    ((position (N := 2) k B).comp (position (N := 2) l C))
    (∑ β : SpinIndex, c β • M.fermionAction β A)
    ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
      (position (N := 2) k B).comp (sourcePositionVariation i j l C))
    hF
    (sourceCombined_comm_positionPair K i j k l B C hij)


/-- Raw source-endomorphism commutator Leibniz identity.
Unlike a typed concrete specialization, its rewrite needs only to match
the syntactic composition tree on the original SmoothCore. -/
private theorem sourceComm_comp_raw (G F P : SourceEnd) :
    G.comp (F.comp P) - (F.comp P).comp G =
      (G.comp F - F.comp G).comp P +
        F.comp (G.comp P - P.comp G) := by
  exact sourceComm_comp G F P
    (G.comp F - F.comp G) (G.comp P - P.comp G) rfl rfl

theorem pairedActualCombined_comm_cubicMonomial
    (i j k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) (hij : i ≠ j) :
    (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j).comp
        (pairedOriginalCubicMonomial k l γ A B C) -
    (pairedOriginalCubicMonomial k l γ A B C).comp
      (sourceParametricCombinedPlane
        (pairedFermionPlaneSpinGenerator i j) i j) =
      (sourceCubicFermionVariation i j γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)) +
      (pairedAlgebraData.fermionAction γ A).comp
        ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
          (position (N := 2) k B).comp
            (sourcePositionVariation i j l C)) := by
  -- Rewrite syntactically instead of elaborating the enormous
  -- paired operators as arguments of a generic theorem.
  unfold pairedOriginalCubicMonomial
  rw [sourceComm_comp_raw,
      pairedActualCombined_comm_fermionAction i j γ A,
      pairedActualCombined_comm_positionPair i j k l B C hij]


#print axioms pairedActualCombined_comm_fermionAction
#print axioms pairedActualCombined_comm_cubicMonomial

end
end FCP.BFSSSU2PhysicalDomainS3L5K2
