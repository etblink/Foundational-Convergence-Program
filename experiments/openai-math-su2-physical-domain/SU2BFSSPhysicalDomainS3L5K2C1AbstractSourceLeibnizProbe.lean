import SU2BFSSPhysicalDomainS3L5K2AOriginalFermionActionCovarianceProbe

/-!
# S3L5K2C1 — abstract source endomorphism Leibniz law

Accept and cache a pure source-operator composition identity before asking
Lean to elaborate any of the concrete paired BFSS Fock operators. This is
the existing qualified K1 derivation, with all arguments source-parametric.
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
  exact sourceComm_comp G F P
    (G.comp F - F.comp G) (G.comp P - P.comp G) rfl rfl

#print axioms sourceComm_comp_raw

end
end FCP.BFSSSU2PhysicalDomainS3L5K2C1
