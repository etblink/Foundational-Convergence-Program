import SU2BFSSPhysicalDomainL6H2UActualOriginalSU2AbstractDominatedIntegralProbe

/-!
L6H3 — ORIGINAL BFSS smooth SU2 gauge-orbit inner correlation.
Use L6H0 genuine joint continuous source orbit and exact AE FullL2
representative, plus L6H2 native squared integrable radial envelope,
to prove continuity of the true original L2 gauge-orbit correlation.

This is the source-exact dominated-convergence bridge toward strong
continuity, not yet the norm-topology strong-continuity theorem.
No proxy Hilbert space, no extra hypotheses, no source sign changes.
-/

set_option autoImplicit false
set_option maxHeartbeats 1000000
set_option synthInstance.maxHeartbeats 400000

namespace FCP.BFSSSU2PhysicalDomainL6H3
noncomputable section
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainL6H0
open FCP.BFSSSU2PhysicalDomainL6H2
open FCP.BFSSSU2PhysicalDomainL6G7U
open MeasureTheory

/-- The actual compactly-supported smooth BFSS orbit correlation
depends continuously on the SU(2) group parameter. The single
integrable majorant is the H2 radial envelope squared. -/
theorem actualOriginalSmoothGaugeOrbit_correlationContinuous
    (f : SmoothCore 2) (h : GaugeGroup 2) :
    Continuous (fun g : GaugeGroup 2 =>
      ∫ x : Boson 2,
        inner ℂ (actualOriginalSmoothGaugeOrbitRepresentative f g x)
          (actualOriginalSmoothGaugeOrbitRepresentative f h x)
        ∂(volume : Measure (Boson 2))) := by
  obtain ⟨R, C, hR, hC, hint, hbound⟩ :=
    actualOriginalSmoothGaugeOrbit_integrableEnvelope f
  let envelope : Boson 2 → ℝ :=
    fun x => if ‖x‖ < R then C else 0
  have hnonneg (x : Boson 2) : 0 ≤ envelope x := by
    dsimp [envelope]
    split_ifs <;> positivity
  have hcont_x (g : GaugeGroup 2) :
      Continuous (fun x : Boson 2 =>
        actualOriginalSmoothGaugeOrbitRepresentative f g x) := by
    have hp : Continuous (fun x : Boson 2 => (g, x)) :=
      continuous_const.prodMk continuous_id
    have h := (actualOriginalSmoothGaugeOrbit_jointContinuous f).comp hp
    change Continuous (fun x : Boson 2 =>
      actualOriginalSmoothGaugeOrbitRepresentative f g x) at h
    exact h
  have hmeas (g : GaugeGroup 2) :
      AEStronglyMeasurable (fun x : Boson 2 =>
        inner ℂ (actualOriginalSmoothGaugeOrbitRepresentative f g x)
          (actualOriginalSmoothGaugeOrbitRepresentative f h x))
        (volume : Measure (Boson 2)) :=
    ((hcont_x g).inner (hcont_x h)).aestronglyMeasurable
  have hdom (g : GaugeGroup 2) (x : Boson 2) :
      ‖inner ℂ (actualOriginalSmoothGaugeOrbitRepresentative f g x)
        (actualOriginalSmoothGaugeOrbitRepresentative f h x)‖
        ≤ envelope x ^ 2 := by
    calc
      _ ≤ ‖actualOriginalSmoothGaugeOrbitRepresentative f g x‖ *
            ‖actualOriginalSmoothGaugeOrbitRepresentative f h x‖ :=
        norm_inner_le_norm _ _
      _ ≤ envelope x * envelope x := by
        apply mul_le_mul (hbound g x) (hbound h x)
        · exact norm_nonneg _
        · exact hnonneg x
      _ = envelope x ^ 2 := by ring
  have hcont_g (x : Boson 2) :
      Continuous (fun g : GaugeGroup 2 =>
        inner ℂ (actualOriginalSmoothGaugeOrbitRepresentative f g x)
          (actualOriginalSmoothGaugeOrbitRepresentative f h x)) :=
    (actualOriginalSmoothGaugeOrbit_parameterContinuous f x).inner continuous_const
  have hmeasure : ∀ g : GaugeGroup 2,
      AEStronglyMeasurable (fun x : Boson 2 =>
        inner ℂ (actualOriginalSmoothGaugeOrbitRepresentative f g x)
          (actualOriginalSmoothGaugeOrbitRepresentative f h x))
        (volume : Measure (Boson 2)) := hmeas
  have hbound_ae : ∀ g : GaugeGroup 2,
      ∀ᵐ x ∂(volume : Measure (Boson 2)),
        ‖inner ℂ (actualOriginalSmoothGaugeOrbitRepresentative f g x)
          (actualOriginalSmoothGaugeOrbitRepresentative f h x)‖
        ≤ envelope x ^ 2 := by
    intro g
    exact Filter.Eventually.of_forall (hdom g)
  have hcont_ae :
      ∀ᵐ x ∂(volume : Measure (Boson 2)),
        Continuous (fun g : GaugeGroup 2 =>
          inner ℂ (actualOriginalSmoothGaugeOrbitRepresentative f g x)
            (actualOriginalSmoothGaugeOrbitRepresentative f h x)) :=
    Filter.Eventually.of_forall hcont_g
  -- #241 confirmed first-countability but runner again shut down
  -- during the enormous concrete continuous_of_dominated elaboration.
  -- Route through separately compiled ABSTRACT native SU2/Boson
  -- dominated-integral lemma, with its tiny closed proof in L6H2U.
  let F : GaugeGroup 2 → Boson 2 → ℂ := fun g x =>
    inner ℂ (actualOriginalSmoothGaugeOrbitRepresentative f g x)
      (actualOriginalSmoothGaugeOrbitRepresentative f h x)
  let bound : Boson 2 → ℝ := fun x => envelope x ^ 2
  have habstract :
      Continuous (fun g : GaugeGroup 2 =>
        ∫ x : Boson 2, F g x ∂(volume : Measure (Boson 2))) := by
    apply FCP.BFSSSU2PhysicalDomainL6H2U.actualOriginalSU2_continuous_integral_of_dominated
      F bound
    · exact hmeasure
    · exact hbound_ae
    · exact hint
    · exact hcont_ae
  exact habstract

