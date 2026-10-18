import SU2BFSSPhysicalDomainS1P0NormalizedSourceQuadraticActionProbe
import Mathlib.LinearAlgebra.CliffordAlgebra.Basic

/-!
S1P1 — ACTUAL source SU2 action on independent normalized real
Clifford48 algebra, via the universal property DIRECTLY.

Unlike red S1O attempts, this path does NOT ask Lean to synthesize
a large bundled QuadraticMap.IsometryEquiv. The exact source map's
quadratic preservation is a named theorem from S1P0. The universal
CliffordAlgebra.lift creates the corresponding algebra homomorphism
without assuming a Spin48 implementation.

Source Q=Σv² on 48 Majorana labels is the original manuscript's
normalized (√2 theta) Clifford relation. The algebra homomorphism
has literal source 48×48 generator covariance.

This is NOT yet proved to be a group homomorphism into algebra
AUTOMORPHISMS, a Spin48 lift, a complex irreducible module or a
Hamiltonian/spectral identification. No proof holes/axioms allowed.
-/

set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSSU2PhysicalDomainS1P1
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS1J
open FCP.BFSSSU2PhysicalDomainS1P0

/-- Algebraic Clifford representative of the actual source SO48
generator action, constructed from the original quadratic proof.
This is an AlgHom, not a chosen Spin element. -/
noncomputable def source48CliffordHom (g : GaugeGroup 2) :
    CliffordAlgebra source48Quadratic →ₐ[ℝ]
      CliffordAlgebra source48Quadratic := by
  let f : Source48Vector →ₗ[ℝ] CliffordAlgebra source48Quadratic :=
    (CliffordAlgebra.ι source48Quadratic).comp
      (source48LinearEquiv g).toLinearMap
  have hf (v : Source48Vector) :
      f v * f v =
        algebraMap ℝ (CliffordAlgebra source48Quadratic)
          (source48Quadratic v) := by
    change (CliffordAlgebra.ι source48Quadratic (source48LinearEquiv g v)) *
      (CliffordAlgebra.ι source48Quadratic (source48LinearEquiv g v)) =
      algebraMap ℝ (CliffordAlgebra source48Quadratic) (source48Quadratic v)
    rw [CliffordAlgebra.ι_sq_scalar]
    rw [source48LinearEquiv_preserves_quadratic]
  exact CliffordAlgebra.lift source48Quadratic ⟨f, hf⟩

/-- The constructed universal real Clifford map acts on the literal
48 indexed generators by the SAME accepted source SO48 matrix. -/
theorem source48CliffordHom_generator
    (g : GaugeGroup 2) (v : Source48Vector) :
    source48CliffordHom g (CliffordAlgebra.ι source48Quadratic v) =
      CliffordAlgebra.ι source48Quadratic
        ((sourceRealMajoranaMatrix g).mulVec v) := by
  unfold source48CliffordHom
  rw [CliffordAlgebra.lift_ι_apply]
  change CliffordAlgebra.ι source48Quadratic
      (source48LinearEquiv g v) =
    CliffordAlgebra.ι source48Quadratic
      ((sourceRealMajoranaMatrix g).mulVec v)
  rw [source48LinearEquiv_apply]

#print axioms source48CliffordHom
#print axioms source48CliffordHom_generator

end
end FCP.BFSSSU2PhysicalDomainS1P1
