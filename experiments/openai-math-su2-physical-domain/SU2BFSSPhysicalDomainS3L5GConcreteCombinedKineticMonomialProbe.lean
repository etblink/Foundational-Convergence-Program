import SU2BFSSPhysicalDomainS3L5FParametricCombinedKineticMonomialProbe

/-!
# S3L5G — actual paired SU(2) specialization of combined kinetic monomial covariance

S3L5E gate #45 exceeded Lean's recursion depth while elaborating the
large concrete arguments of an elementary additive commutator lemma.
Qualified S3L5F gate #46 has already proved that additive transport,
on the literal upstream SmoothCore 2, with an explicit fiber premise.

Here we discharge precisely that premise from qualified S3L4D, and
instantiate S3L5F with the actual pairedAlgebraData and the original
48-Majorana quadratic Fock spin generator. Do not unfold either object
or normalize the whole 16-supercharge expression in this gate.

This is a single source kinetic MONOMIAL. The summed kinetic charge,
cubic charge, full physical supercharge, closed Hamiltonian symmetry,
Spin(9) representation, and positive spectrum are NOT established.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5G
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3L4D
open FCP.BFSSSU2PhysicalDomainS3L5F

/-- The literal source paired-AlgebraData kinetic monomial has the
combined ORIGINAL orbital and 48-Majorana spin commutator. The actual
Fock fiber covariance is discharged by S3L4D, not postulated. -/
theorem pairedActualCombined_comm_kineticMonomial
    (i j k : SpaceIndex) (γ : SpinIndex)
    (A B : ColorIndex 2) (hij : i ≠ j) :
    (sourceParametricCombinedPlane
       (pairedFermionPlaneSpinGenerator i j) i j).comp
      ((pairedAlgebraData.fermionAction γ A).comp
        (coordinateDerivative (N := 2) k B)) -
    ((pairedAlgebraData.fermionAction γ A).comp
        (coordinateDerivative (N := 2) k B)).comp
      (sourceParametricCombinedPlane
        (pairedFermionPlaneSpinGenerator i j) i j) =
      (pairedAlgebraData.fermionAction γ A).comp
        (if k = j then coordinateDerivative (N := 2) i B
         else if k = i then -(coordinateDerivative (N := 2) j B)
         else 0) +
      (∑ β : SpinIndex,
        (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
          pairedAlgebraData.fermionAction β A)).comp
        (coordinateDerivative (N := 2) k B) := by
  have hFiber :
      pairedFermionPlaneSpinGenerator i j * pairedAlgebraData.theta γ A -
        pairedAlgebraData.theta γ A * pairedFermionPlaneSpinGenerator i j =
        ∑ β : SpinIndex,
          (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
            pairedAlgebraData.theta β A) :=
    pairedActualFockSpin_comm_source_theta i j γ A
  exact sourceCombined_comm_kineticMonomial_of_fiber
    pairedAlgebraData
    (pairedFermionPlaneSpinGenerator i j)
    (fun β => ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ))
    i j k γ A B hij hFiber

#print axioms pairedActualCombined_comm_kineticMonomial

end
end FCP.BFSSSU2PhysicalDomainS3L5G
