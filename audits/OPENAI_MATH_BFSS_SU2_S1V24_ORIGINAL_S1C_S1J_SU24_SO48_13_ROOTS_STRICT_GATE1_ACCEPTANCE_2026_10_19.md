# BFSS S1V24 — original 24-mode SU24 and 48-real SO48 matrix strict source requalification ACCEPTED

**Date:** October 19, 2026 PDT. **Disposition:** `S1V24_G1_ORIGINAL_S1C_5_AND_S1J_8_ROOTS_KERNEL_PASS__EXACT_S1V23_CACHE_RESTORED__NEW_SOURCE_MATRIX_CACHE_SAVED`.

## Source-exact verification

- [GitHub Actions run #39321499029](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39321499029), job `118296417014`, completed SUCCESS. Immutable workflow checkout commit `92de709221e8726df68f8d107f84002e9f94bebf`.
- Exact pinned original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Unchanged actual source SHA1: `SU2BFSSPhysicalDomainS1COneParticleSpecialUnitaryProbe.lean` `c5de7c744744212711780aee2d4f9742c002cd84` and `SU2BFSSPhysicalDomainS1JActual48RealMajoranaColorActionProbe.lean` `3f845ae219586be47fa76aabc3259027b1bb4bae`.
- Exact accepted S1V23 historical source curve and original G4M cache `bfss-s1v23-isolated-source-plus-i-quarter-original-v1-adc7f124-lean4341-d13f23b-Linux-X64` was restored with `cache-hit == true`; actual L6G6X/G3C/G4M/S1V23 `.olean` prerequisites checked.
- S1C compiled with original **five** fully qualified `#print axioms` declarations: `adjointColorMatrix_det_sq_one`, `oneParticleMatrix_det_one`, `complexOneParticleMatrix_det_one`, `complexOneParticleSpecialUnitary`, `complexOneParticleSpecialUnitaryHom`.
- S1J compiled with original **eight** roots: `sourceRealMajoranaMatrix`, `sourceRealMajoranaMatrix_entry`, `sourceRealMajoranaMatrix_one`, `sourceRealMajoranaMatrix_mul`, `sourceRealMajoranaMatrix_transpose`, `sourceRealMajoranaMatrix_orthogonal`, `sourceRealMajoranaMatrix_det_one`, `sourceRealMajoranaMatrixHom`.
- Exactly **13/13** axiom reports, with all dependencies in `[propext, Classical.choice, Quot.sound]`; no `sorryAx`, missing extra roots or Lean compiler errors. Original per-module verification emitted `S1V24_ORIGINAL_TYPED_SOURCE_MODULE_AXIOM_PASS` for both 5 and 8 and final `ORIGINAL_S1V24_S1C_S1J_THIRTEEN_ROOTS_SOURCE_MATRIX_CACHE_PASS`.
- Actual Actions cache save: `bfss-s1v24-isolated-source-s1c-s1j-original-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

## Actual scientific scope

The genuine source one-particle complex `SU(24)` action and 48-real matrix `S1J.sourceRealMajoranaMatrix : GaugeGroup 2 → Matrix (Fin 24 × Fin 2) (Fin 24 × Fin 2) ℝ`, built from source `G3B.oneParticleMatrix(g) ⊗ I₂`, are accepted under the same original positive-i paired source curve cache. The S1J source 48-real representation has exact matrix group law, orthogonality and determinant +1. This is NOT independently constructed `Spin(48)`.

## Next bounded decision and preserved risks

S1V25 author candidate `SU2BFSSPhysicalDomainS1V25HistoricalSourceQuarter48BlockEntryProbe.lean` (first authored at `aa0acb1dd58490e826febea0c947afe0ec8b936e`, current blob `4fe6ec843a1231d601374e98463b474435c7877d`) is **not yet compiled**. It requires the exact saved S1V24 cache and proves the real historical L6G6X source curve's quarter adjoint 3x3 matrix and each of the original S1J 48x48 real matrix block entries using already accepted actual G4K and S1V23 identities. Strict source pin and **two** axiom checks, no new assumptions or S1G Euler import. Do not promote S1V25 until strict CI finishes and saves a separate cache.

Even an S1V25 proof covers only the TRUE ORIGINAL 48-real source matrix at a SINGLE historic SU2 group point. Matching that matrix to separately built sixteen-rotor `S1V18.source48QuarterDiagonalMatrix` still requires typed shared imports and source label equivalence and a separate independently qualified S1V0–S1V18 `.olean` cache. Global continuous SU2→Spin48 lift, independent complex Clifford module unitary intertwiner, domain/operator matching and BFSS spectral conclusions are open. No changes to `main`, PR #25 or pinned upstream `etblink/math`.
