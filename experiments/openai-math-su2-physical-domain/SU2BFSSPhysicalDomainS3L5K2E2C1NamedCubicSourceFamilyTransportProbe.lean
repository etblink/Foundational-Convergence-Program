import SU2BFSSPhysicalDomainS3L5K2E1DOriginalSixfoldIndexSpecializationProbe

/-!
# K2E2C1 — source-faithful named original BFSS cubic operator families

Pinned qualification attempt #1: C1 conditional, C2 K2D3, C3 composed.

Old E2A #3 has no unresolved source symbols but fails MAX REC DEPTH
at exact E1D applied to sixfold expansions containing the full original
48-Majorana generator and position-fermion terms.

This module retains the exact original paired AlgebraData, generator,
fermionAction, ordered position maps and K2D3 response *as definitions*
of genuine SourceEnd objects. Nothing is postulated or replaced.
The sixfold transport lemma is still conditional on a visible h,
and coefficients c remain arbitrary. No cubic-charge covariance claim.

K2E2C2 separately attempts to discharge the visible h using qualified
K2D3 at a SINGLE cubic factor (not under six sums); C3 then composes.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2E2C1
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5F
open FCP.BFSSSU2PhysicalDomainS3L5K1
open FCP.BFSSSU2PhysicalDomainS3L5K2
open FCP.BFSSSU2PhysicalDomainS3L5K2D3
open FCP.BFSSSU2PhysicalDomainS3L5K2E1D

noncomputable def pairedCubicSourceGenerator (i j : SpaceIndex) : SourceEnd :=
  sourceParametricCombinedPlane (pairedFermionPlaneSpinGenerator i j) i j

noncomputable def pairedCubicSourceFactor
    (k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) : SourceEnd :=
  (pairedAlgebraData.fermionAction γ A).comp
    ((position (N := 2) k B).comp (position (N := 2) l C))

noncomputable def pairedCubicSourceResponse
    (i j k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) : SourceEnd :=
  (sourceCubicFermionVariation i j γ A).comp
    ((position (N := 2) k B).comp (position (N := 2) l C)) +
  (pairedAlgebraData.fermionAction γ A).comp
    ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
      (position (N := 2) k B).comp (sourcePositionVariation i j l C))

noncomputable def pairedCubicWeightedSum
    (c : SpaceIndex → SpaceIndex → ColorIndex 2 →
      ColorIndex 2 → ColorIndex 2 → SpinIndex → ℂ) : SourceEnd :=
  ∑ k : SpaceIndex, ∑ l : SpaceIndex,
    ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
    ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
    c k l A B C γ • pairedCubicSourceFactor k l γ A B C

noncomputable def pairedCubicWeightedResponse
    (i j : SpaceIndex) (c : SpaceIndex → SpaceIndex → ColorIndex 2 →
      ColorIndex 2 → ColorIndex 2 → SpinIndex → ℂ) : SourceEnd :=
  ∑ k : SpaceIndex, ∑ l : SpaceIndex,
    ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
    ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
    c k l A B C γ • pairedCubicSourceResponse i j k l γ A B C

/-- Source-faithful named sixfold transport of actual paired cubic
operators. Pointwise covariance h is VISIBLE, not an axiom. -/
theorem pairedCubicNamedWeighted_comm_of_pointwise
    (i j : SpaceIndex) (c : SpaceIndex → SpaceIndex → ColorIndex 2 →
      ColorIndex 2 → ColorIndex 2 → SpinIndex → ℂ)
    (h : ∀ k l A B C γ,
      (pairedCubicSourceGenerator i j).comp
        (pairedCubicSourceFactor k l γ A B C) -
      (pairedCubicSourceFactor k l γ A B C).comp
        (pairedCubicSourceGenerator i j) =
        pairedCubicSourceResponse i j k l γ A B C) :
    (pairedCubicSourceGenerator i j).comp (pairedCubicWeightedSum c) -
      (pairedCubicWeightedSum c).comp (pairedCubicSourceGenerator i j) =
      pairedCubicWeightedResponse i j c := by
  trace "K2E2C1_ENTER_NAMED_SIXFOLD_TRANSPORT"
  exact sourceComm_originalSixfoldIndices_of
    (pairedCubicSourceGenerator i j) c
    (fun k l A B C γ => pairedCubicSourceFactor k l γ A B C)
    (fun k l A B C γ => pairedCubicSourceResponse i j k l γ A B C)
    h

#print axioms pairedCubicNamedWeighted_comm_of_pointwise
end
end FCP.BFSSSU2PhysicalDomainS3L5K2E2C1
