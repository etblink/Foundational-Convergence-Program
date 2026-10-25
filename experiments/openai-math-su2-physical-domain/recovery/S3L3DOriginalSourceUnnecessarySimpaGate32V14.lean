import SU2BFSSPhysicalDomainS3L3CSourceOrbitalPositionCommutatorProbe

/-!
# BFSS SU(2) S3L3D — original SmoothCore mixed coordinate derivatives

This module tests, as a concrete source theorem, equality of mixed
directional derivatives in the actual pinned OpenAI BFSS SmoothCore 2.
It invokes the pinned Mathlib C² derivative symmetry theorem on the
original compactly supported smooth test function — not an assumption.

Subsequent S3L3E will assemble the full orbital/derivative commutator
using this and S3L3B. Nothing here asserts Hamiltonian symmetry or
positive eigenvalues.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L3D
noncomputable section

open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData

private theorem sourceSecondDirectional_apply
    (i j : SpaceIndex) (A B : ColorIndex 2)
    (f : SmoothCore 2) (x : Boson 2) :
    ((coordinateDerivative (N := 2) i A)
       ((coordinateDerivative (N := 2) j B) f)) x =
      fderiv ℝ (fderiv ℝ (f : Boson 2 → Fermion 2)) x
        (EuclideanSpace.single (i, A) (1 : ℝ))
        (EuclideanSpace.single (j, B) (1 : ℝ)) := by
  let vi : Boson 2 := EuclideanSpace.single (i, A) (1 : ℝ)
  let vj : Boson 2 := EuclideanSpace.single (j, B) (1 : ℝ)
  have heval :
      (fun y : Boson 2 => ((coordinateDerivative (N := 2) j B) f) y) =
        fun y : Boson 2 => fderiv ℝ (f : Boson 2 → Fermion 2) y vj := by
    funext y
    exact coordinateDerivative_apply j B f y
  have hfderiv : DifferentiableAt ℝ
      (fderiv ℝ (f : Boson 2 → Fermion 2)) x := by
    exact ((f.contDiff.fderiv_right (m := 1) (by norm_num)).differentiable
      (by norm_num)) x
  change fderiv ℝ
      (fun y : Boson 2 => ((coordinateDerivative (N := 2) j B) f) y) x vi = _
  rw [heval]
  rw [fderiv_clm_apply hfderiv (differentiableAt_const vj)]
  simp only [fderiv_fun_const, Pi.zero_apply,
    ContinuousLinearMap.comp_zero, zero_add, ContinuousLinearMap.flip_apply]
  -- Gate #22's only remaining goal differs by these local abbreviations.
  simp only [vi, vj]

/-- Source-defined mixed coordinate derivatives commute on the original
BFSS compactly supported smooth core, with NO extra commutation axiom. -/
theorem sourceCoordinateDerivative_comp_comm
    (i j : SpaceIndex) (A B : ColorIndex 2) :
    (coordinateDerivative (N := 2) i A).comp
      (coordinateDerivative (N := 2) j B) =
    (coordinateDerivative (N := 2) j B).comp
      (coordinateDerivative (N := 2) i A) := by
  apply LinearMap.ext
  intro f
  apply DFunLike.ext
  intro x
  change ((coordinateDerivative (N := 2) i A)
      ((coordinateDerivative (N := 2) j B) f)) x =
    ((coordinateDerivative (N := 2) j B)
      ((coordinateDerivative (N := 2) i A) f)) x
  rw [sourceSecondDirectional_apply, sourceSecondDirectional_apply]
  exact (f.contDiff.contDiffAt.isSymmSndFDerivAt (by norm_num))
    (EuclideanSpace.single (i, A) (1 : ℝ))
    (EuclideanSpace.single (j, B) (1 : ℝ))

#print axioms sourceCoordinateDerivative_comp_comm

end
end FCP.BFSSSU2PhysicalDomainS3L3D
