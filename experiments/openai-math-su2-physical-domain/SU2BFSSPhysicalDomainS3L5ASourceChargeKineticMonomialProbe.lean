import SU2BFSSPhysicalDomainS3L4DConcreteSourceFockSpinCovarianceProbe

/-!
# S3L5A — literal source charge and fermionic spin on kinetic monomials

This is an independent, bounded first gate toward the *original*
16-component BFSS supercharge covariance. Preserve EXACTLY the
AlgebraData.charge coefficients and ordering from pinned Core.lean,
separating the kinetic part from the gammaTwo cubic part. Then derive the source-parametric kinetic-monomial commutator from an
explicit fiber-spin covariance premise, without expanding any concrete
48-Majorana generator. The premise must be discharged separately.

The charge decomposition below reproduces the source syntax, but its
potentially expensive definitional equality theorem is deliberately
NOT claimed at this gate. Concrete specialization, the full kinetic sum,
orbital contribution, cubic covariance, combined charge and Hamiltonian
conclusions remain separate, unproved gates.
No surrogate Fock representation, invented source operators, axioms,
or alteration of the pinned Hamiltonian are introduced.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5A
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L4C
open FCP.BFSSSU2PhysicalDomainS3L4D

/-- The literal -i gamma theta derivative portion of Core.lean's
AlgebraData.charge, with all its original finite index sums. -/
noncomputable def sourceKineticCharge
    (M : AlgebraData 2) (α : SpinIndex) : SourceEnd :=
  ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ β : SpinIndex,
    (-Complex.I * (M.gamma k α β : ℂ)) •
      ((M.fermionAction β A).comp (coordinateDerivative (N := 2) k A))

/-- The literal 1/2 structure-constant gammaTwo cubic portion of
Core.lean's original BFSS source charge, retaining ordered multipliers. -/
noncomputable def sourceCubicCharge
    (M : AlgebraData 2) (α : SpinIndex) : SourceEnd :=
  ∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ A : ColorIndex 2,
    ∑ B : ColorIndex 2, ∑ C : ColorIndex 2, ∑ β : SpinIndex,
    (((1 / 2 : ℝ) * M.structureConstant A B C *
      M.gammaTwo k l α β : ℝ) : ℂ) •
      ((M.fermionAction β A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)))

/-- A source-generic composition-commutator rule on the *original*
SmoothCore 2, with an explicitly discharged second-factor commutation. -/
private theorem sourceSpin_comm_comp_of_second_comm
    (K T D Δ : SourceEnd)
    (hKD : K.comp D = D.comp K)
    (hKT : K.comp T - T.comp K = Δ) :
    K.comp (T.comp D) - (T.comp D).comp K = Δ.comp D := by
  apply LinearMap.ext
  intro f
  simp only [LinearMap.sub_apply, LinearMap.comp_apply]
  have hD : D (K f) = K (D f) := by
    simpa only [LinearMap.comp_apply] using
      congrArg (fun H : SourceEnd => H f) hKD.symm
  have hT : K (T (D f)) - T (K (D f)) = Δ (D f) := by
    simpa only [LinearMap.sub_apply, LinearMap.comp_apply] using
      congrArg (fun H : SourceEnd => H (D f)) hKT
  rw [hD]
  exact hT

/-- Literal source fermionAction ∘ coordinateDerivative covariance,
from an EXPLICIT fiber identity for M.theta. The premise will only
be discharged by the qualified concrete S3L4D theorem in a separate
gate; it is not assumed for the BFSS physical representation here. -/
theorem sourceFermionSpin_comm_kineticMonomial_of_fiber
    (M : AlgebraData 2) (K : FockEnd)
    (c : SpinIndex → ℂ) (γ : SpinIndex)
    (A B : ColorIndex 2) (k : SpaceIndex)
    (h : K * M.theta γ A - M.theta γ A * K =
      ∑ β : SpinIndex, c β • M.theta β A) :
    (sourcePostcomp K).comp
       ((M.fermionAction γ A).comp (coordinateDerivative (N := 2) k B)) -
    ((M.fermionAction γ A).comp
         (coordinateDerivative (N := 2) k B)).comp (sourcePostcomp K) =
    (∑ β : SpinIndex, c β • M.fermionAction β A).comp
         (coordinateDerivative (N := 2) k B) := by
  exact sourceSpin_comm_comp_of_second_comm
    (sourcePostcomp K)
    (M.fermionAction γ A)
    (coordinateDerivative (N := 2) k B)
    (∑ β : SpinIndex, c β • M.fermionAction β A)
    (sourcePostcomp_comm_derivative K k B)
    (sourceFermionAction_covariance_of_fiber M K c γ A h)

#print axioms sourceFermionSpin_comm_kineticMonomial_of_fiber

end
end FCP.BFSSSU2PhysicalDomainS3L5A
