import SU2BFSSPhysicalDomainS3L5K2E3ANativeProductIndexTransportProbe
import SU2BFSSPhysicalDomainS3L5K2D3OriginalSourceUnconditionalCubicFactorProbe

/-!
# K2E3B — exact original cubic factor pointwise on native BFSS product indices

This is a new source-specific pointwise interface for the previously
accepted E3A one-product-index commutator law. It retains the actual
48-Majorana combined-plane source generator, actual original
fermionAction ∘ position ∘ position, and literal K2D3 source response.
No weighted sixfold commutator or sourceCubicCharge identity is claimed.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2E3B
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

/-- The genuine source generator used by the original cubic factor. -/
def originalCubicProductGenerator (i j : SpaceIndex) : SourceEnd :=
  sourceParametricCombinedPlane (pairedFermionPlaneSpinGenerator i j) i j

/-- The genuine ordered original fermionAction/position/position factor,
with the six original labels packaged but not modified. -/
def originalCubicProductFactor (p : OriginalCubicSixLabel) : SourceEnd :=
  (pairedAlgebraData.fermionAction p.2.2.2.2.2 p.2.2.1).comp
    ((position (N := 2) p.1 p.2.2.2.1).comp
      (position (N := 2) p.2.1 p.2.2.2.2.1))

/-- The genuine original fermionic and paired spatial response. -/
def originalCubicProductResponse (i j : SpaceIndex)
    (p : OriginalCubicSixLabel) : SourceEnd :=
  (sourceCubicFermionVariation i j p.2.2.2.2.2 p.2.2.1).comp
    ((position (N := 2) p.1 p.2.2.2.1).comp
      (position (N := 2) p.2.1 p.2.2.2.2.1)) +
  (pairedAlgebraData.fermionAction p.2.2.2.2.2 p.2.2.1).comp
    ((sourcePositionVariation i j p.1 p.2.2.2.1).comp
      (position (N := 2) p.2.1 p.2.2.2.2.1) +
     (position (N := 2) p.1 p.2.2.2.1).comp
      (sourcePositionVariation i j p.2.1 p.2.2.2.2.1))

/-- Original K2D3 gives the actual source cubic-factor commutator at
EVERY native packaged BFSS six-index label, with no new pointwise premise. -/
theorem originalCubicProduct_pointwise
    (i j : SpaceIndex) (hij : i ≠ j)
    (p : OriginalCubicSixLabel) :
    (originalCubicProductGenerator i j).comp
      (originalCubicProductFactor p) -
    (originalCubicProductFactor p).comp
      (originalCubicProductGenerator i j) =
    originalCubicProductResponse i j p := by
  rcases p with ⟨k, l, A, B, C, γ⟩
  simpa only [originalCubicProductGenerator, originalCubicProductFactor,
    originalCubicProductResponse] using
    (pairedActualCombined_comm_cubicFactor i j k l γ A B C hij)

#print axioms originalCubicProduct_pointwise
end
end FCP.BFSSSU2PhysicalDomainS3L5K2E3B
