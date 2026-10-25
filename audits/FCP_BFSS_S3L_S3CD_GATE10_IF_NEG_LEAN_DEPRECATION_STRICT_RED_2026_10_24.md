# BFSS S3L S3C/S3D Gate #10 — original `if_neg` deprecation, strict RED

**2026-10-24 Pacific / 2026-10-25 UTC. Disposition RED, 0/4 accepted in Gate #10. Original S3C theorem statements remain unchanged.**

## Independently inspected immutable primary evidence

- [Actual GitHub Actions run #40153384353](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40153384353), job `121049443139`, source workflow commit `85c59ca4923450c39fe8f90a0d07217051f3d501`, both `completed/failure`.
- Preflight EXACT source SHA checks passed for S3C Git blob `2eaaffa5e3554d3af2cc694c10dd9ac4e1b0f69f`, S3D blob `14fa985ddd24f4fd37db229f7fc87f4303cce4be`, and S3B original parent. Frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` installed and verified. Exact qualified 114-path [S3A/S3B Gate #9](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40152895213) cache restored and accepted original gamma ancestor `.olean` objects verified.
- Original source compilation of `SU2BFSSPhysicalDomainS3CActualMajoranaQuadraticCommutatorProbe.lean` reached real Lean under `-DwarningAsError=true` and failed at precisely two original compiler diagnostics:

```text
SU2BFSSPhysicalDomainS3CActualMajoranaQuadraticCommutatorProbe.lean:56:13: error: `if_neg` has been deprecated: Use `ite_eq_right` instead
SU2BFSSPhysicalDomainS3CActualMajoranaQuadraticCommutatorProbe.lean:56:26: error: `if_neg` has been deprecated: Use `ite_eq_right` instead
```

- All THREE original S3C declaration names nevertheless printed `#print axioms` with only `[propext, Classical.choice, Quot.sound]`: `pairedTheta_quadratic_commutator`, `pairedTheta_quadratic_commutator_other_color`, `pairedTheta_quadratic_commutator_same_color`. These reports are **diagnostic**, NOT strict acceptance because compiler exited with status 1. S3D source was not compiled. Its one target `pairedFermionSpinQuadraticColor_comm_other_color` was not tested. No accepted source theorem roots or S3C/D child cache saved.
- Original compiler logs preserved in artifact `bfss-s3l-s3cd-original-majorana-gate10-40153384353`, ID `12583124780`, archive SHA256 `a7cdbbed9d869b02220b7d2d6325b07b0c27aac95656642182ec0949e2f206bb`.

## Exact source-provenance-preserving remediation

Older source contains line `simp only [if_neg hnot, if_neg hnot', sub_zero] at h`. On pinned Lean 4.34.1 the compiler explicitly instructs `ite_eq_right`. Create a **separate recovery source** with this *exact one-line proof-tactic compatibility edit* `simp only [ite_eq_right hnot, ite_eq_right hnot', sub_zero] at h`; preserve the original committed S3C original blob unmodified. Explicitly pin original and adapter Git source blobs and mechanically verify the only change before compiling the adapted S3C under warning-as-error. Follow with **unchanged actual original S3D**; never represent a successful adapter as source-byte-identical to original, or double-count previously accepted theorem roots.

Strict follow-up gate requires same original math/toolchain and qualified S3A/B 114-path parent cache, exact S3C original blob and adapter hash checks, source-content one-line diff and identical declaration names, bounded fresh Lean proof compilation, exact four expected theorem/axiom reports, zero unauthorized Lean warnings, no `sorryAx`, and a genuinely saved child-cache on full success. If modern `ite_eq_right` changes simplifier behavior, classify first *actual* Lean error and preserve negative knowledge rather than reverting a deprecated rewrite or assuming a green result.

**Scientific boundary:** S3C true delta-one Majorana quadratic CAR and S3D color-locality are infinitesimal Clifford structure only; even successful strict acceptance does not prove same-color Spin(9) rotation of fermions, skew-adjointness, global Spin(9) action, original source cubic supercharge covariance, closed form spectral sectors, or positive normalizable BFSS eigenpair existence. The accepted S2A–D/S3A–B ancestry and H4E3D4C4/H4G1B true operator graph/conditional eigenpair equivalence remain intact. No original math, canonical main or draft PR #25 modifications.