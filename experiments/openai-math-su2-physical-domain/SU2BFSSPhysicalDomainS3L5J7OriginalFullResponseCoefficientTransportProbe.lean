import SU2BFSSPhysicalDomainS3L5J6SourceOrbitalFixedIndexReindexProbe

/-!
# S3L5J7 — original kinetic response transported to one source coefficient family

Gate #72 proved literal source orbital reindexing at fixed color and
spinor; Gate #68 proved the fixed-spatial/color paired fermionic response
reindex; and Gate #69 split the genuine original kineticWeightedResponse.

This gate carries those identities through ALL remaining 9 spatial,
3 color and 16 spinor finite indices, then groups the two contributions
on the actual source kineticTerm. The coefficient is left named for the
separate J2 Clifford gamma/J contraction. No 48-Majorana generator
expansion, hidden physical premise, or full supercharge claim.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5J7
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5I2A
open FCP.BFSSSU2PhysicalDomainS3L5J4
open FCP.BFSSSU2PhysicalDomainS3L5J5
open FCP.BFSSSU2PhysicalDomainS3L5J6

/-- Exchange the original three finite sums only; NO expansion of
the source endomorphism or its Fock action. -/
theorem sourceTripleSum_spatialToLast
    (F : SpaceIndex → ColorIndex 2 → SpinIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      F k A γ) =
      ∑ A : ColorIndex 2, ∑ γ : SpinIndex, ∑ k : SpaceIndex,
        F k A γ := by
  calc
    _ = ∑ A : ColorIndex 2, ∑ k : SpaceIndex, ∑ γ : SpinIndex,
        F k A γ := by rw [Finset.sum_comm]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro A _
      rw [Finset.sum_comm]

/-- Lift accepted J6 original orbital reindexing through both remaining
color and spinor sums, preserving source -i gamma weights. -/
theorem pairedOrbitalThreeSum_reindex
    (i j : SpaceIndex) (hij : i ≠ j) (α : SpinIndex) :
    (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      kineticWeight pairedAlgebraData α k A γ •
        kineticOrbitalPiece pairedAlgebraData i j k A γ) =
    ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      (if k = i then kineticWeight pairedAlgebraData α j A γ
       else if k = j then -(kineticWeight pairedAlgebraData α i A γ)
       else 0) • kineticTerm pairedAlgebraData k A γ := by
  calc
    _ = ∑ A : ColorIndex 2, ∑ γ : SpinIndex, ∑ k : SpaceIndex,
      kineticWeight pairedAlgebraData α k A γ •
        kineticOrbitalPiece pairedAlgebraData i j k A γ :=
      sourceTripleSum_spatialToLast _
    _ = ∑ A : ColorIndex 2, ∑ γ : SpinIndex, ∑ k : SpaceIndex,
      (if k = i then kineticWeight pairedAlgebraData α j A γ
       else if k = j then -(kineticWeight pairedAlgebraData α i A γ)
       else 0) • kineticTerm pairedAlgebraData k A γ := by
        apply Finset.sum_congr rfl
        intro A _
        apply Finset.sum_congr rfl
        intro γ _
        exact pairedOrbitalFixedColorSpinor_reindex i j hij α γ A
    _ = _ := (sourceTripleSum_spatialToLast _).symm

/-- Lift accepted J4 fixed-spatial/color paired fermion-spin transport
through every spatial index and original color index. -/
theorem pairedFiberThreeSum_reindex
    (i j : SpaceIndex) (α : SpinIndex) :
    (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      kineticWeight pairedAlgebraData α k A γ •
        kineticFiberPiece pairedAlgebraData
          (fun γ β => ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ))
          k A γ) =
    ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ β : SpinIndex,
      (∑ γ : SpinIndex,
        kineticWeight pairedAlgebraData α k A γ *
          ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ)) •
        kineticTerm pairedAlgebraData k A β := by
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro A _
  simpa only [kineticFiberPiece] using
    (pairedFixedKineticFermionResponse_reindex i j k α A)

/-- Termwise scalar regrouping across the genuine 9×3×16 source
kinetic monomial family. -/
theorem sourceTripleSum_coeff_add
    (a b : SpaceIndex → ColorIndex 2 → SpinIndex → ℂ)
    (F : SpaceIndex → ColorIndex 2 → SpinIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      a k A γ • F k A γ) +
    (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      b k A γ • F k A γ) =
    ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      (a k A γ + b k A γ) • F k A γ := by
  simp_rw [add_smul, Finset.sum_add_distrib]

/-- The coefficient of an ORIGINAL source kineticTerm after the J6
orbital and J4 fermion-spin transports. No new representation. -/
noncomputable def pairedKineticResponseCoefficient
    (i j : SpaceIndex) (α : SpinIndex)
    (k : SpaceIndex) (A : ColorIndex 2) (γ : SpinIndex) : ℂ :=
    (if k = i then kineticWeight pairedAlgebraData α j A γ
     else if k = j then -(kineticWeight pairedAlgebraData α i A γ)
     else 0) +
    ∑ β : SpinIndex,
      kineticWeight pairedAlgebraData α k A β *
        ((pairedPlaneSpinGenerator i j γ β : ℝ) : ℂ)

/-- The actual source-defined weighted kinetic response is EXACTLY
one 9×3×16 indexed sum of source kinetic terms with the named
combined coefficient. Gamma/J Clifford contraction is still separate. -/
theorem pairedOriginalKineticResponse_asCoefficientSum
    (i j : SpaceIndex) (hij : i ≠ j) (α : SpinIndex) :
    kineticWeightedResponse pairedAlgebraData
      (fun γ β => ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ))
      i j α =
      ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        pairedKineticResponseCoefficient i j α k A γ •
          kineticTerm pairedAlgebraData k A γ := by
  calc
    _ = (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
          kineticWeight pairedAlgebraData α k A γ •
            kineticOrbitalPiece pairedAlgebraData i j k A γ) +
        (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
          kineticWeight pairedAlgebraData α k A γ •
            kineticFiberPiece pairedAlgebraData
              (fun γ β => ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ))
              k A γ) :=
      sourceKineticWeightedResponse_split pairedAlgebraData
        (fun γ β => ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ))
        i j α
    _ = (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
          (if k = i then kineticWeight pairedAlgebraData α j A γ
           else if k = j then -(kineticWeight pairedAlgebraData α i A γ)
           else 0) • kineticTerm pairedAlgebraData k A γ) +
        (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
          (∑ β : SpinIndex,
            kineticWeight pairedAlgebraData α k A β *
              ((pairedPlaneSpinGenerator i j γ β : ℝ) : ℂ)) •
            kineticTerm pairedAlgebraData k A γ) := by
              rw [pairedOrbitalThreeSum_reindex i j hij α,
                pairedFiberThreeSum_reindex i j α]
    _ = _ := sourceTripleSum_coeff_add
        (fun k A γ => if k = i then kineticWeight pairedAlgebraData α j A γ
          else if k = j then -(kineticWeight pairedAlgebraData α i A γ)
          else 0)
        (fun k A γ => ∑ β : SpinIndex,
          kineticWeight pairedAlgebraData α k A β *
            ((pairedPlaneSpinGenerator i j γ β : ℝ) : ℂ))
        (kineticTerm pairedAlgebraData)

#print axioms sourceTripleSum_spatialToLast
#print axioms pairedOrbitalThreeSum_reindex
#print axioms pairedFiberThreeSum_reindex
#print axioms sourceTripleSum_coeff_add
#print axioms pairedOriginalKineticResponse_asCoefficientSum

end
end FCP.BFSSSU2PhysicalDomainS3L5J7
