import SU2BFSSPhysicalDomainS3L5K2D3OriginalSourceUnconditionalCubicFactorProbe

/-!
# E2D0 — faithful named source definitions, independently checked

Source objects EXACTLY reproduced from previously submitted C1; no
replacement Fock model, no altered ordering, signs, or extra premise.
Separation from C1's known-red sixfold theorem makes these definitions
available independently for a one-factor elaboration discrimination.

Definitions alone are NOT theorems. The future full cubic-charge sum
still requires an explicit source identity.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2E2D0
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

#check pairedCubicSourceGenerator
#check pairedCubicSourceFactor
#check pairedCubicSourceResponse

end
end FCP.BFSSSU2PhysicalDomainS3L5K2E2D0
