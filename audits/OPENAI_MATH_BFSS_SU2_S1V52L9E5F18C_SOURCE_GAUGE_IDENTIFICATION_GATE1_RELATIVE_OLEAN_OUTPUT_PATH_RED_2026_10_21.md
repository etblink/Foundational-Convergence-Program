# S1V52L9E5F18C — strict Gate #1 red: historical Euler compilation output path relative to wrong working directory

**Project Lead independent verdict:** `F18C_GATE1_RED__HISTORICAL_SOURCE_EULER_OLEAN_OUTPUT_PATH_WRONG__F18C_UNREACHED__ZERO_OF_ONE_ROOT_ACCEPTED__241_CUMULATIVE_S1V52_ROOTS`.

## Primary evidence

- [GitHub Actions run #39643763578](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39643763578), job `119373820211`, head source/workflow commit `0f57db5ccb666b7a1ae4d768170953e133bb8d22`: **FAILURE**.
- Candidate F18C original source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L9E5F18COriginalNativeFockSourceGaugeIdentificationProbe.lean` has exact Git blob `159dcb0a2d1ef45e3894f33eae851166faba0fb3`; **never compiled** in this run.
- SHA and pinned upstream/source preflight succeeded. Original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; F18B and B0 qualified caches restored, actual Pauli and Spin48 source-reconstruction prerequisites passed.
- The historical S1H import preflight detected 151 missing source Euler modules in its exact source-pinned import DAG. At the **first** missing module `SU2BFSSPhysicalDomainL6G3OriginalChargeNormalOrderProbe`, Lean exited 1 with
```
S1H_FROZEN_EULER_MISSING_DEPENDENCIES_TO_COMPILE=151
S1H_FROZEN_EULER_IMPORT_FAIL=SU2BFSSPhysicalDomainL6G3OriginalChargeNormalOrderProbe STEP=1/151 EXIT=1
failed to write 'upstream-math/lean/.lake/build/lib/lean/SU2BFSSPhysicalDomainL6G3OriginalChargeNormalOrderProbe.olean': failed to create file
```
- Mechanism: the Python builder set `root = pathlib.Path('upstream-math/lean')` and `obj = root/'.lake/build/lib/lean'`, but ran Lean with `cwd=root`, while also passing `-o str(obj/(stem+'.olean'))`. This made the output path erroneously relative to the already changed Lean working directory. The correct compiler output path must be `str((obj/(stem+'.olean')).resolve())` (absolute) or `.lake/build/lib/lean/<stem>.olean` relative to `cwd=root`. The later S1H source builder repeats this same defect with `-o str(ole)`; both must be repaired together before retry.
- **All S1H rebuild and F18C Lean/axiom verification steps were skipped.** No F18C cache accepted or saved, no F18C root added. S1V52 accepted ledger remains **241**.

## Fail-closed next direction

Advance to isolated F18C Gate #2 on the existing cache-qualified research branch; retain the **identical mathematical F18C source blob** `159dcb0a2d1ef45e3894f33eae851166faba0fb3`, original historical S1A/B/D/E/F/G/H source pins and frozen Euler baseline `f0683ba298a2c1109677f7bc7a8393265e0e8cda`, exact F18B/B0 cache keys, permitted axioms and source-group equality target. Repair only both subprocess output paths to an absolute `(obj/(stem+'.olean')).resolve()`, with no synthetic opaque `.olean`, missing source bypass, axiom, or theorem change.

Given the exact historical Euler closure requires 151 reconstructed modules, save an **independently qualified** Euler closure cache only if source hash/compilation/axioms fully pass, before testing F18C. When S1A/B/D/E/F/G/H full source/axiom checks succeed, separately save a qualified S1H closure cache for reuse on a future Gate #3 should F18C's final application need refinement. Both intermediate caches must be source/toolchain pinned, branch-scoped and forbidden from being promoted as new F18C math roots.

No BFSS manuscript-module identity, continuity, physical Hamiltonian-domain equivalence or spectral conclusion follows from this red. Canonical main, upstream source and draft PR #25 unchanged.
