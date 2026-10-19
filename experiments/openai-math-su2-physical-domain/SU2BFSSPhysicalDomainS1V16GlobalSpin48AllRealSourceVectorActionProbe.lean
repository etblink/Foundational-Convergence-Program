import SU2BFSSPhysicalDomainS1V15GlobalSixteenSpin48AllColorAxisActionProbe

/-!
S1V16 — global actual sixteen-rotor Spin48 action on ARBITRARY
real source48 vectors, extending S1V15's action on all 48
concrete source Majorana generators.

The source space is literally (Fin24 × Fin2) → ℝ with Q=sum squares.
Using only the S1V5 exact 16×3 equivalence, canonical Pi.single basis
and the S1V15 axiom-clean 48-generator action, this candidate proves
that conjugation by the ACTUAL ordered sixteen-factor spinGroup Q
element equals Clifford.ι on the explicit source coordinate flip.

The coordinate flip is defined by the concrete source basis sum,
not as an assumed orthogonal-group homomorphism. This candidate
still does NOT import original G1A/S1G namespaces, prove an all-SU2
group lift or any Hilbert/Fock equivalence.

UNQUALIFIED until the pinned strict Lean CI and #print axioms PASS.
-/
set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSS1V16
noncomputable section

open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSS1V8
open FCP.BFSSS1V9
open FCP.BFSSS1V11
open FCP.BFSSS1V15

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- Every actual original-sized 48-real Majorana source vector
decomposes in the exactly enumerated 16×3 source coordinate basis.
The equivalence and its inverse are concrete S1V5 definitions. -/
theorem source48_eq_sum_color_axes (v : Source48Vector) :
    v = ∑ p : RealSpinBlock × ColorLabel,
      (v (sourceBlockColorLabel p.1 p.2)) •
        sourceBlockColorAxis p.1 p.2 := by
  classical
  calc
    v = ∑ i : SourceLabel,
        (v i) • Pi.single (M := fun _ => ℝ) i 1 :=
      pi_eq_sum_univ' v
    _ = ∑ p : RealSpinBlock × ColorLabel,
        (v (sourceBlockColorLabel p.1 p.2)) •
          sourceBlockColorAxis p.1 p.2 := by
      refine Fintype.sum_equiv sourceBlockColorEquiv.symm
        (fun i : SourceLabel =>
          (v i) • Pi.single (M := fun _ => ℝ) i 1)
        (fun p : RealSpinBlock × ColorLabel =>
          (v (sourceBlockColorLabel p.1 p.2)) •
            sourceBlockColorAxis p.1 p.2) ?_
      intro i
      change (v i) • Pi.single (M := fun _ => ℝ) i 1 =
        (v (sourceBlockColorEquiv (sourceBlockColorEquiv.symm i))) •
          Pi.single (M := fun _ => ℝ)
            (sourceBlockColorEquiv (sourceBlockColorEquiv.symm i)) 1
      simp only [Equiv.apply_symm_apply]

/-- Explicit real 48-vector, with the exact -,-,+ quarter-turn
on each of the sixteen indexed three-color coordinate axes. -/
noncomputable def source48QuarterFlip (v : Source48Vector) :
    Source48Vector :=
  ∑ p : RealSpinBlock × ColorLabel,
    (v (sourceBlockColorLabel p.1 p.2)) •
      (if p.2 = (2 : Fin 3)
        then sourceBlockColorAxis p.1 p.2
        else -sourceBlockColorAxis p.1 p.2)

/-- Linear Clifford inclusion of the exact finite source coordinate
decomposition; no external arbitrary Clifford representation. -/
theorem source48_ι_eq_sum_color_axes (v : Source48Vector) :
    CliffordAlgebra.ι Q v =
      ∑ p : RealSpinBlock × ColorLabel,
        (v (sourceBlockColorLabel p.1 p.2)) •
          CliffordAlgebra.ι Q
            (sourceBlockColorAxis p.1 p.2) := by
  conv_lhs => rw [source48_eq_sum_color_axes v]
  simp only [map_sum, map_smul]

/-- The actual FULL sixteen-rotor ordered Spin48 product implements
the explicit source-sized real-vector z-quarter-turn flip on every
one of the uncountably many real vectors, not just on the basis. -/
theorem sourceSixteenColorRotor_conjugates_every_source_vector
    (v : Source48Vector) :
    (sourceSixteenColorRotor : C) *
        CliffordAlgebra.ι Q v *
        star (sourceSixteenColorRotor : C) =
      CliffordAlgebra.ι Q (source48QuarterFlip v) := by
  let s : C := sourceSixteenColorRotor
  have hbasis := source48_ι_eq_sum_color_axes v
  change s * CliffordAlgebra.ι Q v * star s =
    CliffordAlgebra.ι Q (source48QuarterFlip v)
  calc
    s * CliffordAlgebra.ι Q v * star s =
      s * (∑ p : RealSpinBlock × ColorLabel,
        (v (sourceBlockColorLabel p.1 p.2)) •
          CliffordAlgebra.ι Q (sourceBlockColorAxis p.1 p.2)) *
        star s := by rw [hbasis]
    _ = ∑ p : RealSpinBlock × ColorLabel,
        (v (sourceBlockColorLabel p.1 p.2)) •
          (s * CliffordAlgebra.ι Q
            (sourceBlockColorAxis p.1 p.2) * star s) := by
      simp only [Finset.mul_sum, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro p hp
      simp only [mul_smul, smul_mul_assoc]
    _ = ∑ p : RealSpinBlock × ColorLabel,
        (v (sourceBlockColorLabel p.1 p.2)) •
          (if p.2 = (2 : Fin 3)
            then CliffordAlgebra.ι Q (sourceBlockColorAxis p.1 p.2)
            else -CliffordAlgebra.ι Q
              (sourceBlockColorAxis p.1 p.2)) := by
      apply Finset.sum_congr rfl
      intro p hp
      rw [sourceSixteenColorRotor_conjugates_each_source_axis]
    _ = CliffordAlgebra.ι Q (source48QuarterFlip v) := by
      simp only [source48QuarterFlip, map_sum, map_smul]
      apply Finset.sum_congr rfl
      intro p hp
      by_cases h : p.2 = (2 : Fin 3)
      · simp [h]
      · simp [h]

#print axioms source48_eq_sum_color_axes
#print axioms source48QuarterFlip
#print axioms source48_ι_eq_sum_color_axes
#print axioms sourceSixteenColorRotor_conjugates_every_source_vector

end
end FCP.BFSSS1V16
