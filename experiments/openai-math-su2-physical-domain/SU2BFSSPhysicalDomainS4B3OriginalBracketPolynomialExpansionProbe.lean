import OAI.MathematicalPhysics.BFSS.ColorMatrices

/-!
S4B3 — Exact original BFSS color-bracket polynomial expansion.

Gate90 #1–#3 showed a Lean typeclass boundary in HasDerivAt
(PiLp.normedSpace vs WithLp.instModule, then Real.normedAddCommGroup
vs Real.instAddCommGroup). Preserve those REDS. Instead certify the
STRONGER exact polynomial identity on the actual pinned original
AlgebraData.coordinateBracketAll, for any Boson N, any direction v and
any real t. The coefficient of t is the wanted one-coordinate derivative
without using a mismatched calculus instance.

No new axioms, no fictitious fderiv result, no full Fock B identity.
-/

set_option autoImplicit false

namespace FCP.BFSSSU2PhysicalDomainS4B3
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData

/-- Literal original pinned source color bracket has an exact quadratic
Taylor polynomial for EVERY real displacement t and original v. The
coefficient of t is the desired first variation and the t² remainder
is exactly the original bracket of the direction with itself. -/
theorem originalCoordinateBracketAll_affine_polynomial
    {N : ℕ} (M : AlgebraData N)
    (x v : Boson N) (t : ℝ)
    (i j : SpaceIndex) (A : ColorIndex N) :
    M.coordinateBracketAll (x + t • v) i j A =
      M.coordinateBracketAll x i j A +
      t * (∑ B : ColorIndex N, ∑ C : ColorIndex N,
        M.structureConstant A B C *
          (v (i,B) * x (j,C) + x (i,B) * v (j,C))) +
      t^2 * M.coordinateBracketAll v i j A := by
  change
    (∑ B : ColorIndex N, ∑ C : ColorIndex N,
      M.structureConstant A B C *
        (x + t • v) (i,B) * (x + t • v) (j,C)) =
    (∑ B : ColorIndex N, ∑ C : ColorIndex N,
      M.structureConstant A B C * x (i,B) * x (j,C)) +
    t * (∑ B : ColorIndex N, ∑ C : ColorIndex N,
      M.structureConstant A B C *
        (v (i,B) * x (j,C) + x (i,B) * v (j,C))) +
    t^2 * (∑ B : ColorIndex N, ∑ C : ColorIndex N,
      M.structureConstant A B C * v (i,B) * v (j,C))
  calc
    (∑ B : ColorIndex N, ∑ C : ColorIndex N,
      M.structureConstant A B C *
        (x + t • v) (i,B) * (x + t • v) (j,C)) =
      ∑ B : ColorIndex N, ∑ C : ColorIndex N,
        (M.structureConstant A B C * x (i,B) * x (j,C) +
          t * (M.structureConstant A B C *
            (v (i,B) * x (j,C) + x (i,B) * v (j,C))) +
          t^2 * (M.structureConstant A B C * v (i,B) * v (j,C))) := by
            apply Finset.sum_congr rfl
            intro B _
            apply Finset.sum_congr rfl
            intro C _
            simp only [PiLp.add_apply, PiLp.smul_apply, smul_eq_mul]
            ring
    _ = _ := by
      simp only [Finset.sum_add_distrib, Finset.mul_sum]

/-- Original single-coordinate specialization, with the original
EuclideanSpace.single and its exact coincident-index behavior retained. -/
theorem originalCoordinateBracketAll_single_coordinate_polynomial
    {N : ℕ} (M : AlgebraData N)
    (x : Boson N) (t : ℝ)
    (i j k : SpaceIndex) (A D : ColorIndex N) :
    M.coordinateBracketAll
        (x + t • EuclideanSpace.single (k,D) (1 : ℝ)) i j A =
      M.coordinateBracketAll x i j A +
      t * (∑ B : ColorIndex N, ∑ C : ColorIndex N,
        M.structureConstant A B C *
          ((EuclideanSpace.single (k,D) (1 : ℝ)) (i,B) * x (j,C) +
            x (i,B) * (EuclideanSpace.single (k,D) (1 : ℝ)) (j,C))) +
      t^2 * M.coordinateBracketAll
        (EuclideanSpace.single (k,D) (1 : ℝ)) i j A := by
  exact originalCoordinateBracketAll_affine_polynomial
    M x (EuclideanSpace.single (k,D) (1 : ℝ)) t i j A

#print axioms originalCoordinateBracketAll_affine_polynomial
#print axioms originalCoordinateBracketAll_single_coordinate_polynomial

end
end FCP.BFSSSU2PhysicalDomainS4B3
