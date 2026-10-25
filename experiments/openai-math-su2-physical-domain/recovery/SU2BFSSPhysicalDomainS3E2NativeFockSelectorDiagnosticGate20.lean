import SU2BFSSPhysicalDomainS3E1ActualSameColorFermionicBilinearCommSourceProbe

/-!
# S3E2 Gate 20: original Fermion 2 continuous-linear-map instance diagnostic

This deliberately isolates the *actual* Fock CLM scalar action and
finite selector sum before reinserting any real matrix J. It changes
the experimental structure after Gates 14-19; it is NOT an S3E2
source coefficient theorem, a source Spin(9) covariance theorem,
or an eigenpair-existence claim.

No abstract replacement operator carrier, altered CAR normalization,
or nonstandard axiom is permitted. A successful compile earns ZERO
principal FCP source theorem roots.
-/

namespace FCP.BFSSSU2PhysicalDomainS3E2NativeFockSelectorDiagnosticGate20
noncomputable section

open scoped BigOperators
open Finset
open OAI.BFSSQuantum

set_option linter.tacticCheckInstances true

/-- The very CLM carrier used by the pinned original 48-Majorana source. -/
abbrev ActualFockCLM := Fermion 2 →L[ℂ] Fermion 2

/-- Diagnose scalar action on the genuine source Fock zero operator
via CLM extensionality, rather than a detached polymorphic `smul_zero`
which elaborated a different instance in S3E2 Gate 18. -/
theorem actualFockCLM_smul_zero (c : ℂ) :
    c • (0 : ActualFockCLM) = (0 : ActualFockCLM) := by
  apply ContinuousLinearMap.ext
  intro v
  simp only [ContinuousLinearMap.smul_apply, ContinuousLinearMap.zero_apply, smul_zero]

/-- A Kronecker selector on the genuine operator type, proved through
sum_eq_single, with no simplifier traversal of matrix applications. -/
theorem actualFockCLM_selector
    (c : SpinIndex → ℂ) (T : ActualFockCLM) (γ : SpinIndex) :
    (∑ β : SpinIndex, c β • (if β = γ then T else 0)) = c γ • T := by
  classical
  calc
    (∑ β : SpinIndex, c β • (if β = γ then T else 0)) =
        c γ • (if γ = γ then T else 0) := by
      apply Finset.sum_eq_single γ
      · intro β _ hβ
        rw [if_neg hβ]
        exact actualFockCLM_smul_zero (c β)
      · intro h
        exact False.elim (h (Finset.mem_univ γ))
    _ = c γ • T := by
      rw [if_pos rfl]

#print axioms actualFockCLM_smul_zero
#print axioms actualFockCLM_selector

end
end FCP.BFSSSU2PhysicalDomainS3E2NativeFockSelectorDiagnosticGate20
