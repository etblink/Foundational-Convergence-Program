# S1F source +i gauge-curve identities accepted; S1G Euler olean boundary

**Date:** October 18, 2026 PDT. **S1F disposition:** `PASS__ORIGINAL_SOURCE_SU2_POSITIVE_I_HALF_PARAMETER_AND_INVERSE__SIX_AXIOM_CLEAN_ROOTS`. **S1G disposition:** `UNQUALIFIED__EXACT_ACCEPTED_SOURCE_EULER_OLEAN_MISSING`.

## S1F exact strict acceptance

- [BFSS SU2 Source Curve Halving #9](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39107851570) **SUCCESS**, job **117617566916**, source/workflow head `503fb9dc8c04f4c37a9807973d968c1ce217e699`.
- Exact source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1FSourceGaugeCurveHalvingProbe.lean`, immutable Git blob `79f34a8d5dc8c7d2ebcf605f709f4d9f2c6b2b14`. Pinned upstream source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Full original 48-theta S1A/S1B and scalar-character S1D/S1E prerequisite gates rebuilt/audited in the same pinned job. New importable S1F `.olean` compiled. All SIX final S1F declarations printed only `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`, errors, unknown identifiers. Strict marker `S1F_SOURCE_SU2_PLUS_I_CURVE_HALF_INVERSE_6_ROOTS_KERNEL_PASS`.
- New exact source-typed roots: `original_source_curve_half`, `original_source_curve_neg_eq_inv`, `original_source_z_half`, `original_source_y_half`, `original_source_z_neg_eq_inv`, `original_source_y_neg_eq_inv`.

**Mathematical strength:** actual `sourcePlusIGaugeCurve` of the original paired algebra, with the real source parameter and original `+i` Pauli normalization, obeys for *each* `c : ColorIndex 2`:
```
curve c (t / 2) * curve c (t / 2) = curve c t
curve c (-t) = (curve c t)⁻¹
```
These discharge both S1E half-parameter requirements for original Y/Z without continuity or abstraction. **Does NOT discharge source conjugation/Euler import in the current S1G job or establish paper Spin(48) realization.**

## Precise S1G red and negative knowledge

[BFSS SU2 Exact Source Character Triviality #7](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39107851672), job **117617534501**, **FAILED**, source/workflow head same `503fb9dc8c04f4c37a9807973d968c1ce217e699`.

Within this failed S1G workflow, the S1F six-root strict gate **passed independently again**. The sole decisive next error is `EXACT_ACCEPTED_SOURCE_EULER_OLEAN_MISSING` in the S1G step **BEFORE** compiling `SU2BFSSPhysicalDomainS1GExactSourceRelativeCharacterTrivialityProbe.lean`. The proof candidate has not been kernel tested in this gate. This is a genuine import/dependency-closure blockage, not evidence for or against the desired conjugation/character theorem. It must not be bypassed with an assumed Euler theorem or a surrogate SU2 representation.

The immutable independently accepted original-source Euler factorization is `FCP.BFSSSU2PhysicalDomainL6H5E8Y.original_source_zyz_exists` from historical Original Source Spin Identity #356, with an import closure including actual original `H5E8X,W,V,U,T,S,R,Q,P,... `. Its absence from the PR-scoped `bfss-l6g7w-accepted` cache means the next S1G step requires either (a) justified identical-blob pinned reconstruction of this source dependency in a dedicated strict joint workflow, or (b) restoration of an **existing, separately verified source-pinned** compiled Euler cache, if available. Do not claim a historical proof artifact is present merely because its CI run passed.

## CI governance

The S1F and S1G workflows were changed to `workflow_dispatch` only after these verdicts, leaving their pinned source hashes, kernel compilation, prerequisite checks, and six/eleven-root axiom audits intact. This avoids redundant PR-diff-triggered long runs. A manually dispatched S1G without reconstructed accepted H5E8Y will correctly fail closed. S1F remains strictly accepted at Gate #9.

All changes on research S3L draft PR #25; no merge, no `main`, no original paper changes. Independent Cl(48)/Spin(48) module-unitary, 16 source supercharges/core/domain bridge, Spin(9) and positive spectral assertions remain OPEN.
