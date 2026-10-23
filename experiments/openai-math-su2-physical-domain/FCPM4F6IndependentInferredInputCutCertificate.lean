import FCPRestrictedGraphInputCut

/-!
M4F6 C2 — isolated opaque inferred-type proof certificate diagnostic.

Critically this is NOT the C2 theorem and does not claim the goal-alias
conversion, gauge-restricted graph transport or operator closability.
It intentionally gives NO expected result type to the instantiated generic
proof. It tests whether the existing generic theorem yields an independently
typechecked, importable proof object in a minimal Lean module.

Historical inferred-type diagnostic run #39877727582 failed because its
source used unsupported `set_option linter.defProp false in` syntax, even
though it printed the independent application and its permitted axioms.
Here the option is set at command scope, not prefixed to a declaration.
-/

set_option autoImplicit false
set_option maxHeartbeats 600000
set_option linter.defProp false

namespace FCP.M4F6IndependentInferredInputCutCertificate
noncomputable section

open OAI.BFSSQuantum
open FCP.IndependentSmoothCore
open FCP.IndependentSmoothSupercharge
open FCP.IndependentPhysicalSpace
open FCP.RestrictedGraphInputCut

/-- Intentionally inferred proof type: do not attach the C2 aliased goal.
This creates a reusable opaque name for the already accepted generic
input-restricted graph identity specialized to genuine independent maps. -/
def independentInferredGraphInputCut
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    [FiniteDimensional ℂ E]
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B + 0 =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric) :=
  core_graph_input_cut independentCoreToL2
    (independentChargeVector color gamma theta)
    (independentPhysicalSpace theta
      (by
        intro α β A B
        simpa only [add_zero] using hCAR α β A B)
      hHermitian)

#print axioms independentInferredGraphInputCut
#check independentInferredGraphInputCut

end
end FCP.M4F6IndependentInferredInputCutCertificate
