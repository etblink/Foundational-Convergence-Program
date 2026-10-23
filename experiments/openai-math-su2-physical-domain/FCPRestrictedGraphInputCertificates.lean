import FCPRestrictedGraphInputCut

/-!
M4F6 bounded diagnostic: infer the types of the exact two generic cut
applications without an expected concrete restricted-graph goal.
This distinguishes application elaboration from later goal conversion.
A clean diagnostic adds no principal theorem roots. The actual graph
definitions and source-specialization obligations are not replaced.
-/

set_option autoImplicit false
set_option maxHeartbeats 600000
set_option linter.defProp false

namespace FCP.RestrictedGraphInputCertificates
noncomputable section

open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A FCP.BFSSSU2GaugeG4J
open FCP.IndependentSmoothCore
open FCP.IndependentSmoothSupercharge
open FCP.IndependentPhysicalSpace
open FCP.RestrictedGraphInputCut

/-- Deliberately inferred result type; no expected graph alias is
used while elaborating the same independent-map application.
The diagnostic uses a definition to infer its Prop-valued result type;
the diagnostic-file defProp style linter is disabled.  -/
def independentInputCutApplication
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    [FiniteDimensional ℂ E]
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric) :=
  core_graph_input_cut independentCoreToL2
    (independentChargeVector color gamma theta)
    (independentPhysicalSpace theta hCAR hHermitian)

/-- Same paired-source application as the failed concrete bridge,
elaborated without an expected expanded graph-equality type.
The diagnostic uses a definition so that no explicit theorem type is imposed. -/
def originalInputCutApplication :=
  original_core_graph_input_cut pairedAlgebraData pairedGaugeData

#print independentInputCutApplication
#print originalInputCutApplication
#print axioms independentInputCutApplication
#print axioms originalInputCutApplication

end
end FCP.RestrictedGraphInputCertificates
