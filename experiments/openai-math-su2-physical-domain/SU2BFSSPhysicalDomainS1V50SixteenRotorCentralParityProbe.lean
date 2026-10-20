import SU2BFSSPhysicalDomainS1V49HistoricalQuarterActualSpinProjectionWitnessProbe

/-!
S1V50 — source-exact sixteen-block central Spin parity.

Each TRUE original orthogonal two-generator Clifford half-turn has
square -1 in the ORIGINAL 48-real Clifford algebra. The ordered
sixteen-rotor product has square (-1)^16 = +1, proven using actual
cross-block commutation, not a fictitious commutative Spin group.

Combined with S1V48/S1V49, the original historical SU2 quarter's
square projects through the genuine Spin IDENTITY. This is a
necessary center-descent diagnostic, NOT a continuous global
SU2 -> Spin48 lift, identification of gquarter^2 as -I,
or a statement about original BFSS spectral/physical domains.
-/

set_option autoImplicit false
set_option maxHeartbeats 350000

namespace FCP.BFSSS1V50
noncomputable section

open FCP.BFSSS1V0
open FCP.BFSSS1V1
open FCP.BFSSS1V5
open FCP.BFSSS1V6
open FCP.BFSSS1V8
open FCP.BFSSS1V9
open OAI.BFSSQuantum

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- For arbitrary orthogonal genuine Q-unit original source vectors,
their TRUE degree-two Clifford Spin rotor has central square -1. -/
theorem sourceOrthogonalSpinPair_square_neg_one
    (a b : Source48Vector)
    (ha : Q a = 1) (hb : Q b = 1)
    (hab : Q.IsOrtho a b) :
    (sourceSpinPair a b ha hb : C) *
      (sourceSpinPair a b ha hb : C) = -1 := by
  let A : C := CliffordAlgebra.ι Q a
  let B : C := CliffordAlgebra.ι Q b
  have hA : A * A = 1 := by
    dsimp [A]
    rw [CliffordAlgebra.ι_sq_scalar, ha, map_one]
  have hB : B * B = 1 := by
    dsimp [B]
    rw [CliffordAlgebra.ι_sq_scalar, hb, map_one]
  have hBA : B * A = -(A * B) := by
    dsimp [A, B]
    exact CliffordAlgebra.ι_mul_ι_comm_of_isOrtho hab.symm
  change (A * B) * (A * B) = -1
  calc
    (A * B) * (A * B) = A * (B * A) * B := by simp only [mul_assoc]
    _ = A * (-(A * B)) * B := by rw [hBA]
    _ = -((A * A) * (B * B)) := by
      simp only [mul_neg, neg_mul, mul_assoc]
    _ = -1 := by rw [hA, hB, one_mul]

/-- Each of the SIXTEEN actual source-labeled block rotors, not an
independently chosen Spin group, has Clifford square -1. -/
theorem sourceColorPlaneRotor_square_neg_one (α : RealSpinBlock) :
    (sourceColorPlaneRotor α : C) *
      (sourceColorPlaneRotor α : C) = -1 := by
  exact sourceOrthogonalSpinPair_square_neg_one
    (sourceBlockColorAxis α (0 : Fin 3))
    (sourceBlockColorAxis α (1 : Fin 3))
    (sourceBlockColorAxis_unit α (0 : Fin 3))
    (sourceBlockColorAxis_unit α (1 : Fin 3))
    (sourceColorAxis_ortho_zero_one α)

