import SU2BFSSG4K8E3CoreNoncancellationProbe

/-!
# BFSS SU(2) G4-K8E4 — original smooth-core to L² injection

UNCOMPILED CANDIDATE until independently accepted by the pinned Lean compiler.
The actual upstream BFSS.GaugeCore source already applies
Continuous.ae_eq_iff_eq volume to continuous source-typed sections.
Combine this exact full-support property with coreToL2_ae, not a new axiom.
Results here concern a single nonzero smooth Gauss-invariant physical trial
state; they do not imply a global spectral lower bound or mass gap.
-/

namespace FCP.BFSSSU2GaugeG4K8E4
noncomputable section

open OAI
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open MeasureTheory
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG4K2B
open FCP.BFSSSU2GaugeG4K3
open FCP.BFSSSU2GaugeG4K6
open FCP.BFSSSU2GaugeG4K7
open FCP.BFSSSU2GaugeG4K8E3

/-- The actual bosonic-volume L² class determines each original source
smooth-core section; this uses the same continuity/full-support extensionality
lemma already applied in the pinned upstream BFSS.GaugeCore. -/
theorem sourceCoreToL2_injective :
    Function.Injective (coreToL2 (N := 2)) := by
  intro f g hfg
  have hLp :
      (coreToL2 f : Boson 2 → Fermion 2) =ᵐ[volume]
        (coreToL2 g : Boson 2 → Fermion 2) :=
    (Lp.ext_iff).mp hfg
  have hae :
      (f : Boson 2 → Fermion 2) =ᵐ[volume]
        (g : Boson 2 → Fermion 2) :=
    (coreToL2_ae f).symm.trans (hLp.trans (coreToL2_ae g))
  have hpointwise :
      (f : Boson 2 → Fermion 2) = (g : Boson 2 → Fermion 2) :=
    (Continuous.ae_eq_iff_eq volume f.continuous g.continuous).mp hae
  apply DFunLike.ext
  intro x
  exact congrFun hpointwise x

/-- Literal source coreToL2 cannot erase a nonzero smooth-core section. -/
theorem sourceCoreToL2_ne_zero (f : SmoothCore 2) (hf : f ≠ 0) :
    coreToL2 f ≠ 0 := by
  intro hz
  apply hf
  apply sourceCoreToL2_injective
  simpa only [map_zero] using hz

/-- For every real h and original spin alpha, the interacting h,m=0 charge
is nonzero in genuine FullL2, on the identical physical radial state. -/
theorem physicalInteractingCoreCharge_massless_L2_ne_zero
    (h : ℝ) (α : SpinIndex) :
    coreToL2
      (pairedAlgebraData.deformedCoreCharge h 0 α radialBumpSmoothCore) ≠ 0 :=
  sourceCoreToL2_ne_zero _
    (physicalInteractingCoreCharge_massless_ne_zero h α)

/-- The source h=1,m=0 spin components have nonzero L² image. -/
theorem physicalInteractingCoreCharge_one_L2_ne_zero (α : SpinIndex) :
    coreToL2
      (pairedAlgebraData.deformedCoreCharge 1 0 α radialBumpSmoothCore) ≠ 0 :=
  physicalInteractingCoreCharge_massless_L2_ne_zero 1 α

/-- Strictly positive physical energy of this ONE radial trial state
at zero mass for every real h; no spectrum infimum is implied. -/
theorem physicalMasslessInteractingTrialEnergy_pos (h : ℝ) :
    0 < physicalDeformedEnergy h 0 := by
  apply (physicalDeformedEnergy_pos_iff h 0).mpr
  exact ⟨(0 : SpinIndex),
    physicalInteractingCoreCharge_massless_L2_ne_zero h 0⟩

/-- In particular, source h=1,m=0 has positive trial energy. -/
theorem physicalInteractingTrialEnergy_one_pos :
    0 < physicalDeformedEnergy 1 0 :=
  physicalMasslessInteractingTrialEnergy_pos 1

/-- Positive normalized energy quotient for this one actual physical trial,
not a global BFSS Hamiltonian eigenvalue or spectral gap. -/
theorem physicalInteractingNormalizedTrialEnergy_one_pos :
    0 < physicalDeformedEnergy 1 0 / ‖radialBumpL2‖ ^ 2 :=
  div_pos physicalInteractingTrialEnergy_one_pos radialBumpL2_norm_sq_pos

#print axioms sourceCoreToL2_injective
#print axioms sourceCoreToL2_ne_zero
#print axioms physicalInteractingCoreCharge_massless_L2_ne_zero
#print axioms physicalInteractingCoreCharge_one_L2_ne_zero
#print axioms physicalMasslessInteractingTrialEnergy_pos
#print axioms physicalInteractingTrialEnergy_one_pos
#print axioms physicalInteractingNormalizedTrialEnergy_one_pos

end
end FCP.BFSSSU2GaugeG4K8E4
