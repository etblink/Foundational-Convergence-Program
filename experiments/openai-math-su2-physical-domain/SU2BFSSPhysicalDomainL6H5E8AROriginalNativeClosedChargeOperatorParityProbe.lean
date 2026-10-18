import SU2BFSSPhysicalDomainL6H5E8AQOriginalPhysicalClosedChargeDomainParityProbe
import SU2BFSSPhysicalDomainD2B12OriginalPhysicalChargeLinearPMapProbe

/-!
# H5E8AR — actual source-native closed sixteen-charge operator under parity

Strict research candidate until pin-matched Lean/Mathlib compilation and
axiom audit. AQ gives the exact original restricted closed charge graph
and domain under spatial parity. D1 (accepted as dependency of D2B12)
proves actual G.deformedModelGraph 1 0 is exactly the closure of this
source chargeVector graph; D2B12 constructs the actual source
LinearPMap and proves its graph identity. Combine these *verified
definitions*, without a proxy Hamiltonian or a maximal domain.

Our output Hilbertization and associated normalized (1/16)T†T
Hamiltonian remain separate. So does the independent paper's
Clifford/Spin(48) source equivalence and spectral theorem.
-/

set_option autoImplicit false
set_option maxHeartbeats 300000

namespace FCP.BFSSSU2PhysicalDomainL6H5E8AR
noncomputable section

open OAI
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainL6H5E8AD
open FCP.BFSSSU2PhysicalDomainL6H5E8AI
open FCP.BFSSSU2PhysicalDomainL6H5E8AN
open FCP.BFSSSU2PhysicalDomainL6H5E8AO
open FCP.BFSSSU2PhysicalDomainL6H5E8AP
open FCP.BFSSSU2PhysicalDomainL6H5E8AQ
open FCP.BFSSSU2PhysicalDomainD1
open FCP.BFSSSU2PhysicalDomainD2B11
open FCP.BFSSSU2PhysicalDomainD2B12

/-- No replacement source graph: the actual D2B12 partially defined
operator graph equals the AQ source-genuine restricted core closure,
using already accepted D1 exact original source graph identification. -/
theorem originalNativeClosedCharge_graph_eq {N : ℕ}
    (M : AlgebraData N) (G : M.GaugeData) :
    ((sourceClosedPhysicalChargeColumn M G).graph :
      Set (FullL2 N × (SpinIndex → FullL2 N))) =
      closure (originalPhysicalCoreGraphSet M G) := by
  rw [sourceClosedPhysicalChargeColumn_graph_eq M G]
  rw [sourceGaugeRestrictedClosedGraph_equal M G]
  rfl

/-- The native source LinearPMap graph membership, NOT a proxy graph,
is equivalent under original spatial parity in all sixteen outputs. -/
theorem originalNativeClosedCharge_graph_mem_iff {N : ℕ}
    (M : AlgebraData N) (G : M.GaugeData)
    (x : FullL2 N) (y : SpinIndex → FullL2 N) :
    (x,y) ∈ (sourceClosedPhysicalChargeColumn M G).graph ↔
      (originalFullL2Parity x,
        fun α => originalFullL2Parity (y α)) ∈
      (sourceClosedPhysicalChargeColumn (oppositeGamma M)
        (originalOppositeGammaGaugeData M G)).graph := by
  rw [show ((x,y) ∈ (sourceClosedPhysicalChargeColumn M G).graph) ↔
      ((x,y) ∈ closure (originalPhysicalCoreGraphSet M G)) from
      congrArg (fun S : Set (FullL2 N × (SpinIndex → FullL2 N)) => (x,y) ∈ S)
        (originalNativeClosedCharge_graph_eq M G)]
  rw [show ((originalFullL2Parity x,
        fun α => originalFullL2Parity (y α)) ∈
        (sourceClosedPhysicalChargeColumn (oppositeGamma M)
          (originalOppositeGammaGaugeData M G)).graph) ↔
      ((originalFullL2Parity x,
        fun α => originalFullL2Parity (y α)) ∈
        closure (originalPhysicalCoreGraphSet (oppositeGamma M)
          (originalOppositeGammaGaugeData M G))) from
      congrArg (fun S : Set (FullL2 N × (SpinIndex → FullL2 N)) =>
        (originalFullL2Parity x,
          fun α => originalFullL2Parity (y α)) ∈ S)
        (originalNativeClosedCharge_graph_eq (oppositeGamma M)
          (originalOppositeGammaGaugeData M G))]
  exact originalPhysicalClosedGraph_mem_iff M G x y

/-- Domain is the actual SOURCE unbounded `LinearPMap.domain`,
not a maximal operator or an invented first-coordinate replacement. -/
theorem originalNativeClosedCharge_domain_eq {N : ℕ}
    (M : AlgebraData N) (G : M.GaugeData) :
    ((sourceClosedPhysicalChargeColumn M G).domain : Set (FullL2 N)) =
      originalPhysicalClosedChargeDomainSet M G := by
  ext x
  constructor
  · intro hx
    obtain ⟨y, hy⟩ := (LinearPMap.mem_domain_iff).mp hx
    exact ⟨y, (congrArg
      (fun S : Set (FullL2 N × (SpinIndex → FullL2 N)) => (x,y) ∈ S)
      (originalNativeClosedCharge_graph_eq M G)).mp hy⟩
  · rintro ⟨y, hy⟩
    apply LinearPMap.mem_domain_of_mem_graph
    exact (congrArg
      (fun S : Set (FullL2 N × (SpinIndex → FullL2 N)) => (x,y) ∈ S)
      (originalNativeClosedCharge_graph_eq M G)).mpr hy

