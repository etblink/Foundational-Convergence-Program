import SU2BFSSPhysicalDomainS3L5K6C2OriginalCubicNegativeSpinorTransportProbe

/-!
# S3L5K6C3 — isolated original cubic source coefficient step
Use accepted K4 sourceCubicCharge definitional bridge under the free spinor sum, with no operator commutator.
No new axioms, source physics, concrete K2 commutator, or spectral claims.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K6C3
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5A
open FCP.BFSSSU2PhysicalDomainS3L5K3
open FCP.BFSSSU2PhysicalDomainS3L5K4
open FCP.BFSSSU2PhysicalDomainS3L5K5
open FCP.BFSSSU2PhysicalDomainS3L5K6B
open FCP.BFSSSU2PhysicalDomainS3L5K6C2

theorem pairedOriginalCubicRawSpinorSum_eqSourceCharge
    (i j : SpaceIndex) (α : SpinIndex) :
    -(∑ β : SpinIndex,
          (pairedPlaneSpinGenerator i j α β : ℂ) •
            (∑ k : SpaceIndex, ∑ l : SpaceIndex,
              ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
              ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
              (((originalCubicStructureWeight A B C *
                pairedAlgebraData.gammaTwo k l β γ : ℝ) : ℂ)) •
                  originalCubicSourceMonomial k l γ A B C)) =
    -(∑ β : SpinIndex,
      (pairedPlaneSpinGenerator i j α β : ℂ) •
        sourceCubicCharge pairedAlgebraData β) := by
       apply congrArg (fun T : SourceEnd => -T)
        apply Finset.sum_congr rfl
        intro β _
        exact congrArg
          (fun T : SourceEnd => (pairedPlaneSpinGenerator i j α β : ℂ) • T)
          (pairedSourceCubicCharge_asOriginalSixfoldMonomials β).symm

#print axioms pairedOriginalCubicRawSpinorSum_eqSourceCharge

end
end FCP.BFSSSU2PhysicalDomainS3L5K6C3
