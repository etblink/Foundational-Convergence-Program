import SU2BFSSPhysicalDomainS3L5I2BOriginalSourceKineticChargeBridgeProbe

/-!
# S3L5I3 — actual source-paired full SU(2) kinetic-charge commutator

Gate #56 qualified the COMPLETE literal original kinetic charge sum on
SmoothCore 2 with a visible fermionic fiber covariance premise.
Discharge that premise using ONLY the accepted S3L4D source equality
for the actual paired 48-Majorana quadratic Fock spin generator.

This theorem is about the actual full 9 × 3 × 16 kinetic source charge
and the original paired SU(2) AlgebraData. Its response is exactly
the already-qualified weighted source variation, not yet the final
contracted -J action on the free supercharge spinor index.

No surrogate Fock representation, new axioms, full cubic supercharge,
Spin(9) group lift, closed physical Hamiltonian or spectrum is claimed.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5I3
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L4D
open FCP.BFSSSU2PhysicalDomainS3L5A
open FCP.BFSSSU2PhysicalDomainS3L5F
open FCP.BFSSSU2PhysicalDomainS3L5I2A
open FCP.BFSSSU2PhysicalDomainS3L5I2B

/-- Actual paired 48-Majorana full kinetic source charge covariantly
transforms into the exact source variation with original -i gamma
coefficients. The sole fiber covariance premise of #56 is discharged
by the exact S3L4D physical-source theorem. -/
theorem pairedActualCombined_comm_sourceKineticCharge_response
    (i j : SpaceIndex) (α : SpinIndex) (hij : i ≠ j) :
    (sourceParametricCombinedPlane (pairedFermionPlaneSpinGenerator i j) i j).comp
        (sourceKineticCharge pairedAlgebraData α) -
      (sourceKineticCharge pairedAlgebraData α).comp
        (sourceParametricCombinedPlane
          (pairedFermionPlaneSpinGenerator i j) i j) =
      kineticWeightedResponse pairedAlgebraData
        (fun γ β => ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ))
        i j α := by
  exact sourceCombined_comm_sourceKineticCharge_of_fiber
    pairedAlgebraData (pairedFermionPlaneSpinGenerator i j)
    (fun γ β => ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ))
    i j α hij
    (by
      intro γ A
      exact pairedActualFockSpin_comm_source_theta i j γ A)

#print axioms pairedActualCombined_comm_sourceKineticCharge_response

end
end FCP.BFSSSU2PhysicalDomainS3L5I3
