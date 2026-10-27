import SU2BFSSPhysicalDomainS4B34ConcretePauliPairedManuscriptBProbe
import SU2BFSSConcretePotentialProbe

/-!
BFSS S4B35 — source-exact Pauli-paired bosonic potential and smooth-core
energy expression, composed from three separately kernel-qualified facts:

1. Original source averaged_core_energy for every genuine AlgebraData.
2. Original Pauli bosonic potential as the sum of color wedge squares.
3. Accepted Gate122 genuine paired real Fock field = manuscript B(x).

This is a NEW CANDIDATE until its separate strict Lean gate succeeds.
In particular, it proves no self-adjoint closed physical Hamiltonian,
no spectral gap, and no normalizable positive eigenpair.
-/

set_option autoImplicit false

namespace FCP.BFSSSU2PhysicalDomainS4B35
noncomputable section
open scoped BigOperators
open MeasureTheory
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS4B34

/-- The true paired 48-Majorana source AlgebraData has exactly the
positively normalized Pauli bosonic potential (no arbitrary orientation
hypothesis). The pairing affects theta but not the color coefficients. -/
theorem pairedBosonicPotential_eq_wedge (x : Boson 2) :
    pairedAlgebraData.deformedBosonicPotential 1 0 x =
      ∑ p : OAI.BFSSGamma.SpatialPair,
        FCP.BFSSSU2.colorWedgeSquared
          (fun a : Fin 3 => x (p.1.1,a))
          (fun a : Fin 3 => x (p.1.2,a)) := by
  have hcolor : ∀ a : ColorIndex 2,
      pairedAlgebraData.color a = FCP.BFSSSU2.normalizedPauli a := by
    intro a
    exact (pairedAlgebraData_color a).trans
      (FCP.BFSSSU2Full.concreteAlgebraData_color a)
  exact FCP.BFSSSU2.deformedBosonicPotential_one_zero_eq_wedge
    pairedAlgebraData hcolor x

/-- The source-derived boson+fermion zero-mass integrand on the actual
paired Fock carrier, without an asserted closed physical operator. -/
private def pairedManuscriptPotentialIntegrand
    (f : SmoothCore 2) (x : Boson 2) : ℝ :=
  (∑ p : OAI.BFSSGamma.SpatialPair,
      FCP.BFSSSU2.colorWedgeSquared
        (fun a : Fin 3 => x (p.1.1,a))
        (fun a : Fin 3 => x (p.1.2,a))) * ‖f x‖^2 +
    inner ℝ (f x) ((concretePauliPairedBComplex x).restrictScalars ℝ (f x))

/-- Original averaged squared supercharge/core energy equals the
literal normalized kinetic plus Pauli-bosonic plus genuine paired B(x)
fermionic source energy on the ORIGINAL smooth core.
No closed-form/gauge restriction or spectral conclusion is promoted. -/
theorem pairedOriginalSmoothCoreEnergy_eq_manuscript
    (f : SmoothCore 2) :
    (1/16 : ℝ) * ∑ α : SpinIndex,
        ‖coreToL2 (pairedAlgebraData.deformedCoreCharge 1 0 α f)‖^2 =
      (1/2 : ℝ) * ∑ p : SpaceIndex × ColorIndex 2,
        ‖coreToL2 (coordinateDerivative p.1 p.2 f)‖^2 +
      ∫ x : Boson 2, pairedManuscriptPotentialIntegrand f x := by
  have hIntegral :
      (∫ x : Boson 2,
        (pairedAlgebraData.deformedBosonicPotential 1 0 x * ‖f x‖^2 +
          inner ℝ (f x) (pairedAlgebraData.deformedFermionField 1 0 x (f x)))) =
        ∫ x : Boson 2, pairedManuscriptPotentialIntegrand f x := by
    apply integral_congr_ae
    filter_upwards [] with x
    unfold pairedManuscriptPotentialIntegrand
    rw [pairedBosonicPotential_eq_wedge x,
      concretePauliPairedRealFockField_eq_B x]
  calc
    _ = (1/2 : ℝ) * ∑ p : SpaceIndex × ColorIndex 2,
          ‖coreToL2 (coordinateDerivative p.1 p.2 f)‖^2 +
        ∫ x : Boson 2,
          (pairedAlgebraData.deformedBosonicPotential 1 0 x * ‖f x‖^2 +
            inner ℝ (f x) (pairedAlgebraData.deformedFermionField 1 0 x (f x))) :=
      pairedAlgebraData.averaged_core_energy 1 0 f
    _ = _ := congrArg
      (fun z : ℝ => (1/2 : ℝ) * ∑ p : SpaceIndex × ColorIndex 2,
          ‖coreToL2 (coordinateDerivative p.1 p.2 f)‖^2 + z)
      hIntegral

#print axioms pairedBosonicPotential_eq_wedge
#print axioms pairedOriginalSmoothCoreEnergy_eq_manuscript

end
end FCP.BFSSSU2PhysicalDomainS4B35
