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

/- Gate22: qualified Gate21 native source Fock CLM helper proofs reproduced verbatim
   modulo private visibility, not imported from an unpersisted diagnostic cache. -/

/-- The very CLM carrier used by the pinned original 48-Majorana source. -/
private abbrev ActualFockCLM := Fermion 2 →L[ℂ] Fermion 2

/-- Diagnose scalar action on the genuine source Fock zero operator
via CLM extensionality, rather than a detached polymorphic `smul_zero`
which elaborated a different instance in S3E2 Gate 18. -/
private theorem actualFockCLM_smul_zero (c : ℂ) :
    c • (0 : ActualFockCLM) = (0 : ActualFockCLM) := by
  apply ContinuousLinearMap.ext
  intro v
  simp only [smul_apply, zero_apply, smul_zero]

/-- A Kronecker selector on the genuine operator type, proved through
sum_eq_single, with no simplifier traversal of matrix applications. -/
private theorem actualFockCLM_selector
    (c : SpinIndex → ℂ) (T : ActualFockCLM) (γ : SpinIndex) :
    (∑ β : SpinIndex, c β • (if β = γ then T else 0)) = c γ • T := by
  classical
  calc
    (∑ β : SpinIndex, c β • (if β = γ then T else 0)) =
        c γ • (if γ = γ then T else 0) := by
      apply Finset.sum_eq_single γ
      · intro β _ hβ
        rw [ite_eq_right hβ]
        exact actualFockCLM_smul_zero (c β)
      · intro h
        exact False.elim (h (Finset.mem_univ γ))
    _ = c γ • T := by
      rw [ite_eq_left rfl]


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
  exact actualFockCLM_selector
    (fun β : SpinIndex => ((J α β : ℝ) : ℂ)) (pairedTheta α A) γ

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
      exact actualFockCLM_selector
        (fun α : SpinIndex => ((J α β : ℝ) : ℂ)) (pairedTheta β A) γ

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
