import SU2BFSSPhysicalDomainS3L5K2E2D0OriginalCubicNamedSourceDefinitionsProbe

/-!
# E2E1: explicit defining-equation probe from independent Grok review

Pinned qualification attempt #1; mathematics unchanged.

E2D0 original generator/factor/response definitions compile. E2D1's
bare 'exact K2D3' failed at maximum recursion depth even with no sums.
Grok suggests separately kernel-qualifying definitional equations
for each source-faithful name BEFORE attempting a named K2D3 bridge.

This experimental version deliberately does NOT add a global
[irreducible] attribute to accepted D0 definitions: its independent
question is whether the three defining equations themselves compile.
Original source 48 Majoranas, fermionAction, position operators and
ordered comp terms stay literally unchanged. Not full charge covariance.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2E2E1
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
open FCP.BFSSSU2PhysicalDomainS3L5K2E2D0

theorem pairedCubicSourceGenerator_eq (i j : SpaceIndex) :
    pairedCubicSourceGenerator i j =
      sourceParametricCombinedPlane (pairedFermionPlaneSpinGenerator i j) i j := by
  rfl

theorem pairedCubicSourceFactor_eq
    (k l : SpaceIndex) (γ : SpinIndex) (A B C : ColorIndex 2) :
    pairedCubicSourceFactor k l γ A B C =
      (pairedAlgebraData.fermionAction γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)) := by
  rfl

theorem pairedCubicSourceResponse_eq
    (i j k l : SpaceIndex) (γ : SpinIndex) (A B C : ColorIndex 2) :
    pairedCubicSourceResponse i j k l γ A B C =
      (sourceCubicFermionVariation i j γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)) +
      (pairedAlgebraData.fermionAction γ A).comp
        ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
          (position (N := 2) k B).comp (sourcePositionVariation i j l C)) := by
  rfl

#print axioms pairedCubicSourceGenerator_eq
#print axioms pairedCubicSourceFactor_eq
#print axioms pairedCubicSourceResponse_eq
end
end FCP.BFSSSU2PhysicalDomainS3L5K2E2E1
