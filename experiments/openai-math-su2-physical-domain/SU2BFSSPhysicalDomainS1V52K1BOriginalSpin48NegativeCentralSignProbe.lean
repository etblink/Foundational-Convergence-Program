import SU2BFSSPhysicalDomainS1V52K1AOriginalSpin48KernelCommutantProbe
import SU2BFSSPhysicalDomainS1SSourceSpin48TwoVectorRotorProbe

/-!
BFSS K1B — source-exact negative central Spin witness.

STAGED, UNQUALIFIED. The original S1S rotor .olean is absent from
the accepted F21A cache (see K1A Gate #2 first causal red). Recover
the exact qualified S1S ancestry independently before compiling.
Do not infer source 2-sign kernel classification from this sign witness.
-/

set_option autoImplicit false
set_option maxHeartbeats 300000

namespace FCP.BFSSS1V52K1B
noncomputable section

open FCP.BFSSS1V0

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

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
  apply (FCP.BFSSS1V52K1A.originalSourceSpin48_trivialAction_iff_generator_commutes _).2
  intro v
  rw [originalSourceSpin48_negativeScalarWitness_coe]
  simp only [neg_mul, mul_neg, one_mul, mul_one]


#print axioms originalSourceSpin48_negativeScalarWitness
#print axioms originalSourceSpin48_negativeScalarWitness_coe
#print axioms originalSourceSpin48_negativeScalarWitness_trivialAction

end
end FCP.BFSSS1V52K1B
