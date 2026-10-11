import SU2BFSSPhysicalDomainS3L5K1SourceCubicPositionPairProbe

/-!
# S3L5K2 — actual original BFSS cubic source monomial rotation

Gate #77 qualified the exact ordered pair of ORIGINAL source
position multipliers under the actual paired 48-Majorana combined
generator. This gate combines that with the already accepted S3L4D
fermionAction spin-covariance to prove the whole source cubic
monomial: fermionAction gamma A comp position k B comp position l C.

No alternate Fock representation, no unproved physical fiber
premise, no expansion of the 9×9×3×3×3×16 cubic charge sum,
no new gammaTwo coefficient assertion and no spectral claim.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K2
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3L1
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L4D
open FCP.BFSSSU2PhysicalDomainS3L5C
open FCP.BFSSSU2PhysicalDomainS3L5F
open FCP.BFSSSU2PhysicalDomainS3L5K1

/-- The actual original paired source fermion-action spin variation.
The matrix coefficient and transpose orientation are inherited
exactly from accepted S3L4D and the true 48-Majorana generator. -/
noncomputable def sourceCubicFermionVariation
    (i j : SpaceIndex) (γ : SpinIndex)
    (A : ColorIndex 2) : SourceEnd :=
  ∑ β : SpinIndex,
    (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
      pairedAlgebraData.fermionAction β A)

/-- The original paired combined plane generator acts on literal
source fermionAction by the accepted 48-Majorana spin response; the
orbital source plane commutes with original fermionAction. -/
theorem pairedActualCombined_comm_fermionAction
    (i j : SpaceIndex) (γ : SpinIndex) (A : ColorIndex 2) :
    (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j).comp
        (pairedAlgebraData.fermionAction γ A) -
    (pairedAlgebraData.fermionAction γ A).comp
      (sourceParametricCombinedPlane
        (pairedFermionPlaneSpinGenerator i j) i j) =
      sourceCubicFermionVariation i j γ A := by
  -- Unfold only the two named source interfaces, not the concrete Fock
  -- implementation.  Accepted S3L4D supplies the exact fiber statement.
  unfold sourceParametricCombinedPlane sourceCubicFermionVariation
  have hL :
      (pairedSourceOrbitalPlaneGenerator i j).comp
        (pairedAlgebraData.fermionAction γ A) -
      (pairedAlgebraData.fermionAction γ A).comp
        (pairedSourceOrbitalPlaneGenerator i j) = (0 : SourceEnd) :=
    sub_eq_zero.mpr
      (sourceOrbital_comm_fermionAction pairedAlgebraData i j γ A)
  have hK := pairedActualSourceSpin_comm_fermionAction i j γ A
  unfold pairedActualSourceSpin at hK
  have h := sourceComm_sum_of_components
    (pairedSourceOrbitalPlaneGenerator i j)
    (sourcePostcomp (pairedFermionPlaneSpinGenerator i j))
    (pairedAlgebraData.fermionAction γ A)
    (0 : SourceEnd)
    (∑ β : SpinIndex,
      (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
        pairedAlgebraData.fermionAction β A))
    hL hK
  exact h.trans (zero_add _)

/-- The EXACT source operator factor of Core.lean's original cubic
supercharge, including composition order and all three colors. -/
noncomputable def pairedOriginalCubicMonomial
    (k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) : SourceEnd :=
  (pairedAlgebraData.fermionAction γ A).comp
    ((position (N := 2) k B).comp (position (N := 2) l C))

/-- Concrete source-level full cubic MONOMIAL commutator: actual
48-Majorana spin response plus both original spatial multipliers.
The original gammaTwo and structure-constant coefficient contraction
and complete six-index cubic sum are separate obligations. -/
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
  -- First unfold ONLY our named cubic monomial, ensuring the outer
  -- SourceEnd expressions exactly match the accepted Leibniz theorem.
  -- No concrete defeq/simpa search over full Fock operators.
  unfold pairedOriginalCubicMonomial
  exact sourceComm_comp
    (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j)
    (pairedAlgebraData.fermionAction γ A)
    ((position (N := 2) k B).comp (position (N := 2) l C))
    (sourceCubicFermionVariation i j γ A)
    ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
      (position (N := 2) k B).comp (sourcePositionVariation i j l C))
    (pairedActualCombined_comm_fermionAction i j γ A)
    (pairedActualCombined_comm_positionPair i j k l B C hij)

#print axioms pairedActualCombined_comm_fermionAction
#print axioms pairedActualCombined_comm_cubicMonomial

end
end FCP.BFSSSU2PhysicalDomainS3L5K2
