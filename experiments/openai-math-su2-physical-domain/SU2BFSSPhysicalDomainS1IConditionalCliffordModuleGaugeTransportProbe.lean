import SU2BFSSPhysicalDomainS1HSourceGaugeCovariantImplementerUniquenessProbe

/-!
S1I: conditional gauge transport across an INDEPENDENT fermion module.

This theorem supplies a precise target for an eventual independently
constructed manuscript Cl(48)/Spin(48) module. Let E be any complex module,
theta its candidate 48 generators, W an SU(2) group representation on E,
and T an exact complex-linear bijection to the ORIGINAL source Fermion 2.
IF T transports all 48 generators exactly AND W has the original Pauli
color adjoint covariance on theta, THEN T intertwines W with the
original fermionGaugeLinearHom, using S1H's genuinely unique source action.

Crucial: the existence of E as a specific irreducible Clifford module,
of independent Spin(48) W, and of unitary T preserving Majoranas is NOT
established here. T is a *hypothesis*, not a manufactured equivalence.
Nothing about source supercharge graph domains or physical spectrum follows.
-/

set_option autoImplicit false
set_option maxHeartbeats 220000

namespace FCP.BFSSSU2PhysicalDomainS1I
noncomputable section

open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG4B
open FCP.BFSSSU2PhysicalDomainS1H

variable {E : Type*} [AddCommGroup E] [Module ℂ E]

/-- Conjugate a *given* candidate gauge representation by an explicitly
supplied complex-linear bijection from its module to the original source.
This does not construct the candidate or this bijection. -/
noncomputable def transportedGaugeHom
    (T : E ≃ₗ[ℂ] Fermion 2)
    (W : GaugeGroup 2 →* (E ≃ₗ[ℂ] E)) :
    GaugeGroup 2 →* (Fermion 2 ≃ₗ[ℂ] Fermion 2) where
  toFun g := T.symm.trans ((W g).trans T)
  map_one' := by
    apply LinearEquiv.ext
    intro v
    change T (W 1 (T.symm v)) = v
    rw [map_one W]
    simp
  map_mul' g h := by
    apply LinearEquiv.ext
    intro v
    change T (W (g*h) (T.symm v)) =
      T (W g (T.symm (T (W h (T.symm v)))))
    rw [map_mul W, LinearEquiv.mul_apply, T.symm_apply_apply]

/-- EXACT 48-Majorana source covariance of the transported action,
derived rather than stipulated on the source module. -/
theorem transportedGaugeHom_covariant
    (T : E ≃ₗ[ℂ] Fermion 2)
    (theta : SpinIndex → ColorIndex 2 → E →ₗ[ℂ] E)
    (W : GaugeGroup 2 →* (E ≃ₗ[ℂ] E))
    (hT : ∀ (α : SpinIndex) (A : ColorIndex 2) (v : E),
       T (theta α A v) = pairedTheta α A (T v))
    (hW : ∀ (g : GaugeGroup 2) (α : SpinIndex)
       (A : ColorIndex 2) (v : E),
       W g (theta α A v) =
         ∑ B : ColorIndex 2,
           (pairedAlgebraData.adjointCoefficient g A B : ℂ) •
             theta α B (W g v)) :
    ∀ (g : GaugeGroup 2) (α : SpinIndex)
      (A : ColorIndex 2) (v : Fermion 2),
      transportedGaugeHom T W g (pairedTheta α A v) =
        ∑ B : ColorIndex 2,
          (pairedAlgebraData.adjointCoefficient g A B : ℂ) •
            pairedTheta α B (transportedGaugeHom T W g v) := by
  intro g α A v
  obtain ⟨x, rfl⟩ := T.surjective v
  have hback : T.symm (pairedTheta α A (T x)) = theta α A x := by
    rw [← hT α A x, T.symm_apply_apply]
  calc
    transportedGaugeHom T W g (pairedTheta α A (T x)) =
        T (W g (theta α A x)) := by
          change T (W g (T.symm (pairedTheta α A (T x)))) = _
          rw [hback]
    _ = T (∑ B : ColorIndex 2,
          (pairedAlgebraData.adjointCoefficient g A B : ℂ) •
            theta α B (W g x)) :=
          congrArg T (hW g α A x)
    _ = ∑ B : ColorIndex 2,
          (pairedAlgebraData.adjointCoefficient g A B : ℂ) •
            pairedTheta α B (transportedGaugeHom T W g (T x)) := by
          have htransport :
              transportedGaugeHom T W g (T x) = T (W g x) := by
            change T (W g (T.symm (T x))) = T (W g x)
            rw [T.symm_apply_apply]
          rw [htransport]
          simp only [map_sum, map_smul, hT]

