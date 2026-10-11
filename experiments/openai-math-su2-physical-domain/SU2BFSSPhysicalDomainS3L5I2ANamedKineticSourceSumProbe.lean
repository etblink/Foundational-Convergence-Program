import SU2BFSSPhysicalDomainS3L5I1ExactTripleWeightedSumTransportProbe

/-!
# S3L5I2A — named source kinetic-sum transport with real source operators

Gate #53 failed during a large `change` into the fully expanded literal
source kinetic charge. Gate #54 failed at full theorem elaboration after
the replacement `simpa`. This module does NOT replay that whole
expression. Instead it defines exact named source terms with the
original -Complex.I gamma coefficients, and transports the real
per-monomial S3L5F physical-source commutator through the genuine
9 × 3 × 16 finite index family.

The theorem is parametric in M : AlgebraData 2 and K : FockEnd, with a
VISIBLE, unproved-in-this-gate fiber covariance premise. Its named
weighted sum is definitionally the sourceKineticCharge M α expression,
but that particular equality and the 48-Majorana specialization are
separate future qualification gates. No new Fock model, Hamiltonian
domain, or eigenvalue assertion is introduced.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5I2A
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5A
open FCP.BFSSSU2PhysicalDomainS3L5F
open FCP.BFSSSU2PhysicalDomainS3L5I1

/-- Exactly the `-i gamma` source kinetic coefficient. -/
noncomputable def kineticWeight (M : AlgebraData 2) (α : SpinIndex)
    (k : SpaceIndex) (_A : ColorIndex 2) (γ : SpinIndex) : ℂ :=
  -Complex.I * (M.gamma k α γ : ℂ)

/-- Original paired-form fermionAction–derivative monomial, with color
A shared between the two exact source maps as in Core.lean. -/
noncomputable def kineticTerm (M : AlgebraData 2)
    (k : SpaceIndex) (A : ColorIndex 2) (γ : SpinIndex) : SourceEnd :=
  (M.fermionAction γ A).comp (coordinateDerivative (N := 2) k A)

/-- Exact orbital derivative and explicit fiber-spin response appearing
in the accepted S3L5F monomial identity. -/
noncomputable def kineticResponseTerm (M : AlgebraData 2)
    (d : SpinIndex → SpinIndex → ℂ) (i j k : SpaceIndex)
    (A : ColorIndex 2) (γ : SpinIndex) : SourceEnd :=
  (M.fermionAction γ A).comp
      (if k = j then coordinateDerivative (N := 2) i A
       else if k = i then -(coordinateDerivative (N := 2) j A)
       else 0) +
    (∑ β : SpinIndex, d γ β • M.fermionAction β A).comp
      (coordinateDerivative (N := 2) k A)

/-- The ORIGINAL kinetic -i gamma 9 × 3 × 16 source sum, named to
prevent repeated huge elaboration while preserving every coefficient. -/
noncomputable def kineticWeightedSum
    (M : AlgebraData 2) (α : SpinIndex) : SourceEnd :=
  ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
    kineticWeight M α k A γ • kineticTerm M k A γ

/-- The exact weighted sum of the S3L5F physical-source responses. -/
noncomputable def kineticWeightedResponse
    (M : AlgebraData 2) (d : SpinIndex → SpinIndex → ℂ)
    (i j : SpaceIndex) (α : SpinIndex) : SourceEnd :=
  ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
    kineticWeight M α k A γ • kineticResponseTerm M d i j k A γ

/-- Full indexed kinetic-sum covariance before gamma coefficient
contraction, with a VISIBLE fiber hypothesis, on genuine SmoothCore 2. -/
theorem kineticWeightedSum_comm_of_fiber
    (M : AlgebraData 2) (K : FockEnd)
    (d : SpinIndex → SpinIndex → ℂ)
    (i j : SpaceIndex) (α : SpinIndex) (hij : i ≠ j)
    (hFiber : ∀ γ : SpinIndex, ∀ A : ColorIndex 2,
      K * M.theta γ A - M.theta γ A * K =
        ∑ β : SpinIndex, d γ β • M.theta β A) :
    (sourceParametricCombinedPlane K i j).comp (kineticWeightedSum M α) -
      (kineticWeightedSum M α).comp
        (sourceParametricCombinedPlane K i j) =
      kineticWeightedResponse M d i j α := by
  let G : SourceEnd := sourceParametricCombinedPlane K i j
  have hterm : ∀ k A γ,
      G.comp (kineticTerm M k A γ) -
        (kineticTerm M k A γ).comp G =
          kineticResponseTerm M d i j k A γ := by
    intro k A γ
    exact sourceCombined_comm_kineticMonomial_of_fiber
      M K (d γ) i j k γ A A hij (hFiber γ A)
  have hsum := sourceComm_three_weighted_sums_of G
    (kineticWeight M α) (kineticTerm M)
    (kineticResponseTerm M d i j) hterm
  simpa only [G, kineticWeightedSum, kineticWeightedResponse] using hsum

#print axioms kineticWeightedSum_comm_of_fiber

end
end FCP.BFSSSU2PhysicalDomainS3L5I2A
