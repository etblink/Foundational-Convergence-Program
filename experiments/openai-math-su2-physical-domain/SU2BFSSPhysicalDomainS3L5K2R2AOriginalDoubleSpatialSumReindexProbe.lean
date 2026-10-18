import SU2BFSSPhysicalDomainS3L5J1SourceSpatialReindexAndGammaCoefficientProbe

/-!
# K2R2A — exact double-spatial cubic response reindex

Pinned qualification #1: new double spatial response identities.

Source-faithful operator-valued index algebra, before ANY concrete
48-Majorana generator or huge cubic charge is elaborated. Reuse the
previously QUALIFIED J1 one-index source orbital reindex twice.
Keep BOTH original 9-spatial indices independent. In particular,
the left variation k and right variation l carry DIFFERENT signs
and coefficient placements; no illegal interchange of two ordered
source position multipliers is used here.

This proves NEW two-spatial reindex mathematics relevant to the cubic
charge. It is not a full response, no gammaTwo coefficient identity,
no operator commutator and no claim of charge covariance.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R2A
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5J1

/-- Left spatial variation: the first of the two original ordered
source positions rotates under the same conventions as qualified J1. -/
theorem sourceDoubleSpatialLeft_reindex
    (i j : SpaceIndex) (hij : i ≠ j)
    (c : SpaceIndex → SpaceIndex → ℂ)
    (T : SpaceIndex → SpaceIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      c k l • (if k = j then T i l else if k = i then -(T j l) else 0)) =
    ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      (if k = i then c j l else if k = j then -(c i l) else 0) • T k l := by
  calc
    _ = ∑ l : SpaceIndex, ∑ k : SpaceIndex,
          c k l • (if k = j then T i l else if k = i then -(T j l) else 0) := by
            rw [Finset.sum_comm]
    _ = ∑ l : SpaceIndex, ∑ k : SpaceIndex,
          (if k = i then c j l else if k = j then -(c i l) else 0) • T k l := by
            apply Finset.sum_congr rfl
            intro l _
            exact sourceOrbitalSpatialSum_reindex i j hij
              (fun k => c k l) (fun k => T k l)
    _ = _ := by rw [Finset.sum_comm]

/-- Right spatial variation: independent rotation of the SECOND
position, with no exchange of operator product order. -/
theorem sourceDoubleSpatialRight_reindex
    (i j : SpaceIndex) (hij : i ≠ j)
    (c : SpaceIndex → SpaceIndex → ℂ)
    (T : SpaceIndex → SpaceIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      c k l • (if l = j then T k i else if l = i then -(T k j) else 0)) =
    ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      (if l = i then c k j else if l = j then -(c k i) else 0) • T k l := by
  apply Finset.sum_congr rfl
  intro k _
  exact sourceOrbitalSpatialSum_reindex i j hij
    (fun l => c k l) (fun l => T k l)

/-- Exact two-spatial response coefficient, with all original branch
orientations explicit. This is the indispensable R2 index identity. -/
theorem sourceDoubleSpatialCombined_reindex
    (i j : SpaceIndex) (hij : i ≠ j)
    (c : SpaceIndex → SpaceIndex → ℂ)
    (T : SpaceIndex → SpaceIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      c k l •
        ((if k = j then T i l else if k = i then -(T j l) else 0) +
         (if l = j then T k i else if l = i then -(T k j) else 0))) =
    ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ((if k = i then c j l else if k = j then -(c i l) else 0) +
       (if l = i then c k j else if l = j then -(c k i) else 0)) •
        T k l := by
  calc
    _ = (∑ k : SpaceIndex, ∑ l : SpaceIndex,
          c k l • (if k = j then T i l else if k = i then -(T j l) else 0)) +
        (∑ k : SpaceIndex, ∑ l : SpaceIndex,
          c k l • (if l = j then T k i else if l = i then -(T k j) else 0)) := by
            simp only [smul_add, Finset.sum_add_distrib]
    _ = (∑ k : SpaceIndex, ∑ l : SpaceIndex,
          (if k = i then c j l else if k = j then -(c i l) else 0) • T k l) +
        (∑ k : SpaceIndex, ∑ l : SpaceIndex,
          (if l = i then c k j else if l = j then -(c k i) else 0) • T k l) := by
            rw [sourceDoubleSpatialLeft_reindex i j hij c T,
                sourceDoubleSpatialRight_reindex i j hij c T]
    _ = _ := by simp only [add_smul, Finset.sum_add_distrib]

#print axioms sourceDoubleSpatialLeft_reindex
#print axioms sourceDoubleSpatialRight_reindex
#print axioms sourceDoubleSpatialCombined_reindex
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R2A