/-- Full equality, not merely equality up to a phase: conditional on
an independent exact 48-Majorana identification and the paper action's
actual color covariance. -/
theorem transportedGaugeHom_eq_source
    (T : E ≃ₗ[ℂ] Fermion 2)
    (theta : SpinIndex → ColorIndex 2 → E →ₗ[ℂ] E)
    (W : GaugeGroup 2 →* (E ≃ₗ[ℂ] E))
    (hT : ∀ (α : SpinIndex) (A : ColorIndex 2) (v : E),
       T (theta α A v) = pairedTheta α A (T v))
    (hW : ∀ (g : GaugeGroup 2) (α : SpinIndex)
       (A : ColorIndex 2) (v : E),
       W g (theta α A v) =
         ∑ B : ColorIndex 2,
           (pairedAlgebraData.adjointCoefficient g A B : ℂ) •
             theta α B (W g v)) :
    transportedGaugeHom T W = fermionGaugeLinearHom := by
  exact original_source_gauge_representation_unique
    (transportedGaugeHom T W)
    (transportedGaugeHom_covariant T theta W hT hW)

/-- Exact gauge intertwining on the *independent* module after its
unitary/Majorana identification is supplied, with no residual phase. -/
theorem independent_gauge_intertwines_source
    (T : E ≃ₗ[ℂ] Fermion 2)
    (theta : SpinIndex → ColorIndex 2 → E →ₗ[ℂ] E)
    (W : GaugeGroup 2 →* (E ≃ₗ[ℂ] E))
    (hT : ∀ (α : SpinIndex) (A : ColorIndex 2) (v : E),
       T (theta α A v) = pairedTheta α A (T v))
    (hW : ∀ (g : GaugeGroup 2) (α : SpinIndex)
       (A : ColorIndex 2) (v : E),
       W g (theta α A v) =
         ∑ B : ColorIndex 2,
           (pairedAlgebraData.adjointCoefficient g A B : ℂ) •
             theta α B (W g v))
    (g : GaugeGroup 2) (v : E) :
    T (W g v) = fermionGaugeLinearEquiv g (T v) := by
  have heq : transportedGaugeHom T W g = fermionGaugeLinearEquiv g := by
    have h := transportedGaugeHom_eq_source T theta W hT hW
    have hv := congrArg (fun h : GaugeGroup 2 →*
        (Fermion 2 ≃ₗ[ℂ] Fermion 2) => h g) h
    exact hv
  have hv := congrArg (fun L : Fermion 2 ≃ₗ[ℂ] Fermion 2 =>
    L (T v)) heq
  have htransport :
      transportedGaugeHom T W g (T v) = T (W g v) := by
    change T (W g (T.symm (T v))) = T (W g v)
    rw [T.symm_apply_apply]
  exact htransport.symm.trans hv

#print axioms transportedGaugeHom
#print axioms transportedGaugeHom_covariant
#print axioms transportedGaugeHom_eq_source
#print axioms independent_gauge_intertwines_source

end
end FCP.BFSSSU2PhysicalDomainS1I
