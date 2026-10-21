import SU2BFSSPhysicalDomainS1V52L9E5F18COriginalNativeFockSourceGaugeIdentificationProbe
import SU2BFSSPhysicalDomainL6G7VActualSourceFullL2PhysicalFixedSpaceProbe

/-!
L9E5F19A — original SOURCE native Spin(48) Fock implementation
in the ACTUAL bounded source FullL2 gauge action and physical space.

Genuine native sixteen-block Spin(48) Fock operators (F14/F15/F18C)
are compared to the ORIGINAL GaugeData fermion action from G4J/G4E.
Both act on the SAME original Fermion 2 complex Hilbert module.

The native FullL2 operator uses precisely the ORIGINAL bosonic inverse
pullback from L6G7U. L6G7V supplies the certified original physical
fixed-space equivalence; no new physical space is manufactured.

This source is a prospective theorem only until a new source-pinned,
kernel-checked strict gate passes with the permitted axioms.
No independent manuscript module, unbounded charge/Hamiltonian graph
transport, Spin48-valued continuity, positivity or mass-gap claim.
-/

set_option autoImplicit false
set_option maxHeartbeats 360000

namespace FCP.BFSSS1V52L9E5F19A
noncomputable section

open OAI.BFSSQuantum
open FCP.BFSSS1V52L9E5F14
open FCP.BFSSS1V52L9E5F15
open FCP.BFSSS1V52L9E5F18C
open FCP.BFSSSU2GaugeG4B
open FCP.BFSSSU2GaugeG4E
open FCP.BFSSSU2GaugeG4J
open FCP.BFSSSU2PhysicalDomainL6G7U
open FCP.BFSSSU2PhysicalDomainL6G7V
open MeasureTheory

/-- The ACTUAL original sixteen-block native Spin(48) Hilbert
operator is exactly the original GaugeData fermionic unitary as a
continuous complex-linear operator on the original Fermion 2. -/
theorem originalNativeSixteenSpinFockOp_eq_sourceGauge
    (g : GaugeGroup 2) :
    originalNativeSixteenSpinFockMonoidHom g =
      (pairedGaugeData.fermion g).toContinuousLinearEquiv.toContinuousLinearMap := by
  apply ContinuousLinearMap.ext
  intro v
  have hident :
      originalNativeSixteenFockLinearEquivHom g v =
        fermionGaugeLinearHom g v :=
    congrArg
      (fun f : GaugeGroup 2 →* (Fermion 2 ≃ₗ[ℂ] Fermion 2) => f g v)
      originalNativeSixteenFock_sourceGaugeHom_identification
  change originalNativeSixteenSpinFockMonoidHom g v =
    pairedGaugeData.fermion g v
  calc
    originalNativeSixteenSpinFockMonoidHom g v =
        fermionGaugeLinearEquiv g v := hident
    _ = pairedGaugeData.fermion g v := by
      rw [pairedGaugeData_fermion_exact]
      rfl

/-- The native Fock Spin(48) implementation combined with the EXACT
original bosonic inverse pullback on the genuine FullL2 Hilbert space. -/
noncomputable def originalNativeSpin48FullL2GaugePairCLM
    (g : GaugeGroup 2) : FullL2 2 →L[ℂ] FullL2 2 :=
  ((originalNativeSixteenSpinFockMonoidHom g).compLpL
    2 (volume : Measure (Boson 2))).comp
    ((Lp.compMeasurePreservingₗᵢ ℂ
      (pairedGaugeData.boson g⁻¹)
      (pairedGaugeData.boson g⁻¹).measurePreserving).toContinuousLinearMap)

/-- The genuine native Spin(48) fermionic operator induces exactly
the ORIGINAL full-L² bounded boson–fermion gauge transformation. -/
theorem originalNativeSpin48FullL2GaugePair_eq_sourceGauge
    (g : GaugeGroup 2) :
    originalNativeSpin48FullL2GaugePairCLM g =
      actualOriginalFullL2GaugePairCLM g := by
  simp only [originalNativeSpin48FullL2GaugePairCLM,
    actualOriginalFullL2GaugePairCLM,
    originalNativeSixteenSpinFockOp_eq_sourceGauge]

/-- The joint native Spin(48) Fock FullL2 fixed vectors are precisely
the ACTUAL original BFSS physical Hilbert space, not a surrogate. -/
theorem originalNativeSpin48FullL2GaugePair_fixed_iff_physical
    (v : FullL2 2) :
    (∀ g : GaugeGroup 2,
        originalNativeSpin48FullL2GaugePairCLM g v = v) ↔
      v ∈ pairedGaugeData.physicalSpace := by
  simpa only [originalNativeSpin48FullL2GaugePair_eq_sourceGauge] using
    (actualOriginalFullL2GaugePair_fixed_iff_physical v)

#print axioms originalNativeSixteenSpinFockOp_eq_sourceGauge
#print axioms originalNativeSpin48FullL2GaugePairCLM
#print axioms originalNativeSpin48FullL2GaugePair_eq_sourceGauge
#print axioms originalNativeSpin48FullL2GaugePair_fixed_iff_physical

end
end FCP.BFSSS1V52L9E5F19A
