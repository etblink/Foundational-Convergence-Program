import SU2BFSSPhysicalDomainS3L5K2E2AOriginalCubicSixfoldConditionalProbe

/-!
# K2E2B — actual original BFSS cubic sixfold operator response

Unlike E2A, this exact source theorem does NOT introduce a new
pointwise commutator assumption. Discharge the complete original
fermionAction-position-position response at EVERY original sixfold
label using accepted unconditional K2D3, then reuse E2A.

The complex scalar weights are still arbitrary. Original 1/2,
structureConstant and gammaTwo weights and identification with
sourceCubicCharge/K6C remain separately unqualified next obligations.
No Hamiltonian or BFSS spectral gap inference.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2E2B
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5F
-- Original sourcePositionVariation is defined in the accepted K1 source module.
open FCP.BFSSSU2PhysicalDomainS3L5K1
open FCP.BFSSSU2PhysicalDomainS3L5K2
open FCP.BFSSSU2PhysicalDomainS3L5K2D3
open FCP.BFSSSU2PhysicalDomainS3L5K2E1D
open FCP.BFSSSU2PhysicalDomainS3L5K2E2A

/-- Physical pointwise K2D3 premise discharged on the literal genuine
48-Majorana cubic source factor, transported through six indices.
No additional physical hypotheses beyond original i ≠ j. -/
theorem pairedActualCubicSixfold_comm
    (i j : SpaceIndex) (hij : i ≠ j)
    (c : SpaceIndex → SpaceIndex → ColorIndex 2 →
      ColorIndex 2 → ColorIndex 2 → SpinIndex → ℂ) :
    (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j).comp
      (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      c k l A B C γ • ((pairedAlgebraData.fermionAction γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)))) -
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      c k l A B C γ • ((pairedAlgebraData.fermionAction γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)))).comp (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j) =
    ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      c k l A B C γ • ((sourceCubicFermionVariation i j γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)) +
      (pairedAlgebraData.fermionAction γ A).comp
        ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
          (position (N := 2) k B).comp
            (sourcePositionVariation i j l C))) := by
  have hPoint := fun (k l : SpaceIndex)
      (A B C : ColorIndex 2) (γ : SpinIndex) =>
        pairedActualCombined_comm_cubicFactor i j k l γ A B C hij
  trace "K2E2B_K2D3_POINTWISE_RESPONSE_DISCHARGED"
  exact pairedActualCubicSixfold_comm_of_pointwise i j c hPoint

#print axioms pairedActualCubicSixfold_comm
end
end FCP.BFSSSU2PhysicalDomainS3L5K2E2B
