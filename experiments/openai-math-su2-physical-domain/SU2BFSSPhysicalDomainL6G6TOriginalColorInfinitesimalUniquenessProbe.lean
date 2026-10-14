import SU2BFSSPhysicalDomainL6G6SOriginalGaugeVacuumIdentificationProbe
import SU2BFSSPhysicalDomainS1ASchurScalarCommutantProbe

/-!
L6G6T — uniqueness of the genuine source infinitesimal fermionic
SU(2) color generator, using exact original Majorana commutators and
the *same* nonzero Fock vacuum fixed by the constructed gauge action.

The already-qualified L6G6L color commutator fixes any bounded
candidate generator up to an operator commuting with all 48 original
paired Majoranas. S1A proves that commutant is scalar. The accepted
L6G6R/S common-vacuum annihilation pins the scalar to zero.

This theorem has two EXPLICIT hypotheses on a future candidate D:
the actual source infinitesimal commutator and vacuum annihilation.
It does NOT assert that D is the derivative of the gauge representation.
That derivative, the one-parameter SU(2) curve, and its sign are
genuinely open, rather than smuggled in as source identities.
-/

set_option autoImplicit false

namespace FCP.BFSSSU2PhysicalDomainL6G6T
noncomputable section

open OAI.BFSSQuantum
open OAI.Laughlin.Fock
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG4B
open FCP.BFSSSU2PhysicalDomainL6G6K
open FCP.BFSSSU2PhysicalDomainL6G6S

/-- Cancellation of equal commutators, proved pointwise over an
abstract complex normed vector space rather than the concrete Fock type. -/
private theorem sub_commutes_pointwise_of_equal_commutators
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    (D J T : E →L[ℂ] E)
    (h : D * T - T * D = J * T - T * J)
    (v : E) :
    (D - J) (T v) = T ((D - J) v) := by
  have hv := congrArg (fun X : E →L[ℂ] E => X v) h
  have hc :
      D (T v) - T (D v) = J (T v) - T (J v) := by
    simpa only [ContinuousLinearMap.sub_apply,
      ContinuousLinearMap.mul_apply] using hv
  simp only [ContinuousLinearMap.sub_apply, map_sub]
  calc
    D (T v) - J (T v) =
        (D (T v) - T (D v)) -
        (J (T v) - T (J v)) +
        (T (D v) - T (J v)) := by abel
    _ = T (D v) - T (J v) := by rw [hc]; simp

/-- The literal original gauge-invariant source Fock vacuum is
nonzero: it is an injective linear transport of the exterior unit. -/
theorem actualGaugeVacuum_ne_zero :
    fermionVacuum ≠ (0 : Fermion 2) := by
  intro hzero
  have hunit : (1 : Space 23) = 0 := by
    apply fockAlgebraToBFSS.injective
    simpa only [fermionVacuum, map_zero] using hzero
  exact one_ne_zero hunit

/-- Any bounded fiber operator with precisely the same source
infinitesimal theta commutators as J_F(c), and killing the actual
G4B-invariant Fock vacuum, IS the source color generator. The
Schur-commutant ambiguity is a scalar and cannot survive the
nonzero shared vacuum. No gauge differentiation premise is assumed. -/
theorem sourceColorGenerator_unique_of_commutator_and_vacuum
    (c : ColorIndex 2)
    (D : Fermion 2 →L[ℂ] Fermion 2)
    (hD : ∀ (α : SpinIndex) (a : ColorIndex 2),
      D * pairedAlgebraData.theta α a -
        pairedAlgebraData.theta α a * D =
        -(∑ b : ColorIndex 2,
          (pairedAlgebraData.structureConstant a b c : ℂ) •
            pairedAlgebraData.theta α b))
    (hDvac : D fermionVacuum = 0) :
    D = sourceFiberFermionColorGenerator pairedAlgebraData c := by
  let J : Fermion 2 →L[ℂ] Fermion 2 :=
    sourceFiberFermionColorGenerator pairedAlgebraData c
  let L : Module.End ℂ (Fermion 2) := (D - J).toLinearMap
  have hcolor : ∀ a : ColorIndex 2,
      pairedAlgebraData.color a = FCP.BFSSSU2.normalizedPauli a := by
    intro a
    calc
      pairedAlgebraData.color a =
        FCP.BFSSSU2Full.concreteAlgebraData.color a :=
          pairedAlgebraData_color a
      _ = FCP.BFSSSU2.normalizedPauli a :=
          FCP.BFSSSU2Full.concreteAlgebraData_color a
  have hcomm : ∀ α : SpinIndex, ∀ a : ColorIndex 2,
      ∀ v : Fermion 2,
      L (pairedTheta α a v) = pairedTheta α a (L v) := by
    intro α a v
    have hJ :=
      FCP.BFSSSU2PhysicalDomainL6G6L.sourceFiberFermionColorGenerator_comm
        pairedAlgebraData hcolor c α a
    -- Identify exact source theta once at the boundary. Do not invoke
    -- recursive CLM simplification on the actual 2^24-dimensional type.
    have he :
        D * pairedTheta α a - pairedTheta α a * D =
          J * pairedTheta α a - pairedTheta α a * J := by
      simpa only [pairedAlgebraData_theta] using
        ((hD α a).trans hJ.symm)
    exact sub_commutes_pointwise_of_equal_commutators
      D J (pairedTheta α a) he v
  obtain ⟨z, hz⟩ :=
    FCP.BFSSSU2PhysicalDomainS1A.pairedTheta_commutant_scalar L hcomm
  have hLvac : L fermionVacuum = 0 := by
    change D fermionVacuum -
      (sourceFiberFermionColorGenerator pairedAlgebraData c)
        fermionVacuum = 0
    rw [hDvac, sourcePairedFermionColorGenerator_actualGaugeVacuum]
    simp
  have hzvac : z • fermionVacuum = 0 :=
    (hz fermionVacuum).symm.trans hLvac
  have hz0 : z = 0 := by
    by_contra h
    exact (smul_ne_zero h actualGaugeVacuum_ne_zero) hzvac
  have hzero : D - J = 0 := by
    apply ContinuousLinearMap.ext
    intro v
    have hv := hz v
    change (D - J) v = z • v at hv
    -- The goal is (0 : FermionOp) v, whereas the scalar proof ends
    -- at the zero *vector*. Normalize the zero operator application.
    simpa only [hz0, zero_smul, zero_apply] using hv
  exact sub_eq_zero.mp hzero

#print axioms sub_commutes_pointwise_of_equal_commutators
#print axioms actualGaugeVacuum_ne_zero
#print axioms sourceColorGenerator_unique_of_commutator_and_vacuum
#check @sourceColorGenerator_unique_of_commutator_and_vacuum

end
end FCP.BFSSSU2PhysicalDomainL6G6T
