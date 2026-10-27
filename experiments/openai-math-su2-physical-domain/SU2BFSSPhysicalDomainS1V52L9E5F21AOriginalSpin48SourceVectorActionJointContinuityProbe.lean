import SU2BFSSPhysicalDomainS1V52L9E5F20FOriginalSpin48TopologicalGroupInverseContinuityProbe
import SU2BFSSPhysicalDomainS1V31CanonicalAllSpin48RealVectorActionProbe
import Mathlib.Topology.Algebra.Module.FiniteDimension

/-!
F21A — original Clifford-subtype Spin48 joint 48-real source vector action
continuity. Genuine S1V30 generator, F20C PBW topology and S1V31
action; not a Spin9 lift, SO48 double-cover, or BFSS spectral theorem.
-/

set_option autoImplicit false
set_option maxHeartbeats 360000

namespace FCP.BFSSS1V52L9E5F21A
noncomputable section

open FCP.BFSSS1V0
open FCP.BFSSS1V31
open FCP.BFSSS1V52L9E5F20B
open FCP.BFSSS1V52L9E5F20C
open FCP.BFSSS1V52L9E5F20D
open FCP.BFSSS1V52L9E5F20F

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- Genuine original 48-real source Clifford generator embeds as a
closed subspace in the original normed PBW Clifford vector space. -/
theorem originalSourceCliffordGenerator_closedEmbedding :
    Topology.IsClosedEmbedding (CliffordAlgebra.ι Q) := by
  apply LinearMap.isClosedEmbedding_of_injective
  exact LinearMap.ker_eq_bot.mpr
    FCP.BFSSS1V30.source48_cliffordGenerator_injective

/-- Genuine Spin48 source vector action is jointly continuous.
The source group is F20F's actual original Clifford-subtype Spin48. -/
theorem originalSourceSpin48VectorAction_joint_continuous :
    Continuous (fun p : spinGroup Q × Source48Vector =>
      sourceSpin48VectorAction p.1 p.2) := by
  have hs : Continuous (fun p : spinGroup Q × Source48Vector => (p.1 : C)) :=
    continuous_subtype_val.comp continuous_fst
  have hv : Continuous (fun p : spinGroup Q × Source48Vector =>
      CliffordAlgebra.ι Q p.2) :=
    (CliffordAlgebra.ι Q).continuous_of_finiteDimensional.comp continuous_snd
  have hmul : Continuous (fun p : spinGroup Q × Source48Vector =>
      ((p.1 : C) * CliffordAlgebra.ι Q p.2) * star (p.1 : C)) :=
    (hs.mul hv).mul (originalSourceClifford_star_continuous.comp hs)
  have heq : (fun p : spinGroup Q × Source48Vector =>
        CliffordAlgebra.ι Q (sourceSpin48VectorAction p.1 p.2)) =
      (fun p : spinGroup Q × Source48Vector =>
        ((p.1 : C) * CliffordAlgebra.ι Q p.2) * star (p.1 : C)) := by
    funext p
    rw [sourceSpin48VectorAction_clifford_generator,
        ConjAct.units_smul_def]
    rfl
  exact originalSourceCliffordGenerator_closedEmbedding.isEmbedding.continuous_iff.mpr
    (heq ▸ hmul)

#print axioms originalSourceCliffordGenerator_closedEmbedding
#print axioms originalSourceSpin48VectorAction_joint_continuous

end
end FCP.BFSSS1V52L9E5F21A
