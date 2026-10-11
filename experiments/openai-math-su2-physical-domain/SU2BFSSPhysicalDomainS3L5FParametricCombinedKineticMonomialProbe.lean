import SU2BFSSPhysicalDomainS3L5DSourceOrbitalKineticMonomialProbe

/-!
# S3L5F — source-parametric combined orbital/spin kinetic monomial

Gate #45 failed while elaborating a large *concrete* paired-AlgebraData
instantiation of an elementary additive operator-commutator identity.
This proof separates that elementary identity from its actual physical
instantiation and uses ONLY accepted source operator lemmas S3L5A/D.

The fermionic fiber covariance hypothesis is EXPLICIT and must later be
discharged by accepted S3L4D for the actual 48-Majorana paired theta.
Nothing here claims the concrete specialization is kernel-qualified,
nor a full kinetic sum, complete charge, Hamiltonian, or spectrum.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5F
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS3L1
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5A
open FCP.BFSSSU2PhysicalDomainS3L5D

/-- Pure additive commutator law for actual source test-core endomorphisms.
No Fock or paired SU(2) data appears in this proof. -/
theorem sourceComm_sum_of_components
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

/-- Explicit source combined-plane generator for arbitrary bounded fiber
K. Its concrete realization is *not* asserted here. -/
noncomputable def sourceParametricCombinedPlane
    (K : FockEnd) (i j : SpaceIndex) : SourceEnd :=
  pairedSourceOrbitalPlaneGenerator i j + sourcePostcomp K

/-- Combined kinetic monomial on original source SmoothCore 2.
The assumed Fock commutator is a visible theorem premise, not a hidden
physical assumption. Its real SU(2) discharge is a separate gate. -/
theorem sourceCombined_comm_kineticMonomial_of_fiber
    (M : AlgebraData 2) (K : FockEnd) (c : SpinIndex → ℂ)
    (i j k : SpaceIndex) (γ : SpinIndex)
    (A B : ColorIndex 2) (hij : i ≠ j)
    (hFiber : K * M.theta γ A - M.theta γ A * K =
      ∑ β : SpinIndex, c β • M.theta β A) :
    (sourceParametricCombinedPlane K i j).comp
        ((M.fermionAction γ A).comp (coordinateDerivative (N := 2) k B)) -
      ((M.fermionAction γ A).comp
        (coordinateDerivative (N := 2) k B)).comp
        (sourceParametricCombinedPlane K i j) =
      (M.fermionAction γ A).comp
        (if k = j then coordinateDerivative (N := 2) i B
         else if k = i then -(coordinateDerivative (N := 2) j B)
         else 0) +
      (∑ β : SpinIndex, c β • M.fermionAction β A).comp
        (coordinateDerivative (N := 2) k B) := by
  let T : SourceEnd :=
    (M.fermionAction γ A).comp (coordinateDerivative (N := 2) k B)
  let ΔL : SourceEnd :=
    (M.fermionAction γ A).comp
      (if k = j then coordinateDerivative (N := 2) i B
       else if k = i then -(coordinateDerivative (N := 2) j B)
       else 0)
  let ΔK : SourceEnd :=
    (∑ β : SpinIndex, c β • M.fermionAction β A).comp
      (coordinateDerivative (N := 2) k B)
  have hL :
      (pairedSourceOrbitalPlaneGenerator i j).comp T -
        T.comp (pairedSourceOrbitalPlaneGenerator i j) = ΔL :=
    sourceOrbital_comm_kineticMonomial M i j k γ A B hij
  have hK :
      (sourcePostcomp K).comp T - T.comp (sourcePostcomp K) = ΔK :=
    sourceFermionSpin_comm_kineticMonomial_of_fiber M K c γ A B k hFiber
  change
    (pairedSourceOrbitalPlaneGenerator i j + sourcePostcomp K).comp T -
      T.comp (pairedSourceOrbitalPlaneGenerator i j + sourcePostcomp K) =
      ΔL + ΔK
  exact sourceComm_sum_of_components
    (pairedSourceOrbitalPlaneGenerator i j) (sourcePostcomp K)
    T ΔL ΔK hL hK

#print axioms sourceComm_sum_of_components
#print axioms sourceCombined_comm_kineticMonomial_of_fiber

end
end FCP.BFSSSU2PhysicalDomainS3L5F
