import SU2BFSSPhysicalDomainS1V52L9E5F20COriginalSourceCliffordCoordinateNormQuaternionContinuityProbe
import Mathlib.Topology.Algebra.Module.FiniteDimensionBilinear
import Mathlib.Analysis.Normed.Operator.BoundedLinearMaps
import Mathlib.Algebra.Algebra.Bilinear

/-!
S1V52-L9E5F20D — multiplication continuity of the ACTUAL 48-source
real Clifford algebra, with its genuine F20C PBW coordinate norm.

The mathematics is finite-dimensional bilinear continuity over ℝ,
not expansion over the enormous 2^48 original Clifford basis.
The original Clifford/Exterior equiv remains merely REAL-LINEAR,
not multiplicative. We use the genuine Clifford product itself
through pinned Mathlib LinearMap.mul ℝ C.

F20C already qualified continuity of each native Spin48 block into
the Clifford underlying real topological vector space. This candidate
proves the missing algebraic multiplication continuity prerequisite;
the actual Spin48 subtype/group lift continuity remains separate.
-/

set_option autoImplicit false
set_option maxHeartbeats 350000

namespace FCP.BFSSS1V52L9E5F20D
noncomputable section

open FCP.BFSSS1V0
open FCP.BFSSS1V52L9E5F20B
open FCP.BFSSS1V52L9E5F20C

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- Joint continuity of REAL genuine original Clifford multiplication
in the PBW-coordinate finite-dimensional topology. -/
theorem originalSourceClifford_mul_continuous :
    Continuous (fun p : C × C => p.1 * p.2) := by
  letI : FiniteDimensional ℝ C := originalSourceClifford_finiteDimensional
  let bilinear : C →L[ℝ] C →L[ℝ] C :=
    (LinearMap.mul ℝ C).toContinuousBilinearMap
  have h : Continuous (fun p : C × C => bilinear p.1 p.2) :=
    bilinear.continuous₂
  simpa only [bilinear, LinearMap.toContinuousBilinearMap_apply,
    LinearMap.mul_apply'] using h

/-- Native original Clifford continuous multiplication instance
derived from the accepted source PBW norm and bilinear lemma. -/
noncomputable instance originalSourceCliffordContinuousMul : ContinuousMul C :=
  ⟨originalSourceClifford_mul_continuous⟩

#print axioms originalSourceClifford_mul_continuous
#print axioms originalSourceCliffordContinuousMul

end
end FCP.BFSSS1V52L9E5F20D
