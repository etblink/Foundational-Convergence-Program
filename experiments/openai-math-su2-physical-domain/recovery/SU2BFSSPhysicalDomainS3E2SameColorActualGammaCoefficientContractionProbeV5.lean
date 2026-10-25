import SU2BFSSPhysicalDomainS3E1ActualSameColorFermionicBilinearCommSourceProbe

/-!
# BFSS SU(2) S3E2 — actual fixed-color fermionic matrix-index contraction

Continue the new accepted S3E1 original-source Fermion 2 CAR bilinear
commutator. Contract BOTH Kronecker selectors by finite-index summation
without assuming skewness, transposing gamma indices, changing source
CAR normalization, or hiding the full spin generator's 1/2 factor.

This is a source operator identity for arbitrary real spinor matrix J.
A further separate proof must use the actual skew gamma plane generator
to fix the sign and normalization of the physical Spin(9) action.
-/

namespace FCP.BFSSSU2PhysicalDomainS3E2
noncomputable section

open scoped BigOperators
open Finset
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3C
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3E1

/-- The first actual CAR delta selector contracts its beta index. -/
theorem pairedFermionSpinQuadraticColor_delta_beta
    (J : Matrix SpinIndex SpinIndex ℝ)
    (A : ColorIndex 2) (γ : SpinIndex) :
    (∑ α : SpinIndex, ∑ β : SpinIndex,
      ((J α β : ℝ) : ℂ) •
        (if β = γ then pairedTheta α A else 0)) =
    ∑ α : SpinIndex, ((J α γ : ℝ) : ℂ) • pairedTheta α A := by
  apply Finset.sum_congr rfl
  intro α _
  calc
    (∑ β : SpinIndex,
      ((J α β : ℝ) : ℂ) • (if β = γ then pairedTheta α A else 0)) =
      ∑ β : SpinIndex,
        if β = γ then ((J α γ : ℝ) : ℂ) • pairedTheta α A else 0 := by
        apply Finset.sum_congr rfl
        intro β _
        by_cases h : β = γ
        · subst β
          simp
        · simp [h]
          exact (smul_zero (((J α β : ℝ) : ℂ)) :
            ((((J α β : ℝ) : ℂ) • (0 : Fermion 2 →L[ℂ] Fermion 2)) = 0))
    _ = ((J α γ : ℝ) : ℂ) • pairedTheta α A := by
      simp

/-- The second actual CAR delta selector contracts its alpha index.
The order of source J's indices is retained, not silently transposed. -/
theorem pairedFermionSpinQuadraticColor_delta_alpha
    (J : Matrix SpinIndex SpinIndex ℝ)
    (A : ColorIndex 2) (γ : SpinIndex) :
    (∑ α : SpinIndex, ∑ β : SpinIndex,
      ((J α β : ℝ) : ℂ) •
        (if α = γ then pairedTheta β A else 0)) =
    ∑ β : SpinIndex, ((J γ β : ℝ) : ℂ) • pairedTheta β A := by
  calc
    _ = ∑ β : SpinIndex, ∑ α : SpinIndex,
      ((J α β : ℝ) : ℂ) •
        (if α = γ then pairedTheta β A else 0) := by
        rw [Finset.sum_comm]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro β _
      calc
        (∑ α : SpinIndex,
          ((J α β : ℝ) : ℂ) • (if α = γ then pairedTheta β A else 0)) =
          ∑ α : SpinIndex,
            if α = γ then ((J γ β : ℝ) : ℂ) • pairedTheta β A else 0 := by
            apply Finset.sum_congr rfl
            intro α _
            by_cases h : α = γ
            · subst α
              simp
            · simp [h]
              exact (smul_zero (((J α β : ℝ) : ℂ)) :
            ((((J α β : ℝ) : ℂ) • (0 : Fermion 2 →L[ℂ] Fermion 2)) = 0))
        _ = ((J γ β : ℝ) : ℂ) • pairedTheta β A := by
          simp

/-- Exactly the commutator with the GENUINE source-defined quadratic
Fock-fermion spin color block, with no skewness hypothesis on J:
the coefficient is J(alpha,gamma) - J(gamma,alpha).
No color/gamma representation or global group action is substituted. -/
theorem pairedFermionSpinQuadraticColor_comm_same_color_coefficient
    (J : Matrix SpinIndex SpinIndex ℝ)
    (A : ColorIndex 2) (γ : SpinIndex) :
    pairedFermionSpinQuadraticColor J A * pairedTheta γ A -
      pairedTheta γ A * pairedFermionSpinQuadraticColor J A =
    ∑ α : SpinIndex,
      (((J α γ : ℝ) : ℂ) - ((J γ α : ℝ) : ℂ)) •
        pairedTheta α A := by
  rw [pairedFermionSpinQuadraticColor_comm_same_color_raw]
  calc
    (∑ α : SpinIndex, ∑ β : SpinIndex,
      ((J α β : ℝ) : ℂ) •
        ((if β = γ then pairedTheta α A else 0) -
         (if α = γ then pairedTheta β A else 0))) =
      (∑ α : SpinIndex, ∑ β : SpinIndex,
        ((J α β : ℝ) : ℂ) •
          (if β = γ then pairedTheta α A else 0)) -
      (∑ α : SpinIndex, ∑ β : SpinIndex,
        ((J α β : ℝ) : ℂ) •
          (if α = γ then pairedTheta β A else 0)) := by
        simp only [smul_sub, ← Finset.sum_sub_distrib]
    _ = _ := by
      rw [pairedFermionSpinQuadraticColor_delta_beta J A γ,
          pairedFermionSpinQuadraticColor_delta_alpha J A γ]
      rw [← Finset.sum_sub_distrib]
      apply Finset.sum_congr rfl
      intro α _
      exact (sub_smul (((J α γ : ℝ) : ℂ))
        (((J γ α : ℝ) : ℂ)) (pairedTheta α A)).symm

#print axioms pairedFermionSpinQuadraticColor_delta_beta
#print axioms pairedFermionSpinQuadraticColor_delta_alpha
#print axioms pairedFermionSpinQuadraticColor_comm_same_color_coefficient

end
end FCP.BFSSSU2PhysicalDomainS3E2
