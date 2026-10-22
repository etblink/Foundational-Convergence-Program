# FCP BFSS SU(2) — M4E5 Gate #1 RED: final source charge rfl exceeds Lean recursion depth

**Date:** October 22, 2026 PDT.  
**Disposition:** `M4E5_GATE1_RED__COMBINED_SOURCE_CHARGE_RFL_MAX_REC_DEPTH__ZERO_ROOTS__286_ACCEPTED_UNCHANGED`.

## Original CI and compiler evidence

- [GitHub Actions run #39811556321](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39811556321), job `119938873676`, attempt 1, overall **completed/failure**.
- Research-branch head on run: `8cfa964a05917180f78a1a4a2d4d62442dbe27ee`, branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- Candidate `experiments/openai-math-su2-physical-domain/FCPIndependentFullSmoothCharge.lean`, immutable original blob `c3afe35286a6780ea40d489106f152817f411513`.
- Pinned original mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Source pins/preflight, pinned toolchain, accepted source closure passed.
- Qualified M4E4B cache restored: `bfss-fcp-m4e4b-cubic-charge-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Original compiler emitted the one error at `FCPIndependentFullSmoothCharge.lean:63:2`:
  ```text
  error: maximum recursion depth has been reached
  use `set_option maxRecDepth <num>` to increase limit
  ```
- Supporting definition `FCP.IndependentSmoothSupercharge.independentCharge` printed only `[propext, Classical.choice, Quot.sound]`. Final theorem `independentCharge_intertwining` additionally printed `sorryAx` because its proof failed. Therefore **0/1 accepted roots**, cumulative **286**.
- No accepted M4E5 cache or strict acceptance marker. Original diagnostic artifact uploaded as `bfss-m4e5-gate1-39811556321`, GitHub artifact ID `12439918649`.

## Precise last failing step and bounded repair

The actual independent definition, not transported through J, compiled axiom-clean:
```lean
independentCharge color gamma theta α :=
  independentKineticCharge gamma theta α +
    independentCubicCharge color gamma theta α
```
The proof applies both previously strictly accepted intertwining results for the source's literal first and second summands:
```lean
have hk := independentKineticCharge_intertwining
  gamma theta J hGamma hJ α f
have hc := independentCubicCharge_intertwining
  color gamma theta J hColor hGamma hJ α f
simp only [independentCharge, LinearMap.add_apply, map_add]
rw [hk, hc]
rfl    -- line 63: maxRecDepth
```
The last `rfl` triggers enormous definitional reduction on the original sixfold cubic finite sum and its opaque matrices. This is a Lean elaboration/normalization limit **after** the accepted component bridges; not evidence of a sign, normalization or index-order counterexample.

Replace only `rfl` with a controlled proof that **syntactically unfolds the original named operator**, `simp only [AlgebraData.charge, LinearMap.add_apply]`, rather than permitting `rfl` to recursively normalize the entire original data and nested sums. This targets the precise source expression, should preserve the frozen original mathematical definition, and must be judged by a fresh strict Gate #2. If it exposes additional goals/errors, diagnose from actual compiler output instead of escalating recursion blindly.

## Scope/governance

No whole 16-charge equality, gauge-preserving operator statement, closed-domain equality, physical Hamiltonian equality, or spectral claim is accepted from Gate #1. Preserve this failure and negative lessons; prior 286 roots and qualified M4E4B compilation cache remain intact. Do not change original source, earlier accepted blobs, main, PR #25 or Issue #28; no unchanged rerun.
