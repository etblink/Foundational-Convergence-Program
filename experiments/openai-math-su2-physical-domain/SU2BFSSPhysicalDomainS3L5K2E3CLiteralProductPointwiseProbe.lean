import SU2BFSSPhysicalDomainS3L5K2E3ANativeProductIndexTransportProbe
import SU2BFSSPhysicalDomainS3L5K2D3OriginalSourceUnconditionalCubicFactorProbe

/-!
# K2E3C — source-literal six-label cubic factor without the E3B alias conversion

Diagnostic purpose: Gate 86 failed while elaborating the three named E3B
SourceEnd definitions against the accepted literal K2D3 theorem. This
*separately testable* statement contains the actual original operators
directly, with the exact six BFSS labels and source composition order.
It neither assumes a new commutator axiom nor changes original physics.

This module does not establish the weighted sixfold commutator, equality
with sourceCubicCharge, global Spin(9), or any spectral assertion.
A green result here does NOT retroactively qualify E3B.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K2E3C
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
open FCP.BFSSSU2PhysicalDomainS3L5K2E3A

/-- Unconditional actual source cubic-factor commutator, indexed over
the original BFSS six labels as ONE right-associated product. This
form avoids the three E3B aliases at the source-lemma application. -/
theorem originalCubicProduct_literalPointwise
    (i j : SpaceIndex) (hij : i ≠ j)
    (p : OriginalCubicSixLabel) :
    (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j).comp
        ((pairedAlgebraData.fermionAction p.2.2.2.2.2 p.2.2.1).comp
          ((position (N := 2) p.1 p.2.2.2.1).comp
            (position (N := 2) p.2.1 p.2.2.2.2.1))) -
    ((pairedAlgebraData.fermionAction p.2.2.2.2.2 p.2.2.1).comp
      ((position (N := 2) p.1 p.2.2.2.1).comp
        (position (N := 2) p.2.1 p.2.2.2.2.1))).comp
      (sourceParametricCombinedPlane
        (pairedFermionPlaneSpinGenerator i j) i j) =
    (sourceCubicFermionVariation i j p.2.2.2.2.2 p.2.2.1).comp
      ((position (N := 2) p.1 p.2.2.2.1).comp
        (position (N := 2) p.2.1 p.2.2.2.2.1)) +
    (pairedAlgebraData.fermionAction p.2.2.2.2.2 p.2.2.1).comp
      ((sourcePositionVariation i j p.1 p.2.2.2.1).comp
        (position (N := 2) p.2.1 p.2.2.2.2.1) +
        (position (N := 2) p.1 p.2.2.2.1).comp
          (sourcePositionVariation i j p.2.1 p.2.2.2.2.1)) := by
  rcases p with ⟨k, l, A, B, C, γ⟩
  exact pairedActualCombined_comm_cubicFactor i j k l γ A B C hij

#print axioms originalCubicProduct_literalPointwise

end
end FCP.BFSSSU2PhysicalDomainS3L5K2E3C
