import OAI.MathematicalPhysics.BFSS.FermionQuantization

namespace OAI
namespace BFSSQuantum.AlgebraData
noncomputable section
open Matrix Finset

variable {N : ℕ} (M : AlgebraData N)

/--
Bridge probe for Family 270-B Lemma 2.1:
does the undeformed (h=1,m=0) deformed potential multiplier coincide
with the bracket multiplier appearing in the original BFSS charge?
-/
lemma family270B_deformedPotentialMultiplier_one_zero_eq_bracketMultiplier
    (x : Boson N) (α : SpinIndex) :
    M.deformedPotentialMultiplier 1 0 x α = M.bracketMultiplier α x := by
  ext z
  simp [deformedPotentialMultiplier, deformedPotentialCoefficients,
    deformedPotentialMatrix, BFSSGamma.bracketMassMatrix,
    BFSSGamma.shiftedPair, bracketMultiplier, cliffordLinear,
    coordinateBracket, BFSSGamma.pairGamma]

/--
If the multiplier bridge above closes, the undeformed deformed charge
is literally the original BFSS charge.
-/
lemma family270B_deformedCoreCharge_one_zero_eq_charge
    (α : SpinIndex) (f : SmoothCore N) :
    M.deformedCoreCharge 1 0 α f = M.charge α f := by
  ext x
  rw [M.deformedCoreCharge_apply, M.charge_kinetic_plus_bracket]
  rw [M.family270B_deformedPotentialMultiplier_one_zero_eq_bracketMultiplier]

end
end BFSSQuantum.AlgebraData
end OAI
