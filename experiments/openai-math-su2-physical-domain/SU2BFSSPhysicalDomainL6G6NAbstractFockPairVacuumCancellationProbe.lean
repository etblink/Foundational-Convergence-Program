import SU2BFSSPhysicalDomainL6G6MSourceVacuumContractionInterfaceProbe

/-!
L6G6N — finite source-Hilbert Fock-pair vacuum cancellation.

A real and imaginary Majorana pair constructed from complex Fock
creator/annihilator operators has zero total off-diagonal color
pair action on any common annihilation vacuum. This uses exactly
off-diagonal CAR and vacuum annihilation; no normalization or
2^24-dimensional matrix enumeration is needed.

This algebraic kernel theorem does not claim that the accepted
24-mode pairedAlgebraData satisfies its explicit premises. That
source-specific specialization is a separate, next obligation.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainL6G6N
noncomputable section
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainL6G6K

/-- The two complementary Majorana phases eliminate the pure
creator-creator and annihilator-annihilator quadratic terms.
No CAR or vacuum property is used in this algebraic identity. -/
private theorem finiteFockMajoranaPhasePair
    (Ci Ai Cj Aj : SourceFiberEnd) :
    (Ci + Ai) * (Cj + Aj) +
      (Complex.I • (Ci - Ai)) * (Complex.I • (Cj - Aj)) =
    (Ci * Aj + Ai * Cj) + (Ci * Aj + Ai * Cj) := by
  rw [smul_mul_smul, Complex.I_mul_I]
  simp only [neg_smul, one_smul]
  noncomm_ring

/-- General algebraic lemma ON THE ORIGINAL FERMION 2 HILBERT TYPE:
if every annihilator kills Ω and cross-mode CAR holds, then each
distinct-mode real/imaginary Majorana pair cancels on Ω. The
common normalization q is arbitrary because the result is zero. -/
theorem finiteFockMajoranaPair_vacuumCancellation
    {I : Type*}
    (C A : I → SourceFiberEnd) (Ω : Fermion 2) (q : ℂ)
    (hA : ∀ k, A k Ω = 0)
    (hCAR : ∀ i j, i ≠ j → A i * C j + C j * A i = 0)
    (i j : I) (hij : i ≠ j) :
    (((q • (C i + A i)) * (q • (C j + A j))) +
      ((q • (Complex.I • (C i - A i))) *
       (q • (Complex.I • (C j - A j))))) Ω = 0 := by
  have hphase :
      ((q • (C i + A i)) * (q • (C j + A j))) +
        ((q • (Complex.I • (C i - A i))) *
         (q • (Complex.I • (C j - A j)))) =
      (q * q) • ((C i * A j + A i * C j) +
                  (C i * A j + A i * C j)) := by
    rw [smul_mul_smul, smul_mul_smul, ← smul_add]
    exact congrArg (fun T : SourceFiberEnd => (q * q) • T)
      (finiteFockMajoranaPhasePair (C i) (A i) (C j) (A j))
  have hcross : A i (C j Ω) = 0 := by
    have h := congrArg (fun T : SourceFiberEnd => T Ω) (hCAR i j hij)
    change A i (C j Ω) + C j (A i Ω) = 0 at h
    rw [hA i, map_zero, add_zero] at h
    exact h
  have hca : (C i * A j + A i * C j) Ω = 0 := by
    change C i (A j Ω) + A i (C j Ω) = 0
    rw [hA j, map_zero, hcross, zero_add]
  rw [hphase, ContinuousLinearMap.smul_apply]
  have htwice :
      ((C i * A j + A i * C j) +
        (C i * A j + A i * C j)) Ω = 0 := by
    rw [ContinuousLinearMap.add_apply, hca, zero_add]
  rw [htwice, smul_zero]

#print axioms finiteFockMajoranaPhasePair
#print axioms finiteFockMajoranaPair_vacuumCancellation
#check @finiteFockMajoranaPair_vacuumCancellation

end
end FCP.BFSSSU2PhysicalDomainL6G6N
