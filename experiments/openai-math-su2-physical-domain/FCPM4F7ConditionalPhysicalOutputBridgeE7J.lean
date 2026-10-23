import FCPM4F7GenericOpaqueOutputConstraintE7H
import FCPM4F7IndependentPhysicalOutputPredicateE7I
import FCPM4F7OpaqueLiteralGraphInterfaceE7D

/-!
M4F7 E7J — conditional, SOURCE-EXACT named closed-graph inclusion
in the independent sixteen-output physical Hilbert predicate.

The original J-free graph and physical subspace are NEVER changed.
The two required analytic premises are explicit:
  (i) native independent physical Hilbert subspace is closed, and
 (ii) the ACTUAL independent smooth charge-vector core outputs
      all lie in that subspace.

These premises have separately accepted source-exact certificates:
E6 physical closedness (with J as a witness, not a definition)
and E7A smooth-core output physicality. We do NOT combine them
in this file. That specialization is a separate obligation.

This leaf uses the already accepted E7D exact closed graph alias,
generic E7H opaque-graph result, and E7I genuine physical-output
predicate; does not mention the actual E2 closed LinearPMap graph
or source D1. This is supporting infrastructure, not a new principal
closed-operator theorem.
-/

set_option autoImplicit false
set_option maxHeartbeats 100000

namespace FCP.M4F7ConditionalPhysicalOutputBridgeE7J
noncomputable section

open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A FCP.BFSSSU2GaugeG4J
open FCP.IndependentSmoothCore
open FCP.IndependentSmoothSupercharge
open FCP.IndependentPhysicalSpace
open MeasureTheory Set

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]
private abbrev μ := (volume : Measure (Boson 2))

/-- A closed independent physical L² subspace and exact smooth-core
charge covariance imply that the literal independently defined
restricted *closed* charge graph has all sixteen physical outputs.
The hypotheses will be discharged only from separately qualified
source theorems in a later leaf. -/
theorem literalRestrictedClosedGraph_subset_allPhysicalOutputs_of_core
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric)
    (hP : IsClosed
      ((independentPhysicalSpace theta hCAR hHermitian :
        Submodule ℂ (Lp E 2 μ)) : Set (Lp E 2 μ)))
    (hQ : ∀ (f : independentInvariantCore theta hCAR hHermitian)
      (α : SpinIndex),
        (((independentChargeVector color gamma theta).comp
          (independentInvariantCore theta hCAR hHermitian).subtype) f) α ∈
          independentPhysicalSpace theta hCAR hHermitian) :
    FCP.M4F7OpaqueLiteralGraphInterfaceE7D.literalRestrictedClosedGraphSet
        color gamma theta hCAR hHermitian ⊆
      FCP.M4F7IndependentPhysicalOutputPredicateE7I.independentAllSixteenOutputsPhysicalSet
        theta hCAR hHermitian := by
  have hAbstract :
      FCP.M4F7OpaqueLiteralGraphInterfaceE7D.literalRestrictedClosedGraphSet
          color gamma theta hCAR hHermitian ⊆
        FCP.M4F7GenericOpaqueOutputConstraintE7H.allOutputConstraint
          (I := SpinIndex) (X := Lp E 2 μ)
          (independentPhysicalSpace theta hCAR hHermitian) := by
    exact FCP.M4F7GenericOpaqueOutputConstraintE7H.opaque_closed_product_range_subset_allOutputConstraint
      (independentCoreToL2.comp
        (independentInvariantCore theta hCAR hHermitian).subtype)
      ((independentChargeVector color gamma theta).comp
        (independentInvariantCore theta hCAR hHermitian).subtype)
      (independentPhysicalSpace theta hCAR hHermitian)
      hP hQ
      (FCP.M4F7OpaqueLiteralGraphInterfaceE7D.literalRestrictedClosedGraphSet
        color gamma theta hCAR hHermitian)
      (FCP.M4F7OpaqueLiteralGraphInterfaceE7D.literalRestrictedClosedGraphSet_eq
        color gamma theta hCAR hHermitian)
  intro p hp
  exact (FCP.M4F7IndependentPhysicalOutputPredicateE7I.mem_independentAllSixteenOutputsPhysicalSet_iff
    theta hCAR hHermitian p).2
    ((FCP.M4F7GenericOpaqueOutputConstraintE7H.mem_allOutputConstraint_iff
      (I := SpinIndex) (X := Lp E 2 μ)
      (independentPhysicalSpace theta hCAR hHermitian) p).mp
      (hAbstract hp))

#print axioms literalRestrictedClosedGraph_subset_allPhysicalOutputs_of_core

end
end FCP.M4F7ConditionalPhysicalOutputBridgeE7J
