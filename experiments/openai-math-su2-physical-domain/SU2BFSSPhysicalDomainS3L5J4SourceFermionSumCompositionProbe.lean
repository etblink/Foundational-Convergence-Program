import SU2BFSSPhysicalDomainS3L5J3SourceSpinorDoubleSumTransportProbe

/-!
# S3L5J4 — source fermion-action composition through genuine spinor sums

J3 (#66) qualifies a finite spinor double-sum reindex for the actual
SourceEnd and original paired kineticTerm. This small bridge proves
the missing composition-through-sum step for the original source
fermionAction and coordinateDerivative. It then specializes the result
to the actual paired SU(2) generator and combines it with accepted J3.

The fixed (k,A) result does NOT yet combine the spatial orbital term
or contract the entire kineticWeightedResponse to -J on the free
supercharge spinor index. No Fock generator is unfolded here.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5J4
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5I2A
open FCP.BFSSSU2PhysicalDomainS3L5J3

/-- Right-composition by a fixed ORIGINAL source endomorphism is
linear on an arbitrary finite spinor sum of source maps. -/
theorem sourceSpinorSum_comp
    (c : SpinIndex → ℂ) (T : SpinIndex → SourceEnd)
    (D : SourceEnd) :
    (∑ β : SpinIndex, c β • T β).comp D =
      ∑ β : SpinIndex, c β • (T β).comp D := by
  apply LinearMap.ext
  intro f
  simp only [LinearMap.comp_apply, LinearMap.sum_apply, LinearMap.smul_apply]

/-- Specialized to the literal AlgebraData.fermionAction and source
coordinate derivative. Its RHS uses the accepted kineticTerm, with no
new model definitions or assumptions. -/
theorem sourceFermionSpinorSum_comp_derivative
    (M : AlgebraData 2) (c : SpinIndex → ℂ)
    (k : SpaceIndex) (A : ColorIndex 2) :
    (∑ β : SpinIndex, c β • M.fermionAction β A).comp
        (coordinateDerivative (N := 2) k A) =
      ∑ β : SpinIndex, c β • kineticTerm M k A β := by
  simpa only [kineticTerm] using sourceSpinorSum_comp c
    (fun β => M.fermionAction β A) (coordinateDerivative (N := 2) k A)

/-- Complete fixed-spatial/color fermionic-spin response transported
through the literal -i gamma weights into the J3 double-sum form.
The free indices i,j,k,α,A and source pairing are all preserved. -/
theorem pairedFixedKineticFermionResponse_reindex
    (i j k : SpaceIndex) (α : SpinIndex) (A : ColorIndex 2) :
    (∑ γ : SpinIndex,
      kineticWeight pairedAlgebraData α k A γ •
        ((∑ β : SpinIndex,
          (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
            pairedAlgebraData.fermionAction β A)).comp
              (coordinateDerivative (N := 2) k A))) =
      ∑ β : SpinIndex,
        (∑ γ : SpinIndex,
          kineticWeight pairedAlgebraData α k A γ *
            ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ)) •
              kineticTerm pairedAlgebraData k A β := by
  calc
    _ = ∑ γ : SpinIndex,
      kineticWeight pairedAlgebraData α k A γ •
        (∑ β : SpinIndex,
          (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
            kineticTerm pairedAlgebraData k A β)) := by
          apply Finset.sum_congr rfl
          intro γ _
          rw [sourceFermionSpinorSum_comp_derivative]
    _ = _ := pairedKineticSpinorTerm_reindex i j k α A

#print axioms sourceSpinorSum_comp
#print axioms sourceFermionSpinorSum_comp_derivative
#print axioms pairedFixedKineticFermionResponse_reindex

end
end FCP.BFSSSU2PhysicalDomainS3L5J4
