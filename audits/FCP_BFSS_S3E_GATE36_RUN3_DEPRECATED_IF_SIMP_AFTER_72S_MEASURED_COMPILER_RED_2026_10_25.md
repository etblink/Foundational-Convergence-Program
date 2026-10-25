# BFSS S3E Gate36 #3 — measured source compile reaches two deprecated conditional simplifiers (strict RED)

**Independent Project Lead verification 2026-10-25. S3E unaccepted; qualified predecessor S3L4C stands.**

## Original immutable evidence

- [Gate36 #3 run #40177926173](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40177926173), job `121122545393`, completed/failure, initial workflow research commit `0d58351c55d74f4977e227c2dd5a23f9f68c1dd7`. Artifact [#12592784347](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40177926173/artifacts/12592784347), ZIP SHA256 `d0a0e5ea63d366fa9edc9d881eb378da992297ac0b193a679ccdba1fb030f7ad`.
- Frozen math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, source/walker Git/worktree SHA and all original compatible proof-diff preflights passed. Gate35 child cache MISS; accepted Gate23 original ancestor cache HIT. Canonical R4A graph 116 modules, 40 absent .olean; eight previously accepted original source modules S3L1/S3L3A/B/C/D/E/S3L4B/C strictly recompiled, **17 permitted-axiom reports**, no `sorryAx`, actual .olean.
- Measured individual predecessor module durations seconds: S3L1 9.314, S3L3A 9.541, S3L3B 8.424, S3L3C 8.817, S3L3D 8.850, S3L3E 8.978, S3L4B 9.065, S3L4C 8.384. These are *requalified* prior roots, not novel mathematical results.
- Original S3E module `SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe.lean`, Git blob `2066ef5a07f55b20149b4aa9ac45488988719773`, compiled for **72.407 seconds**, exited **1** (not timeout 124) under S3E-specific limit **240 seconds** and `-DwarningAsError=true`. Hence original Gate36 #2 85-second timeout masked but did not demonstrate the present errors. The SOURCE compiler emitted only:
```text
SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe.lean:62:25:
error: `if_pos` has been deprecated: Use `ite_eq_left` instead
SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe.lean:63:25:
error: `if_neg` has been deprecated: Use `ite_eq_right` instead
```
- All three source `#print axioms` reports (raw two-delta contraction, skew-matrix commutator, actual source color-summed plane spin covariance) showed only `propext, Classical.choice, Quot.sound`, no `sorryAx`; nevertheless source module strict compiler red and not accepted. S3L4D not attempted. Qualified child cache not saved.
- First source error location is inside `pairedSpinQuadraticColor_comm_raw` helper `hsecond` reducing the double sum with `by_cases h : α = γ` and two already-correct `simp only` branches. No counterexample to concrete Fock operator identity.

## Narrow next experiment

**No more timeout escalation.** 72.4s source compile disproves need for a third expanded budget on this failure. Preserve 240s S3E-only measured upper bound and original 85s predecessor limits. Make an independently Git-pinned original-statement proof-only S3E adapter, replacing exactly:
```lean
            · simp only [if_pos h]
            · simp only [if_neg h, hz, Finset.sum_const_zero]
```
with
```lean
            · simp only [ite_eq_left h]
            · simp only [ite_eq_right h, hz, Finset.sum_const_zero]
```
These are the *compiler's explicit recommended* tactic API replacements and preserve all equations, theorem declarations, Fock and Majorana normalization. Verify `recoveryS3E == sourceS3E.replace(EXACT_OLD,EXACT_NEW)` plus both Git and worktree SHA; preserve all prior source A/B/C/D/E/L4B exact proof correspondences, original math pins, `-DwarningAsError=true`, permitted three-axiom whitelist, all 3 original S3E theorem reports and compiled .olean. Classify next red by actual source Lean evidence; if no source error and all gate checks/cache save pass, only then accept S3E and open independent S3L4D.

Lessons: resource timeout and deprecated proof API are distinct sequential diagnostics. Preserve both negatives. Print-axioms alone in a nonzero compilation is not full acceptance. No global Spin9 group representation, R4A/R4D or BFSS positive eigenpair existence follows.
