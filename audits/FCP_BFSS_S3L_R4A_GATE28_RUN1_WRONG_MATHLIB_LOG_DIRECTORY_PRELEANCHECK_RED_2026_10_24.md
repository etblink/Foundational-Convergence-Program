# BFSS S3L R4A canonical incremental Gate28 #1 — strict RED before any source Lean

**Independent Project Lead diagnosis, October 24 PDT / October 25 UTC 2026.**
**New original R4A roots accepted: ZERO. No new source module was compiled.**

## Original evidence

- [GitHub Actions run #40165057067](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40165057067), job `121084302471`, `completed/failure`, immutable workflow HEAD `949ba07a546356e97cb7f4541835b7946262a7d4`.
- All immutable source checks passed, including `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `lean-toolchain` Lean4.34.1, manifest Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, canonical R4A original Git blob `ef803c1b5c62a819e568c5a645c5e622ec1a0d6f` and incremental source walker blob `0bc18a841adbf9e44a7c237b45151251eef025ee`.
- Runner reclaimed disposable disk and successfully installed Lean4.34.1.
- FIRST failure in "Restore frozen Lean 4.34.1 and Mathlib" source workflow:
```text
timeout 1080s lake exe cache get > /tmp/bfss-s3f-original-gate27/mathlib.log 2>&1
/home/runner/work/_temp/...sh: line 11: /tmp/bfss-s3f-original-gate27/mathlib.log: No such file or directory
tail: cannot open '/tmp/bfss-s3f-original-gate27/mathlib.log' for reading: No such file or directory
Process completed with exit code 1
```
- Gate28 preflight had correctly created only `/tmp/bfss-s3l-r4a-gate28`; the two old Gate27 temp paths are workflow-copy errors.
- Actions skipped BOTH cache restoration steps, qualified dependency checks, incremental original source compiler and cache save. No source `.olean`, no axiom report, no source acceptance and no mathematical counterexample.
- No workflow log artifact was available; the original Actions job log is the authoritative evidence.

## Narrow repair and acceptance boundary

The ONLY required repair is to replace both `/tmp/bfss-s3f-original-gate27/mathlib.log` paths with `/tmp/bfss-s3l-r4a-gate28/mathlib.log` in the same Gate28 workflow, preserving all original mathematical sources, canonical walker, strict source identity/axiom conditions, cache keys, fail-closed parent ancestry and log artifact. On the next run, independently verify all stages and the FIRST possible actual source Lean error; do NOT treat a second red as a proof failure without reaching the compiler.

All historical accepted S3E2/S3E/S3F mathematics remains accepted. Original R4A and R4D open in this ancestry; no global Spin9 action, physical closed-form invariance or positive normalizable BFSS eigenpair existence proved.
