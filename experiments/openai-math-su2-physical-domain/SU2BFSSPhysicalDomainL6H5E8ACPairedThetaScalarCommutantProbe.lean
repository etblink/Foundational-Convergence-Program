import SU2BFSSG1APairedThetaProbe

/-!
L6H5E8AC — proposed source-actual 48-Majorana scalar commutant.

Mathematical route: the exact source pairedTheta family was ALREADY proved
irreducible by G1A. A complex-linear endomorphism has an eigenvalue on the
finite-dimensional complex source Fermion 2. If it commutes with the actual
48 Majoranas, its eigenspace is invariant and hence is all of Fermion 2.
This yields a scalar operator, with no matrices of size 2^24 constructed.

This file is PROSPECTIVE until an exact-pinned, strict axiom-audited gate.
It does not identify the separate manuscript Clifford module or its
Spin(48) lift, gauge implementer, Hamiltonian domain or spectrum.
-/

set_option autoImplicit false
set_option maxHeartbeats 200000
set_option synthInstance.maxHeartbeats 120000

namespace FCP.BFSSSU2PhysicalDomainL6H5E8AC
noncomputable section

open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A

/-- Schur's lemma on the ACTUAL BFSS Fermion 2 module:
every bounded complex-linear operator commuting with all original
paired 48 self-adjoint Majoranas is a scalar multiple of identity. -/
theorem pairedTheta_commutant_scalar
    (T : Fermion 2 →L[ℂ] Fermion 2)
    (hcomm : ∀ (α : SpinIndex) (A : ColorIndex 2) (v : Fermion 2),
      T (pairedTheta α A v) = pairedTheta α A (T v)) :
    ∃ c : ℂ, T = c • (1 : Fermion 2 →L[ℂ] Fermion 2) := by
  let L : Module.End ℂ (Fermion 2) := T.toLinearMap
  obtain ⟨c, hc⟩ := Module.End.exists_eigenvalue L
  let W : Submodule ℂ (Fermion 2) := L.eigenspace c
  have hstable :
      ∀ (α : SpinIndex) (A : ColorIndex 2),
        ∀ v ∈ W, pairedTheta α A v ∈ W := by
    intro α A v hv
    have heig : L v = c • v :=
      (Module.End.mem_eigenspace_iff).mp hv
    apply (Module.End.mem_eigenspace_iff).mpr
    change T (pairedTheta α A v) = c • pairedTheta α A v
    calc
      T (pairedTheta α A v) = pairedTheta α A (T v) := hcomm α A v
      _ = pairedTheta α A (c • v) := by
        exact congrArg (pairedTheta α A) heig
      _ = c • pairedTheta α A v := map_smul _ _ _
  have hn : W ≠ ⊥ := hc
  have htop : W = ⊤ :=
    (pairedTheta_irreducible W hstable).resolve_left hn
  refine ⟨c, ?_⟩
  apply ContinuousLinearMap.ext
  intro v
  have hv : v ∈ W := by
    rw [htop]
    exact Submodule.mem_top
  have heig : L v = c • v :=
    (Module.End.mem_eigenspace_iff).mp hv
  -- The locally named algebraic endomorphism is definitionally the
  -- underlying linear map of T; force that equality before simp.
  change T v = c • v at heig
  simpa only [ContinuousLinearMap.smul_apply, ContinuousLinearMap.one_apply]
    using heig

#print axioms pairedTheta_commutant_scalar
#check @pairedTheta_commutant_scalar

end
end FCP.BFSSSU2PhysicalDomainL6H5E8AC
