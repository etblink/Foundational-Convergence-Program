/-!
An executable downstream-utility check appended to OpenAI's existing
MassiveMoments.lean in an ephemeral pinned checkout.

The existing coreForm and deformedCoreEnergy abstractions are definitionally
distinct. This proof gives a precise reason to maintain the bridge:
the undeformed-energy API recovers the original core form without unfolding
gamma matrices or color coefficients.
-/

namespace OAI
namespace BFSSQuantum.AlgebraData
noncomputable section
open Finset
variable {N : ℕ} (M : AlgebraData N)

/-- The old charge core form is the (h,m)=(1,0) deformed energy. -/
lemma coreForm_eq_deformedCoreEnergy_one_zero (f : SmoothCore N) :
    M.coreForm f = M.deformedCoreEnergy 1 0 f := by
  simp only [coreForm, deformedCoreEnergy]
  simp_rw [M.deformedCoreCharge_one_zero_eq_charge]

#print axioms coreForm_eq_deformedCoreEnergy_one_zero

end
end BFSSQuantum.AlgebraData
end OAI