/-- Fully explicit true native source operator-domain parity. -/
theorem originalNativeClosedCharge_domain_mem_iff {N : ℕ}
    (M : AlgebraData N) (G : M.GaugeData) (x : FullL2 N) :
    x ∈ (sourceClosedPhysicalChargeColumn M G).domain ↔
      originalFullL2Parity x ∈
        (sourceClosedPhysicalChargeColumn (oppositeGamma M)
          (originalOppositeGammaGaugeData M G)).domain := by
  rw [show (x ∈ (sourceClosedPhysicalChargeColumn M G).domain) ↔
    x ∈ originalPhysicalClosedChargeDomainSet M G from
      congrArg (fun S : Set (FullL2 N) => x ∈ S)
        (originalNativeClosedCharge_domain_eq M G)]
  rw [show (originalFullL2Parity x ∈
      (sourceClosedPhysicalChargeColumn (oppositeGamma M)
        (originalOppositeGammaGaugeData M G)).domain) ↔
      originalFullL2Parity x ∈
        originalPhysicalClosedChargeDomainSet (oppositeGamma M)
          (originalOppositeGammaGaugeData M G) from
      congrArg (fun S : Set (FullL2 N) =>
        originalFullL2Parity x ∈ S)
        (originalNativeClosedCharge_domain_eq (oppositeGamma M)
          (originalOppositeGammaGaugeData M G))]
  exact originalPhysicalClosedChargeDomain_mem_iff M G x

/-- Source-native CLOSED operator action on the true natural domain:
parity maps the entire sixteen-charge value, not only input domains.
The equality follows from the genuine source graph and its proved
single-valuedness; no operator-extension axiom is used. -/
theorem originalNativeClosedCharge_action_parity {N : ℕ}
    (M : AlgebraData N) (G : M.GaugeData)
    (u : (sourceClosedPhysicalChargeColumn M G).domain) :
    let u' : (sourceClosedPhysicalChargeColumn
        (oppositeGamma M) (originalOppositeGammaGaugeData M G)).domain :=
      ⟨originalFullL2Parity (u : FullL2 N),
        (originalNativeClosedCharge_domain_mem_iff M G
          (u : FullL2 N)).mp u.property⟩
    sourceClosedPhysicalChargeColumn
        (oppositeGamma M) (originalOppositeGammaGaugeData M G) u' =
      fun α => originalFullL2Parity
        ((sourceClosedPhysicalChargeColumn M G u) α) := by
  dsimp only
  let u' : (sourceClosedPhysicalChargeColumn
        (oppositeGamma M) (originalOppositeGammaGaugeData M G)).domain :=
    ⟨originalFullL2Parity (u : FullL2 N),
      (originalNativeClosedCharge_domain_mem_iff M G
        (u : FullL2 N)).mp u.property⟩
  have hleft : ((u : FullL2 N), sourceClosedPhysicalChargeColumn M G u) ∈
      (sourceClosedPhysicalChargeColumn M G).graph :=
    (sourceClosedPhysicalChargeColumn M G).mem_graph u
  have hparity := (originalNativeClosedCharge_graph_mem_iff M G
    (u : FullL2 N) (sourceClosedPhysicalChargeColumn M G u)).mp hleft
  have hr : ((u' : FullL2 N),
      sourceClosedPhysicalChargeColumn
        (oppositeGamma M) (originalOppositeGammaGaugeData M G) u') ∈
      (sourceClosedPhysicalChargeColumn (oppositeGamma M)
        (originalOppositeGammaGaugeData M G)).graph :=
    (sourceClosedPhysicalChargeColumn (oppositeGamma M)
      (originalOppositeGammaGaugeData M G)).mem_graph u'
  have hp : ((originalFullL2Parity (u : FullL2 N)),
      fun α => originalFullL2Parity
        ((sourceClosedPhysicalChargeColumn M G u) α)) ∈
      (originalOppositeGammaGaugeData M G).deformedModelGraph 1 0 := by
    rwa [sourceClosedPhysicalChargeColumn_graph_eq] at hparity
  have hr' : ((originalFullL2Parity (u : FullL2 N)),
      sourceClosedPhysicalChargeColumn
        (oppositeGamma M) (originalOppositeGammaGaugeData M G) u') ∈
      (originalOppositeGammaGaugeData M G).deformedModelGraph 1 0 := by
    simpa only [u'] using
      (show ((u' : FullL2 N),
        sourceClosedPhysicalChargeColumn
          (oppositeGamma M) (originalOppositeGammaGaugeData M G) u') ∈
        (originalOppositeGammaGaugeData M G).deformedModelGraph 1 0 from
        (sourceClosedPhysicalChargeColumn_graph_eq
          (oppositeGamma M) (originalOppositeGammaGaugeData M G)) ▸ hr)
  exact (sourceRestrictedPhysicalGraph_unique
    (oppositeGamma M) (originalOppositeGammaGaugeData M G) hr' hp).symm

#print axioms originalNativeClosedCharge_graph_eq
#print axioms originalNativeClosedCharge_graph_mem_iff
#print axioms originalNativeClosedCharge_domain_eq
#print axioms originalNativeClosedCharge_domain_mem_iff
#print axioms originalNativeClosedCharge_action_parity

end
end FCP.BFSSSU2PhysicalDomainL6H5E8AR
