import SU2BFSSPhysicalDomainS3L3ASourcePositionDerivativeCommutatorProbe

/-!
# S3L3B — canonical position-derivative identity as source operator equality

This strengthens the already-qualified S3L3A pointwise derivative-product
rule into an equality in End_ℂ(SmoothCore 2), with exact Kronecker
coefficient on both space and color. No new mathematical hypotheses.

It is NOT yet the commutator of orbital L_ij with positions or derivatives,
and does not claim supercharge covariance, form invariance or spectrum.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L3B
noncomputable section
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS3L3A

/-- On the original source-defined BFSS compactly supported SmoothCore:
[partial_(i,A), position_(k,B)] = delta_(i,k)delta_(A,B) Identity. -/
theorem sourceCoordinateDerivative_position_commutator_operator
    (i k : SpaceIndex) (A B : ColorIndex 2) :
    (coordinateDerivative (N := 2) i A).comp (position (N := 2) k B) -
      (position (N := 2) k B).comp (coordinateDerivative (N := 2) i A) =
      if (i, A) = (k, B) then
        (LinearMap.id : SmoothCore 2 →ₗ[ℂ] SmoothCore 2) else 0 := by
  apply LinearMap.ext
  intro f
  apply DFunLike.ext
  intro x
  change
    (coordinateDerivative (N := 2) i A ((position (N := 2) k B) f)) x -
      (position (N := 2) k B ((coordinateDerivative (N := 2) i A) f)) x =
    (if (i, A) = (k, B) then (LinearMap.id : SmoothCore 2 →ₗ[ℂ] SmoothCore 2)
       else 0) f x
  rw [sourceCoordinateDerivative_position_commutator_apply]
  simp only [EuclideanSpace.single, PiLp.single_apply]
  -- Split the two Kronecker conditionals into explicit finite cases.
  -- Do NOT install h and h.symm simultaneously as simp rewrite rules.
  classical
  split_ifs with hleft hright
  · simp only [Complex.ofReal_one, one_smul, LinearMap.id_apply]
  · exact (hright hleft.symm).elim
  · exact (hleft hright.symm).elim
  · simp only [Complex.ofReal_zero, zero_smul, LinearMap.zero_apply]

#print axioms sourceCoordinateDerivative_position_commutator_operator

end
end FCP.BFSSSU2PhysicalDomainS3L3B
