import SU2BFSSPhysicalDomainS3L5K2AOriginalFermionActionCovarianceProbe

/-!
# S3L5K2B — exact concrete cubic source monomial via opaque operator interfaces
K2B #2: open the K2A-qualified S3L5K2 namespace omitted in Gate #1; no theorem/proof edits.
K2B Gate #3: Gate #2 fixed namespace but hit recursion in three simplifications; replace tactics with exact use of qualified lemmas.
K2B Gate #4: Gate #3 failed at typed hF with maxRecDepth; preserve inferred hF/hP types and expose only monomial definition.
K2B qualification #4 tests inferred proof types plus single monomial-definition rewrite.

First bounded successor to known-red S3L5K2. Reuse the SOURCE-QUALIFIED
K1 paired position-pair commutator, K2A exact 48-Majorana fermion-action
spin covariance, and K1's already-proved SourceEnd Leibniz rule.
Name the source generator, fermionAction, ordered position pair, and
their two known variations at exact SourceEnd types; reduce ONLY these
named interfaces at the final theorem. Do not unfold the Fock generator,
invent a new physical model, or import the unqualified K2 implementation.
No whole cubic sum or positive-spectrum claim follows.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K2B
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3L1
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L4C
open FCP.BFSSSU2PhysicalDomainS3L4D
open FCP.BFSSSU2PhysicalDomainS3L5C
open FCP.BFSSSU2PhysicalDomainS3L5F
open FCP.BFSSSU2PhysicalDomainS3L5K1
-- K2A is deliberately in namespace S3L5K2, despite its K2A filename.
open FCP.BFSSSU2PhysicalDomainS3L5K2


/-- The EXACT source operator factor of Core.lean's original cubic
supercharge, including composition order and all three colors. -/
noncomputable def pairedOriginalCubicMonomial
    (k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) : SourceEnd :=
  (pairedAlgebraData.fermionAction γ A).comp
    ((position (N := 2) k B).comp (position (N := 2) l C))



/-- Entire original paired SU2 source cubic monomial commutator,
with exact 48-Majorana fiber and ordered source-position factors.
This is the same statement as the unqualified K2 candidate, checked
as a separate compilation. -/
theorem pairedActualCombined_comm_cubicMonomial
    (i j k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) (hij : i ≠ j) :
    (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j).comp
        (pairedOriginalCubicMonomial k l γ A B C) -
    (pairedOriginalCubicMonomial k l γ A B C).comp
      (sourceParametricCombinedPlane
        (pairedFermionPlaneSpinGenerator i j) i j) =
      (sourceCubicFermionVariation i j γ A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)) +
      (pairedAlgebraData.fermionAction γ A).comp
        ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
          (position (N := 2) k B).comp
            (sourcePositionVariation i j l C)) := by
  -- K2B #4: first retain each independently kernel-checked source
  -- commutator WITH ITS OWN INFERRED TYPE. Gate #3's typed alias
  -- hF forced Lean to unfold the concrete Fock operator (maxRecDepth).
  have hF := pairedActualCombined_comm_fermionAction i j γ A
  have hP := pairedActualCombined_comm_positionPair i j k l B C hij
  -- Combine the exact original source expressions, not their aliases.
  have hLeibniz :=
    sourceComm_comp
      (sourceParametricCombinedPlane (pairedFermionPlaneSpinGenerator i j) i j)
      (pairedAlgebraData.fermionAction γ A)
      ((position (N := 2) k B).comp (position (N := 2) l C))
      (sourceCubicFermionVariation i j γ A)
      ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
        (position (N := 2) k B).comp (sourcePositionVariation i j l C))
      hF hP
  -- Expose ONLY the original monomial name, not the combined generator,
  -- gamma matrices, or the genuine fermionAction source definition.
  simpa only [pairedOriginalCubicMonomial] using hLeibniz

#print axioms pairedActualCombined_comm_cubicMonomial

end
end FCP.BFSSSU2PhysicalDomainS3L5K2B
