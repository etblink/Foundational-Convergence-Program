import SU2BFSSPhysicalDomainS3L5J4SourceFermionSumCompositionProbe
import SU2BFSSPhysicalDomainS3L5K2AOriginalFermionActionCovarianceProbe

/-!
# K2R1A — original SU(2) fermion response finite spinor transport

Mathematical purpose: discharge the ORIGINAL finite fermion spinor
response index transfer that K6C's transformed cubic coefficient
requires. Reuse the accepted J3 two-index transport and J4
sourceSpinorSum_comp rule, both on actual SourceEnd. Original physical
fermionAction and paired spin plane generator remain literal.
D is an arbitrary ORIGINAL SourceEnd right factor: the proof does
not elaborate the concrete two-position source composition yet.
This is a fixed-source response transport, NOT charge covariance.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K2R1A
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5J3
open FCP.BFSSSU2PhysicalDomainS3L5J4
open FCP.BFSSSU2PhysicalDomainS3L5K2

/-- Original spin generator coefficient moves through the actual
source fermion variation followed by an arbitrary ordered right factor.
No additional physics premise, no surrogate spinor family. -/
theorem pairedOriginalFermionSpinorResponse_reindex
    (i j : SpaceIndex) (A : ColorIndex 2)
    (c : SpinIndex → ℂ) (D : SourceEnd) :
    (∑ γ : SpinIndex,
      c γ • (sourceCubicFermionVariation i j γ A).comp D) =
    ∑ β : SpinIndex,
      (∑ γ : SpinIndex,
        c γ * ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ)) •
          (pairedAlgebraData.fermionAction β A).comp D := by
  calc
    _ = ∑ γ : SpinIndex,
          c γ • (∑ β : SpinIndex,
            (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
              (pairedAlgebraData.fermionAction β A).comp D)) := by
      apply Finset.sum_congr rfl
      intro γ _
      apply congrArg (fun E : SourceEnd => c γ • E)
      change
        (∑ β : SpinIndex,
          (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
            pairedAlgebraData.fermionAction β A)).comp D =
        ∑ β : SpinIndex,
          (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
            (pairedAlgebraData.fermionAction β A).comp D)
      exact sourceSpinorSum_comp
        (fun β => ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ))
        (fun β => pairedAlgebraData.fermionAction β A) D
    _ = _ := sourceSpinorDoubleSum_reindex c
      (fun γ β => ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ))
      (fun β => (pairedAlgebraData.fermionAction β A).comp D)

#print axioms pairedOriginalFermionSpinorResponse_reindex
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R1A
