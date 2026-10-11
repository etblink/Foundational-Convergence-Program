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
open FCP.BFSSSU2PhysicalDomainS3L4C
open FCP.BFSSSU2PhysicalDomainS3L4D
open FCP.BFSSSU2PhysicalDomainS3L5C
open FCP.BFSSSU2PhysicalDomainS3L5F
open FCP.BFSSSU2PhysicalDomainS3L5K1

#eval IO.println "K2_DIAG_00_entered_module"
/-- The actual original paired source fermion-action spin variation.
The matrix coefficient and transpose orientation are inherited
exactly from accepted S3L4D and the true 48-Majorana generator. -/
noncomputable def sourceCubicFermionVariation
    (i j : SpaceIndex) (γ : SpinIndex)
    (A : ColorIndex 2) : SourceEnd :=
  ∑ β : SpinIndex,
    (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
      pairedAlgebraData.fermionAction β A)

#eval IO.println "K2_DIAG_01_variation_def_elaborated"

/-- Source-parametric combined orbital/fiber commutator.
The actual 48-Majorana fiber hypothesis remains explicit here, so Lean
can check the commutator algebra before specializing to pairedAlgebraData. -/
private theorem sourceCombined_comm_fermionAction_of_fiber
    (M : AlgebraData 2) (K : FockEnd) (c : SpinIndex → ℂ)
    (i j : SpaceIndex) (γ : SpinIndex) (A : ColorIndex 2)
    (hFiber : K * M.theta γ A - M.theta γ A * K =
      ∑ β : SpinIndex, c β • M.theta β A) :
    (sourceParametricCombinedPlane K i j).comp (M.fermionAction γ A) -
      (M.fermionAction γ A).comp (sourceParametricCombinedPlane K i j) =
      ∑ β : SpinIndex, c β • M.fermionAction β A := by
  have hL :
      (pairedSourceOrbitalPlaneGenerator i j).comp (M.fermionAction γ A) -
        (M.fermionAction γ A).comp
          (pairedSourceOrbitalPlaneGenerator i j) = (0 : SourceEnd) :=
    sub_eq_zero.mpr (sourceOrbital_comm_fermionAction M i j γ A)
  have hK :
      (sourcePostcomp K).comp (M.fermionAction γ A) -
        (M.fermionAction γ A).comp (sourcePostcomp K) =
        ∑ β : SpinIndex, c β • M.fermionAction β A :=
    sourceFermionAction_covariance_of_fiber M K c γ A hFiber
  change (pairedSourceOrbitalPlaneGenerator i j + sourcePostcomp K).comp
      (M.fermionAction γ A) -
    (M.fermionAction γ A).comp
      (pairedSourceOrbitalPlaneGenerator i j + sourcePostcomp K) =
    ∑ β : SpinIndex, c β • M.fermionAction β A
  calc
    _ = (0 : SourceEnd) +
        (∑ β : SpinIndex, c β • M.fermionAction β A) :=
      sourceComm_sum_of_components
        (pairedSourceOrbitalPlaneGenerator i j) (sourcePostcomp K)
        (M.fermionAction γ A) (0 : SourceEnd)
        (∑ β : SpinIndex, c β • M.fermionAction β A) hL hK
    _ = _ := zero_add _

#eval IO.println "K2_DIAG_02_parametric_fermion_proved"

theorem pairedActualCombined_comm_fermionAction
    (i j : SpaceIndex) (γ : SpinIndex) (A : ColorIndex 2) :
    (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j).comp
        (pairedAlgebraData.fermionAction γ A) -
    (pairedAlgebraData.fermionAction γ A).comp
      (sourceParametricCombinedPlane
        (pairedFermionPlaneSpinGenerator i j) i j) =
      sourceCubicFermionVariation i j γ A := by
  exact sourceCombined_comm_fermionAction_of_fiber
    pairedAlgebraData (pairedFermionPlaneSpinGenerator i j)
    (fun β => ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ))
    i j γ A (pairedActualFockSpin_comm_source_theta i j γ A)

#eval IO.println "K2_DIAG_03_paired_fermion_proved"

/-- The EXACT source operator factor of Core.lean's original cubic
supercharge, including composition order and all three colors. -/
noncomputable def pairedOriginalCubicMonomial
    (k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) : SourceEnd :=
  (pairedAlgebraData.fermionAction γ A).comp
    ((position (N := 2) k B).comp (position (N := 2) l C))

#eval IO.println "K2_DIAG_04_cubic_monomial_def_elaborated"

/-- Source-parametric cubic composition Leibniz rule, keeping
the actual 48-Majorana fiber hypothesis visible for separate discharge.
No potential coefficient, sum, or replacement source representation. -/
private theorem sourceCombined_comm_cubicMonomial_of_fiber
    (M : AlgebraData 2) (K : FockEnd) (c : SpinIndex → ℂ)
    (i j k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) (hij : i ≠ j)
    (hFiber : K * M.theta γ A - M.theta γ A * K =
      ∑ β : SpinIndex, c β • M.theta β A) :
    (sourceParametricCombinedPlane K i j).comp
        ((M.fermionAction γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) -
      ((M.fermionAction γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))).comp
        (sourceParametricCombinedPlane K i j) =
      (∑ β : SpinIndex, c β • M.fermionAction β A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)) +
      (M.fermionAction γ A).comp
        ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
          (position (N := 2) k B).comp
            (sourcePositionVariation i j l C)) := by
  exact sourceComm_comp
    (sourceParametricCombinedPlane K i j)
    (M.fermionAction γ A)
    ((position (N := 2) k B).comp (position (N := 2) l C))
    (∑ β : SpinIndex, c β • M.fermionAction β A)
    ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
      (position (N := 2) k B).comp (sourcePositionVariation i j l C))
    (sourceCombined_comm_fermionAction_of_fiber M K c i j γ A hFiber)
    (sourceCombined_comm_positionPair K i j k l B C hij)

#eval IO.println "K2_DIAG_05_parametric_monomial_proved"

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
  -- Unfold only the two named source wrappers before the exact source lemma.
  unfold pairedOriginalCubicMonomial sourceCubicFermionVariation
  exact sourceCombined_comm_cubicMonomial_of_fiber
    pairedAlgebraData (pairedFermionPlaneSpinGenerator i j)
    (fun β => ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ))
    i j k l γ A B C hij
    (pairedActualFockSpin_comm_source_theta i j γ A)

#eval IO.println "K2_DIAG_06_paired_monomial_proved"

#print axioms pairedActualCombined_comm_fermionAction
#print axioms pairedActualCombined_comm_cubicMonomial

end
end FCP.BFSSSU2PhysicalDomainS3L5K2
