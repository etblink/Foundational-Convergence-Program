import SU2BFSSPhysicalDomainS3L5K2R1AOriginalFermionSpinorResponseTransportProbe
import SU2BFSSPhysicalDomainS3L5K3OriginalCubicGammaTwoCoefficientProbe

/-!
# K2R1B — genuine cubic-weighted source fermion response

Specialize the already separated R1A spinor-index identity to the
EXACT cubic scalar coefficient: original 1/2 × structureConstant ×
pairedAlgebraData.gammaTwo(k,l,alpha,gamma). Specialize the right factor
to two ORIGINAL N=2 positions, preserving fermionAction ∘ X_k ∘ X_l.

The scalar on the RHS is an explicit sum of gammaTwo entries and the
true paired spin generator, not yet the matrix product gammaTwo*Jᵀ.
A further independent coefficient lemma must match it with the K6C
transformed-coefficient term. No full sixfold charge or new axioms.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R1B
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K2
open FCP.BFSSSU2PhysicalDomainS3L5K3
open FCP.BFSSSU2PhysicalDomainS3L5K2R1A

/-- The weighted actual cubic fermionic response at FIXED spatial and
color indices with the real source coefficient cast to complex.
Both original ordered position factors are unchanged. -/
theorem pairedOriginalCubicWeightedFermionResponse_reindex
    (i j k l : SpaceIndex) (α : SpinIndex)
    (A B C : ColorIndex 2) :
    (∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) •
        (sourceCubicFermionVariation i j γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) =
    ∑ β : SpinIndex,
      (∑ γ : SpinIndex,
        (((originalCubicStructureWeight A B C *
          pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) *
          ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ)) •
            (pairedAlgebraData.fermionAction β A).comp
              ((position (N := 2) k B).comp (position (N := 2) l C)) := by
  exact pairedOriginalFermionSpinorResponse_reindex
    i j A
    (fun γ => (((originalCubicStructureWeight A B C *
      pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)))
    ((position (N := 2) k B).comp (position (N := 2) l C))

#print axioms pairedOriginalCubicWeightedFermionResponse_reindex
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R1B
