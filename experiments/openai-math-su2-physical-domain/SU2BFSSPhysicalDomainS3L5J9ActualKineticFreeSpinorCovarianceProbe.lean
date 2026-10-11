import SU2BFSSPhysicalDomainS3L5J8PairedComplexResponseCoefficientContractionProbe

/-!
# S3L5J9 — full ORIGINAL paired kinetic-source free-spinor covariance

Gates #57, #73, #74 independently established:
  * actual paired 48-Majorana combined-generator commutator on the
    genuine source kinetic charge, with its named exact variation;
  * whole 9×3×16 kinetic response as a single source coefficient family;
  * exact -Complex.I gamma/J contraction of that coefficient.

This gate exchanges the final finite free-spinor index with all
genuine source monomial indices, then identifies the result with
sourceKineticCharge. No new Fock model, physical Hilbert-space
domain, cubic potential, or spectral assumption is introduced.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5J9
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5A
open FCP.BFSSSU2PhysicalDomainS3L5I2A
open FCP.BFSSSU2PhysicalDomainS3L5I2B
open FCP.BFSSSU2PhysicalDomainS3L5I3
open FCP.BFSSSU2PhysicalDomainS3L5J7
open FCP.BFSSSU2PhysicalDomainS3L5J8

/-- Exchange the fourth free-spinor sum to the outside of the three
source spatial/color/fermion-index sums. Pure finite source algebra. -/
theorem sourceFourSum_spinorFirst
    (F : SpinIndex → SpaceIndex → ColorIndex 2 → SpinIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      ∑ β : SpinIndex, F β k A γ) =
    ∑ β : SpinIndex, ∑ k : SpaceIndex, ∑ A : ColorIndex 2,
      ∑ γ : SpinIndex, F β k A γ := by
  calc
    _ = ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ β : SpinIndex,
      ∑ γ : SpinIndex, F β k A γ := by
        apply Finset.sum_congr rfl
        intro k _
        apply Finset.sum_congr rfl
        intro A _
        rw [Finset.sum_comm]
    _ = ∑ k : SpaceIndex, ∑ β : SpinIndex, ∑ A : ColorIndex 2,
      ∑ γ : SpinIndex, F β k A γ := by
        apply Finset.sum_congr rfl
        intro k _
        rw [Finset.sum_comm]
    _ = _ := by rw [Finset.sum_comm]

/-- General original-source endomorphism identity: move the finite
free-spinor coefficient sum outside all source charge indices. -/
theorem sourceFullFreeSpinorSum_transport
    (d : SpinIndex → ℂ)
    (c : SpinIndex → SpaceIndex → ColorIndex 2 → SpinIndex → ℂ)
    (T : SpaceIndex → ColorIndex 2 → SpinIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      (∑ β : SpinIndex, d β * c β k A γ) • T k A γ) =
    ∑ β : SpinIndex, d β •
      (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c β k A γ • T k A γ) := by
  calc
    _ = ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      ∑ β : SpinIndex, d β • (c β k A γ • T k A γ) := by
        simp_rw [Finset.sum_smul, mul_smul]
    _ = ∑ β : SpinIndex, ∑ k : SpaceIndex, ∑ A : ColorIndex 2,
      ∑ γ : SpinIndex, d β • (c β k A γ • T k A γ) :=
        sourceFourSum_spinorFirst _
    _ = _ := by simp_rw [Finset.smul_sum]

/-- Negative gamma/J transformation uses the same exact finite
operator transport, without a hidden rebracketing assumption. -/
theorem sourceFullNegativeFreeSpinorSum_transport
    (d : SpinIndex → ℂ)
    (c : SpinIndex → SpaceIndex → ColorIndex 2 → SpinIndex → ℂ)
    (T : SpaceIndex → ColorIndex 2 → SpinIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      (-(∑ β : SpinIndex, d β * c β k A γ)) • T k A γ) =
    -(∑ β : SpinIndex, d β •
      (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c β k A γ • T k A γ)) := by
  calc
    _ = -(∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      (∑ β : SpinIndex, d β * c β k A γ) • T k A γ) := by
        simp_rw [neg_smul, Finset.sum_neg_distrib]
    _ = _ :=
      congrArg Neg.neg (sourceFullFreeSpinorSum_transport d c T)

