import SU2BFSSPhysicalDomainS1V52L9E5F20EOriginalNativeSpin48SixteenBlockLiftContinuityProbe
import Mathlib.Topology.Algebra.Group.Basic
import Mathlib.Topology.Algebra.Module.FiniteDimension

/-!
S1V52-L9E5F20F — the REAL original Clifford-subtype Spin(48)
is a topological group, including continuous inversion.

This is not a new manifold or covering-space construction.
The exact pinned Mathlib original `spinGroup source48Quadratic`
is a Submonoid of the true original Clifford algebra, and its
group inverse is literally Clifford conjugation/star.

Original real PBW finite-dimensionality (F20B), canonical
finite-coordinate norm (F20C), and Clifford multiplication
continuity (F20D) provide the finite-dimensional topological
vector algebra ingredients. Pinned Mathlib's original Clifford
reverse/involute are REAL-linear maps. Their composition equals
star and is continuous by linear-map continuity in finite
dimensions. Then source Spin48 inversion follows by subtype
continuity; the group structure and multiplication are inherited.

F20E already established continuity of the EXACT native source
SU(2)→Spin(48) sixteen-block hom in this same topology.
No manuscript-module comparison, covering identification,
unbounded Hamiltonian transport or mass-gap claim is inferred.
-/

set_option autoImplicit false
set_option maxHeartbeats 360000

namespace FCP.BFSSS1V52L9E5F20F
noncomputable section

open FCP.BFSSS1V0
open FCP.BFSSS1V52L9E5F20B
open FCP.BFSSS1V52L9E5F20C
open FCP.BFSSS1V52L9E5F20D

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- Clifford conjugation is continuous for the original 48-source
real Clifford algebra equipped with F20C's actual PBW norm. -/
theorem originalSourceClifford_star_continuous :
    Continuous (fun x : C => star x) := by
  letI : FiniteDimensional ℝ C := originalSourceClifford_finiteDimensional
  have hi : Continuous (fun x : C => CliffordAlgebra.involute x) :=
    (CliffordAlgebra.involute (Q := Q)).toLinearMap.continuous_of_finiteDimensional
  have hr : Continuous (fun x : C => CliffordAlgebra.reverse x) :=
    (CliffordAlgebra.reverse (Q := Q)).continuous_of_finiteDimensional
  simpa only [CliffordAlgebra.star_def] using hr.comp hi

/-- Inversion of the GENUINE original `spinGroup Q` is continuous in
its inherited Clifford PBW real-vector topology. -/
theorem originalSourceSpin48_inv_continuous :
    Continuous (fun x : spinGroup Q => x⁻¹) := by
  have hco : Continuous (fun x : spinGroup Q => (x : C)) :=
    continuous_subtype_val
  have hs : Continuous (fun x : spinGroup Q => star (x : C)) :=
    originalSourceClifford_star_continuous.comp hco
  have hspin : Continuous (fun x : spinGroup Q => (star x : spinGroup Q)) :=
    hs.subtype_mk _
  simpa only [spinGroup.star_eq_inv] using hspin

/-- Genuine original source Spin48 is a topological GROUP in the
actual inherited (Hausdorff) Clifford-subtype topology.
Not a bespoke, quotient or indiscrete topology. -/
noncomputable instance originalSourceSpin48IsTopologicalGroup :
    IsTopologicalGroup (spinGroup Q) where
  continuous_mul := (inferInstance : ContinuousMul (spinGroup Q)).continuous_mul
  continuous_inv := originalSourceSpin48_inv_continuous

#print axioms originalSourceClifford_star_continuous
#print axioms originalSourceSpin48_inv_continuous
#print axioms originalSourceSpin48IsTopologicalGroup

end
end FCP.BFSSS1V52L9E5F20F
