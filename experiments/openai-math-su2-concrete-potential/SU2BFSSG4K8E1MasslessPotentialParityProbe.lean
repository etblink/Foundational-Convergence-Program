import SU2BFSSG4K8DPositiveCouplingAlternativeProbe

/-!
# BFSS SU(2) G4-K8E1 — physical state and massless potential parity

Gate #149 formally proved that the true pinned SU(2) physical
radial trial state has strictly positive actual interacting
deformed energy at h=1 OR h=2, m=0. The alternative does NOT
select h=1 individually.

The next scientific obstacle is exact kinetic/potential
cancellation in the original deformedCoreCharge at h=1,m=0.
Here we test two independently source-grounded evenness facts:

1. The SAME smooth radial Gauss-invariant state is even under
   the true Boson 2 involution x ↦ -x.
2. For EVERY real coupling h and zero mass, the source real
   potential field is even under the same involution, because
   the ORIGINAL source polarized field is quadratic in x.

Combining them yields evenness of the actual pinned potential
multiplication field acting on the chosen state. A later
stage must separately prove that the ORIGINAL source kinetic
first-order core component is odd and nonzero under parity;
only then can it disallow cancellation and infer strict
trial-energy positivity specifically at h=1,m=0.

No assertion about h=1 energy positivity is proved in this
stage; no eigenstate, ground state, spectral infimum or
BFSS mass gap is claimed.
-/

namespace FCP.BFSSSU2GaugeG4K8E1
noncomputable section

open OAI
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG4K2A
open FCP.BFSSSU2GaugeG4K2B
open FCP.BFSSSU2GaugeG4K3
open FCP.BFSSSU2GaugeG4K8D

/-- True original nonzero physical smooth radial state is even,
without assuming parity as a new gauge symmetry. -/
theorem physicalSmoothRadialState_even (x : Boson 2) :
    radialBumpSmoothCore (-x) = radialBumpSmoothCore x := by
  change radialVacuumProfile radialBumpCoefficient (-x) =
    radialVacuumProfile radialBumpCoefficient x
  simp only [radialVacuumProfile, norm_neg]

/-- Pinned massless deformation (m=0) is an exactly EVEN
quadratic source potential field for ANY REAL h.
This is NOT true as written for arbitrary nonzero mass,
whose source field contains a linear term. -/
/-- Bilinearity at the ContinuousLinearMap interface, without reducing
the full pinned structure-constant expansion of bracketBilinear. -/
private lemma bracketBilinear_neg_neg (α : SpinIndex) (x : Boson 2) :
    (pairedAlgebraData.bracketBilinear α) (-x) (-x) =
      (pairedAlgebraData.bracketBilinear α) x x := by
  rw [map_neg, _root_.neg_apply, map_neg, neg_neg]

theorem physicalMasslessRealField_even (h : ℝ) (α : SpinIndex)
    (x : Boson 2) :
    pairedAlgebraData.deformedRealField h 0 α (-x) =
      pairedAlgebraData.deformedRealField h 0 α x := by
  have hmassZero (y : Boson 2) :
      (0 : ℝ) • (pairedAlgebraData.massLinear α y) = 0 := by
    apply ContinuousLinearMap.ext
    intro z
    simp [IsSMulApply.smul_apply]
  calc
    pairedAlgebraData.deformedRealField h 0 α (-x) =
        h • (pairedAlgebraData.bracketBilinear α) (-x) (-x) +
        (0 : ℝ) • (pairedAlgebraData.massLinear α) (-x) :=
      pairedAlgebraData.deformedRealField_polarized h 0 α (-x)
    _ = h • (pairedAlgebraData.bracketBilinear α) x x +
          (0 : ℝ) • (pairedAlgebraData.massLinear α) (-x) := by
      rw [bracketBilinear_neg_neg α x]
    _ = h • (pairedAlgebraData.bracketBilinear α) x x + 0 := by
      rw [hmassZero (-x)]
    _ = h • (pairedAlgebraData.bracketBilinear α) x x +
          (0 : ℝ) • (pairedAlgebraData.massLinear α) x := by
      rw [hmassZero x]
    _ = pairedAlgebraData.deformedRealField h 0 α x :=
      (pairedAlgebraData.deformedRealField_polarized h 0 α x).symm

/-- The true source field multiplied by the same physical
radial test section is an even Fermion 2-valued function
at every real coupling h and zero mass. -/
theorem physicalMasslessPotentialAction_even (h : ℝ)
    (α : SpinIndex) (x : Boson 2) :
    (pairedAlgebraData.deformedRealField h 0 α (-x))
        (radialBumpSmoothCore (-x)) =
      (pairedAlgebraData.deformedRealField h 0 α x)
        (radialBumpSmoothCore x) := by
  rw [physicalMasslessRealField_even, physicalSmoothRadialState_even]

/-- The actual source MixedEnergy.field SmoothCore operator
obeys pointwise parity on our original Gauss test state.
This uses the pinned `field_apply`, not an auxiliary operator. -/
theorem physicalMasslessCorePotential_even (h : ℝ)
    (α : SpinIndex) (x : Boson 2) :
    MixedEnergy.field
        (pairedAlgebraData.deformedRealField h 0 α)
        (pairedAlgebraData.deformedRealField_contDiff h 0 α)
        radialBumpSmoothCore (-x) =
      MixedEnergy.field
        (pairedAlgebraData.deformedRealField h 0 α)
        (pairedAlgebraData.deformedRealField_contDiff h 0 α)
        radialBumpSmoothCore x := by
  change
    (pairedAlgebraData.deformedRealField h 0 α (-x))
      (radialBumpSmoothCore (-x)) =
    (pairedAlgebraData.deformedRealField h 0 α x)
      (radialBumpSmoothCore x)
  exact physicalMasslessPotentialAction_even h α x

#print axioms physicalSmoothRadialState_even
#print axioms physicalMasslessRealField_even
#print axioms physicalMasslessPotentialAction_even
#print axioms physicalMasslessCorePotential_even

end
end FCP.BFSSSU2GaugeG4K8E1
