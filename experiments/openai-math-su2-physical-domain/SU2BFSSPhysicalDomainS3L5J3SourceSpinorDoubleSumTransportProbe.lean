import SU2BFSSPhysicalDomainS3L5J2ComplexGammaCoefficientProbe

/-!
# S3L5J3 — finite spinor reindex with the genuine source operator family

The gate checks source-level sum exchange only; no claim of completed
free-spinor kinetic covariance follows from this intermediate lemma.

Gates #59/#64 established the original spatial orbital and complex
-i gamma/J coefficient. Before contracting the real 9 × 3 × 16
source kinetic response, this gate independently transports the
two actual finite spinor indices across scalar-weighted endomorphisms
on original SmoothCore 2. No full Fock or charge definition is unfolded.

The specialized theorem uses the original paired AlgebraData,
pairedPlaneSpinGenerator, and named fermionAction-derivative
kineticTerm from qualified S3L5I2A. The remaining proof bridge must
turn the source response's spin-generator postcomposition of a sum into
this double-sum form and combine the orbital derivative variation.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5J3
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5I2A

/-- Finite spinor exchange of double scalar-weighted sums, on the
genuine source SmoothCore 2 endomorphism type. No physics premise. -/
theorem sourceSpinorDoubleSum_reindex
    (c : SpinIndex → ℂ)
    (d : SpinIndex → SpinIndex → ℂ)
    (F : SpinIndex → SourceEnd) :
    (∑ γ : SpinIndex, c γ •
       (∑ β : SpinIndex, d γ β • F β)) =
    ∑ β : SpinIndex,
      (∑ γ : SpinIndex, c γ * d γ β) • F β := by
  classical
  calc
    (∑ γ : SpinIndex, c γ •
       (∑ β : SpinIndex, d γ β • F β)) =
        ∑ γ : SpinIndex, ∑ β : SpinIndex,
          (c γ * d γ β) • F β := by
            simp_rw [Finset.smul_sum, smul_smul]
    _ = ∑ β : SpinIndex, ∑ γ : SpinIndex,
          (c γ * d γ β) • F β := by
            rw [Finset.sum_comm]
    _ = ∑ β : SpinIndex,
          (∑ γ : SpinIndex, c γ * d γ β) • F β := by
            simp_rw [Finset.sum_smul]

/-- Source-specialized spinor contraction with the ORIGINAL paired
gamma weights (including -Complex.I), spin generator, and fermionic
kineticTerm. The spatial k and color A remain fixed in this gate. -/
theorem pairedKineticSpinorTerm_reindex
    (i j k : SpaceIndex) (α : SpinIndex) (A : ColorIndex 2) :
    (∑ γ : SpinIndex,
      kineticWeight pairedAlgebraData α k A γ •
        (∑ β : SpinIndex,
          (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
            kineticTerm pairedAlgebraData k A β))) =
      ∑ β : SpinIndex,
        (∑ γ : SpinIndex,
          kineticWeight pairedAlgebraData α k A γ *
            ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ)) •
              kineticTerm pairedAlgebraData k A β := by
  exact sourceSpinorDoubleSum_reindex
    (fun γ => kineticWeight pairedAlgebraData α k A γ)
    (fun γ β => ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ))
    (kineticTerm pairedAlgebraData k A)

#print axioms sourceSpinorDoubleSum_reindex
#print axioms pairedKineticSpinorTerm_reindex

end
end FCP.BFSSSU2PhysicalDomainS3L5J3
