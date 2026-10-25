import SU2BFSSPhysicalDomainS3L3ESourceOrbitalDerivativeCommutatorProbe

/-!
# S3L4B — exact bounded-fiber postcomposition calculus on source SmoothCore 2

This is the *independent* small first layer of the proposed S3L4A
fermionic-spin bridge. No concrete three-color Fock generator is
mentioned or unfolded here. Every theorem concerns the ORIGINAL
OAI.BFSSQuantum.SmoothCore 2 and the pinned source's literal
TestFunction.postcompCLM operator.

Generic bounded-fiber commutator, finite spinor-indexed sum, and
commutation with source position and coordinateDerivative are established
without introducing any new commutation or physical assumption.

A second, separately qualified step must instantiate these generic
identities with the source-defined 48-Majorana spin generator and the
literal AlgebraData.fermionAction. No supercharge or spectral claim here.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L4B
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData

abbrev SourceEnd := SmoothCore 2 →ₗ[ℂ] SmoothCore 2
abbrev FockEnd := Fermion 2 →L[ℂ] Fermion 2

/-- True pinned test-function postcomposition by a bounded fiber map. -/
noncomputable def sourcePostcomp (K : FockEnd) : SourceEnd :=
  (TestFunction.postcompCLM K).toLinearMap

theorem sourcePostcomp_apply (K : FockEnd)
    (f : SmoothCore 2) (x : Boson 2) :
    sourcePostcomp K f x = K (f x) := rfl

/-- Exact commutator preservation by original-source postcomposition. -/
theorem sourcePostcomp_comm (K T : FockEnd) :
    (sourcePostcomp K).comp (sourcePostcomp T) -
      (sourcePostcomp T).comp (sourcePostcomp K) =
      sourcePostcomp (K * T - T * K) := by
  apply LinearMap.ext
  intro f
  apply DFunLike.ext
  intro x
  change K (T (f x)) - T (K (f x)) =
    (K * T - T * K) (f x)
  simp only [sub_apply, mul_apply_eq_comp]

/-- Actual source postcomposition respects spinor-indexed finite sums. -/
theorem sourcePostcomp_sum (T : SpinIndex → FockEnd)
    (c : SpinIndex → ℂ) :
    sourcePostcomp (∑ α : SpinIndex, c α • T α) =
      ∑ α : SpinIndex, c α • sourcePostcomp (T α) := by
  apply LinearMap.ext
  intro f
  apply DFunLike.ext
  intro x
  change
    (∑ α : SpinIndex, c α • T α) (f x) =
      ∑ α : SpinIndex, c α • T α (f x)
  simp only [sum_apply, smul_apply]

/-- The original spatial coordinate multiplier commutes with any
constant bounded fermionic fiber postcomposition on SmoothCore 2. -/
theorem sourcePostcomp_comm_position (K : FockEnd)
    (k : SpaceIndex) (B : ColorIndex 2) :
    (sourcePostcomp K).comp (position (N := 2) k B) =
      (position (N := 2) k B).comp (sourcePostcomp K) := by
  apply LinearMap.ext
  intro f
  apply DFunLike.ext
  intro x
  change K (((x (k, B) : ℝ) : ℂ) • f x) =
    (((x (k, B) : ℝ) : ℂ) • K (f x))
  exact map_smul _ _ _

/-- The original source coordinate derivative commutes with any
constant bounded fermionic fiber map. This is the same fderiv_comp
calculation as pinned BFSS/Core.lean's fermionAction_derivative_commute. -/
theorem sourcePostcomp_comm_derivative (K : FockEnd)
    (k : SpaceIndex) (B : ColorIndex 2) :
    (sourcePostcomp K).comp (coordinateDerivative (N := 2) k B) =
      (coordinateDerivative (N := 2) k B).comp (sourcePostcomp K) := by
  apply LinearMap.ext
  intro f
  apply DFunLike.ext
  intro x
  simp only [LinearMap.comp_apply]
  change K (fderiv ℝ (f : Boson 2 → Fermion 2) x
      (EuclideanSpace.single (k, B) 1)) =
    fderiv ℝ ((K.restrictScalars ℝ) ∘
      (f : Boson 2 → Fermion 2)) x
      (EuclideanSpace.single (k, B) 1)
  rw [fderiv_comp _ (K.restrictScalars ℝ).differentiableAt
      (f.contDiff.differentiable (by simp)).differentiableAt,
      ContinuousLinearMap.fderiv]
  rfl

/-- Source-parametric spinor covariance, with the fiber matrix premise
kept explicit for later discharge by the *actual* accepted S3E theorem. -/
theorem sourcePostcomp_covariance
    (K : FockEnd) (T : SpinIndex → FockEnd)
    (c : SpinIndex → ℂ) (γ : SpinIndex)
    (h : K * T γ - T γ * K =
      ∑ α : SpinIndex, c α • T α) :
    (sourcePostcomp K).comp (sourcePostcomp (T γ)) -
      (sourcePostcomp (T γ)).comp (sourcePostcomp K) =
      ∑ α : SpinIndex, c α • sourcePostcomp (T α) := by
  rw [sourcePostcomp_comm K (T γ), h, sourcePostcomp_sum T c]

#print axioms sourcePostcomp_apply
#print axioms sourcePostcomp_comm
#print axioms sourcePostcomp_sum
#print axioms sourcePostcomp_comm_position
#print axioms sourcePostcomp_comm_derivative
#print axioms sourcePostcomp_covariance

end
end FCP.BFSSSU2PhysicalDomainS3L4B