/-- The ENTIRE paired source kinetic weighted response now transforms
by minus the true plane spin generator on its free spinor index,
using the original 9×3×16 source sums and original kinetic weights. -/
theorem pairedKineticWeightedResponse_freeSpinorCovariance
    (i j : SpaceIndex) (α : SpinIndex) (hij : i ≠ j) :
    kineticWeightedResponse pairedAlgebraData
      (fun γ β => ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ))
      i j α =
    -(∑ β : SpinIndex,
      (pairedPlaneSpinGenerator i j α β : ℂ) •
        kineticWeightedSum pairedAlgebraData β) := by
  calc
    _ = ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      pairedKineticResponseCoefficient i j α k A γ •
        kineticTerm pairedAlgebraData k A γ :=
      pairedOriginalKineticResponse_asCoefficientSum i j hij α
    _ = ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      (-(∑ β : SpinIndex,
        (pairedPlaneSpinGenerator i j α β : ℂ) *
          kineticWeight pairedAlgebraData β k A γ)) •
        kineticTerm pairedAlgebraData k A γ := by
          apply Finset.sum_congr rfl
          intro k _
          apply Finset.sum_congr rfl
          intro A _
          apply Finset.sum_congr rfl
          intro γ _
          rw [pairedOriginalKineticResponseCoefficient_contract i j k hij α γ A]
    _ = _ := by
      simpa only [kineticWeightedSum] using
        (sourceFullNegativeFreeSpinorSum_transport
          (fun β => (pairedPlaneSpinGenerator i j α β : ℂ))
          (fun β k A γ => kineticWeight pairedAlgebraData β k A γ)
          (kineticTerm pairedAlgebraData))

/-- FINAL original kinetic-sector theorem: exact paired 48-Majorana
combined rotation generator commutes with the full literal source
kinetic supercharge up to the expected negative free-spinor generator.
No cubic potential, domain invariance, physical Hamiltonian or
positive-eigenvalue claim follows from this source-core identity alone. -/
theorem pairedActualCombined_comm_sourceKineticCharge_freeSpinor
    (i j : SpaceIndex) (α : SpinIndex) (hij : i ≠ j) :
    (sourceParametricCombinedPlane (pairedFermionPlaneSpinGenerator i j) i j).comp
      (sourceKineticCharge pairedAlgebraData α) -
    (sourceKineticCharge pairedAlgebraData α).comp
      (sourceParametricCombinedPlane (pairedFermionPlaneSpinGenerator i j) i j) =
    -(∑ β : SpinIndex,
      (pairedPlaneSpinGenerator i j α β : ℂ) •
        sourceKineticCharge pairedAlgebraData β) := by
  calc
    _ = kineticWeightedResponse pairedAlgebraData
        (fun γ β => ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ))
        i j α := pairedActualCombined_comm_sourceKineticCharge_response i j α hij
    _ = -(∑ β : SpinIndex,
          (pairedPlaneSpinGenerator i j α β : ℂ) •
            kineticWeightedSum pairedAlgebraData β) :=
        pairedKineticWeightedResponse_freeSpinorCovariance i j α hij
    _ = _ := by
      simp_rw [kineticWeightedSum_eq_sourceKineticCharge]

#print axioms sourceFourSum_spinorFirst
#print axioms sourceFullFreeSpinorSum_transport
#print axioms sourceFullNegativeFreeSpinorSum_transport
#print axioms pairedKineticWeightedResponse_freeSpinorCovariance
#print axioms pairedActualCombined_comm_sourceKineticCharge_freeSpinor

end
end FCP.BFSSSU2PhysicalDomainS3L5J9
