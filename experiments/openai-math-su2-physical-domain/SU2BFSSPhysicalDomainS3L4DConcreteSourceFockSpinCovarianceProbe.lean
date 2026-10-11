import SU2BFSSPhysicalDomainS3L4CSourceAlgebraDataFermionActionInterfaceProbe
import SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe

/-!
# S3L4D — concrete SU(2) 48-Majorana source fermionic covariance

S3L4B #32 established generic bounded-fiber postcomposition on original
SmoothCore 2; S3L4C #33 established the literal source AlgebraData
fermionAction interface. Here only, instantiate those *qualified* results
with the accepted physical paired 48-Majorana theta operators and
quadratic Fock spin generator from S3E.

This theorem does not posit a new Fock model or covariance assumption.
The concrete fiber premise is separately discharged using the accepted
S3E source theorem and the exact pairedAlgebraData.theta field equation.

No claim about complete charge/Hamiltonian covariance, global group
actions, or positive eigenvalues is made.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L4D
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3E
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L4C

/-- Same original source test-function fiber lift as S3L4B,
specialized solely to the actual S3D quadratic 48-Majorana generator. -/
noncomputable def pairedActualSourceSpin (i j : SpaceIndex) : SourceEnd :=
  sourcePostcomp (pairedFermionPlaneSpinGenerator i j)

/-- The concrete source theta matrix field matches exactly the accepted
48-Majorana source representation. Premise for the qualified parametric
source covariance transfer, discharged only by qualified S3E. -/
theorem pairedActualFockSpin_comm_source_theta
    (i j : SpaceIndex) (γ : SpinIndex) (C : ColorIndex 2) :
    pairedFermionPlaneSpinGenerator i j * pairedAlgebraData.theta γ C -
      pairedAlgebraData.theta γ C * pairedFermionPlaneSpinGenerator i j =
      ∑ α : SpinIndex,
        (((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) •
          pairedAlgebraData.theta α C) := by
  simpa only [pairedAlgebraData_theta] using
    (pairedFermionPlaneSpinGenerator_comm_theta i j γ C)

/-- The original source `pairedAlgebraData.fermionAction`, not a
surrogate postcomposition, transforms under the source-defined
three-color 48-Majorana spin generator. -/
theorem pairedActualSourceSpin_comm_fermionAction
    (i j : SpaceIndex) (γ : SpinIndex) (C : ColorIndex 2) :
    (pairedActualSourceSpin i j).comp (pairedAlgebraData.fermionAction γ C) -
      (pairedAlgebraData.fermionAction γ C).comp (pairedActualSourceSpin i j) =
      ∑ α : SpinIndex,
        (((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) •
          pairedAlgebraData.fermionAction α C) := by
  exact sourceFermionAction_covariance_of_fiber
    pairedAlgebraData
    (pairedFermionPlaneSpinGenerator i j)
    (fun α => ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ))
    γ C (pairedActualFockSpin_comm_source_theta i j γ C)

/-- The concrete source spin on the true original SmoothCore
commutes with every source coordinate multiplier. -/
theorem pairedActualSourceSpin_comm_position
    (i j k : SpaceIndex) (B : ColorIndex 2) :
    (pairedActualSourceSpin i j).comp (position (N := 2) k B) =
      (position (N := 2) k B).comp (pairedActualSourceSpin i j) :=
  sourcePostcomp_comm_position (pairedFermionPlaneSpinGenerator i j) k B

/-- The concrete source spin commutes with every original source
coordinate derivative, by the qualified bounded-fiber chain rule. -/
theorem pairedActualSourceSpin_comm_derivative
    (i j k : SpaceIndex) (B : ColorIndex 2) :
    (pairedActualSourceSpin i j).comp (coordinateDerivative (N := 2) k B) =
      (coordinateDerivative (N := 2) k B).comp (pairedActualSourceSpin i j) :=
  sourcePostcomp_comm_derivative (pairedFermionPlaneSpinGenerator i j) k B

#print axioms pairedActualFockSpin_comm_source_theta
#print axioms pairedActualSourceSpin_comm_fermionAction
#print axioms pairedActualSourceSpin_comm_position
#print axioms pairedActualSourceSpin_comm_derivative

end
end FCP.BFSSSU2PhysicalDomainS3L4D
