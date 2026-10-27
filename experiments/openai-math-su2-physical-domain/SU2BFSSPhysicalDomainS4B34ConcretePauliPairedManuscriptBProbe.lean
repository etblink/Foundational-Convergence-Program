import SU2BFSSPhysicalDomainS4B33OriginalManuscriptBCoordinateOperatorBridgeProbe
import SU2BFSSG1APairedThetaProbe

/-!
S4B34: specialize the proved October 5 manuscript B(x) coordinate
identity to the genuine previously accepted 24-mode spin-paired
N=2 AlgebraData, with the positively oriented normalized Pauli basis.
Unlike an arbitrary AlgebraData N, this source construction proves
f_abc = sqrt(2)*epsilon_abc, rather than assuming that orientation.

The result concerns the concrete massless REAL Fock multiplication
operator. It is not closed physical Hamiltonian equality, the full
quadratic-form decomposition, nor a positive normalizable eigenpair.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B34
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B33
open FCP.BFSSSU2GaugeG1A

/-- A source-carrier Pauli-epsilon B(x) expression parameterized by
an OAI BFSS AlgebraData 2, with its true gamma and theta. It makes no
universal assertion about the color orientation of that AlgebraData.
Its purpose is to keep the large paired concrete record opaque during
the finite-sum coefficient-substitution proof. -/
private def pauliNormalizedBComplex (M : AlgebraData 2) (x : Boson 2) :
    Fermion 2 →L[ℂ] Fermion 2 :=
  (Complex.I / 2 : ℂ) •
    (∑ b : ColorIndex 2, ∑ β : SpinIndex,
      ∑ δ : SpinIndex, ∑ c : ColorIndex 2,
      ∑ i : SpaceIndex, ∑ a : ColorIndex 2,
        (((Real.sqrt 2 * FCP.BFSSSU2.epsilon3 a b c) *
           x (i,a) * M.gamma i β δ : ℝ) : ℂ) •
          (M.theta β b * M.theta δ c))

/-- The independently transcribed positively oriented manuscript B(x)
on the ACTUAL paired 48-Majorana Fock representation. This is an
explicit special case of the source-carrier formula, not a proxy. -/
def concretePauliPairedBComplex (x : Boson 2) :
    Fermion 2 →L[ℂ] Fermion 2 :=
  pauliNormalizedBComplex pairedAlgebraData x

/-- Substitute the signed Pauli structure constants while M remains
OPAQUE. This isolates the six finite sums from the much larger
definitional reductions of the concrete paired AlgebraData fields. -/
private theorem manuscriptCoordinateBComplex_eq_pauliNormalizedBComplex
    (M : AlgebraData 2) (x : Boson 2)
    (hf : ∀ a b c : ColorIndex 2,
      M.structureConstant a b c =
        Real.sqrt 2 * FCP.BFSSSU2.epsilon3 a b c) :
    manuscriptCoordinateBComplex M x = pauliNormalizedBComplex M x := by
  unfold manuscriptCoordinateBComplex pauliNormalizedBComplex
  apply congrArg
    (fun T : Fermion 2 →L[ℂ] Fermion 2 => (Complex.I / 2 : ℂ) • T)
  apply Finset.sum_congr rfl
  intro b _hb
  apply Finset.sum_congr rfl
  intro β _hβ
  apply Finset.sum_congr rfl
  intro δ _hδ
  apply Finset.sum_congr rfl
  intro c _hc
  apply Finset.sum_congr rfl
  intro i _hi
  apply Finset.sum_congr rfl
  intro a _ha
  rw [hf a b c]

/-- Genuine constructed N=2 source massless real fermion field equals
the normalized +i/2 Pauli-epsilon B(x) in the original Fock operator
carrier after scalar restriction. No extra hcolor assumption. -/
theorem concretePauliPairedRealFockField_eq_B
    (x : Boson 2) :
    pairedAlgebraData.deformedFermionField 1 0 x =
      (concretePauliPairedBComplex x).restrictScalars ℝ := by
  have hcolor : ∀ a : ColorIndex 2,
      pairedAlgebraData.color a = FCP.BFSSSU2.normalizedPauli a := by
    intro a
    exact (pairedAlgebraData_color a).trans
      (FCP.BFSSSU2Full.concreteAlgebraData_color a)
  have hf (a b c : ColorIndex 2) :
      pairedAlgebraData.structureConstant a b c =
        Real.sqrt 2 * FCP.BFSSSU2.epsilon3 a b c :=
    FCP.BFSSSU2.algebraData_structureConstant_of_pauli_color
      pairedAlgebraData hcolor a b c
  have hB : manuscriptCoordinateBComplex pairedAlgebraData x =
      concretePauliPairedBComplex x := by
    change manuscriptCoordinateBComplex pairedAlgebraData x =
      pauliNormalizedBComplex pairedAlgebraData x
    exact manuscriptCoordinateBComplex_eq_pauliNormalizedBComplex
      pairedAlgebraData x hf
  calc
    pairedAlgebraData.deformedFermionField 1 0 x =
        (manuscriptCoordinateBComplex pairedAlgebraData x).restrictScalars ℝ :=
          originalRealFockField_eq_manuscript_coordinate_B pairedAlgebraData x
    _ = _ :=
      congrArg
        (fun T : Fermion 2 →L[ℂ] Fermion 2 => T.restrictScalars ℝ) hB

#print axioms concretePauliPairedRealFockField_eq_B

end
end FCP.BFSSSU2PhysicalDomainS4B34