/-- The square of a TRUE ordered list product of concrete disjoint
block Clifford rotors equals the scalar (-1)^length, proved by
the independently qualified cross-block group commutation lemmas. -/
theorem sourceOrderedColorRotors_square
    (xs : List RealSpinBlock) :
    ((((xs.map sourceColorPlaneRotor).prod : spinGroup Q) : C) *
      (((xs.map sourceColorPlaneRotor).prod : spinGroup Q) : C)) =
      (-1 : C) ^ xs.length := by
  induction xs with
  | nil =>
      simp
  | cons α rest ih =>
      let r : C := sourceColorPlaneRotor α
      let t : C := ((rest.map sourceColorPlaneRotor).prod : spinGroup Q)
      have hcomm : r * t = t * r := by
        have h := sourceColorPlaneRotor_comm_list α rest
        exact congrArg (fun s : spinGroup Q => (s : C)) h
      have hr : r * r = (-1 : C) :=
        sourceColorPlaneRotor_square_neg_one α
      have ht : t * t = (-1 : C) ^ rest.length := ih
      simp only [List.map_cons, List.prod_cons, List.length_cons]
      change (r * t) * (r * t) = (-1 : C) ^ (rest.length + 1)
      calc
        (r * t) * (r * t) = r * (t * r) * t := by simp only [mul_assoc]
        _ = r * (r * t) * t := by rw [← hcomm]
        _ = (r * r) * (t * t) := by simp only [mul_assoc]
        _ = (-1 : C) * ((-1 : C) ^ rest.length) := by rw [hr, ht]
        _ = (-1 : C) ^ (rest.length + 1) := by
          rw [pow_succ]
          exact mul_comm (-1 : C) ((-1 : C) ^ rest.length)

/-- The genuine independent SIXTEEN-factor Spin(48) source rotor has
exact square +1 IN THE ACTUAL SPIN GROUP. This uses 16 even parity. -/
theorem sourceSixteenColorRotor_square_one :
    sourceSixteenColorRotor * sourceSixteenColorRotor = 1 := by
  let xs : List RealSpinBlock :=
    (List.finRange 16).map
      (finProdFinEquiv : RealSpinBlock ≃ Fin 16).symm
  have hrep : sourceSixteenColorRotor =
      (xs.map sourceColorPlaneRotor).prod := by
    simp only [sourceSixteenColorRotor, sourceOrderedSixteenRotors,
      xs, List.map_map, Function.comp_def]
  have hlen : xs.length = 16 := by simp [xs]
  have hsq := sourceOrderedColorRotors_square xs
  rw [hlen] at hsq
  apply Subtype.ext
  change (sourceSixteenColorRotor : C) *
    (sourceSixteenColorRotor : C) = 1
  rw [hrep]
  change ((((xs.map sourceColorPlaneRotor).prod : spinGroup Q) : C) *
      (((xs.map sourceColorPlaneRotor).prod : spinGroup Q) : C)) = 1
  rw [hsq]
  norm_num

/-- The historical original SU2 quarter's GROUP SQUARE has an exact
identity Spin witness, derived from S1V49's *actual* quarter projection
and the concrete sixteen-rotor central parity result. This does NOT
assert that the SU2 quarter square itself equals the center -I. -/
theorem historicalQuarterSquare_coveredBySpinIdentity :
    FCP.BFSSS1V48.sourceSpin48CoversActualGauge
      ((FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
          (2 : Fin 3) FCP.BFSSSU2GaugeG4M.originalZQuarterTime) *
       (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
          (2 : Fin 3) FCP.BFSSSU2GaugeG4M.originalZQuarterTime))
      (1 : spinGroup Q) := by
  have h := FCP.BFSSS1V48.sourceSpin48CoversActualGauge_mul
    FCP.BFSSS1V49.historicalSourceQuarter_coversByActualSixteenRotor
    FCP.BFSSS1V49.historicalSourceQuarter_coversByActualSixteenRotor
  simpa only [sourceSixteenColorRotor_square_one] using h

#print axioms sourceOrthogonalSpinPair_square_neg_one
#print axioms sourceColorPlaneRotor_square_neg_one
#print axioms sourceOrderedColorRotors_square
#print axioms sourceSixteenColorRotor_square_one
#print axioms historicalQuarterSquare_coveredBySpinIdentity

end
end FCP.BFSSS1V50
