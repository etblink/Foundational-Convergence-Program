import SU2BFSSPhysicalDomainS1V52L9E5F21AOriginalSpin48SourceVectorActionJointContinuityProbe
import SU2BFSSPhysicalDomainS1SSourceSpin48TwoVectorRotorProbe

/-!
BFSS K1A — source-exact preliminary kernel interface.

A Spin(48) element acts identically on EVERY original source 48-real
vector iff its ACTUAL Clifford-algebra representative commutes with
every original degree-one generator. No independent orthogonal
representation, surrogate basis, or covering-space theorem is assumed.

The genuine S1S source Spin pair u * (-u) gives the negative real
scalar element. The two-sign kernel classification STILL requires the
open even-PBW commutant-is-scalar theorem; this file does NOT assert
the full kernel, surjectivity, covering, Spin(9) lift, or BFSS spectrum.

STAGED until its own strict gate checks the exact source, accepted
binary ancestry, Lean kernel output and permitted axiom dependencies.
-/

set_option autoImplicit false
set_option maxHeartbeats 300000

namespace FCP.BFSSS1V52K1A
noncomputable section

open FCP.BFSSS1V0

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- Triviality of the ACTUAL original Clifford Spin48 vector action
is equivalent to commuting with EVERY true original source generator. -/
theorem originalSourceSpin48_trivialAction_iff_generator_commutes
    (s : spinGroup Q) :
    (∀ v : Source48Vector,
      FCP.BFSSS1V31.sourceSpin48VectorAction s v = v) ↔
    (∀ v : Source48Vector,
      (s : C) * CliffordAlgebra.ι Q v =
        CliffordAlgebra.ι Q v * (s : C)) := by
  constructor
  · intro h v
    have hc :
        CliffordAlgebra.ι Q v =
          (s : C) * CliffordAlgebra.ι Q v * star (s : C) := by
      calc
        CliffordAlgebra.ι Q v =
          CliffordAlgebra.ι Q
            (FCP.BFSSS1V31.sourceSpin48VectorAction s v) := by rw [h v]
        _ = (s : C) * CliffordAlgebra.ι Q v * star (s : C) := by
          simpa only [ConjAct.units_smul_def,
            ConjAct.ofConjAct_toConjAct] using
            FCP.BFSSS1V31.sourceSpin48VectorAction_clifford_generator s v
    have hc' := congrArg (fun x : C => x * (s : C)) hc
    simpa only [mul_assoc, spinGroup.coe_star_mul_self, mul_one] using hc'.symm
  · intro h v
    apply FCP.BFSSS1V30.source48_cliffordGenerator_injective
    rw [FCP.BFSSS1V31.sourceSpin48VectorAction_clifford_generator]
    rw [ConjAct.units_smul_def, ConjAct.ofConjAct_toConjAct]
    change (s : C) * CliffordAlgebra.ι Q v * star (s : C) =
      CliffordAlgebra.ι Q v
    rw [h v, mul_assoc, spinGroup.coe_mul_star_self, mul_one]

/-- A genuine original Clifford Spin48 representative of scalar -1,
built from an actual source pair of opposite unit vectors. -/
noncomputable def originalSourceSpin48_negativeScalarWitness
    (u : Source48Vector) (hu : Q u = 1) (hneg : Q (-u) = 1) :
    spinGroup Q :=
  FCP.BFSSSU2PhysicalDomainS1S.sourceSpinPair u (-u) hu hneg

/-- The above element is literally -1 in the same original
CliffordAlgebra source48Quadratic, not merely equal up to projection. -/
theorem originalSourceSpin48_negativeScalarWitness_coe
    (u : Source48Vector) (hu : Q u = 1) (hneg : Q (-u) = 1) :
    (originalSourceSpin48_negativeScalarWitness u hu hneg : C) = -1 := by
  change
    (FCP.BFSSSU2PhysicalDomainS1S.sourceSpinPair u (-u) hu hneg : C) = -1
  rw [FCP.BFSSSU2PhysicalDomainS1S.sourceSpinPair_coe]
  rw [map_neg, mul_neg, CliffordAlgebra.ι_sq_scalar, hu, map_one]

/-- The genuine negative scalar Spin element acts trivially on all
original real Majorana labels. This proves inclusion of that sign
in the action kernel, not the reverse kernel inclusion. -/
theorem originalSourceSpin48_negativeScalarWitness_trivialAction
    (u : Source48Vector) (hu : Q u = 1) (hneg : Q (-u) = 1) :
    ∀ v : Source48Vector,
      FCP.BFSSS1V31.sourceSpin48VectorAction
        (originalSourceSpin48_negativeScalarWitness u hu hneg) v = v := by
  apply (originalSourceSpin48_trivialAction_iff_generator_commutes _).2
  intro v
  rw [originalSourceSpin48_negativeScalarWitness_coe]
  simp only [neg_mul, mul_neg, one_mul, mul_one]

#print axioms originalSourceSpin48_trivialAction_iff_generator_commutes
#print axioms originalSourceSpin48_negativeScalarWitness
#print axioms originalSourceSpin48_negativeScalarWitness_coe
#print axioms originalSourceSpin48_negativeScalarWitness_trivialAction

end
end FCP.BFSSS1V52K1A
