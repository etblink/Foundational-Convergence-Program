import SU2BFSSPhysicalDomainL6G7JSourceFlowLinearEquivCovarianceProbe
import SU2BFSSPhysicalDomainS1BRelativeGaugeImplementerProbe
import SU2BFSSPhysicalDomainL6G6TOriginalColorInfinitesimalUniquenessProbe

/-!
L6G7K — equality of the literal original source Fermion 2 bounded
color-generator exponential and the separately constructed
SU(2) exterior-Fock gauge implementation, ALONG THE native +i curve.

Inputs qualified independently:
* J: original bounded source flow is an invertible complex-linear
  map satisfying the native 48-theta SU(2) forward covariance.
* S1A/S1B: source-faithful theta commutant is scalar, and any
  candidate with G4H covariance differs from genuine G4B action
  by a complex scalar.
* L6G6Z/G4B: BOTH implementations fix the very same Fermion 2
  Fock vacuum.
* L6G6T: this common vacuum is provably nonzero.

No gauge equality, generator identification, or scalar phase is
assumed. Prove the complex scalar is one. Separate remaining
obligations include total gauge Gauss-current identification
and source BFSS Hamiltonian spectral questions.
-/

set_option autoImplicit false
set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 1600000

namespace FCP.BFSSSU2PhysicalDomainL6G7K
noncomputable section

open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG4B
open FCP.BFSSSU2PhysicalDomainL6G6X
open FCP.BFSSSU2PhysicalDomainL6G6Z
open FCP.BFSSSU2PhysicalDomainL6G7J
open FCP.BFSSSU2PhysicalDomainS1B
open FCP.BFSSSU2PhysicalDomainL6G6T

/-- Source-bounded exponential and independently constructed G4B
exterior-Fock gauge action are exactly EQUAL, not merely equal up to
phase, on the native +i SU(2) source curve. -/
theorem sourceFlowLinearEquiv_eq_actualGauge
    (c : ColorIndex 2) (t : ℝ) :
    sourceFlowLinearEquiv c t =
      fermionGaugeLinearEquiv (sourcePlusIGaugeCurve c t) := by
  let g : GaugeGroup 2 := sourcePlusIGaugeCurve c t
  obtain ⟨z, hz⟩ :=
    theta_covariant_implementer_scalar g
      (sourceFlowLinearEquiv c t)
      (fun spin A v =>
        sourceFlowLinearEquiv_theta_covariant c t spin A v)
  have hV :
      sourceFlowLinearEquiv c t fermionVacuum = fermionVacuum := by
    rw [sourceFlowLinearEquiv_apply]
    exact sourceFermionColorFlow_vacuum c t
  have hU : fermionGaugeLinearEquiv g fermionVacuum =
      fermionVacuum := fermionGaugeLinearEquiv_vacuum g
  have hzvac : z • fermionVacuum = fermionVacuum := by
    calc
      z • fermionVacuum =
          z • fermionGaugeLinearEquiv g fermionVacuum := by rw [hU]
      _ = sourceFlowLinearEquiv c t fermionVacuum :=
          (hz fermionVacuum).symm
      _ = fermionVacuum := hV
  have hzminus : (z - 1) • fermionVacuum = 0 := by
    rw [sub_smul, one_smul]
    exact sub_eq_zero.mpr hzvac
  have hzone : z = 1 := by
    by_contra hn
    exact (smul_ne_zero (sub_ne_zero.mpr hn)
      actualGaugeVacuum_ne_zero) hzminus
  apply LinearEquiv.ext
  intro v
  simpa only [hzone, one_smul] using hz v

/-- Literal original bounded operator exponential implements exactly
the independent accepted SU(2) exterior-Fock action on every
fermion state. No externally postulated implementation relation. -/
theorem sourceFermionColorFlow_eq_actualGauge_apply
    (c : ColorIndex 2) (t : ℝ) (v : Fermion 2) :
    sourceFermionColorFlow c t v =
      fermionGaugeLinearEquiv (sourcePlusIGaugeCurve c t) v := by
  calc
    _ = sourceFlowLinearEquiv c t v :=
      (sourceFlowLinearEquiv_apply c t v).symm
    _ = fermionGaugeLinearEquiv (sourcePlusIGaugeCurve c t) v :=
      congrArg (fun F : Fermion 2 ≃ₗ[ℂ] Fermion 2 => F v)
        (sourceFlowLinearEquiv_eq_actualGauge c t)

#print axioms sourceFlowLinearEquiv_eq_actualGauge
#print axioms sourceFermionColorFlow_eq_actualGauge_apply
#check @sourceFlowLinearEquiv_eq_actualGauge
#check @sourceFermionColorFlow_eq_actualGauge_apply

end
end FCP.BFSSSU2PhysicalDomainL6G7K
