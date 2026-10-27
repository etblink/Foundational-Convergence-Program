import SU2BFSSPhysicalDomainS4B28OriginalComplexFermionRemainderFullOrderedThetaExpansionProbe

/-!
S4B29: the actual full original complex Fock fermionic remainder is
reindexed into the color/fermion outer order and k/alpha innermost order
required to consume accepted S4B27's signed contracted source coefficient.
All source theta products remain kinetic-before-variation, phase -i,
normalization 1/16, and original complex continuous-linear operator carrier.
No contraction/B(x) result is claimed at this gate.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B29
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B10
open FCP.BFSSSU2PhysicalDomainS4B11
open FCP.BFSSSU2PhysicalDomainS4B28

/-- Generic finite-sum permutation, proved without unfolding the real
source continuous-linear-operator carrier. -/
private theorem fiveIndex_sum_reorder
    {I K A B Q V : Type*}
    [Fintype I] [Fintype K] [Fintype A] [Fintype B] [Fintype Q]
    [AddCommMonoid V]
    (f : I → K → A → B → Q → V) :
    (∑ i : I, ∑ p : K × A, ∑ b : B, ∑ q : Q,
      f i p.1 p.2 b q) =
      ∑ a : A, ∑ b : B, ∑ q : Q, ∑ k : K, ∑ i : I,
        f i k a b q := by
  calc
    _ = ∑ i : I, ∑ k : K, ∑ a : A, ∑ b : B, ∑ q : Q,
          f i k a b q := by
          apply Finset.sum_congr rfl
          intro i _hi
          exact Fintype.sum_prod_type'
            (fun k a => ∑ b : B, ∑ q : Q, f i k a b q)
    _ = ∑ i : I, ∑ a : A, ∑ k : K, ∑ b : B, ∑ q : Q,
          f i k a b q := by
          apply Finset.sum_congr rfl
          intro i _hi
          rw [Finset.sum_comm]
    _ = ∑ a : A, ∑ i : I, ∑ k : K, ∑ b : B, ∑ q : Q,
          f i k a b q := by
          rw [Finset.sum_comm]
    _ = ∑ a : A, ∑ i : I, ∑ b : B, ∑ k : K, ∑ q : Q,
          f i k a b q := by
          apply Finset.sum_congr rfl
          intro a _ha
          apply Finset.sum_congr rfl
          intro i _hi
          rw [Finset.sum_comm]
    _ = ∑ a : A, ∑ i : I, ∑ b : B, ∑ q : Q, ∑ k : K,
          f i k a b q := by
          apply Finset.sum_congr rfl
          intro a _ha
          apply Finset.sum_congr rfl
          intro i _hi
          apply Finset.sum_congr rfl
          intro b _hb
          rw [Finset.sum_comm]
    _ = ∑ a : A, ∑ b : B, ∑ i : I, ∑ q : Q, ∑ k : K,
          f i k a b q := by
          apply Finset.sum_congr rfl
          intro a _ha
          rw [Finset.sum_comm]
    _ = ∑ a : A, ∑ b : B, ∑ q : Q, ∑ i : I, ∑ k : K,
          f i k a b q := by
          apply Finset.sum_congr rfl
          intro a _ha
          apply Finset.sum_congr rfl
          intro b _hb
          rw [Finset.sum_comm]
    _ = ∑ a : A, ∑ b : B, ∑ q : Q, ∑ k : K, ∑ i : I,
          f i k a b q := by
          apply Finset.sum_congr rfl
          intro a _ha
          apply Finset.sum_congr rfl
          intro b _hb
          apply Finset.sum_congr rfl
          intro q _hq
          rw [Finset.sum_comm]

/-- Generic phase distribution and sum permutation for an opaque complex
module. No lean simplification unfolds the Fock PiLp CLM instance. -/
private theorem phase_fiveIndex_sum_reorder
    {I K A B Q V : Type*}
    [Fintype I] [Fintype K] [Fintype A] [Fintype B] [Fintype Q]
    [AddCommMonoid V] [Module ℂ V]
    (z : ℂ) (f : I → K → A → B → Q → V) :
    (∑ i : I, ∑ p : K × A,
      z • (∑ b : B, ∑ q : Q, f i p.1 p.2 b q)) =
      ∑ a : A, ∑ b : B, ∑ q : Q, ∑ k : K, ∑ i : I,
        z • f i k a b q := by
  calc
    _ = ∑ i : I, ∑ p : K × A, ∑ b : B, ∑ q : Q,
          z • f i p.1 p.2 b q := by
          simp only [Finset.smul_sum]
    _ = _ := fiveIndex_sum_reorder
      (fun i k a b q => z • f i k a b q)

/-- Source complex fermionic remainder in genuine gamma-contractible
index order, preserving phase, coefficient, and Majorana operator order. -/
theorem originalComplexFermionContraction_contractible_source_order
    {N : ℕ} (M : AlgebraData N) (x : Boson N) :
    sourceMasslessComplexFermionContraction M x =
      (1 / 16 : ℂ) •
        (∑ A : ColorIndex N, ∑ β : SpinIndex,
          ∑ q : FermionIndex N, ∑ k : SpaceIndex, ∑ α : SpinIndex,
            (-Complex.I) •
              (((M.gamma k α β : ℂ) *
                ((sourceMasslessComplexVariationCoefficient M x
                  (EuclideanSpace.single (k, A) (1 : ℝ)) α q : ℝ) : ℂ)) •
                  (M.theta β A * M.theta q.1 q.2))) := by
  calc
    _ = (1 / 16 : ℂ) •
        (∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
          (-Complex.I) •
            (∑ β : SpinIndex, ∑ q : FermionIndex N,
              ((M.gamma p.1 α β : ℂ) *
                ((sourceMasslessComplexVariationCoefficient M x
                  (EuclideanSpace.single p (1 : ℝ)) α q : ℝ) : ℂ)) •
                    (M.theta β p.2 * M.theta q.1 q.2))) :=
          originalComplexFermionContraction_full_orderedTheta_expansion M x
    _ = _ := by
      exact congrArg
        (fun T : Fermion N →L[ℂ] Fermion N => (1 / 16 : ℂ) • T)
        (phase_fiveIndex_sum_reorder
          (-Complex.I)
          (fun α k A β q =>
            (((M.gamma k α β : ℂ) *
              ((sourceMasslessComplexVariationCoefficient M x
                (EuclideanSpace.single (k, A) (1 : ℝ)) α q : ℝ) : ℂ)) •
                  (M.theta β A * M.theta q.1 q.2))))

#print axioms originalComplexFermionContraction_contractible_source_order

end
end FCP.BFSSSU2PhysicalDomainS4B29
