import SU2BFSSPhysicalDomainL6G6COriginalFermionResponseKroneckerSelectorProbe

/-!
L6G6D — actual original BFSS SU(2) quadratic source coefficient
is symmetric in its TWO bosonic position labels. The structure
constant is antisymmetric and the source gamma bivector is also
antisymmetric, so their PRODUCT is symmetric.

Consequence: the two Kronecker derivative legs proven in G6C
are equal and the exact point-response coefficient is TWICE the
first-leg sum. This preserves the source -i and 1/2 weights.
No original theta product is reordered; the Fierz contraction
and full fermionic Gauss identity remain subsequent obligations.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainL6G6D
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainL6G3
open FCP.BFSSSU2PhysicalDomainL6G4A
open FCP.BFSSSU2PhysicalDomainL6G4B
open FCP.BFSSSU2PhysicalDomainL6G6C

/-- Skew exchange of the ORIGINAL source gamma bivector's
spatial labels. It is an exact definitional consequence of
its commutator definition, not an extra Clifford premise. -/
theorem sourceGammaTwo_swapOriginal {N : ℕ}
    (M : AlgebraData N) (i j : SpaceIndex) :
    M.gammaTwo j i = -M.gammaTwo i j := by
  change (1 / 2 : ℝ) • (M.gamma j * M.gamma i - M.gamma i * M.gamma j) =
    -((1 / 2 : ℝ) • (M.gamma i * M.gamma j - M.gamma j * M.gamma i))
  rw [← smul_neg, neg_sub]

/-- The ORIGINAL normalized-Pauli structure constants change
sign when the final two color labels are exchanged. -/
theorem sourceSU2StructureConstant_swapLast
    (M : AlgebraData 2)
    (hcolor : ∀ a : ColorIndex 2,
      M.color a = FCP.BFSSSU2.normalizedPauli a)
    (a b c : ColorIndex 2) :
    M.structureConstant a c b = -M.structureConstant a b c := by
  simp only [FCP.BFSSSU2.algebraData_structureConstant_of_pauli_color M hcolor]
  fin_cases a <;> fin_cases b <;> fin_cases c <;>
    simp [FCP.BFSSSU2.epsilon3]

/-- Swapping the FIRST two color labels is equally essential for
the relative sign in the eventual two-fermion coefficient. -/
theorem sourceSU2StructureConstant_swapFirst
    (M : AlgebraData 2)
    (hcolor : ∀ a : ColorIndex 2,
      M.color a = FCP.BFSSSU2.normalizedPauli a)
    (a b c : ColorIndex 2) :
    M.structureConstant b a c = -M.structureConstant a b c := by
  simp only [FCP.BFSSSU2.algebraData_structureConstant_of_pauli_color M hcolor]
  fin_cases a <;> fin_cases b <;> fin_cases c <;>
    simp [FCP.BFSSSU2.epsilon3]

/-- Each original ordered quadratic weight is symmetric in its
two BOSONIC labels, while its spinor and fermionic-color labels
are unchanged. This preserves the full source 1/2 normalization. -/
theorem sourceQuadraticWeight_pairSymmetric
    (M : AlgebraData 2)
    (hcolor : ∀ a : ColorIndex 2,
      M.color a = FCP.BFSSSU2.normalizedPauli a)
    (α : SpinIndex) (p : FermionLabel 2)
    (v t : BosonLabel 2) :
    sourceQuadraticWeight M α p t v =
      sourceQuadraticWeight M α p v t := by
  have hf := sourceSU2StructureConstant_swapLast M hcolor p.2 v.2 t.2
  have hg := congrArg
    (fun G : GammaMatrix => G α p.1) (sourceGammaTwo_swapOriginal M v.1 t.1)
  simp only [Matrix.neg_apply] at hg
  unfold sourceQuadraticWeight
  rw [hf, hg]
  congr 1
  ring

