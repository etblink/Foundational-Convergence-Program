import SU2BFSSPhysicalDomainS3L5ASourceChargeKineticMonomialProbe

/-!
# S3L5B — original SU(2) kinetic monomial under actual 48-Majorana spin

S3L5A qualified a source-parametric operator product rule with an
explicit fiber covariance premise. This module discharges that premise
using *only* the pinned, independently qualified S3L4D actual
48-Majorana source theta commutator, and specializes the result to the
literal pairedAlgebraData.fermionAction and coordinateDerivative maps.

Nothing here assumes a new algebra representation or silently asserts
full charge covariance. The full kinetic sum, orbital action, cubic
potential and Hamiltonian/spectral conclusions remain separate.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5B
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

/-- Exact spin covariance of each ORIGINAL source kinetic monomial,
with the actual 48-Majorana spinor-index coefficients. The fiber
premise is discharged by the accepted concrete S3L4D theorem. -/
theorem pairedActualSourceSpin_comm_kineticMonomial
    (i j k : SpaceIndex) (γ : SpinIndex)
    (A B : ColorIndex 2) :
    (pairedActualSourceSpin i j).comp
       ((pairedAlgebraData.fermionAction γ A).comp
         (coordinateDerivative (N := 2) k B)) -
    ((pairedAlgebraData.fermionAction γ A).comp
         (coordinateDerivative (N := 2) k B)).comp
       (pairedActualSourceSpin i j) =
    (∑ β : SpinIndex,
      (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
        pairedAlgebraData.fermionAction β A)).comp
         (coordinateDerivative (N := 2) k B) := by
  exact sourceFermionSpin_comm_kineticMonomial_of_fiber
    pairedAlgebraData
    (pairedFermionPlaneSpinGenerator i j)
    (fun β => ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ))
    γ A B k
    (pairedActualFockSpin_comm_source_theta i j γ A)

#print axioms pairedActualSourceSpin_comm_kineticMonomial

end
end FCP.BFSSSU2PhysicalDomainS3L5B
