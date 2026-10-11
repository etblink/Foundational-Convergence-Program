import SU2BFSSPhysicalDomainS3L5K6C1OriginalCubicCoefficientContractionProbe

/-!
# S3L5K6C2 — isolated original cubic source coefficient step
Specialize already-qualified K6B negative sixfold transport to original BFSS gammaTwo and original SmoothCore cubic monomials.
No new axioms, source physics, concrete K2 commutator, or spectral claims.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K6C2
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
open FCP.BFSSSU2PhysicalDomainS3L5K6C1

theorem pairedOriginalCubicNegativeCoefficients_asSpinorSum
    (i j : SpaceIndex) (α : SpinIndex) :
    ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (-(∑ β : SpinIndex,
        (pairedPlaneSpinGenerator i j α β : ℂ) *
          ((originalCubicStructureWeight A B C *
            pairedAlgebraData.gammaTwo k l β γ : ℝ) : ℂ))) •
          originalCubicSourceMonomial k l γ A B C =
    -(∑ β : SpinIndex,
          (pairedPlaneSpinGenerator i j α β : ℂ) •
            (∑ k : SpaceIndex, ∑ l : SpaceIndex,
              ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
              ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
              (((originalCubicStructureWeight A B C *
                pairedAlgebraData.gammaTwo k l β γ : ℝ) : ℂ)) •
                  originalCubicSourceMonomial k l γ A B C)) := by
  exact sourceCubicNegativeFreeSpinorSum_transport
          (fun β => (pairedPlaneSpinGenerator i j α β : ℂ))
          (fun β k l A B C γ =>
            (((originalCubicStructureWeight A B C *
              pairedAlgebraData.gammaTwo k l β γ : ℝ) : ℂ)))
          (fun k l A B C γ => originalCubicSourceMonomial k l γ A B C)

#print axioms pairedOriginalCubicNegativeCoefficients_asSpinorSum

end
end FCP.BFSSSU2PhysicalDomainS3L5K6C2
