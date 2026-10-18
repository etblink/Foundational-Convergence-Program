import SU2BFSSPhysicalDomainS1P1SourceCliffordUniversalHomProbe

/-!
S1Q: literal original source SU(2) group law for the actual
Clifford(48) algebra homomorphism from S1P1.

Every conclusion is proved by CliffordAlgebra.hom_ext on the
48 real generators and the SOURCE-exact S1J matrix multiplication.
This does not assume any Spin(48) implementation and does not
claim an independent manuscript module or Hamiltonian equivalence.
-/

set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSSU2PhysicalDomainS1Q
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS1J
open FCP.BFSSSU2PhysicalDomainS1P0
open FCP.BFSSSU2PhysicalDomainS1P1

/-- The original source Clifford hom at group identity is literally
the identity on the independent real Clifford algebra. -/
theorem source48CliffordHom_one :
    source48CliffordHom (1 : GaugeGroup 2) =
      AlgHom.id ℝ (CliffordAlgebra source48Quadratic) := by
  apply CliffordAlgebra.hom_ext
  apply LinearMap.ext
  intro v
  change source48CliffordHom (1 : GaugeGroup 2)
      (CliffordAlgebra.ι source48Quadratic v) =
    CliffordAlgebra.ι source48Quadratic v
  rw [source48CliffordHom_generator, sourceRealMajoranaMatrix_one,
    Matrix.one_mulVec]

/-- Exact SU(2) multiplication acts by composition of the
SOURCE-defined universal Clifford homomorphisms; no scalar
implementer ambiguity or unproved spin projection is used. -/
theorem source48CliffordHom_mul (g h : GaugeGroup 2) :
    source48CliffordHom (g * h) =
      (source48CliffordHom g).comp (source48CliffordHom h) := by
  apply CliffordAlgebra.hom_ext
  apply LinearMap.ext
  intro v
  change source48CliffordHom (g*h)
      (CliffordAlgebra.ι source48Quadratic v) =
    source48CliffordHom g
      (source48CliffordHom h (CliffordAlgebra.ι source48Quadratic v))
  calc
    source48CliffordHom (g*h)
        (CliffordAlgebra.ι source48Quadratic v) =
      CliffordAlgebra.ι source48Quadratic
        ((sourceRealMajoranaMatrix (g*h)).mulVec v) :=
          source48CliffordHom_generator (g*h) v
    _ = CliffordAlgebra.ι source48Quadratic
          ((sourceRealMajoranaMatrix g).mulVec
            ((sourceRealMajoranaMatrix h).mulVec v)) := by
          rw [sourceRealMajoranaMatrix_mul, ← Matrix.mulVec_mulVec]
    _ = source48CliffordHom g
          (CliffordAlgebra.ι source48Quadratic
            ((sourceRealMajoranaMatrix h).mulVec v)) :=
          (source48CliffordHom_generator g
            ((sourceRealMajoranaMatrix h).mulVec v)).symm
    _ = source48CliffordHom g
          (source48CliffordHom h
            (CliffordAlgebra.ι source48Quadratic v)) :=
          congrArg (source48CliffordHom g)
            (source48CliffordHom_generator h v).symm

/-- Left inverse in endomorphism algebra, from the genuine
original SU(2) inverse — not a chosen Clifford module implementer. -/
theorem source48CliffordHom_inv_left (g : GaugeGroup 2) :
    (source48CliffordHom (g⁻¹)).comp (source48CliffordHom g) =
      AlgHom.id ℝ (CliffordAlgebra source48Quadratic) := by
  rw [← source48CliffordHom_mul, inv_mul_cancel, source48CliffordHom_one]

/-- Right inverse in endomorphism algebra. -/
theorem source48CliffordHom_inv_right (g : GaugeGroup 2) :
    (source48CliffordHom g).comp (source48CliffordHom (g⁻¹)) =
      AlgHom.id ℝ (CliffordAlgebra source48Quadratic) := by
  rw [← source48CliffordHom_mul, mul_inv_cancel, source48CliffordHom_one]

#print axioms source48CliffordHom_one
#print axioms source48CliffordHom_mul
#print axioms source48CliffordHom_inv_left
#print axioms source48CliffordHom_inv_right

end
end FCP.BFSSSU2PhysicalDomainS1Q
