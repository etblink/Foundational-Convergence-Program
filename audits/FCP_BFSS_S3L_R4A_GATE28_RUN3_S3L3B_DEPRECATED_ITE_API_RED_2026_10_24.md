# BFSS S3L R4A Gate28 #3 — source-exact S3L1 and S3L3A compiled; first red at S3L3B deprecated if_pos/if_neg

**Verified October 24 Pacific / October 25 UTC, 2026. Original R4A/R4D still UNPROVED. Gate RED.**

## Immutable evidence
- [Run #40165968882](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40165968882), job `121086967991`, `completed/failure`; source/workflow HEAD `4ef91c11f6df4dba36486b1350908296ef51a766`.
- Pinned math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Original canonical R4A source Git blob `ef803c1b5c62a819e568c5a645c5e622ec1a0d6f`, unchanged. Exact canonical S3L3A blob `aa47f20d0c14374659aee0bf24c6361e464386ad`; strict proof-only variant `a1586fdcbadd829ac7d57cfb4f8c2dab7ae655c1`.
- Qualified Gate27 S3F cache was unavailable; qualified Gate23 S3E2 original parent cache HIT and S3C/D/E1/E2 .olean ancestors checked.
- Original canonical dependency import walker found 116 modules and 40 missing .olean files; selected FIVE earliest in topological order.
- Exact source-diff gate reported `BFSS_S3L_R4A_INCREMENTAL_V4_SOURCE_CHECKPOINT_PROOF_ONLY_S3L3A_DECLARATION_IDENTICAL`. This verifies the S3L3A proof-API variant preserved the entire canonical file except precisely two deprecated simp names.
- Fresh native `lake env lean -DwarningAsError=true` compiled BOTH `SU2BFSSPhysicalDomainS3L1SourceOrbitalSmoothCoreProbe` and `SU2BFSSPhysicalDomainS3L3ASourcePositionDerivativeCommutatorProbe`, each with 1 permitted-axiom theorem root and actual .olean in the ephemeral runner. These source roots were individually successful, but Gate28 strict checkpoint as a whole RED and the `.olean` cache was NOT SAVED.
- FIRST new compiler error `SU2BFSSPhysicalDomainS3L3BSourceOperatorHeisenbergProbe.lean` original canonical Git blob `19a7eb6a710fe6d4b531dc0eefba7ee27ed21dca`:
```text
line 41:15: error: `if_pos` has been deprecated: Use `ite_eq_left` instead
line 41:25: error: `if_pos` has been deprecated: Use `ite_eq_left` instead
line 44:15: error: `if_neg` has been deprecated: Use `ite_eq_right` instead
line 44:25: error: `if_neg` has been deprecated: Use `ite_eq_right` instead
```
- S3L3B compiler exited 1, S3L3C/D and later R4A/R4D source Lean SKIPPED. 0/5 full checkpoint accepted; R4A/R4D 0 new roots. Original log [artifact #12587958118](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40165968882/artifacts/12587958118), ZIP SHA256 `a8811d71c4ab0924b804968b66b42e7df7926716d627c5cafe70a5393ab00962`.

## Project Lead classification and next narrowly scoped test

**API/deprecation strict warningAsError, not mathematical falsification.** Do not add `set_option linter.deprecated false`, disable `warningAsError`, add axioms, alter the original source operators or weaken theorem statements. Build a separately pinned S3L3B proof-only compatibility variant replacing exactly FOUR deprecated simp theorem applications with stable conditional simplification, preserving the entire original file except exact local proof rewrite. Enforce `compat==canonical.replace(old,new)` in a bounded canonical source builder; preserve existing exact S3L3A variant and verify BOTH diffs before compiling. If Lean reports an actual residual goal, capture it without guessing mathematical truth. Preserve all original and recovery Git blobs. Save child cache only on full gate PASS; never treat S3L1/S3L3A ephemeral objects alone as an accepted five-module cache.

The source result would still be a dependency checkpoint only, not proof of R4A, exact cubic R4D, all-sixteen charge covariance, global Spin(9) group action, physical closed-form invariance or positive normalizable BFSS point eigenvectors.
