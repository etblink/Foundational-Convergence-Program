import SU2BFSSPhysicalDomainS3L5K2R1BOriginalWeightedFermionResponseProbe

/-!
# R1C — original weighted cubic gammaTwo × transpose spinor contraction

CI qualification #1: mathematical source unchanged.

Kinetic J3/J4 and cubic R1A/R1B qualified the genuine source
fermion-action response through a 16-index sum. This new coefficient
theorem relates EXACTLY that sum to the original gammaTwo * J.transpose
matrix entry, retaining the source one-half structure constant.

The proof is deliberately isolated in real matrix algebra before
casting to complex scalar coefficients. It neither unfolds any Fock
operator nor uses an assumed source-response equality.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R1C
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L5K3

/-- Source spin-generator transpose orientation is genuine:
(G * J.transpose)_{αβ} = sum_γ G_{αγ} J_{βγ}.
Matrix multiplication itself is NOT commutative. -/
theorem realMatrix_weightedTransposeProduct_entry
    (w : ℝ) (G J : GammaMatrix) (α β : SpinIndex) :
    (w • (G * J.transpose)) α β =
      ∑ γ : SpinIndex, (w * G α γ) * J β γ := by
  simp only [Matrix.smul_apply, Matrix.mul_apply, Matrix.transpose_apply,
    smul_eq_mul]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro γ _
  ring

/-- Cast precisely this original finite spinor contraction to the
complex scalar module acting on physical source endomorphisms. -/
theorem complexMatrix_weightedTransposeProduct_entry
    (w : ℝ) (G J : GammaMatrix) (α β : SpinIndex) :
    (((w • (G * J.transpose)) α β : ℝ) : ℂ) =
      ∑ γ : SpinIndex,
        (((w * G α γ : ℝ) : ℂ)) * ((J β γ : ℝ) : ℂ) := by
  exact_mod_cast realMatrix_weightedTransposeProduct_entry w G J α β

/-- Exact physical cubic scalar response with the source-defined
original gammaTwo, pairedSpinPlane and SU(2) structure coefficient.
No added assumptions or replacement matrices. -/
theorem pairedOriginalCubicGammaTwoSpinorCoefficient_reindexed
    (i j k l : SpaceIndex) (α β : SpinIndex)
    (A B C : ColorIndex 2) :
    (∑ γ : SpinIndex,
      (((originalCubicStructureWeight A B C *
          pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)) *
        ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ)) =
      (((originalCubicStructureWeight A B C •
        (pairedAlgebraData.gammaTwo k l *
          (pairedPlaneSpinGenerator i j).transpose)) α β : ℝ) : ℂ) := by
  exact (complexMatrix_weightedTransposeProduct_entry
    (originalCubicStructureWeight A B C)
    (pairedAlgebraData.gammaTwo k l) (pairedPlaneSpinGenerator i j) α β).symm

#print axioms realMatrix_weightedTransposeProduct_entry
#print axioms complexMatrix_weightedTransposeProduct_entry
#print axioms pairedOriginalCubicGammaTwoSpinorCoefficient_reindexed
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R1C
