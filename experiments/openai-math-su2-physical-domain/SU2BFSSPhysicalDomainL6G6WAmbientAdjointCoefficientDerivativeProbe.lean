import SU2BFSSPhysicalDomainL6G6VOriginalPlusIConjugationDerivativeProbe

/-!
L6G6W — original finite-dimensional ambient adjoint coefficient derivative.

The source +i matrix-exponential is already proved unitary in L6G6V.
Here the original real trace coefficient is differentiated *without*
assuming the remaining determinant-one condition. The output is the
exact source structure constant with row B/output and column A/input.

The ambient derivative is NOT automatically a derivative of
AlgebraData.adjointCoefficient : GaugeGroup 2 → ... until the
special-unitary subtype curve is constructed and qualified.
-/

set_option autoImplicit false

namespace FCP.BFSSSU2PhysicalDomainL6G6W
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainL6G6V

/-- A real continuous linear functional extracting the exact
source trace coefficient, preserving the original color basis. -/
private noncomputable def sourceTraceCoefficientCLM (B : ColorIndex 2) :
    ColorMatrix 2 →L[ℝ] ℝ :=
  (LinearMap.toContinuousLinearMap
    ({ toFun := fun X : ColorMatrix 2 =>
        (Matrix.trace (pairedAlgebraData.color B * X)).re
       map_add' := by
         intro X Y
         simp only [Matrix.mul_add, Matrix.trace_add, Complex.add_re]
       map_smul' := by
         intro r X
         change (Matrix.trace (pairedAlgebraData.color B * (r • X))).re =
           r * (Matrix.trace (pairedAlgebraData.color B * X)).re
         rw [Matrix.mul_smul, Matrix.trace_smul]
         simpa only [RCLike.smul_re]

     } : ColorMatrix 2 →ₗ[ℝ] ℝ))

/-- Positive-i exponent conjugate transpose is exactly the
negative-exponent factor, not an assumed group inverse. -/
theorem sourcePlusIColorMatrix_conjTranspose
    (c : ColorIndex 2) (t : ℝ) :
    (sourcePlusIColorMatrix c t)ᴴ =
      NormedSpace.exp
        (t • (-((Complex.I : ℂ) • pairedAlgebraData.color c))) := by
  have h := OAI.BFSSGaugeFlow.exp_conj_reverse
    (-pairedAlgebraData.color c)
    (pairedAlgebraData.color_hermitian c).neg t
  simpa only [sourcePlusIColorMatrix, smul_neg,
    neg_smul, neg_neg] using h

/-- The ambient real trace coefficient has a source-exact derivative.
This coefficient is the same expression as adjointCoefficient after
the +i curve has been proved to lie in GaugeGroup 2. -/
theorem sourcePlusIAmbientAdjointCoefficient_deriv
    (c B A : ColorIndex 2) :
    HasDerivAt
      (fun t : ℝ =>
        (Matrix.trace
          (pairedAlgebraData.color B *
            (sourcePlusIColorMatrix c t * pairedAlgebraData.color A *
              (sourcePlusIColorMatrix c t)ᴴ))).re)
      (pairedAlgebraData.structureConstant B A c) 0 := by
  -- Pin the real basepoint and the derivative's codomain before
  -- composing: an untyped numeral left the field as ℕ in gate #144;
  -- omitting the basepoint misapplied comp_hasDerivAt in gate #145.
  have h :
      HasDerivAt
        ((sourceTraceCoefficientCLM B) ∘
          (fun t : ℝ =>
            sourcePlusIColorMatrix c t * pairedAlgebraData.color A *
              NormedSpace.exp
                (t • (-((Complex.I : ℂ) • pairedAlgebraData.color c)))))
        ((sourceTraceCoefficientCLM B)
          ((Complex.I : ℂ) •
            (pairedAlgebraData.color c * pairedAlgebraData.color A -
              pairedAlgebraData.color A * pairedAlgebraData.color c))) (0 : ℝ) :=
    ((sourceTraceCoefficientCLM B).hasFDerivAt).comp_hasDerivAt
      (0 : ℝ) (sourcePlusIConjugation_deriv c A)
  change HasDerivAt
    (fun t : ℝ =>
      (Matrix.trace
        (pairedAlgebraData.color B *
          (sourcePlusIColorMatrix c t * pairedAlgebraData.color A *
            NormedSpace.exp
              (t • (-((Complex.I : ℂ) • pairedAlgebraData.color c)))))).re)
    ((Matrix.trace
      (pairedAlgebraData.color B *
        ((Complex.I : ℂ) •
          (pairedAlgebraData.color c * pairedAlgebraData.color A -
            pairedAlgebraData.color A * pairedAlgebraData.color c)))).re) 0 at h
  have hcoeff :
      (Matrix.trace
        (pairedAlgebraData.color B *
          ((Complex.I : ℂ) •
            (pairedAlgebraData.color c * pairedAlgebraData.color A -
              pairedAlgebraData.color A * pairedAlgebraData.color c)))).re =
      pairedAlgebraData.structureConstant B A c :=
    FCP.BFSSSU2PhysicalDomainL6G6U.pairedSourceAdjointColorCandidateTangent_coeff c B A
  rw [hcoeff] at h
  simpa only [sourcePlusIColorMatrix_conjTranspose] using h

#print axioms sourcePlusIColorMatrix_conjTranspose
#print axioms sourcePlusIAmbientAdjointCoefficient_deriv
#check @sourcePlusIAmbientAdjointCoefficient_deriv

end
end FCP.BFSSSU2PhysicalDomainL6G6W
