import SU2BFSSPhysicalDomainD2B16PhysicalHilbertRebasedChargeOperatorProbe
import Mathlib.Analysis.InnerProductSpace.LinearPMap

/-!
# BFSS SU2 D2B17 — genuine physical Hilbert-space charge adjoint

PROSPECTIVE until exact pinned Lean 4.34.1 compiler and axiom smoke PASS.

This applies Mathlib's *real* unbounded-operator adjoint to the
source-defined gauge-restricted charge column of D2B16, whose input
ambient is the physical Hilbert space itself. Gate D2B16 establishes
density of its domain in THAT space, thereby excluding the Mathlib
adjoint's non-dense-domain fallback. Its ambient output space is the
16-component full-L2 Hilbert space; the source separately establishes
that every defined charge output is physically invariant.

The closed physical submodule is a complete Hilbert space.
The source adjoint is closed and satisfies the exact Hilbert pairing.
No product T†T, Hamiltonian self-adjointness, spectrum, maximal
differential realization, or manuscript operator identity is claimed.
-/

namespace FCP.BFSSSU2PhysicalDomainD2B17
noncomputable section

open OAI
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainD2B16
open MeasureTheory Set
open scoped InnerProductSpace

variable (M : AlgebraData 2) (G : M.GaugeData)

/-- Source physical Hilbert space is complete as the original closed
submodule of the original full-L2 Hilbert space. -/
theorem sourceOriginalPhysicalHilbert_complete :
    CompleteSpace G.physicalSpace :=
  (G.physicalSpace_closed).isComplete.completeSpace_coe

/-- Genuine Mathlib Hilbert adjoint of the exact source charge
operator with the PHYSICAL Hilbert space as ambient input. -/
noncomputable def sourceOriginalPhysicalChargeAdjoint :
    (SpinIndex → FullL2 2) →ₗ.[ℂ] G.physicalSpace :=
  (sourcePhysicalRebasedChargeColumn M G).adjoint

/-- The source adjoint satisfies the defining Hilbert-space
adjoint pairing, using the ACTUAL source physical density proof.
No artificial map or extra assumed axiom is introduced. -/
theorem sourceOriginalPhysicalChargeAdjoint_isFormalAdjoint :
    (sourceOriginalPhysicalChargeAdjoint M G).IsFormalAdjoint
      (sourcePhysicalRebasedChargeColumn M G) := by
  exact LinearPMap.adjoint_isFormalAdjoint
    (sourcePhysicalRebasedChargeColumn_domain_dense M G)

/-- Closedness of the true physical charge adjoint follows from
the exact Hilbert domain density and physical Hilbert completeness. -/
theorem sourceOriginalPhysicalChargeAdjoint_isClosed :
    (sourceOriginalPhysicalChargeAdjoint M G).IsClosed := by
  letI : CompleteSpace G.physicalSpace :=
    sourceOriginalPhysicalHilbert_complete M G
  exact LinearPMap.adjoint_isClosed
    (sourcePhysicalRebasedChargeColumn_domain_dense M G)

/-- Concrete adjoint identity with original source full-L2 output
and literal physical-L2 input; no formal-adjoint proxy.
The complex Hilbert inner product orientation matches Mathlib. -/
theorem sourceOriginalPhysicalChargeAdjoint_inner
    (u : (sourcePhysicalRebasedChargeColumn M G).domain)
    (v : (sourceOriginalPhysicalChargeAdjoint M G).domain) :
    inner ℂ (sourceOriginalPhysicalChargeAdjoint M G v)
      (u : G.physicalSpace) =
    inner ℂ (v : SpinIndex → FullL2 2)
      (sourcePhysicalRebasedChargeColumn M G u) := by
  exact (sourceOriginalPhysicalChargeAdjoint_isFormalAdjoint M G) v u

#print axioms sourceOriginalPhysicalHilbert_complete
#print axioms sourceOriginalPhysicalChargeAdjoint_isFormalAdjoint
#print axioms sourceOriginalPhysicalChargeAdjoint_isClosed
#print axioms sourceOriginalPhysicalChargeAdjoint_inner

end
end FCP.BFSSSU2PhysicalDomainD2B17
