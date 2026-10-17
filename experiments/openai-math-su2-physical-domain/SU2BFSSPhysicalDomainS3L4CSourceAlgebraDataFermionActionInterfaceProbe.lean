import SU2BFSSPhysicalDomainS3L4BOriginalSmoothCorePostcompCalculusProbe

/-!
# S3L4C — original BFSS AlgebraData.fermionAction interface

The pinned upstream source literally defines:
  M.fermionAction α A :=
    (TestFunction.postcompCLM (M.theta α A)).toLinearMap

S3L4B has independently qualified bounded-fiber postcomposition
calculus for the original SmoothCore 2. This module proves the exact
source interface and its covariance transfer parametrically in
M : OAI.BFSSQuantum.AlgebraData 2.

The abstract covariance premise is NOT asserted as an axiom.
For a concrete quadratic 48-Majorana spin generator it must be
discharged by the already-qualified S3E theorem in a *separate*
instantiation gate. No replacement BFSS Fock or smooth-core object.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L4C
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS3L4B

/-- Exact upstream `AlgebraData.fermionAction` normalization,
without expanding any concrete Clifford/Majorana representation. -/
theorem sourceFermionAction_eq_postcomp
    (M : AlgebraData 2) (γ : SpinIndex) (C : ColorIndex 2) :
    M.fermionAction γ C = sourcePostcomp (M.theta γ C) := rfl

/-- An explicitly verified fiber-operator covariance transfers to
the *literal source-defined* fermionAction endomorphism on SmoothCore 2.
No source-physics premise is silently introduced. -/
theorem sourceFermionAction_covariance_of_fiber
    (M : AlgebraData 2) (K : FockEnd)
    (c : SpinIndex → ℂ) (γ : SpinIndex) (C : ColorIndex 2)
    (h : K * M.theta γ C - M.theta γ C * K =
      ∑ α : SpinIndex, c α • M.theta α C) :
    (sourcePostcomp K).comp (M.fermionAction γ C) -
      (M.fermionAction γ C).comp (sourcePostcomp K) =
      ∑ α : SpinIndex, c α • M.fermionAction α C := by
  simp only [sourceFermionAction_eq_postcomp]
  exact sourcePostcomp_covariance K (fun α => M.theta α C) c γ h

/-- The exact `fermionAction` stays compatible with source position,
derived using the original bounded-fiber interface, not a new model. -/
theorem sourceFermionAction_comm_position
    (M : AlgebraData 2) (γ : SpinIndex) (C : ColorIndex 2)
    (k : SpaceIndex) (B : ColorIndex 2) :
    (M.fermionAction γ C).comp (position (N := 2) k B) =
      (position (N := 2) k B).comp (M.fermionAction γ C) := by
  simp only [sourceFermionAction_eq_postcomp]
  exact sourcePostcomp_comm_position (M.theta γ C) k B

/-- The exact `fermionAction` stays compatible with the source
coordinate derivative, using the pinned smooth-core chain rule. -/
theorem sourceFermionAction_comm_derivative
    (M : AlgebraData 2) (γ : SpinIndex) (C : ColorIndex 2)
    (k : SpaceIndex) (B : ColorIndex 2) :
    (M.fermionAction γ C).comp (coordinateDerivative (N := 2) k B) =
      (coordinateDerivative (N := 2) k B).comp (M.fermionAction γ C) := by
  simp only [sourceFermionAction_eq_postcomp]
  exact sourcePostcomp_comm_derivative (M.theta γ C) k B

#print axioms sourceFermionAction_eq_postcomp
#print axioms sourceFermionAction_covariance_of_fiber
#print axioms sourceFermionAction_comm_position
#print axioms sourceFermionAction_comm_derivative

end
end FCP.BFSSSU2PhysicalDomainS3L4C
