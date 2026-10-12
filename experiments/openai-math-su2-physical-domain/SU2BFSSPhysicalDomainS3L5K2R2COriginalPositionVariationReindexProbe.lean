import SU2BFSSPhysicalDomainS3L5K2R2BOrderedSourcePositionPairReindexProbe
import SU2BFSSPhysicalDomainS3L5K1SourceCubicPositionPairProbe

/-!
# K2R2C — original sourcePositionVariation specialization

Pinned qualification attempt #2: restore source AlgebraData namespace; theorem/proof unchanged.
CI rerun #2, comment-only trigger; proof unchanged.

R2A and R2B are already Lean-qualified under pinned source and exact
axiom audit. R2C moves beyond a general ordered SourceEnd family:
the position factors are the source-defined position (N:=2), and
the variations are literally K1's sourcePositionVariation i j k B.

F is deliberately still a SourceEnd variable: this isolates exact
position-source specialization without opening the large 48-Majorana
fermionAction. No source coefficients, indices or multiplication
orders are modified. The formula is conditional only on i ≠ j.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R2C
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K1
open FCP.BFSSSU2PhysicalDomainS3L5K2R2B

/-- Original K1 spatial variations and original N=2 coordinate
operators, preserving the ordered F ∘ X_k ∘ X_l product. -/
theorem sourceOriginalPositionPairSpatial_reindex
    (i j : SpaceIndex) (hij : i ≠ j)
    (F : SourceEnd) (B C : ColorIndex 2)
    (c : SpaceIndex → SpaceIndex → ℂ) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      c k l •
        (F.comp ((sourcePositionVariation i j k B).comp
          (position (N := 2) l C)) +
         F.comp ((position (N := 2) k B).comp
          (sourcePositionVariation i j l C)))) =
    ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ((if k = i then c j l else if k = j then -(c i l) else 0) +
       (if l = i then c k j else if l = j then -(c k i) else 0)) •
         F.comp ((position (N := 2) k B).comp
           (position (N := 2) l C)) := by
  -- Only the small K1 if/then source variations are unfolded.
  -- R2B remains a sealed theorem; the 48-Majorana fiber is absent.
  simpa only [sourcePositionVariation] using
    (sourceOrderedCubicDoubleSpatial_reindex i j hij F
      (fun k => position (N := 2) k B)
      (fun l => position (N := 2) l C) c)

#print axioms sourceOriginalPositionPairSpatial_reindex
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R2C
