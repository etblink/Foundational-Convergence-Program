import SU2BFSSPhysicalDomainS3L5I2ANamedKineticSourceSumProbe

/-!
# S3L5I2B — original source kinetic charge bridge

The qualified S3L5I2A #55 source-weighted kinetic sum contains the
EXACT original -Complex.I gamma, original fermionAction and derivative
and the complete 9×3×16 indices. The only remaining transition is to
certify that its named weighted sum is the literal upstream source
`sourceKineticCharge` already defined in S3L5A. This is a
definition-level identity, not a new physical assumption.

Then transfer qualified source weighted-sum covariance under an
EXPLICIT fiber covariance premise. Nothing is asserted about the
physical paired 48-Majorana discharge, gamma/J contraction, cubic
supercharge, closed Hamiltonian domain, or spectrum.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5I2B
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5A
open FCP.BFSSSU2PhysicalDomainS3L5F
open FCP.BFSSSU2PhysicalDomainS3L5I2A

/-- Named exact source finite sum agrees definitionally with the
literal BFSS kinetic summand of Core.lean's AlgebraData.charge. No
concrete Fock generator or expanded Hamiltonian appears. -/
theorem kineticWeightedSum_eq_sourceKineticCharge
    (M : AlgebraData 2) (α : SpinIndex) :
    kineticWeightedSum M α = sourceKineticCharge M α := by
  rfl

/-- Complete original `sourceKineticCharge` commutator, under a
VISIBLE, separately dischargeable fermionic fiber-covariance premise.
The response is the exact indexed source expression of S3L5I2A. -/
theorem sourceCombined_comm_sourceKineticCharge_of_fiber
    (M : AlgebraData 2) (K : FockEnd)
    (d : SpinIndex → SpinIndex → ℂ)
    (i j : SpaceIndex) (α : SpinIndex) (hij : i ≠ j)
    (hFiber : ∀ γ : SpinIndex, ∀ A : ColorIndex 2,
      K * M.theta γ A - M.theta γ A * K =
        ∑ β : SpinIndex, d γ β • M.theta β A) :
    (sourceParametricCombinedPlane K i j).comp (sourceKineticCharge M α) -
      (sourceKineticCharge M α).comp
        (sourceParametricCombinedPlane K i j) =
      kineticWeightedResponse M d i j α := by
  rw [← kineticWeightedSum_eq_sourceKineticCharge M α]
  exact kineticWeightedSum_comm_of_fiber M K d i j α hij hFiber

#print axioms kineticWeightedSum_eq_sourceKineticCharge
#print axioms sourceCombined_comm_sourceKineticCharge_of_fiber

end
end FCP.BFSSSU2PhysicalDomainS3L5I2B
