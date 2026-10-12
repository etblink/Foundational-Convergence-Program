import SU2BFSSPhysicalDomainS3L5K2E1DOriginalSixfoldIndexSpecializationProbe

/-!
# K2E2A — original BFSS cubic operator family, sixfold source transport

CI qualification attempt #1 (statement and proof unchanged).
CI qualification attempt #2: restore original source G1A namespace only.
CI qualification attempt #3: restore original K1 position-variation namespace; theorem unchanged.

E1D's exact original six BFSS index types are kernel-qualified. This
module introduces the TRUE paired 48-Majorana source plane generator and
literal original ordered fermionAction ∘ position ∘ position terms,
as well as their exact K2D3 response. Complex scalar coefficient c
remains arbitrary. The pointwise source response h remains an explicit
hypothesis, NOT a new axiom and NOT an unconditional source claim.

The next E2B module must discharge h with qualified K2D3. The still-
future E2C must instantiate c with original 1/2 structureConstant *
gammaTwo and connect K4 sourceCubicCharge with K6C coefficient response.
All original source operators and six index domains are preserved.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2E2A
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

/-- Conditional sixfold source covariance of ACTUAL ordered cubic
operators under the ACTUAL 48-Majorana generator. Pointwise premise
is explicit and source-faithful; scalar weights remain variable. -/
theorem pairedActualCubicSixfold_comm_of_pointwise
    (i j : SpaceIndex)
    (c : SpaceIndex → SpaceIndex → ColorIndex 2 →
      ColorIndex 2 → ColorIndex 2 → SpinIndex → ℂ)
    (h : ∀ k l A B C γ,
      (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j).comp ((pairedAlgebraData.fermionAction γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C))) -
      ((pairedAlgebraData.fermionAction γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C))).comp (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j) = (sourceCubicFermionVariation i j γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)) +
      (pairedAlgebraData.fermionAction γ A).comp
        ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
          (position (N := 2) k B).comp
            (sourcePositionVariation i j l C))) :
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
  -- No new six-sum algebra is elaborated; E1D is a sealed proof object.
  trace "K2E2A_ACTUAL_SOURCE_OPERATOR_FAMILY"
  exact sourceComm_originalSixfoldIndices_of
    (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j) c
    (fun k l A B C γ => (pairedAlgebraData.fermionAction γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)))
    (fun k l A B C γ => (sourceCubicFermionVariation i j γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)) +
      (pairedAlgebraData.fermionAction γ A).comp
        ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
          (position (N := 2) k B).comp
            (sourcePositionVariation i j l C)))
    h

#print axioms pairedActualCubicSixfold_comm_of_pointwise
end
end FCP.BFSSSU2PhysicalDomainS3L5K2E2A
