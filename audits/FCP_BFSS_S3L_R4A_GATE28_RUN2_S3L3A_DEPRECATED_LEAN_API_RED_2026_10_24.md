# BFSS S3L R4A canonical incremental Gate28 #2 — first ACTUAL original compiler failure: S3L3A deprecated proof API

**Project Lead independent verification October 24 PDT / October 25 UTC 2026; 0/5 checkpoint accepted, 0 R4A/R4D roots.**

## Immutable primary evidence
- [Original Gate28 run #40165418177](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40165418177), job `121085349109`, `completed/failure`, workflow head `7c42006cf2d8e3af0cee3b8231e18352e386e4b6`.
- Frozen original source math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` preflight, restoration and checks succeeded; v3 exact source walker Git blob `0bc18a841adbf9e44a7c237b45151251eef025ee`; canonical R4A Git blob `ef803c1b5c62a819e568c5a645c5e622ec1a0d6f` verified immutable.
- Gate27 S3F cache NOT retrievable; accepted Gate23 S3E2 cache `bfss-fcp-s3l-s3e2-fock-selector-c6942d34-gate23-v1-adc7f124-lean4341-d13f23b-Linux-X64` HIT, source S3C/D/E1/E2 ancestor objects verified.
- Exact canonical import graph: **116 modules; 40 missing original .olean**. Five selected in topological order: `S3L1SourceOrbitalSmoothCoreProbe`, `S3L3ASourcePositionDerivativeCommutatorProbe`, `S3L3BSourceOperatorHeisenbergProbe`, `S3L3CSourceOrbitalPositionCommutatorProbe`, `S3L3DSourceMixedDerivativeCommutatorProbe` (full `SU2BFSSPhysicalDomain` module prefix).
- FIRST selected module `SU2BFSSPhysicalDomainS3L1SourceOrbitalSmoothCoreProbe` Git blob `8f40a5c572ccf84a3612774a20b634f69717d985` actually compiled `-DwarningAsError=true` with **one** permitted-axiom report. This is within a failed run; do NOT mark whole five-module checkpoint accepted or claim persisted child cache.
- SECOND selected module `SU2BFSSPhysicalDomainS3L3ASourcePositionDerivativeCommutatorProbe`, unchanged original Git blob `aa47f20d0c14374659aee0bf24c6361e464386ad`, failed original compiler at line 60:
```text
SU2BFSSPhysicalDomainS3L3ASourcePositionDerivativeCommutatorProbe.lean:60:13:
error: `ContinuousLinearMap.add_apply` has been deprecated: Use `add_apply` instead
SU2BFSSPhysicalDomainS3L3ASourcePositionDerivativeCommutatorProbe.lean:60:44:
error: `ContinuousLinearMap.smul_apply` has been deprecated: Use `smul_apply` instead
```
Its original `#print axioms` printed only `propext/Classical.choice/Quot.sound`, but the compiler EXITED NONZERO under the required strict warning mode. The theorem is NOT accepted in this run. S3L3B/C/D not attempted, R4A/R4D untouched.
- Original log bundle [artifact #12588496321](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40165418177/artifacts/12588496321), SHA256 `ebdd0cd3f462504e4cc42a1d4fd7f9d60db1ca40825dd58e5323587c1a79878e`. Gate28 cache save SKIPPED.

## Causal classification and exact remedy

The two obsolete theorem-application simplifier names are a **Lean 4.34.1/Mathlib deprecated proof API**, not a false bosonic commutator statement and not a source definition change. Avoid weakening the `-DwarningAsError=true` strict CI or suppressing diagnostics. Stage a separate source-compatible **proof-only** variant preserving the original `sourceCoordinateDerivative_position_commutator_apply` type and every source operator definition byte-for-byte, replacing ONLY the EXACT occurrence of
```lean
  simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply,
    ContinuousLinearMap.smulRight_apply]
```
by
```lean
  simp only [add_apply, smul_apply,
    ContinuousLinearMap.smulRight_apply]
```
Pin both canonical and modified source Git blobs and assert exact `canonical.replace(old, new)` equality in the strict builder; retain full original source path and canonical choice in the import graph. If the renamed simp lemmas fail to rewrite correctly, preserve the actual residual Lean goal rather than guessing. No R4D assertion is accepted from this proof-only compatibility fix.

Red provenance retained: Gate28 #1 failed before Lean due stale log path; Gate28 #2 reached actual original compiler and isolated one precise proof API change. Both useful; neither proves nor disproves full cubic supercharge covariance, global Spin9 physical action or positive normalizable BFSS eigenpairs.
