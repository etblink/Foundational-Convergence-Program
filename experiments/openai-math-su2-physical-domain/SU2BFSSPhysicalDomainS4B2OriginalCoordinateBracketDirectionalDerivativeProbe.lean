import OAI.MathematicalPhysics.BFSS.ColorMatrices

/-!
S4B2 — source-typed original color-bracket directional derivative.

The original BFSS source defines coordinateBracketAll in ColorMatrices.lean:
  sum_B sum_C structureConstant A B C * x (i,B) * x (j,C).

The theorem is explicitly about that original source name, the source
Boson N (EuclideanSpace ℝ (Fin9 × ColorIndex N)), and all color indices.
It derives one-coordinate perturbations by specializing the direction to
EuclideanSpace.single (k,D) 1. It does NOT assert a derivative of the
complete deformedRealField, a Fock operator identity, or spectral results.
The source is a prospective candidate until strict CI qualifies it.
-/

set_option autoImplicit false

namespace FCP.BFSSSU2PhysicalDomainS4B2
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData

/-- The exact coordinate of an ORIGINAL bosonic affine line has the
coordinate of its direction as derivative. -/
theorem originalBosonAffine_coordinate_deriv
    {N : ℕ} (x v : Boson N)
    (p : SpaceIndex × ColorIndex N) :
    HasDerivAt (fun t : ℝ => (x + t • v) p) (v p) 0 := by
  have hv : HasDerivAt (fun t : ℝ => t • v) v 0 := by
    simpa only [one_smul] using
      (hasDerivAt_id (0 : ℝ)).smul_const v
  have ha : HasDerivAt (fun t : ℝ => x + t • v) v 0 := by
    simpa only [zero_add] using (hasDerivAt_const (0 : ℝ) x).add hv
  have hp := (EuclideanSpace.proj (𝕜 := ℝ) p).hasFDerivAt.comp_hasDerivAt
    (0 : ℝ) ha
  simpa only [PiLp.proj_apply] using hp

/-- The literal pinned original coordinateBracketAll differentiated in
any original Boson direction, with no substitute color bracket or gamma
matrices. The one-coordinate derivative is the specialization to
v = EuclideanSpace.single (k,D) 1. -/
theorem originalCoordinateBracketAll_directional_deriv
    {N : ℕ} (M : AlgebraData N) (x v : Boson N)
    (i j : SpaceIndex) (A : ColorIndex N) :
    HasDerivAt
      (fun t : ℝ => M.coordinateBracketAll (x + t • v) i j A)
      (∑ B : ColorIndex N, ∑ C : ColorIndex N,
        M.structureConstant A B C *
          (v (i,B) * x (j,C) + x (i,B) * v (j,C))) 0 := by
  change HasDerivAt
    (fun t : ℝ =>
      ∑ B : ColorIndex N, ∑ C : ColorIndex N,
        M.structureConstant A B C *
          (x + t • v) (i,B) * (x + t • v) (j,C))
    (∑ B : ColorIndex N, ∑ C : ColorIndex N,
      M.structureConstant A B C *
        (v (i,B) * x (j,C) + x (i,B) * v (j,C))) 0
  apply HasDerivAt.fun_sum
  intro B _
  apply HasDerivAt.fun_sum
  intro C _
  have hi := originalBosonAffine_coordinate_deriv x v (i,B)
  have hj := originalBosonAffine_coordinate_deriv x v (j,C)
  have hh := (hi.mul hj).const_mul (M.structureConstant A B C)
  convert hh using 1 <;> ring

/-- Exact single-coordinate directional specialization. Retain the
original EuclideanSpace.single, including both coincident-index cases,
rather than inserting an assumed Kronecker selector identity. -/
theorem originalCoordinateBracketAll_single_coordinate_deriv
    {N : ℕ} (M : AlgebraData N) (x : Boson N)
    (i j k : SpaceIndex) (A D : ColorIndex N) :
    HasDerivAt
      (fun t : ℝ =>
        M.coordinateBracketAll
          (x + t • EuclideanSpace.single (k,D) (1 : ℝ)) i j A)
      (∑ B : ColorIndex N, ∑ C : ColorIndex N,
        M.structureConstant A B C *
          ((EuclideanSpace.single (k,D) (1 : ℝ)) (i,B) * x (j,C) +
            x (i,B) * (EuclideanSpace.single (k,D) (1 : ℝ)) (j,C))) 0 := by
  exact originalCoordinateBracketAll_directional_deriv
    M x (EuclideanSpace.single (k,D) (1 : ℝ)) i j A

#print axioms originalBosonAffine_coordinate_deriv
#print axioms originalCoordinateBracketAll_directional_deriv
#print axioms originalCoordinateBracketAll_single_coordinate_deriv

end
end FCP.BFSSSU2PhysicalDomainS4B2
