import SU2BFSSPhysicalDomainL6G6ZOriginalColorFlowVacuumProbe
import SU2BFSSPhysicalDomainL6G6LOriginalInfinitesimalColorActionProbe
import SU2BFSSPhysicalDomainL6G6XOriginalSU2GaugeCurveProbe

/-!
L6G7A — direct match between the original bounded fermionic
color-flow tangent and the genuine +i SU(2) adjoint-color tangent.

On each of the literal 48 source theta operators, the commutator
[J_F(c), theta_{s,d}] has output-color/input-color coefficient
f_(b d c). L6G6X independently proves this is the derivative
of the ORIGINAL pairedAlgebraData.adjointCoefficient of the
genuine determinant-one SU(2) curve.

This stage computes the derivative of the original bounded
flow's theta intertwining defect at t=0 on every actual Fock state.
It proves an infinitesimal source match, NOT finite-time covariance,
equality with the G4B original gauge action, or a Gauss theorem.
-/

set_option autoImplicit false
set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 1600000

namespace FCP.BFSSSU2PhysicalDomainL6G7A
noncomputable section

open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainL6G6K
open FCP.BFSSSU2PhysicalDomainL6G6L
open FCP.BFSSSU2PhysicalDomainL6G6X
open FCP.BFSSSU2PhysicalDomainL6G6Z

private theorem sourceNormalizedPauliColor :
    ∀ a : ColorIndex 2,
      pairedAlgebraData.color a = FCP.BFSSSU2.normalizedPauli a := by
  intro a
  calc
    pairedAlgebraData.color a =
        FCP.BFSSSU2Full.concreteAlgebraData.color a :=
      pairedAlgebraData_color a
    _ = FCP.BFSSSU2.normalizedPauli a :=
      FCP.BFSSSU2Full.concreteAlgebraData_color a

/-- EXACT sign and orientation of source color current at each
original theta: index b is output, d is input. Coefficients coincide
with the independently qualified true SU(2) tangent of L6G6X. -/
theorem sourceFermionGenerator_comm_matches_nativeAdjointTangent
    (c : ColorIndex 2) (s : SpinIndex) (d : ColorIndex 2) :
    sourceFiberFermionColorGenerator pairedAlgebraData c *
        pairedAlgebraData.theta s d -
      pairedAlgebraData.theta s d *
        sourceFiberFermionColorGenerator pairedAlgebraData c =
      ∑ b : ColorIndex 2,
        (pairedAlgebraData.structureConstant b d c : ℂ) •
          pairedAlgebraData.theta s b := by
  have hcomm :=
    sourceFiberFermionColorGenerator_comm pairedAlgebraData
      sourceNormalizedPauliColor c s d
  have hskew (b : ColorIndex 2) :
      (pairedAlgebraData.structureConstant b d c : ℂ) =
        -(pairedAlgebraData.structureConstant d b c : ℂ) := by
    simpa only [Complex.ofReal_neg] using
      congrArg (fun z : ℝ => (z : ℂ))
        (FCP.BFSSSU2PhysicalDomainL6G6D.sourceSU2StructureConstant_swapFirst
          pairedAlgebraData sourceNormalizedPauliColor d b c)
  calc
    _ = -(∑ b : ColorIndex 2,
          (pairedAlgebraData.structureConstant d b c : ℂ) •
            pairedAlgebraData.theta s b) := hcomm
    _ = ∑ b : ColorIndex 2,
          -((pairedAlgebraData.structureConstant d b c : ℂ) •
            pairedAlgebraData.theta s b) := by simp only [Finset.sum_neg_distrib]
    _ = ∑ b : ColorIndex 2,
          (pairedAlgebraData.structureConstant b d c : ℂ) •
            pairedAlgebraData.theta s b := by
      apply Finset.sum_congr rfl
      intro b _
      rw [hskew b]
      exact (neg_smul _ _).symm

/-- Each native SU(2) adjoint coefficient has exactly the tangent
which appears in the actual bounded source generator commutator. -/
theorem sourceNativeAdjointCoefficient_matches_generator
    (c : ColorIndex 2) (d b : ColorIndex 2) :
    HasDerivAt
      (fun t : ℝ => pairedAlgebraData.adjointCoefficient
        (sourcePlusIGaugeCurve c t) d b)
      (pairedAlgebraData.structureConstant b d c) 0 :=
  sourcePlusIGaugeCurve_adjointCoefficient_deriv c d b

/-- FIRST-ORDER SOURCE COVARIANCE: on every literal original theta
and every actual Fermion 2 state, the derivative of the bounded flow
intertwining defect is the source native SU(2) adjoint-color tangent.
This is NOT a finite-time covariance equation. -/
theorem sourceFermionColorFlow_thetaIntertwiner_deriv_zero
    (c : ColorIndex 2) (s : SpinIndex)
    (d : ColorIndex 2) (v : Fermion 2) :
    HasDerivAt
      (fun t : ℝ =>
        sourceFermionColorFlow c t (pairedAlgebraData.theta s d v) -
        pairedAlgebraData.theta s d (sourceFermionColorFlow c t v))
      ((∑ b : ColorIndex 2,
          (pairedAlgebraData.structureConstant b d c : ℂ) •
            pairedAlgebraData.theta s b) v) 0 := by
  let T := pairedAlgebraData.theta s d
  let J := sourceFiberFermionColorGenerator pairedAlgebraData c
  have hleft : HasDerivAt
      (fun t : ℝ => sourceFermionColorFlow c t (T v))
      (J (T v)) 0 :=
    sourceFermionColorFlow_derivative_zero c (T v)
  have hright' :=
    ((T.restrictScalars ℝ).hasFDerivAt.comp_hasDerivAt 0
      (sourceFermionColorFlow_derivative_zero c v))
  have hright : HasDerivAt
      (fun t : ℝ => T (sourceFermionColorFlow c t v))
      (T (J v)) 0 := by
    change HasDerivAt
      (fun t : ℝ => T (sourceFermionColorFlow c t v))
      (T (J v)) 0 at hright'
    exact hright'
  have hsub : HasDerivAt
      (fun t : ℝ => sourceFermionColorFlow c t (T v) -
        T (sourceFermionColorFlow c t v))
      (J (T v) - T (J v)) 0 := by
    simpa only [Pi.sub_apply] using hleft.sub hright
  have hcoeff : J (T v) - T (J v) =
      (∑ b : ColorIndex 2,
        (pairedAlgebraData.structureConstant b d c : ℂ) •
          pairedAlgebraData.theta s b) v := by
    have hc := congrArg (fun K : SourceFiberEnd => K v)
      (sourceFermionGenerator_comm_matches_nativeAdjointTangent c s d)
    simpa only [ContinuousLinearMap.sub_apply,
      ContinuousLinearMap.comp_apply] using hc
  change HasDerivAt
    (fun t : ℝ => sourceFermionColorFlow c t (T v) -
      T (sourceFermionColorFlow c t v))
    ((∑ b : ColorIndex 2,
        (pairedAlgebraData.structureConstant b d c : ℂ) •
          pairedAlgebraData.theta s b) v) 0
  rw [← hcoeff]
  exact hsub

#print axioms sourceFermionGenerator_comm_matches_nativeAdjointTangent
#print axioms sourceNativeAdjointCoefficient_matches_generator
#print axioms sourceFermionColorFlow_thetaIntertwiner_deriv_zero
#check @sourceFermionColorFlow_thetaIntertwiner_deriv_zero

end
end FCP.BFSSSU2PhysicalDomainL6G7A
