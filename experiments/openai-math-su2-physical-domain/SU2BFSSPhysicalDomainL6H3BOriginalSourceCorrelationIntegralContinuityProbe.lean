import SU2BFSSPhysicalDomainL6H3AOriginalSourceCorrelationKernelPointwiseProbe

/-!
L6H3B — ORIGINAL BFSS source SU(2) smooth orbit correlation INTEGRAL
is continuous in its native gauge parameter, with the source bosonic
volume, source fermion action, source inverse pullback and original f.

Uses STRICTLY the separately qualified native lemmas:
H2 original squared envelope integrability (#237),
H2U source-typed abstract dominated integral (#242),
H3A concrete original kernel measurability, domination, parameter
continuity (#243). No monolithic Fock elaboration in this lemma.

No claim of FullL2 Hilbert strong/norm continuity here; the exact
inner-integral identification and norm-polarization follow separately.
-/

set_option autoImplicit false
set_option maxHeartbeats 400000
set_option synthInstance.maxHeartbeats 200000

namespace FCP.BFSSSU2PhysicalDomainL6H3B
noncomputable section
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainL6H0
open FCP.BFSSSU2PhysicalDomainL6H2
open FCP.BFSSSU2PhysicalDomainL6H3A
open MeasureTheory

/-- The actual BFSS source SU(2) smooth-core complex correlation,
integrated in ORIGINAL Boson 2 volume, varies continuously
with the gauge parameter. -/
theorem actualOriginalSourceGaugeCorrelationIntegral_continuous
    (f : SmoothCore 2) (h : GaugeGroup 2) :
    Continuous (fun g : GaugeGroup 2 =>
      ∫ x : Boson 2,
        actualOriginalSourceGaugeCorrelationKernel f h g x
        ∂(volume : Measure (Boson 2))) := by
  obtain ⟨R, C, hR, hC, hIntegrable, hOrbitBound⟩ :=
    actualOriginalSmoothGaugeOrbit_integrableEnvelope f
  let B : Boson 2 → ℝ := fun x => (if ‖x‖ < R then C else 0) ^ 2
  have hMeas : ∀ g : GaugeGroup 2,
      AEStronglyMeasurable (actualOriginalSourceGaugeCorrelationKernel f h g)
        (volume : Measure (Boson 2)) :=
    fun g => actualOriginalSourceGaugeCorrelationKernel_aeMeasurable f h g
  have hBound : ∀ g : GaugeGroup 2,
      ∀ᵐ x ∂(volume : Measure (Boson 2)),
        ‖actualOriginalSourceGaugeCorrelationKernel f h g x‖ ≤ B x := by
    intro g
    exact Filter.Eventually.of_forall (fun x =>
      actualOriginalSourceGaugeCorrelationKernel_norm_le
        f R C hC hOrbitBound g h x)
  have hParameterContinuous :
      ∀ᵐ x ∂(volume : Measure (Boson 2)),
        Continuous (fun g : GaugeGroup 2 =>
          actualOriginalSourceGaugeCorrelationKernel f h g x) :=
    Filter.Eventually.of_forall
      (actualOriginalSourceGaugeCorrelationKernel_continuous_g f h)
  exact
    FCP.BFSSSU2PhysicalDomainL6H2U.actualOriginalSU2_continuous_integral_of_dominated
      (fun g x => actualOriginalSourceGaugeCorrelationKernel f h g x)
      B hMeas hBound hIntegrable hParameterContinuous

#print axioms actualOriginalSourceGaugeCorrelationIntegral_continuous
#check @actualOriginalSourceGaugeCorrelationIntegral_continuous

end
end FCP.BFSSSU2PhysicalDomainL6H3B
