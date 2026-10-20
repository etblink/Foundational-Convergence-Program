# S1V52L7A — source +i gauge-curve normalization and finite proof import-risk audit

**Disposition:** `L7A_PROVENANCE_REVIEW__80_ROOTS_AT_ENTRY__FINITE_COORDINATE_INTERFACE_L7A0_UNQUALIFIED_PENDING_GATE1__ACTUAL_NATIVE_CURVE_TRANSPORT_L7A1_UNQUALIFIED__EULER_IMPORT_THINNING_REQUIRED`.

## Independently inspected original finite-source claims

- Historical accepted source `SU2BFSSPhysicalDomainL6G6XOriginalSU2GaugeCurveProbe.lean` defines the **actual** `sourcePlusIGaugeCurve (c : ColorIndex 2) (t : ℝ) : GaugeGroup 2` using the pinned `NormedSpace.exp (t • ((Complex.I : ℂ) • pairedAlgebraData.color c))`. This is the genuine `OAI.BFSSQuantum.GaugeGroup 2`, not a reconstructed SU2 subgroup.
- Historical `L6H5E8RSourceNormalizedZColorFlowDiagonalProbe.lean` establishes the native Z matrix `sourcePlusIGaugeCurve 2 t` is diagonal with entries `Complex.exp (sourceZDiagonal t i)`. Historical `L6H5E8TSourcePositiveIYColorRealRotationProbe.lean` establishes the native Y matrix `sourcePlusIGaugeCurve 1 t = sourceYRotation t`, upper row `[cos(sourceYAngle t),sin(sourceYAngle t)]` and lower row `[-sin(...),cos(...)]`. The exact source normalized real angle is **`sourceYAngle t = t * FCP.BFSSSU2.pauliScale`**, and `pauliScale^2=1/2`, not an assumed `t/2`. Historical theorem `sourceZDiagonal_exp_zero` converts the Z diagonal into **positive** imaginary coefficient `+sin(sourceYAngle t)`, preserving the source +i Pauli convention.
- Historical original native `L6H5E8YOriginalSU2ExactSourceEulerFactorizationProbe.lean` proves actual `sourcePlusIGaugeCurve 2 a * sourcePlusIGaugeCurve 1 b * sourcePlusIGaugeCurve 2 c = g`, for exact original Euler-time functions. This does not yet imply any source 48-Spin lift.
- The newly qualified C1 `originalNativeQuaternionCoords g` is by definition the real and imaginary parts of **native** gauge first-row entries (0,0) and (0,1). Its own source and pin have not changed.

## Import closure risk discovered

The historical R/T import chain is NOT finite-source-only, despite its finite mathematical statements: T → S → R → Q → P → O → N → M, where N/M import the historical physical-Hilbert/Gauss-kernel chain. Starting a full cold historical H5E8T import under the new S1V52 isolated source cache would risk recreating many expensive/unrelated modules. The historical full `bfss-l6g1-original-spin-identity.yml` compiles H5E8R/S/T as later stages of an accepted large workflow, but finding their source files is not evidence that their .olean objects are currently present in the S1V52 branch cache.

## Two bounded independent next proof stages

**L7A0** isolates the strictly native first-row-to-quaternion coordinate map with source-exact matrix equalities kept as explicit theorem hypotheses. Two targets:
- `g[0,0]=c+i s, g[0,1]=0 ⟹ originalNativeQuaternionCoords g=(c,s,0,0)`;
- `g[0,0]=c, g[0,1]=s ⟹ originalNativeQuaternionCoords g=(c,0,s,0)`.

Theorem hypotheses are NOT postulated premises of a final SU2→Spin result; they are explicit intermediate proof obligations. A scoped strict Gate #1 verifies this finite interface against accepted C1 cache without claiming native curve equality.

**L7A1**, source staged only, is the genuine original-curve transport that must discharge both matrix-entry equalities with the historical R/T source definitions, retaining literal `t*pauliScale`. It is NOT ACCEPTED until it compiles in a pinned build with fully qualified imported .olean closure and passes allowed axioms. If historical artifact-cache restoration is unavailable, build and independently qualify a narrow finite R/S/T source re-export based on the unchanged original positive-i matrix generator, instead of blindly importing physical charge/Gauss closure into the new S1V52 branch. Negative knowledge: do not substitute abstract SU2 curves, reverse time signs, drop sine's positive sign, or replace source exponent with an unproved finite rotation.

After L7A1: use accepted L3/L6 Spin family theorems for L7B, then accepted native original ZYZ Euler and C2E monoid hom for L7C/D. Further original 48 action, topology and spectral physics stay open.

Pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original BFSS Core blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No new theorem count is promoted here; canonical main, upstream math and draft PR #25 untouched.
