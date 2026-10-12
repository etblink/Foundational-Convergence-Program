import SU2BFSSPhysicalDomainS3L5K2AOriginalFermionActionCovarianceProbe
import Mathlib.Tactic.NoncommRing

/-!
# S3L5K2C1 — abstract source endomorphism Leibniz law

Accept and cache a pure source-operator composition identity before asking
Lean to elaborate any of the concrete paired BFSS Fock operators. This is
the pinned Mathlib noncommutative endomorphism-ring identity, with all arguments source-parametric. Original K1 remains separately qualified and unmodified.
No hidden physical premise or cubic-charge covariance claim.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K2C1
noncomputable section
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5K1

theorem sourceComm_comp_raw (G F P : SourceEnd) :
    G.comp (F.comp P) - (F.comp P).comp G =
      (G.comp F - F.comp G).comp P +
        F.comp (G.comp P - P.comp G) := by
  -- The original SourceEnd is definitionally Module.End ℂ (SmoothCore 2).
  -- Pinned Mathlib's endomorphism-ring multiplication is composition.
  -- noncomm_ring retains the original NONCOMMUTATIVE operator order.
  change G * (F * P) - (F * P) * G =
    (G * F - F * G) * P + F * (G * P - P * G)
  noncomm_ring

#print axioms sourceComm_comp_raw

end
end FCP.BFSSSU2PhysicalDomainS3L5K2C1
