import SU2BFSSPhysicalDomainS4B13OriginalGammaTwoNineDirectionProbe
import OAI.MathematicalPhysics.BFSS.ColorLie

/-!
S4B14: exact signed symmetries of genuine original gammaTwo and color
structureConstant tensors. These are required before reindexing the
ordered source Clifford bilinear to the manuscript B(x) sign.
No physical B(x), Spin9 or spectral equality is asserted.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B14
noncomputable section
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData

/-- Original gammaTwo is antisymmetric in its two spatial arguments.
The result is for the actual BFSS AlgebraData gamma matrix, not a proxy. -/
theorem originalSourceGammaTwo_skew
    {N : ℕ} (M : AlgebraData N) (i j : SpaceIndex) :
    M.gammaTwo i j = -M.gammaTwo j i := by
  unfold AlgebraData.gammaTwo
  module

/-- The genuinely original color structure constants are skew in their
last two indices, respecting the source bracket=-i[x,y] convention. -/
theorem originalSourceStructureConstant_last_two_skew
    {N : ℕ} (M : AlgebraData N) (A B C : ColorIndex N) :
    M.structureConstant A B C = -M.structureConstant A C B := by
  unfold AlgebraData.structureConstant
  rw [AlgebraData.bracket_neg_swap (M.color B) (M.color C)]
  simp only [mul_neg, Matrix.trace_neg, Complex.neg_re]

#print axioms originalSourceGammaTwo_skew
#print axioms originalSourceStructureConstant_last_two_skew

end
end FCP.BFSSSU2PhysicalDomainS4B14
