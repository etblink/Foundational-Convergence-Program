import SU2BFSSPhysicalDomainS4B35PairedSourceSmoothCoreEnergyProbe
import SU2BFSSPhysicalDomainD2B14ExactClosedChargeQuadraticEnergyProbe

/-!
BFSS S4B36 — ACTUAL ORIGINAL closed gauge-physical charge energy,
explicitly identified with the accepted Pauli-bosonic / paired-Fock
manuscript smooth-core expression.

Inputs, all original and separately accepted:
* D2B14: sourceClosedPhysicalChargeEnergy on the literal source
  invariantCore equals source deformedCoreEnergy(1,0);
* S4B35: original averaged sixteen-charge smooth-core energy
  equals explicit Pauli wedge squares + real paired Fock B(x);
* source: deformedCoreEnergy is the original 1/16 charge norm sum.

No larger maximal form, unproved operator identification, compact
resolvent, coercivity along flat valleys or positive eigenstate asserted.
This module is a PROSPECTIVE candidate until strict Lean acceptance.
-/

set_option autoImplicit false

namespace FCP.BFSSSU2PhysicalDomainS4B36
noncomputable section
open scoped BigOperators
open MeasureTheory
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainD2B14
open FCP.BFSSSU2PhysicalDomainS4B34
open FCP.BFSSSU2PhysicalDomainS4B35

/-- The exact positive-energy integrand inherited from the actual
original SU(2) Pauli-color, 48-Majorana paired Fock representation.
It is NOT a definition of a new Hamiltonian or a larger domain. -/
private def pairedExplicitPauliCoreEnergy (f : SmoothCore 2) : ℝ :=
    (1 / 2 : ℝ) * ∑ p : SpaceIndex × ColorIndex 2,
      ‖coreToL2 (coordinateDerivative p.1 p.2 f)‖^2 +
    ∫ x : Boson 2,
      ((∑ p : OAI.BFSSGamma.SpatialPair,
          FCP.BFSSSU2.colorWedgeSquared
            (fun a : Fin 3 => x (p.1.1,a))
            (fun a : Fin 3 => x (p.1.2,a))) * ‖f x‖^2 +
        inner ℝ (f x) ((concretePauliPairedBComplex x).restrictScalars ℝ (f x)))

/-- This is equality of the *actual closed physical charge form*
evaluated on the embedded invariant SmoothCore, not a declaration about
unproved larger operator domains. It retains the genuine original
Pauli/gamma/theta source, and the unique source's 1/16 normalization. -/
theorem pairedSourceClosedPhysicalEnergy_on_invariantCore_eq_PauliB
    (f : pairedGaugeData.invariantCore) :
    sourceClosedPhysicalChargeEnergy pairedAlgebraData pairedGaugeData
      (sourceCoreInClosedChargeDomain pairedAlgebraData pairedGaugeData f) =
      pairedExplicitPauliCoreEnergy f.val := by
  calc
    sourceClosedPhysicalChargeEnergy pairedAlgebraData pairedGaugeData
        (sourceCoreInClosedChargeDomain pairedAlgebraData pairedGaugeData f) =
      pairedAlgebraData.deformedCoreEnergy 1 0 f.val :=
        sourceClosedPhysicalChargeEnergy_on_sourceCore_eq_massless
          pairedAlgebraData pairedGaugeData f
    _ = (1 / 16 : ℝ) * ∑ α : SpinIndex,
          ‖coreToL2 (pairedAlgebraData.deformedCoreCharge 1 0 α f.val)‖^2 := by
            rfl
    _ = pairedExplicitPauliCoreEnergy f.val := by
          exact pairedOriginalSmoothCoreEnergy_eq_manuscript f.val

/-- Although the B(x) expectation can have either sign pointwise,
its sum with the original bosonic and kinetic terms is nonnegative
on the ACTUAL invariant smooth source core, since it equals the
original closed physical sixteen-charge square. This asserts no
positive lower bound, spectral gap or count of eigenvalues. -/
theorem pairedExplicitPauliCoreEnergy_nonneg_on_invariantCore
    (f : pairedGaugeData.invariantCore) :
    0 ≤ pairedExplicitPauliCoreEnergy f.val := by
  rw [← pairedSourceClosedPhysicalEnergy_on_invariantCore_eq_PauliB f]
  exact sourceClosedPhysicalChargeEnergy_nonneg
    pairedAlgebraData pairedGaugeData
    (sourceCoreInClosedChargeDomain pairedAlgebraData pairedGaugeData f)

#print axioms pairedSourceClosedPhysicalEnergy_on_invariantCore_eq_PauliB
#print axioms pairedExplicitPauliCoreEnergy_nonneg_on_invariantCore

end
end FCP.BFSSSU2PhysicalDomainS4B36
