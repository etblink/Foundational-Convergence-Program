import SU2BFSSPhysicalDomainD2B28ConcretePairedSU2HamiltonianProbe
import SU2BFSSG4K8E4L2BridgeProbe

/-!
# BFSS SU(2) D2B29 — original gauge-invariant smooth core trial in
# the true physical closed charge form domain with exact positive energy

PROSPECTIVE until pinned Lean 4.34.1 + axiom gate GREEN.

No invented test state: reuse the accepted exact SU2 radial invariant
smooth core and G4-K8E4's positive massless interacting source energy.
No invented dynamics: use D2B17 true physical Hilbert source charge,
D2B22 original graph/energy transport, D2B14 exact source core energy.

The resulting form-energy positivity for a single trial state does
NOT prove a positive eigenvalue, mass gap, positive spectral infimum,
or equivalence to the independent manuscript's abstract module.
-/

namespace FCP.BFSSSU2PhysicalDomainD2B29
noncomputable section

open OAI
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG4J
open FCP.BFSSSU2GaugeG4K3
open FCP.BFSSSU2GaugeG4K8E4
open FCP.BFSSSU2PhysicalDomainD2B11
open FCP.BFSSSU2PhysicalDomainD2B14
open FCP.BFSSSU2PhysicalDomainD2B16
open FCP.BFSSSU2PhysicalDomainD2B17
open FCP.BFSSSU2PhysicalDomainD2B22
open FCP.BFSSSU2PhysicalDomainD2B28

variable (M : AlgebraData 2) (G : M.GaugeData)

/-- Every ORIGINAL source gauge-invariant smooth core test state is in
the actual closed Hilbert charge domain; the witness is its EXACT
original 16-charge source output transported through PiLp's equivalence. -/
noncomputable def sourceInvariantCoreInTrueHilbertChargeDomain
    (f : G.invariantCore) :
    (sourcePhysicalHilbertChargeColumn M G).domain := by
  let ψ : G.physicalSpace :=
    ⟨coreToL2 f.val, f.property⟩
  let y : SourceChargeHilbertOutput :=
    WithLp.toLp 2 (M.chargeVector f.val)
  have horiginal :
      ((ψ : FullL2 2), M.chargeVector f.val) ∈
        G.deformedModelGraph 1 0 :=
    sourceRestrictedPhysicalGraph_containsCore M G f
  have hrebased :
      (ψ,sourceChargeOutputHilbertEquiv y) ∈
        sourcePhysicalRebasedChargeGraph M G := by
    apply (sourcePhysicalRebasedChargeGraph_mem_iff M G _).mpr
    have hy : sourceChargeOutputHilbertEquiv y = M.chargeVector f.val := by
      rfl
    rw [hy]
    exact horiginal
  have hgraph : (ψ,y) ∈ sourcePhysicalHilbertChargeGraph M G :=
    (sourcePhysicalHilbertChargeGraph_mem_iff M G _).mpr hrebased
  exact ⟨ψ, by
    apply LinearPMap.mem_domain_of_mem_graph
    rw [sourcePhysicalHilbertChargeColumn_graph_eq M G]
    exact hgraph⟩

/-- The charge form of any source smooth invariant core vector is
EXACTLY the true original massless BFSS source core form energy. -/
theorem sourceInvariantCoreHilbertFormEnergy_eq_massless
    (f : G.invariantCore) :
    sourcePhysicalHilbertChargeEnergy M G
      (sourceInvariantCoreInTrueHilbertChargeDomain M G f) =
        M.deformedCoreEnergy 1 0 f.val := by
  rw [sourcePhysicalHilbertChargeEnergy_eq_sourceClosed]
  have hdomain :
      sourcePhysicalHilbertToClosedChargeDomain M G
        (sourceInvariantCoreInTrueHilbertChargeDomain M G f) =
          sourceCoreInClosedChargeDomain M G f := by
    apply Subtype.ext
    rfl
  rw [hdomain]
  exact sourceClosedPhysicalChargeEnergy_on_sourceCore_eq_massless M G f

/-- The SAME accepted, concrete nonzero SU2-invariant radial test
state in the actual physical Hilbert charge domain. -/
noncomputable def pairedSU2RadialTrueHilbertChargeDomain :
    (sourcePhysicalHilbertChargeColumn pairedAlgebraData pairedGaugeData).domain :=
  sourceInvariantCoreInTrueHilbertChargeDomain
    pairedAlgebraData pairedGaugeData radialBumpInvariantCore

/-- Strictly positive ORIGINAL source normalized closed form on a
genuine physical SU2 smooth trial vector at h=1,m=0. -/
theorem pairedSU2RadialClosedFormEnergy_pos :
    0 < sourcePhysicalHilbertChargeEnergy
      pairedAlgebraData pairedGaugeData pairedSU2RadialTrueHilbertChargeDomain := by
  have hcore : sourcePhysicalHilbertChargeEnergy
      pairedAlgebraData pairedGaugeData
        (sourceInvariantCoreInTrueHilbertChargeDomain
          pairedAlgebraData pairedGaugeData radialBumpInvariantCore) =
        physicalDeformedEnergy 1 0 :=
    sourceInvariantCoreHilbertFormEnergy_eq_massless
      pairedAlgebraData pairedGaugeData radialBumpInvariantCore
  change 0 < sourcePhysicalHilbertChargeEnergy
    pairedAlgebraData pairedGaugeData
      (sourceInvariantCoreInTrueHilbertChargeDomain
        pairedAlgebraData pairedGaugeData radialBumpInvariantCore)
  rw [hcore]
  exact physicalInteractingTrialEnergy_one_pos

/-- The EXACT source charge T is nonzero on this one concrete physical
form-domain trial: this is stronger than only nonzero Hilbert space. -/
theorem pairedSU2RadialCharge_ne_zero :
    sourcePhysicalHilbertChargeColumn
      pairedAlgebraData pairedGaugeData pairedSU2RadialTrueHilbertChargeDomain ≠ 0 := by
  intro hz
  have hzero : sourcePhysicalHilbertChargeEnergy
      pairedAlgebraData pairedGaugeData pairedSU2RadialTrueHilbertChargeDomain = 0 := by
    unfold sourcePhysicalHilbertChargeEnergy
    rw [hz]
    simp
  exact (ne_of_gt pairedSU2RadialClosedFormEnergy_pos) hzero

#print axioms sourceInvariantCoreHilbertFormEnergy_eq_massless
#print axioms pairedSU2RadialClosedFormEnergy_pos
#print axioms pairedSU2RadialCharge_ne_zero

end
end FCP.BFSSSU2PhysicalDomainD2B29
