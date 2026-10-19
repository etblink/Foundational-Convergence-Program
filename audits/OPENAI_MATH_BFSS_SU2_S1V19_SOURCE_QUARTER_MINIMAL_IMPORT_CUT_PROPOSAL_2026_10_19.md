# BFSS S1V19 — original z-quarter source coefficient: minimal import cut before full S1G closure

**Date:** 2026-10-19 PDT. **Status:** audited source dependency diagnosis and proposed proof factorization only; **NO newly accepted theorem**.

## Current milestone and requested path

The exact [original G1B–G3B gate #39296091346](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39296091346) qualified 20 axiom-clean OAI source roots and saved `bfss-s1v19-isolated-g3b-original-v1-adc7f124-lean4341-d13f23b-Linux-X64`. [Audit](./OPENAI_MATH_BFSS_SU2_S1V19_ORIGINAL_G1B_G3B_20_ROOTS_STRICT_GATE1_ACCEPTANCE_2026_10_19.md).

The bounded independent original G3C/G4A/G4B strict attempt is [#39297465939](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39297465939); status at this research-note snapshot is **RUNNING / UNQUALIFIED**. It uses the accepted G3B cache and tests 9+9+7=25 exact roots. Do not record it as green on this note's authority.

## First real source/S1G import-cost issue

The existing uncompiled `SU2BFSSPhysicalDomainS1V19OriginalSourceZQuarterAdjointCoefficientBridgeProbe.lean` directly imports `S1GExactSourceRelativeCharacterTriviality`, `S1LOriginalManuscript48ColorLabelBridge`, `S1V18QuarterFlipRealMajoranaDiagonalMatrix`, `S1V21OriginalUpstreamAdjointQuarterConditional`.

The full `S1G` import is much stronger than needed for its sole quarter-matrix output: it imports `S1FSourceGaugeCurveHalving` and `L6H5E8YOriginalSU2ExactSourceEulerFactorization`; these recursively import S1E/D relative-character and G4B plus L6H5E8Q and upstream physical Gauss-kernel/Quaternion/Euler scaffolding. Most of that machinery proves **global character triviality**, whereas S1V19 only needs ONE +i z-axis source matrix value.

Exact S1E original definition (do not invent or modify a group element):
```lean
noncomputable def sourceZ (t : ℝ) : GaugeGroup 2 :=
  sourcePlusIGaugeCurve (2 : Fin 3) t
```
S1G quarter time:
```lean
def sourceQuarterTurnTime : ℝ := (Real.pi / 2) * Real.sqrt 2
```
Original S1G already proves `source_quarter_z_matrix` equal to `!![Complex.I, 0; 0, -Complex.I]`, relying on exactly `source_z_gaugeCurve_diagonal_exp`, `sourceZDiagonal_exp_zero`, `sourceZDiagonal_exp_one`, and `source_quarter_angle`. Its full G1/S1G group-level class prerequisites are unnecessary for this *local matrix equality*.

The previously accepted and unmodified S1V21 `original_upstream_adjointCoefficient_of_pinned_quarter` requires visibly and honestly only (i) original OAI color-field identity `M.color = normalizedPauli`, (ii) the actual original SU(2) group element matrix equality `(g : ColorMatrix 2) = sourceQuarterZLiteral`. F4/G1A and G3A/G3B now independently provide the first requirement. Second needs **actual sourcePlusIGaugeCurve z** and exactly +i normalization, not a standalone surrogate.

## Proposed minimal new source gate, before massive original S1G

1. Move/copy the **unchanged mathematical proof** of the original L6H5E8R `source_z_tangent_diagonal` and `source_z_gaugeCurve_diagonal_exp` into a new, separately qualified source-only module importing `L6G6XOriginalSU2GaugeCurve`, original G1A/G3B and `Mathlib.Analysis.Normed.Algebra.MatrixExponential`, but NOT `L6H5E8QOriginalSU2QuaternionUnitSphere`. Existing R imports Q although the 2 local proofs inspect only the positive-i paired Pauli matrix and `Matrix.exp_diagonal`. **Verify this dependency reduction under Lean; do not assume a success by inspection.**
2. Prove the source quarter scalar identities with exact `Real.pi / 2 * Real.sqrt 2`, `pauliScale_mul_sqrt`, `Complex.exp` and `Real.cos_pi_div_two`/`sin_pi_div_two`, either by importing a source-light diagonal-exponential lemma or by direct component evaluation. Do not introduce a parameter `hg` and then pretend it is discharged.
3. Apply previously accepted S1V21 upstream trace identity to the actual `sourcePlusIGaugeCurve (2 : Fin 3) ((Real.pi / 2) * Real.sqrt 2)` and `pairedAlgebraData`. Retain source G3A row/output B, column/input A. Call this a local source-curve theorem until the original S1E `sourceZ` definition itself is imported and definitionally identified.
4. Only then re-import S1G and S1L as independently needed for global source-curve identities and the true 48-index Fock label matrix; its global positive-i original SU2→Spin48 homomorphism and cross-manuscript unitary still require separate full proofs.

**Risk / negative knowledge:** Importing `L6G6X` itself is nontrivial: its prior import path goes `L6G6W` → `L6G6V` → `L6G6U` → `L6G6D` (plus original `OAI.GaugeGeometry`). Therefore this cut removes the huge **H5E8Q/Euler/S1F** dependency, not the source-curve differentiability history. Build/cache only required original OAI and Lean modules, hash-pin them, check all axioms, stop on first causal failure. No expensive full original S1G build should be triggered solely by a single local Pauli quarter matrix.

**Boundary:** Even a kernel-green local original SU2 element equality does not imply a global continuous Spin(48) lift, a Hilbert-space Clifford intertwiner, or the BFSS positive mass gap. No merge to main/PR25, no pin drift, no novel assumptions.