/-- Literal first leg of the source-selected commutator response;
this is not a surrogate coefficient, only an abbreviation for the
already accepted G6C polynomial's first finite sum. -/
def sourceCoefficientResponseFirstLeg
    (M : AlgebraData 2) (α β : SpinIndex)
    (p q : FermionLabel 2) (x : Boson 2) : ℂ :=
  ∑ u : BosonLabel 2, ∑ t : BosonLabel 2,
    (sourceKineticWeight M α p u * sourceQuadraticWeight M β q u t -
      sourceKineticWeight M β q u * sourceQuadraticWeight M α p u t) *
        ((x t : ℝ) : ℂ)

/-- The TWO original position-derivative legs coincide after
source weight symmetry: an exact factor of 2, no silently discarded
Kronecker term or operator interchange. -/
theorem sourceCoefficientResponseSelected_eq_twice_first
    (M : AlgebraData 2)
    (hcolor : ∀ a : ColorIndex 2,
      M.color a = FCP.BFSSSU2.normalizedPauli a)
    (α β : SpinIndex) (p q : FermionLabel 2)
    (x : Boson 2) :
    sourceCoefficientResponseSelected M α β p q x =
      (2 : ℂ) * sourceCoefficientResponseFirstLeg M α β p q x := by
  classical
  let F : BosonLabel 2 → BosonLabel 2 → ℂ :=
    fun u t =>
      (sourceKineticWeight M α p u * sourceQuadraticWeight M β q u t -
        sourceKineticWeight M β q u * sourceQuadraticWeight M α p u t) *
          ((x t : ℝ) : ℂ)
  have hreverse (u t : BosonLabel 2) :
      (sourceKineticWeight M α p u * sourceQuadraticWeight M β q t u -
        sourceKineticWeight M β q u * sourceQuadraticWeight M α p t u) *
          ((x t : ℝ) : ℂ) = F u t := by
    dsimp [F]
    rw [sourceQuadraticWeight_pairSymmetric M hcolor β q u t,
        sourceQuadraticWeight_pairSymmetric M hcolor α p u t]
  change (∑ u : BosonLabel 2,
    ((∑ t : BosonLabel 2, F u t) +
      (∑ t : BosonLabel 2,
        (sourceKineticWeight M α p u *
            sourceQuadraticWeight M β q t u -
          sourceKineticWeight M β q u *
            sourceQuadraticWeight M α p t u) *
              ((x t : ℝ) : ℂ)))) =
      (2 : ℂ) * ∑ u : BosonLabel 2, ∑ t : BosonLabel 2, F u t
  calc
    _ = ∑ u : BosonLabel 2,
        ((∑ t : BosonLabel 2, F u t) +
          (∑ t : BosonLabel 2, F u t)) := by
            apply Finset.sum_congr rfl
            intro u _
            congr 1
            apply Finset.sum_congr rfl
            intro t _
            exact hreverse u t
    _ = ∑ u : BosonLabel 2,
        (2 : ℂ) * (∑ t : BosonLabel 2, F u t) := by
          apply Finset.sum_congr rfl
          intro u _
          ring
    _ = _ := by rw [Finset.mul_sum]

/-- Pass the exact source two-leg reduction through G6C's
unchanged original response polynomial. -/
theorem sourceCoefficientResponsePoint_eq_twice_first
    (M : AlgebraData 2)
    (hcolor : ∀ a : ColorIndex 2,
      M.color a = FCP.BFSSSU2.normalizedPauli a)
    (α β : SpinIndex) (p q : FermionLabel 2)
    (x : Boson 2) :
    sourceCoefficientResponsePoint M α β p q x =
      (2 : ℂ) * sourceCoefficientResponseFirstLeg M α β p q x := by
  rw [sourceCoefficientResponsePoint_eq_selected]
  exact sourceCoefficientResponseSelected_eq_twice_first M hcolor α β p q x

#print axioms sourceGammaTwo_swapOriginal
#print axioms sourceSU2StructureConstant_swapLast
#print axioms sourceSU2StructureConstant_swapFirst
#print axioms sourceQuadraticWeight_pairSymmetric
#print axioms sourceCoefficientResponseSelected_eq_twice_first
#print axioms sourceCoefficientResponsePoint_eq_twice_first
#check @sourceCoefficientResponsePoint_eq_twice_first

end
end FCP.BFSSSU2PhysicalDomainL6G6D
