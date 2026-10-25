# FCP BFSS — S3L4B Gate34 #1 original source strict RED: deprecated ContinuousLinearMap simplification lemmas

**Project Lead independently verified 2026-10-25 (America/Los_Angeles)**. No S3L4B acceptance or qualified new cache.

## Frozen primary evidence

- [GitHub Actions run #40175120607](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40175120607), job `121114010008`, `completed/failure`, workflow/source HEAD `27ca411ef0ffca427040a823c11a5544778a562f`.
- Pinned actual original mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact original source files, R4A dependency order and SHA/worktree proof-only replacement preflights PASS.
- Gate33 qualified child cache MISSED; independently qualified Gate23 S3E2 ancestry HIT. Six prerequisite source modules S3L1, S3L3A/B/C/D/E compiled in dependency order with strict `lake env lean -DwarningAsError=true`, all allowed axiom reports, real .olean: 1+1+1+2+1+1 = 7 ancestor roots requalified in this red gate.
- First actual original S3L4B Lean errors in `SU2BFSSPhysicalDomainS3L4BOriginalSmoothCorePostcompCalculusProbe.lean`, canonical original Git blob `605a2e852916aa12abff59800281d7510f0f68ae`:
```text
:49:13 error: `ContinuousLinearMap.sub_apply` has been deprecated: Use `sub_apply` instead
:49:44 error: `ContinuousLinearMap.mul_apply` has been deprecated: Use `mul_apply_eq_comp` instead
:63:13 error: `ContinuousLinearMap.sum_apply` has been deprecated: Use `sum_apply` instead
:63:44 error: `ContinuousLinearMap.smul_apply` has been deprecated: Use `smul_apply` instead
```
- All SIX original S3L4B `#print axioms` reports showed `propext, Classical.choice, Quot.sound`, none showed `sorryAx`, but the compiler still exited 1 due four deprecated lemma names under mandatory `-DwarningAsError=true`. S3L4B IS UNACCEPTED; no qualified child cache saved.
- Original [log ZIP artifact #12591803569](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40175120607/artifacts/12591803569), SHA256 `4aed1938a655862038fb38082fc1dde4347b5d4b06d648ce8edcff30a2d028fb`.

## Classification and corrective hypothesis

**Lean proof API / source-recovery, not an analytic contradiction.** S3L4B's actual source `TestFunction.postcompCLM` and mathematical theorem statements do not change. The exact four deprecated constants live in just two `simp only` lines. Stage a distinct Git-pinned proof-only original S3L4B compatible file changing exactly:
```lean
  simp only [ContinuousLinearMap.sub_apply, ContinuousLinearMap.mul_apply]
  -- to:
  simp only [sub_apply, mul_apply_eq_comp]

  simp only [ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply]
  -- to:
  simp only [sum_apply, smul_apply]
```
This is an unverified compiler recommendation until a real Lean run accepts it. Verify original-vs-compatible file whole-byte identity after exactly two local proof line replacements; unchanged mathematical declarations, source domain and Fock operators; original SHA/worktree immutability, all previous A/B/C/D/E proof-only checks. Keep warning-as-error/axiom/source object checking; no `set_option`, no sorry, no substitution of a generic phantom Fock.

Follow-up: Gate34 #2 isolated same original six lemma root target with accepted Gate33 parent or exact Gate23 fallback plus SIX source ancestor recompiles. New qualified child cache only on full green. Do not promote this conditional postcomposition covariance to concrete Spin(48) or original R4A/R4D result. Preserve #1 negative despite a later green.
