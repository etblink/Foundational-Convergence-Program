import SU2BFSSPhysicalDomainS3L3ESourceOrbitalDerivativeCommutatorProbe
import SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe

/-!
# S3L4A — source BFSS smooth-core spin-fiber bridge

Preserve the original OAI.BFSSQuantum.SmoothCore 2 and its pinned
TestFunction.postcompCLM interface. The abstract bounded fiber
postcomposition lemmas below are proved without any new assumptions,
then instantiated with the qualified ACTUAL SU(2) three-color Fock
quadratic spin K_ij and the exact S3E [K, theta] commutator.

This separates an elementary functorial fact about test functions
from the large 48-Majorana expression. The concrete specialization
is essential; it must compile before claiming the BFSS bridge.

Neither supercharge covariance nor physical Hamiltonian symmetry,
global Spin(9), or positive eigenvalues is proved here.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L4A
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3E

private abbrev SourceEnd := SmoothCore 2 →ₗ[ℂ] SmoothCore 2
private abbrev FockEnd := Fermion 2 →L[ℂ] Fermion 2

/-- The source's literal smooth-core fiber action of a bounded map. -/
noncomputable def sourcePostcomp (K : FockEnd) : SourceEnd :=
  (TestFunction.postcompCLM K).toLinearMap

private theorem sourcePostcomp_apply (K : FockEnd)
    (f : SmoothCore 2) (x : Boson 2) :
    sourcePostcomp K f x = K (f x) := rfl

/-- Functoriality of the exact source smooth-core postcomposition:
the operator commutator is the postcomposition of the fiber commutator. -/
private theorem sourcePostcomp_comm (K T : FockEnd) :
    (sourcePostcomp K).comp (sourcePostcomp T) -
      (sourcePostcomp T).comp (sourcePostcomp K) =
      sourcePostcomp (K * T - T * K) := by
  apply LinearMap.ext
  intro f
  apply DFunLike.ext
  intro x
  change K (T (f x)) - T (K (f x)) =
    (K * T - T * K) (f x)
  simp only [ContinuousLinearMap.sub_apply, ContinuousLinearMap.mul_apply]

/-- Constant fiber maps lift sums and complex scalar coefficients,
on the actual source test core and without a surrogate domain. -/
private theorem sourcePostcomp_sum (T : SpinIndex → FockEnd)
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
  simp only [ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply]

/-- Source coordinate multipliers commute with every constant
bounded spin-fiber operator. -/
private theorem sourcePostcomp_comm_position (K : FockEnd)
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

/-- Derivatives commute with a constant bounded source fiber map,
using the same pinned fderiv_comp proof as Core.lean's
AlgebraData.fermionAction_derivative_commute. -/
private theorem sourcePostcomp_comm_derivative (K : FockEnd)
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

/-- Abstract transport of an explicitly supplied source Fock commutator.
The only premise is discharged below by the pinned, accepted S3E theorem
for the actual paired quadratic fermionic spin K_ij. -/
private theorem sourcePostcomp_covariance
    (K : FockEnd) (T : SpinIndex → FockEnd)
    (c : SpinIndex → ℂ) (γ : SpinIndex)
    (h : K * T γ - T γ * K =
      ∑ α : SpinIndex, c α • T α) :
    (sourcePostcomp K).comp (sourcePostcomp (T γ)) -
      (sourcePostcomp (T γ)).comp (sourcePostcomp K) =
      ∑ α : SpinIndex, c α • sourcePostcomp (T α) := by
  rw [sourcePostcomp_comm K (T γ), h, sourcePostcomp_sum T c]

/-- The actual accepted 48-Majorana quadratic generator, lifted into
the exact original compactly supported BFSS test-function algebra. -/
noncomputable def pairedSourceSpinSmoothCore (i j : SpaceIndex) : SourceEnd :=
  sourcePostcomp (pairedFermionPlaneSpinGenerator i j)

theorem pairedSourceSpinSmoothCore_apply
    (i j : SpaceIndex) (f : SmoothCore 2) (x : Boson 2) :
    pairedSourceSpinSmoothCore i j f x =
      pairedFermionPlaneSpinGenerator i j (f x) :=
  sourcePostcomp_apply (pairedFermionPlaneSpinGenerator i j) f x

/-- Exact source theta is the original M.fermionAction test-function
postcomposition for the accepted paired SU(2) source AlgebraData. -/
private theorem pairedFermionAction_eq_postcomp
    (γ : SpinIndex) (C : ColorIndex 2) :
    pairedAlgebraData.fermionAction γ C = sourcePostcomp (pairedTheta γ C) :=
  rfl

/-- The literal source 48-Majorana spin covariance on true SmoothCore.
All concrete Fock coefficients are discharged by qualified S3E. -/
theorem pairedSourceSpinSmoothCore_comm_fermionAction
    (i j : SpaceIndex) (γ : SpinIndex) (C : ColorIndex 2) :
    (pairedSourceSpinSmoothCore i j).comp
        (pairedAlgebraData.fermionAction γ C) -
      (pairedAlgebraData.fermionAction γ C).comp
        (pairedSourceSpinSmoothCore i j) =
      ∑ α : SpinIndex,
        (((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) •
          pairedAlgebraData.fermionAction α C) := by
  let K : FockEnd := pairedFermionPlaneSpinGenerator i j
  let c : SpinIndex → ℂ := fun α => ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ)
  have hFock : K * pairedTheta γ C - pairedTheta γ C * K =
      ∑ α : SpinIndex, c α • pairedTheta α C :=
    pairedFermionPlaneSpinGenerator_comm_theta i j γ C
  change (sourcePostcomp K).comp (pairedAlgebraData.fermionAction γ C) -
      (pairedAlgebraData.fermionAction γ C).comp (sourcePostcomp K) =
      ∑ α : SpinIndex, c α • pairedAlgebraData.fermionAction α C
  -- Instantiate a previously proved tiny operator identity; do not
  -- elaborate a concrete 48-Majorana matrix-sum calc in the source goal.
  simpa only [pairedFermionAction_eq_postcomp] using
    (sourcePostcomp_covariance K (fun α => pairedTheta α C) c γ hFock)

theorem pairedSourceSpinSmoothCore_comm_position
    (i j k : SpaceIndex) (B : ColorIndex 2) :
    (pairedSourceSpinSmoothCore i j).comp
      (position (N := 2) k B) =
      (position (N := 2) k B).comp
      (pairedSourceSpinSmoothCore i j) :=
  sourcePostcomp_comm_position (pairedFermionPlaneSpinGenerator i j) k B

theorem pairedSourceSpinSmoothCore_comm_derivative
    (i j k : SpaceIndex) (B : ColorIndex 2) :
    (pairedSourceSpinSmoothCore i j).comp
      (coordinateDerivative (N := 2) k B) =
      (coordinateDerivative (N := 2) k B).comp
      (pairedSourceSpinSmoothCore i j) :=
  sourcePostcomp_comm_derivative (pairedFermionPlaneSpinGenerator i j) k B

#print axioms pairedSourceSpinSmoothCore_apply
#print axioms pairedSourceSpinSmoothCore_comm_fermionAction
#print axioms pairedSourceSpinSmoothCore_comm_position
#print axioms pairedSourceSpinSmoothCore_comm_derivative

end
end FCP.BFSSSU2PhysicalDomainS3L4A
