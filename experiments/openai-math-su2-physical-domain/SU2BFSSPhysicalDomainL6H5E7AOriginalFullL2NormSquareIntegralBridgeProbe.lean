import SU2BFSSPhysicalDomainL6H5E6COriginalGaussSquaredErrorIntegralLimitProbe
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

/-!
L6H5E7A — exact ORIGINAL BFSS FullL2 2 Hilbert norm-square
is the Bochner integral of its norm-square pointwise Fock fiber.

This is a mathlib L2 inner-product identity, specialized only to
the ACTUAL original FullL2 2, Boson 2 volume and Fermion 2 fiber.
No source Fock-operator expansion, no changed SU2 action or sign.

The source-exact SU2 difference quotient has an independently
qualified squared-error integral limit (H5E6C). Identifying its
L2 representative with the literal source integrand is the
next separate obligation; not silently assumed here.

No generator-domain or BFSS spectral claim.
-/

set_option autoImplicit false
set_option maxHeartbeats 450000
set_option synthInstance.maxHeartbeats 170000

namespace FCP.BFSSSU2PhysicalDomainL6H5E7A
noncomputable section

open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open MeasureTheory

/-- Norm square in the original FullL2 2 Hilbert space is exactly
the integral over the ORIGINAL bosonic volume of its genuine
Fock-fiber pointwise norm square. -/
theorem actualOriginalFullL2_norm_sq_eq_integral
    (w : FullL2 2) :
    ‖w‖ ^ 2 =
      ∫ x : Boson 2, ‖w x‖ ^ 2 ∂(volume : Measure (Boson 2)) := by
  calc
    ‖w‖ ^ 2 = Complex.re (inner ℂ w w) :=
      norm_sq_eq_re_inner w
    _ = Complex.re (∫ x : Boson 2, inner ℂ (w x) (w x)
      ∂(volume : Measure (Boson 2))) := by
        rw [L2.inner_def]
    _ = ∫ x : Boson 2, Complex.re (inner ℂ (w x) (w x))
      ∂(volume : Measure (Boson 2)) := by
        exact (integral_re (L2.integrable_inner (𝕜 := ℂ) w w)).symm
    _ = ∫ x : Boson 2, ‖w x‖ ^ 2
      ∂(volume : Measure (Boson 2)) := by
        congr 1
        funext x
        exact (norm_sq_eq_re_inner (w x)).symm

#print axioms actualOriginalFullL2_norm_sq_eq_integral
#check @actualOriginalFullL2_norm_sq_eq_integral

end
end FCP.BFSSSU2PhysicalDomainL6H5E7A