/-- True ORIGINAL FullL2 inner product equals the same source
pointwise correlation integral, by Mathlib L2.inner_def and H0
almost-everywhere identification. -/
theorem actualOriginalSmoothGaugeOrbit_fullL2Inner_eq_integral
    (f : SmoothCore 2) (g h : GaugeGroup 2) :
    inner ℂ (actualOriginalFullL2GaugePairCLM g (coreToL2 f))
      (actualOriginalFullL2GaugePairCLM h (coreToL2 f)) =
    ∫ x : Boson 2,
      inner ℂ (actualOriginalSmoothGaugeOrbitRepresentative f g x)
        (actualOriginalSmoothGaugeOrbitRepresentative f h x)
      ∂(volume : Measure (Boson 2)) := by
  rw [L2.inner_def]
  apply integral_congr_ae
  filter_upwards [actualOriginalSmoothGaugeOrbit_ae_fullL2 f g,
    actualOriginalSmoothGaugeOrbit_ae_fullL2 f h] with x hg hh
  rw [hg, hh]

/-- The actual ORIGINAL BFSS FullL2 SU(2) unitary correlation is
continuous in group parameter. This is the precise bridge from
dominated pointwise convergence to the Hilbert inner product. -/
theorem actualOriginalSmoothGaugeOrbit_fullL2InnerContinuous
    (f : SmoothCore 2) (h : GaugeGroup 2) :
    Continuous (fun g : GaugeGroup 2 =>
      inner ℂ (actualOriginalFullL2GaugePairCLM g (coreToL2 f))
        (actualOriginalFullL2GaugePairCLM h (coreToL2 f))) := by
  have hc := actualOriginalSmoothGaugeOrbit_correlationContinuous f h
  have heq :
      (fun g : GaugeGroup 2 =>
        inner ℂ (actualOriginalFullL2GaugePairCLM g (coreToL2 f))
          (actualOriginalFullL2GaugePairCLM h (coreToL2 f))) =
      (fun g : GaugeGroup 2 =>
        ∫ x : Boson 2,
          inner ℂ (actualOriginalSmoothGaugeOrbitRepresentative f g x)
            (actualOriginalSmoothGaugeOrbitRepresentative f h x)
          ∂(volume : Measure (Boson 2))) := by
    funext g
    exact actualOriginalSmoothGaugeOrbit_fullL2Inner_eq_integral f g h
  rw [heq]
  exact hc

#print axioms actualOriginalSmoothGaugeOrbit_correlationContinuous
#print axioms actualOriginalSmoothGaugeOrbit_fullL2Inner_eq_integral
#print axioms actualOriginalSmoothGaugeOrbit_fullL2InnerContinuous
#check @actualOriginalSmoothGaugeOrbit_fullL2InnerContinuous

end
end FCP.BFSSSU2PhysicalDomainL6H3
