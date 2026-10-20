# S1V37 Gate #1 RED — rank-one determinant rewrite with implicit singleton index

**Disposition:** `S1V37_G1_TWO_OF_THREE_ROOTS_LEAN_COMPILED__THIRD_ROOT_RW_INDEX_INFERENCE_ERROR__SORRYAX__NO_CACHE__UNQUALIFIED`.
No mathematical statement or original BFSS conventions have been changed.

## Exact evidence

- [BFSS S1V37 Original48 Clifford Generator Rank-One Determinant Strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39351601519), job `118396801499`, workflow commit `6d7ce6998963aef4928efbfedc86922fb83fe43b`, outcome **FAILURE**.
- Pinned original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Candidate blob `31de33f264c64bb5c98efde41ff87ab36f3ff55a`; source `SU2BFSSPhysicalDomainS1V37Original48CliffordGeneratorRankOneDeterminantProbe.lean`. Source S1V0 blob `22f3101b243a7b7857d9597b547322174d9281c8`.
- Entire toolchain preflight green; restored qualified S1V36 cache `bfss-s1v36-isolated-source48-real-spin-determinant-character-v1-adc7f124-lean4341-d13f23b-Linux-X64`, original `.olean` prereqs confirmed. Failure exclusively at new Lean compile; new S1V37 cache **not saved**.
- Compiler lines:
```
...Probe.lean:69:22: error: Tactic `rewrite` failed: Did not find an occurrence of the pattern
  (1 + replicateCol ?m.33 ?u * replicateRow ?m.33 ?v).det
in the target expression
  (-1) ^ Fintype.card Source48Label * (1 + replicateCol (Fin 1) a * replicateRow (Fin 1) (-ell)).det = -1
```
- Root `source48_polar_inverse_self` prints only `[propext, Classical.choice, Quot.sound]`; root `source48_clifford_generator_conjugation` likewise. **These are qualified as individual compiler facts in a failed source file, but the S1V37 module is NOT accepted.** `source48_rankOneConjugationMatrix_det` explicitly prints `sorryAx`; DO NOT count three accepted roots, and DO NOT create a cache.
- Failure logs/artifact `bfss-s1v37-rankone-39351601519`, artifact ID `12233054321`.

## First-causal analysis and discriminating repair

The error is an elaboration/rewrite-pattern indexing problem, not a contradictory matrix identity. Mathlib's exact `Matrix.det_one_add_replicateCol_mul_replicateRow` has an implicit singleton index `{ι}` and `[Unique ι]`. The original candidate's unspecialized `rw` left index metavariable `?m.33`, while the target fixes `Fin 1`. The **proposed** one-term source-only repair specializes the immutable pinned lemma explicitly:
```lean
Matrix.det_one_add_replicateCol_mul_replicateRow (ι := Fin 1)
```
Nothing else about Q, the action, basis size or determinant target should change. Run exactly one new hash-pinned Gate #2. If the proposed specialization still fails, avoid an unchanged retry: use an explicit separately typed intermediate `have hmat : ... := Matrix.det_one_add_replicateCol_mul_replicateRow (ι := Fin 1) a (-ell)`, then rewrite by `hmat`. Inspect that failure before any further attempt.

The actual global orientation, full Pin/Lipschitz parity, source Clifford-to-rank-one coefficient bridge, SU2→Spin48 global lift and manuscript/spectral conclusions remain **OPEN**.
