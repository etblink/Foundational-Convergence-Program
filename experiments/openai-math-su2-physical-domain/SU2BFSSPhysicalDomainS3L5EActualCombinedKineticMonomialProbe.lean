import SU2BFSSPhysicalDomainS3L5DSourceOrbitalKineticMonomialProbe

/-!
# S3L5E — literal combined orbital+48-Majorana kinetic monomial covariance

On the pinned original BFSS SmoothCore 2, assemble the two already
qualified source identities:

S3L5D: [source orbital L_ij, fermionAction(γ,A) ∘ ∂_(k,B)]
S3L5B: [actual 48-Majorana spin K_ij, fermionAction(γ,A) ∘ ∂_(k,B)]

The combined infinitesimal operator is the explicit sum of those
ORIGINAL source endomorphisms. This proof invokes only an elementary
additive commutator law and the two named accepted source proofs.
It does NOT expand the quadratic Fock spin generator or normalize the
original full 16-charge's nested finite sums.

Full kinetic charge and cubic potential covariance, physical-domain
closed Hamiltonian symmetry and positive eigenvalues remain open.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5E
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L1
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L4D
open FCP.BFSSSU2PhysicalDomainS3L5B
open FCP.BFSSSU2PhysicalDomainS3L5D

/-- Pure source-endomorphism additive commutator identity. Every
premise is discharged by S3L5B/D at the exact original BFSS source. -/
private theorem sourceComm_sum_of_components
    (L K T A B : SourceEnd)
    (hL : L.comp T - T.comp L = A)
    (hK : K.comp T - T.comp K = B) :
    (L + K).comp T - T.comp (L + K) = A + B := by
  calc
    _ = (L.comp T - T.comp L) +
        (K.comp T - T.comp K) := by
          rw [LinearMap.add_comp, LinearMap.comp_add]
          abel
    _ = A + B := by rw [hL, hK]

/-- Actual source combined infinitesimal spatial plane generator.
It is a sum of genuine SmoothCore endomorphisms, not a replacement
Hamiltonian or a claimed integrated Spin(9) representation. -/
noncomputable def pairedCombinedSourcePlaneGenerator
    (i j : SpaceIndex) : SourceEnd :=
  pairedSourceOrbitalPlaneGenerator i j + pairedActualSourceSpin i j

/-- Exact kinetic monomial transformation for combined real orbital
and physical paired Fock spin generators, before gamma contraction. -/
theorem pairedCombinedSourcePlane_comm_kineticMonomial
    (i j k : SpaceIndex) (γ : SpinIndex)
    (A B : ColorIndex 2) (hij : i ≠ j) :
    (pairedCombinedSourcePlaneGenerator i j).comp
      ((pairedAlgebraData.fermionAction γ A).comp
        (coordinateDerivative (N := 2) k B)) -
    ((pairedAlgebraData.fermionAction γ A).comp
        (coordinateDerivative (N := 2) k B)).comp
      (pairedCombinedSourcePlaneGenerator i j) =
      (pairedAlgebraData.fermionAction γ A).comp
        (if k = j then coordinateDerivative (N := 2) i B
         else if k = i then -(coordinateDerivative (N := 2) j B)
         else 0) +
      (∑ β : SpinIndex,
         (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
           pairedAlgebraData.fermionAction β A)).comp
        (coordinateDerivative (N := 2) k B) := by
  unfold pairedCombinedSourcePlaneGenerator
  exact sourceComm_sum_of_components
    (pairedSourceOrbitalPlaneGenerator i j)
    (pairedActualSourceSpin i j)
    ((pairedAlgebraData.fermionAction γ A).comp
       (coordinateDerivative (N := 2) k B))
    ((pairedAlgebraData.fermionAction γ A).comp
        (if k = j then coordinateDerivative (N := 2) i B
         else if k = i then -(coordinateDerivative (N := 2) j B)
         else 0))
    ((∑ β : SpinIndex,
       (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
         pairedAlgebraData.fermionAction β A)).comp
       (coordinateDerivative (N := 2) k B))
    (sourceOrbital_comm_kineticMonomial
       pairedAlgebraData i j k γ A B hij)
    (pairedActualSourceSpin_comm_kineticMonomial i j k γ A B)

#print axioms pairedCombinedSourcePlane_comm_kineticMonomial

end
end FCP.BFSSSU2PhysicalDomainS3L5E
