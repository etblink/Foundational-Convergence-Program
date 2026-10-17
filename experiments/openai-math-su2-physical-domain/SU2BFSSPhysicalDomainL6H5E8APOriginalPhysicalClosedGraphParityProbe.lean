import SU2BFSSPhysicalDomainL6H5E8AOOriginalPhysicalCoreGraphGeneratorParityProbe
import SU2BFSSPhysicalDomainL6H5E8AJOriginalFullL2ParityUnitaryProbe
import Mathlib.Topology.Homeomorph.Defs

/-!
# H5E8AP — original restricted sixteen-charge CLOSED GRAPH under parity

Source-qualified AO supplies both directions of the *actual* gauge-invariant
sixteen-charge graph generator correspondence. Original AI/AJ prove genuine
spatial parity on the real FullL2 Hilbert space. This probe establishes a
homeomorphism of the exact FullL2 × (SpinIndex → FullL2) graph ambient space
and transports the closure of the ORIGINAL source physical core graph.

This is source operator graph geometry, not manuscript/Lean representation
identity, not equality of arbitrary full-space and physical restrictions,
and not yet a theorem identifying the associated Hamiltonian domains.

Pin the original BFSS source, Lean and Mathlib. Require fresh .olean,
all root axiom audits and no sorryAx; no inference from a skipped CI gate.
-/

set_option autoImplicit false
set_option maxHeartbeats 240000

namespace FCP.BFSSSU2PhysicalDomainL6H5E8AP
noncomputable section

open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainL6H5E8AD
open FCP.BFSSSU2PhysicalDomainL6H5E8AI
open FCP.BFSSSU2PhysicalDomainL6H5E8AJ
open FCP.BFSSSU2PhysicalDomainL6H5E8AN
open FCP.BFSSSU2PhysicalDomainL6H5E8AO

/-- Applying the source pair parity twice is literally the identity,
including every one of the sixteen source spinor output components. -/
theorem originalPhysicalGraphPairParity_twice {N : ℕ}
    (p : FullL2 N × (SpinIndex → FullL2 N)) :
    originalPhysicalGraphPairParity
      (originalPhysicalGraphPairParity p) = p := by
  change
    (originalFullL2Parity (originalFullL2Parity p.1),
      fun α => originalFullL2Parity (originalFullL2Parity (p.2 α))) = p
  cases p with
  | mk x y =>
    apply Prod.ext
    · exact originalFullL2Parity_involutive x
    · funext α
      exact originalFullL2Parity_involutive (y α)

/-- Continuity on the exact original product Hilbert topology:
first source FullL2 output and the full finite spinor function output. -/
theorem originalPhysicalGraphPairParity_continuous {N : ℕ} :
    Continuous (originalPhysicalGraphPairParity (N := N)) := by
  change Continuous (fun p : FullL2 N × (SpinIndex → FullL2 N) =>
    (originalFullL2Parity p.1,
      fun α => originalFullL2Parity (p.2 α)))
  apply Continuous.prod_mk
  · exact (originalFullL2Parity (N := N)).continuous.comp continuous_fst
  · apply continuous_pi
    intro α
    exact (originalFullL2Parity (N := N)).continuous.comp
      ((continuous_apply α).comp continuous_snd)

/-- A genuine homeomorphism, using the actual source parity as its
own inverse. We do not yet promote it to a Hilbert product unitary. -/
noncomputable def originalPhysicalGraphPairHomeomorph {N : ℕ} :
    (FullL2 N × (SpinIndex → FullL2 N)) ≃ₜ
      (FullL2 N × (SpinIndex → FullL2 N)) where
  toEquiv :=
    { toFun := originalPhysicalGraphPairParity
      invFun := originalPhysicalGraphPairParity
      left_inv := originalPhysicalGraphPairParity_twice
      right_inv := originalPhysicalGraphPairParity_twice }
  continuous_toFun := originalPhysicalGraphPairParity_continuous
  continuous_invFun := originalPhysicalGraphPairParity_continuous

/-- The literal source original gauge-invariant sixteen-charge
core graph as a SET, not an invented closed or maximal operator. -/
def originalPhysicalCoreGraphSet {N : ℕ}
    (M : AlgebraData N) (G : M.GaugeData) :
    Set (FullL2 N × (SpinIndex → FullL2 N)) :=
  Set.range (fun f : G.invariantCore =>
    (coreToL2 f.val, M.chargeVector f.val))

/-- AO's two qualified source directions imply exact equality of the
actual restricted core graph generator SETS after source parity. -/
theorem originalPhysicalCoreGraphSet_image {N : ℕ}
    (M : AlgebraData N) (G : M.GaugeData) :
    originalPhysicalGraphPairParity '' originalPhysicalCoreGraphSet M G =
      originalPhysicalCoreGraphSet (oppositeGamma M)
        (originalOppositeGammaGaugeData M G) := by
  ext p
  constructor
  · rintro ⟨q, ⟨f, rfl⟩, rfl⟩
    rcases originalPhysicalCorePair_to_opposite M G f with ⟨f', hf'⟩
    exact ⟨f', hf'⟩
  · rintro ⟨f', rfl⟩
    rcases originalPhysicalCorePair_from_opposite M G f' with ⟨f, hf⟩
    exact ⟨_, ⟨f, rfl⟩, hf⟩

/-- Genuine CLOSED original physical sixteen-charge graph transport.
Closure is taken in the exact paired FullL2 × sixteen-FullL2 product.
Nothing about the independently specified paper Hamiltonian is assumed. -/
theorem originalPhysicalClosedGraphSet_image {N : ℕ}
    (M : AlgebraData N) (G : M.GaugeData) :
    originalPhysicalGraphPairParity ''
        closure (originalPhysicalCoreGraphSet M G) =
      closure (originalPhysicalCoreGraphSet (oppositeGamma M)
        (originalOppositeGammaGaugeData M G)) := by
  change (originalPhysicalGraphPairHomeomorph (N := N)) ''
      closure (originalPhysicalCoreGraphSet M G) =
    closure (originalPhysicalCoreGraphSet (oppositeGamma M)
      (originalOppositeGammaGaugeData M G))
  rw [(originalPhysicalGraphPairHomeomorph (N := N)).image_closure]
  exact congrArg closure (originalPhysicalCoreGraphSet_image M G)

#print axioms originalPhysicalGraphPairParity_twice
#print axioms originalPhysicalGraphPairParity_continuous
#print axioms originalPhysicalGraphPairHomeomorph
#print axioms originalPhysicalCoreGraphSet
#print axioms originalPhysicalCoreGraphSet_image
#print axioms originalPhysicalClosedGraphSet_image

end
end FCP.BFSSSU2PhysicalDomainL6H5E8AP
