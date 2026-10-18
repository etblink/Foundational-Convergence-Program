# S1J — original source 48-real Majorana color representation research gate

**Date:** 2026-10-18 PDT. **Status:** new unqualified source-exact candidate; **do not call accepted** until strict CI proves all 8 declarations with allowed axioms.

## Input provenance

- Frozen source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean v4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Previously qualified `SU2BFSSG3AAdjointColorRepresentationProbe`: actual `pairedAlgebraData.adjointCoefficient g A B` with A input, B output; source Pauli +i conventions.
- `G3B`: actual `oneParticleMatrix : GaugeGroup 2 → Matrix (Fin 24) (Fin 24) ℝ`; exact `colorModeEquiv : Fin 8 × ColorIndex 2 ≃ Fin 24`; orthogonality, multiplication, identity; approved G3B source blob `c90b25156ec4d81ee16e5939cd888cc12cdc33a3`.
- `S1C`: `oneParticleMatrix_det_one` on the same source real 24-mode action; original accepted source `c5de7c744744212711780aee2d4f9742c002cd84`.
- `G1A`: actual pair-majorana index `pairedLabelEquiv : (SpinIndex × ColorIndex 2) ≃ (Fin 24 × Fin 2)`; normalized `pairedTheta` and 48 CAR; no arbitrary relabeling.
- `S1G`, `S1H`, `S1I` remain accepted and untouched. S1I is conditional external-module transport, NOT actual Spin48 existence.

## New construction and strict test

Candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1JActual48RealMajoranaColorActionProbe.lean`, original git blob `6460a2caa730597171db75811f988c1b9ec7da96`, source introduction commit `634e3aabe24f8382f4b8d3dfbc800769a29183d2`.
The 48 labels are **literally** `Fin 24 × Fin 2`, the codomain of the accepted `pairedLabelEquiv`. Its two-valued component distinguishes the real/imaginary Majoranas of each complex Fock mode. The **candidate** matrix is the exact `oneParticleMatrix(g) ⊗ I₂`. It has no independent degrees of freedom.

The proposed eight kernel-audited declarations:
1. `sourceRealMajoranaMatrix` — concrete original 48×48 real matrix.
2. `sourceRealMajoranaMatrix_entry` — block coefficient indexed by 24-mode m,n and Majorana component s,t, with component-preserving Kronecker delta.
3. `sourceRealMajoranaMatrix_one` — exact identity.
4. `sourceRealMajoranaMatrix_mul` — correct SU2 composition.
5. `sourceRealMajoranaMatrix_transpose` — exact 48-real transpose.
6. `sourceRealMajoranaMatrix_orthogonal` — `Aᵀ A = I`, not just determinant.
7. `sourceRealMajoranaMatrix_det_one` — `det A = +1`, not just ±1.
8. `sourceRealMajoranaMatrixHom` — true source SU2-to-real-48-matrix monoid homomorphism.

[Strict Actual 48 Real Majorana Color Action #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39150152120), pinned workflow source commit `925c9c9682419a473c683f007c99d199ef4ae131`. Workflow restored manual-only after launch. Fail closed on toolchain/caches/source hashes; compiler emits `.olean`; exactly eight `#print axioms` roots must report subsets of `{propext, Classical.choice, Quot.sound}`, with no `sorryAx`.

## Scientific boundary and next priority

This theorem family, if accepted, establishes concrete SO(48)-**eligible matrix data** on the true paired real Majorana labels. It does **not** construct a `Spin(48)` double-cover group, a lift of source SU2 into that group, the action of the lift on a second independent irreducible Clifford module, or a unitary map to the source Fock Hilbert space.

After strict acceptance, next useful step is an *honest typed* `GaugeGroup 2 →* Matrix.specialOrthogonalGroup (Fin 24 × Fin 2) ℝ`, then transport along `pairedLabelEquiv` to literal spin×color Majorana coefficients. Do not call S1J a Spin lift or manuscript identification. Independently verify the basis/covariance matching, signed quaternion/Pauli conventions, and group representation continuity before claiming any paper-level Spin48 relation.

No changes to `main` or `etblink/math`; draft PR #25 remains unmerged.
