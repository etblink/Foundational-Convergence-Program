import SU2BFSSPhysicalDomainS1QOriginalClifford48GroupLawProbe

/-!
S1R — ACTUAL source BFSS SU(2) algebra automorphism action
on the independent normalized real Clifford(48) algebra.

S1P1's source map is an actual Clifford AlgHom; S1Q now proves
it has a strict two-sided inverse and correct SU(2) multiplication.
Package it into AlgEquiv without a bundled 48-dimensional
QuadraticMap.IsometryEquiv, and prove generator covariance and
the exact identity/composition laws.

This algebra automorphism is not an actual element of Spin(48),
nor the unconstructed independent manuscript complex Clifford
module, nor a physical Hamiltonian/spectral identification.
-/
set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSSU2PhysicalDomainS1R
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS1J
open FCP.BFSSSU2PhysicalDomainS1P0
open FCP.BFSSSU2PhysicalDomainS1P1
open FCP.BFSSSU2PhysicalDomainS1Q

/-- Actual original SU(2) action by automorphisms of the
independent normalized real Clifford(48) algebra. -/
noncomputable def source48CliffordAut (g : GaugeGroup 2) :
    CliffordAlgebra source48Quadratic ≃ₐ[ℝ]
      CliffordAlgebra source48Quadratic :=
  AlgEquiv.ofAlgHom
    (source48CliffordHom g)
    (source48CliffordHom (g⁻¹))
    (source48CliffordHom_inv_right g)
    (source48CliffordHom_inv_left g)

/-- The underlying automorphism really is the already qualified
source-defined Clifford algebra homomorphism. -/
theorem source48CliffordAut_apply (g : GaugeGroup 2)
    (x : CliffordAlgebra source48Quadratic) :
    source48CliffordAut g x = source48CliffordHom g x := rfl

/-- All 48 normalized real Clifford generators transform with
the actual source SO(48) matrix under the automorphism. -/
theorem source48CliffordAut_generator (g : GaugeGroup 2)
    (v : Source48Vector) :
    source48CliffordAut g (CliffordAlgebra.ι source48Quadratic v) =
      CliffordAlgebra.ι source48Quadratic
        ((sourceRealMajoranaMatrix g).mulVec v) := by
  rw [source48CliffordAut_apply, source48CliffordHom_generator]

/-- The identity source element acts as the identity automorphism. -/
theorem source48CliffordAut_one :
    source48CliffordAut (1 : GaugeGroup 2) =
      (AlgEquiv.refl : CliffordAlgebra source48Quadratic ≃ₐ[ℝ]
        CliffordAlgebra source48Quadratic) := by
  apply AlgEquiv.ext
  intro x
  change source48CliffordHom (1 : GaugeGroup 2) x = x
  rw [source48CliffordHom_one]
  rfl

/-- Exact source SU(2) group composition. Note the trans order:
f.trans k means k ∘ f, so g*h acts by g after h. -/
theorem source48CliffordAut_mul (g h : GaugeGroup 2) :
    source48CliffordAut (g*h) =
      (source48CliffordAut h).trans (source48CliffordAut g) := by
  apply AlgEquiv.ext
  intro x
  change source48CliffordHom (g*h) x =
    source48CliffordHom g (source48CliffordHom h x)
  rw [source48CliffordHom_mul]
  rfl

#print axioms source48CliffordAut
#print axioms source48CliffordAut_apply
#print axioms source48CliffordAut_generator
#print axioms source48CliffordAut_one
#print axioms source48CliffordAut_mul

end
end FCP.BFSSSU2PhysicalDomainS1R
