import SU2BFSSPhysicalDomainS3L3ESourceOrbitalDerivativeCommutatorProbe
import SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe

/-!
# S3L4A — literal source spin action on the original BFSS smooth core

Lift the qualified three-color fermionic spin generator K_ij acting on
Fermion 2 to the *actual* source-defined compactly supported smooth core
SmoothCore 2 using pinned TestFunction.postcompCLM.

The source theta commutator is exactly S3E, without any surrogate Fock
space or novel commutation assumption. Independently establish that this
lift commutes with the original bosonic coordinate multipliers and
coordinate derivatives (the latter using the original Core.lean proof
pattern for constant fiber-linear maps and fderiv).

These are ingredients of the *proposed* full 16-supercharge covariance;
they do not assert that theorem, an integrated rotation group, a closed
form/Hamiltonian symmetry or a spectral claim.
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

/-- The accepted *actual* SU(2) Fock K_ij generator, postcomposed
with the original source compactly supported smooth test functions. -/
noncomputable def pairedSourceSpinSmoothCore (i j : SpaceIndex) : SourceEnd :=
  (TestFunction.postcompCLM (pairedFermionPlaneSpinGenerator i j)).toLinearMap

theorem pairedSourceSpinSmoothCore_apply
    (i j : SpaceIndex) (f : SmoothCore 2) (x : Boson 2) :
    pairedSourceSpinSmoothCore i j f x =
      pairedFermionPlaneSpinGenerator i j (f x) := rfl

/-- Concrete 48-Majorana covariance lifted directly to the original
SmoothCore endomorphism algebra; no independent theta assumption. -/
theorem pairedSourceSpinSmoothCore_comm_fermionAction
    (i j : SpaceIndex) (γ : SpinIndex) (C : ColorIndex 2) :
    (pairedSourceSpinSmoothCore i j).comp
        (pairedAlgebraData.fermionAction γ C) -
      (pairedAlgebraData.fermionAction γ C).comp
        (pairedSourceSpinSmoothCore i j) =
      ∑ α : SpinIndex,
        (((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) •
          pairedAlgebraData.fermionAction α C) := by
  apply LinearMap.ext
  intro f
  apply DFunLike.ext
  intro x
  simp only [LinearMap.sub_apply, LinearMap.comp_apply,
    LinearMap.sum_apply, LinearMap.smul_apply, map_sum, map_smul]
  change
    pairedFermionPlaneSpinGenerator i j (pairedTheta γ C (f x)) -
      pairedTheta γ C (pairedFermionPlaneSpinGenerator i j (f x)) =
      ∑ α : SpinIndex,
        ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) • pairedTheta α C (f x)
  exact congrArg
    (fun T : Fermion 2 →L[ℂ] Fermion 2 => T (f x))
    (pairedFermionPlaneSpinGenerator_comm_theta i j γ C)

/-- The original bosonic position operators are scalar multipliers and
commute with the literal fiber spin generator on SmoothCore. -/
theorem pairedSourceSpinSmoothCore_comm_position
    (i j k : SpaceIndex) (B : ColorIndex 2) :
    (pairedSourceSpinSmoothCore i j).comp
      (position (N := 2) k B) =
      (position (N := 2) k B).comp
      (pairedSourceSpinSmoothCore i j) := by
  apply LinearMap.ext
  intro f
  apply DFunLike.ext
  intro x
  change
    pairedFermionPlaneSpinGenerator i j
      (((x (k, B) : ℝ) : ℂ) • f x) =
    (((x (k, B) : ℝ) : ℂ) •
      pairedFermionPlaneSpinGenerator i j (f x))
  exact map_smul _ _ _

/-- The original smooth-core coordinate derivatives commute with a
constant bounded fermionic fiber map, by pinned fderiv_comp.
Proof structure matches source Core.lean's
AlgebraData.fermionAction_derivative_commute. -/
theorem pairedSourceSpinSmoothCore_comm_derivative
    (i j k : SpaceIndex) (B : ColorIndex 2) :
    (pairedSourceSpinSmoothCore i j).comp
      (coordinateDerivative (N := 2) k B) =
      (coordinateDerivative (N := 2) k B).comp
      (pairedSourceSpinSmoothCore i j) := by
  apply LinearMap.ext
  intro f
  apply DFunLike.ext
  intro x
  simp only [LinearMap.comp_apply]
  change
    pairedFermionPlaneSpinGenerator i j
      (fderiv ℝ (f : Boson 2 → Fermion 2) x
        (EuclideanSpace.single (k, B) 1)) =
      fderiv ℝ
        (((pairedFermionPlaneSpinGenerator i j).restrictScalars ℝ) ∘
          (f : Boson 2 → Fermion 2)) x
        (EuclideanSpace.single (k, B) 1)
  rw [fderiv_comp _
      ((pairedFermionPlaneSpinGenerator i j).restrictScalars ℝ).differentiableAt
      (f.contDiff.differentiable (by simp)).differentiableAt,
      ContinuousLinearMap.fderiv]
  rfl

#print axioms pairedSourceSpinSmoothCore_apply
#print axioms pairedSourceSpinSmoothCore_comm_fermionAction
#print axioms pairedSourceSpinSmoothCore_comm_position
#print axioms pairedSourceSpinSmoothCore_comm_derivative

end
end FCP.BFSSSU2PhysicalDomainS3L4A
