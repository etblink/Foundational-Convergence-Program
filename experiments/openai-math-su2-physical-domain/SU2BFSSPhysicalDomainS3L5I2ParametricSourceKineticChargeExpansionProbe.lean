import SU2BFSSPhysicalDomainS3L5I1ExactTripleWeightedSumTransportProbe

/-!
# S3L5I2 — source-parametric complete kinetic-sum commutator expansion

Source charge (not a surrogate):
  sourceKineticCharge M α = sum_{k,A,γ}
    (-Complex.I * (M.gamma k α γ : ℂ)) •
      ((M.fermionAction γ A).comp (coordinateDerivative k A))

S3L5I1 qualified exact three-level finite-sum transport; S3L5F
qualified the per-monomial combined orbital/fiber commutator with an
EXPLICIT fiber covariance premise. This gate combines those, while M
and K remain parameters, avoiding the S3L5I #51 elaboration failure
from directly expanding the 48-Majorana paired specialization.

The genuine paired-source discharge and final spinor/J gamma
contraction require independent later gates, as do the cubic charge,
closed Hamiltonian and point-spectrum claims.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5I2
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5A
open FCP.BFSSSU2PhysicalDomainS3L5F
open FCP.BFSSSU2PhysicalDomainS3L5I1

/-- Full literal source 9×3×16 kinetic-sum commutator expansion, for
arbitrary source AlgebraData and fiber K with a VISIBLE covariance
premise. No 48-Majorana special case is hidden in this theorem. -/
theorem sourceCombined_comm_sourceKineticCharge_expanded_of_fiber
    (M : AlgebraData 2) (K : FockEnd)
    (d : SpinIndex → SpinIndex → ℂ)
    (i j : SpaceIndex) (α : SpinIndex) (hij : i ≠ j)
    (hFiber : ∀ γ : SpinIndex, ∀ A : ColorIndex 2,
      K * M.theta γ A - M.theta γ A * K =
        ∑ β : SpinIndex, d γ β • M.theta β A) :
    (sourceParametricCombinedPlane K i j).comp
      (sourceKineticCharge M α) -
    (sourceKineticCharge M α).comp
      (sourceParametricCombinedPlane K i j) =
    ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      (-Complex.I * (M.gamma k α γ : ℂ)) •
        ((M.fermionAction γ A).comp
          (if k = j then coordinateDerivative (N := 2) i A
           else if k = i then -(coordinateDerivative (N := 2) j A)
           else 0) +
         (∑ β : SpinIndex, (d γ β • M.fermionAction β A)).comp
           (coordinateDerivative (N := 2) k A)) := by
  let G : SourceEnd := sourceParametricCombinedPlane K i j
  let c : SpaceIndex → ColorIndex 2 → SpinIndex → ℂ :=
    fun k _ γ => -Complex.I * (M.gamma k α γ : ℂ)
  let T : SpaceIndex → ColorIndex 2 → SpinIndex → SourceEnd :=
    fun k A γ => (M.fermionAction γ A).comp
      (coordinateDerivative (N := 2) k A)
  let R : SpaceIndex → ColorIndex 2 → SpinIndex → SourceEnd :=
    fun k A γ =>
      (M.fermionAction γ A).comp
        (if k = j then coordinateDerivative (N := 2) i A
         else if k = i then -(coordinateDerivative (N := 2) j A)
         else 0) +
      (∑ β : SpinIndex, d γ β • M.fermionAction β A).comp
        (coordinateDerivative (N := 2) k A)
  have hterm : ∀ k A γ,
      G.comp (T k A γ) - (T k A γ).comp G = R k A γ := by
    intro k A γ
    exact sourceCombined_comm_kineticMonomial_of_fiber
      M K (d γ) i j k γ A A hij (hFiber γ A)
  /- Use syntactic rewriting of the one-line source definition rather
     than asking `change` to weak-head normalize all three large sums.
     The identity being transported is unchanged. -/
  have hsum := sourceComm_three_weighted_sums_of G c T R hterm
  simpa only [G, c, T, R, sourceKineticCharge] using hsum

#print axioms sourceCombined_comm_sourceKineticCharge_expanded_of_fiber

end
end FCP.BFSSSU2PhysicalDomainS3L5I2
