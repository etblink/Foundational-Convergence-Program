import SU2BFSSPhysicalDomainS3L5I3ActualPairedKineticChargeProbe

/-!
# S3L5J1 — original source spatial reindex and gamma/J coefficient

The full true paired kinetic-source response was accepted in Gate #57.
Here we isolate the genuine spatial index movement and its EXACT
gamma/J sign. We do not expand the full 9 × 3 × 16 source charge.

The first theorem transports orbital differentiation from old spatial
index k into the final derivative index, on the literal original
SmoothCore 2 endomorphism type. The second rewrites the source S3L0
Clifford coefficient using that same orbital sign convention.

No 48-Majorana expansion, new axioms, closed Hamiltonian, or spectral
claim is introduced. The complex -i coefficient contraction and
fermion-action spinor summation remain separate obligations.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5J1
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5H

/-- The exact spatial derivative rotation transfers coefficient c(j)
to derivative i and -c(i) to derivative j. SourceEnd is the ORIGINAL
SmoothCore 2 linear-endomorphism type, not an abstract physics model. -/
theorem sourceOrbitalSpatialSum_reindex
    (i j : SpaceIndex) (hij : i ≠ j)
    (c : SpaceIndex → ℂ) (D : SpaceIndex → SourceEnd) :
    (∑ k : SpaceIndex,
      c k • (if k = j then D i else if k = i then -(D j) else 0)) =
    ∑ k : SpaceIndex,
      (if k = i then c j else if k = j then -(c i) else 0) • D k := by
  classical
  have hleft :
      (∑ k : SpaceIndex,
        c k • (if k = j then D i else if k = i then -(D j) else 0)) =
      c j • D i - c i • D j := by
    simp [Finset.sum_ite, Finset.filter_eq', smul_ite, smul_neg,
      sub_eq_add_neg, hij]
  have hright :
      (∑ k : SpaceIndex,
        (if k = i then c j else if k = j then -(c i) else 0) • D k) =
      c j • D i - c i • D j := by
    simp [Finset.sum_ite, Finset.filter_eq', ite_smul, neg_smul,
      sub_eq_add_neg, Ne.symm hij]
  exact hleft.trans hright.symm

/-- The REAL gamma spatial-orbital coefficient (from the reindexed
derivative) combined with the original transposed fermionic spin
coefficient equals -J acting on the supercharge's free spinor index.
This is the source S3L0 identity, not a new sign assumption. -/
theorem pairedRealKineticCoefficient_reindexed
    (i j k : SpaceIndex) (α γ : SpinIndex) (hij : i ≠ j) :
    (∑ β : SpinIndex, pairedAlgebraData.gamma k α β *
      pairedPlaneSpinGenerator i j γ β) +
      (if k = i then pairedAlgebraData.gamma j α γ
       else if k = j then -(pairedAlgebraData.gamma i α γ)
       else 0) =
    -(∑ β : SpinIndex, pairedPlaneSpinGenerator i j α β *
       pairedAlgebraData.gamma k β γ) := by
  have hcorrection :
      (if k = i then pairedAlgebraData.gamma j α γ
       else if k = j then -(pairedAlgebraData.gamma i α γ)
       else 0) =
      -((if k = j then pairedAlgebraData.gamma i
          else if k = i then -(pairedAlgebraData.gamma j)
          else (0 : GammaMatrix)) α γ) := by
    by_cases hki : k = i
    · subst k
      simp [hij, Ne.symm hij]
    · by_cases hkj : k = j
      · subst k
        simp [hij, hki, Ne.symm hij]
      · simp [hki, hkj]
  rw [hcorrection]
  simpa only [sub_eq_add_neg] using
    (pairedKineticSpinorCoefficient_entry i j k α γ hij)

#print axioms sourceOrbitalSpatialSum_reindex
#print axioms pairedRealKineticCoefficient_reindexed

end
end FCP.BFSSSU2PhysicalDomainS3L5J1
