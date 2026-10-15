import SU2BFSSPhysicalDomainL6G7ZActualSourceFullL2UnitaryGaugeRepresentationProbe

/-! L6H0: exact original SmoothCore gauge orbit. Joint continuous source
representatives and genuine FullL2 a.e. identification. Pointwise/AE
results ONLY; strong L2 continuity still requires dominated convergence. -/

set_option autoImplicit false
set_option synthInstance.maxHeartbeats 400000

namespace FCP.BFSSSU2PhysicalDomainL6H0
noncomputable section
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG4J
open FCP.BFSSSU2PhysicalDomainL6G7U
open MeasureTheory

def actualOriginalSmoothGaugeOrbitRepresentative
    (f : SmoothCore 2) (g : GaugeGroup 2) (x : Boson 2) : Fermion 2 :=
  pairedGaugeData.fermion g (f (pairedGaugeData.boson g⁻¹ x))

theorem actualOriginalSmoothGaugeOrbit_jointContinuous
    (f : SmoothCore 2) :
    Continuous (fun z : GaugeGroup 2 × Boson 2 =>
      actualOriginalSmoothGaugeOrbitRepresentative f z.1 z.2) := by
  have hp : Continuous (fun z : GaugeGroup 2 × Boson 2 =>
      ((z.1)⁻¹, z.2)) :=
    (continuous_inv.comp continuous_fst).prodMk continuous_snd
  have hb : Continuous (fun z : GaugeGroup 2 × Boson 2 =>
      pairedGaugeData.boson z.1⁻¹ z.2) :=
    pairedGaugeData.boson_continuous.comp hp
  have hf : Continuous (fun z : GaugeGroup 2 × Boson 2 =>
      f (pairedGaugeData.boson z.1⁻¹ z.2)) :=
    f.continuous.comp hb
  have hpair : Continuous (fun z : GaugeGroup 2 × Boson 2 =>
      (z.1, f (pairedGaugeData.boson z.1⁻¹ z.2))) :=
    continuous_fst.prodMk hf
  exact pairedGaugeData.fermion_continuous.comp hpair

theorem actualOriginalSmoothGaugeOrbit_parameterContinuous
    (f : SmoothCore 2) (x : Boson 2) :
    Continuous (fun g : GaugeGroup 2 =>
      actualOriginalSmoothGaugeOrbitRepresentative f g x) := by
  exact (actualOriginalSmoothGaugeOrbit_jointContinuous f).comp
    (continuous_id.prodMk continuous_const)

theorem actualOriginalSmoothGaugeOrbit_ae_fullL2
    (f : SmoothCore 2) (g : GaugeGroup 2) :
    (actualOriginalFullL2GaugePairCLM g (coreToL2 f) :
      Boson 2 → Fermion 2) =ᵐ[volume]
      (fun x => actualOriginalSmoothGaugeOrbitRepresentative f g x) := by
  have hf := ContinuousLinearMap.coeFn_compLp
    (pairedGaugeData.fermion g).toContinuousLinearEquiv.toContinuousLinearMap
    (pairedGaugeData.bosonPullback g⁻¹ (coreToL2 f))
  have hb := Lp.coeFn_compMeasurePreserving (coreToL2 f)
    (pairedGaugeData.boson g⁻¹).measurePreserving
  have ha := (coreToL2_ae f).comp_tendsto
    (pairedGaugeData.boson g⁻¹).measurePreserving.quasiMeasurePreserving.tendsto_ae
  filter_upwards [hf, hb, ha] with x hF hB hA
  change (pairedGaugeData.fiberAction g
    (pairedGaugeData.bosonPullback g⁻¹ (coreToL2 f))) x =
      pairedGaugeData.fermion g
        ((pairedGaugeData.bosonPullback g⁻¹ (coreToL2 f)) x) at hF
  change (pairedGaugeData.bosonPullback g⁻¹ (coreToL2 f)) x =
    (coreToL2 f) (pairedGaugeData.boson g⁻¹ x) at hB
  calc
    (actualOriginalFullL2GaugePairCLM g (coreToL2 f)) x =
      pairedGaugeData.fermion g
        ((pairedGaugeData.bosonPullback g⁻¹ (coreToL2 f)) x) := by
          rw [actualOriginalFullL2GaugePairCLM_apply]
          exact hF
    _ = pairedGaugeData.fermion g
      ((coreToL2 f) (pairedGaugeData.boson g⁻¹ x)) := by rw [hB]
    _ = actualOriginalSmoothGaugeOrbitRepresentative f g x := by
      rw [hA]
      rfl

theorem actualOriginalSmoothGaugeOrbit_norm
    (f : SmoothCore 2) (g : GaugeGroup 2) (x : Boson 2) :
    ‖actualOriginalSmoothGaugeOrbitRepresentative f g x‖ =
      ‖f (pairedGaugeData.boson g⁻¹ x)‖ :=
  (pairedGaugeData.fermion g).norm_map _

#print axioms actualOriginalSmoothGaugeOrbitRepresentative
#print axioms actualOriginalSmoothGaugeOrbit_jointContinuous
#print axioms actualOriginalSmoothGaugeOrbit_parameterContinuous
#print axioms actualOriginalSmoothGaugeOrbit_ae_fullL2
#print axioms actualOriginalSmoothGaugeOrbit_norm
#check @actualOriginalSmoothGaugeOrbit_ae_fullL2

end
end FCP.BFSSSU2PhysicalDomainL6H0
