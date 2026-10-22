# FCP BFSS SU(2): M4C1 Gate #5 RED — unused section hypothesis; Gate #6 strictly scoped repair

**Local date:** October 21, 2026 PDT (GitHub Actions October 22 UTC).  
**Authoritative ledger:** **274** accepted theorem roots; M4C1 **0/1** accepted.
**Disposition:** `M4C1_GATE5_RED__FIVE_AXIOM_CLEAN_PROOF_REPORTS__WARNING_AS_ERROR_UNUSED_FINITE_DIMENSIONAL__GATE6_EXPLICIT_OMIT_PENDING`.

## Independently verified primary evidence

- [GitHub Actions Gate #5 run #39730846109](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39730846109), job `119665283505`, head `26e3bb1c744ce4e8853452ae653f85d6f97ed09e`, final state **failure**.
- Original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` source hashes and provenance passed; Lean **4.34.1** and pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` restored correctly. Qualified original M4B cache restored at `bfss-fcp-m4b-independent-original-gauge-unitary-v1-adc7f124-lean4341-d13f23b-Linux-X64`, including exact original G4J closure.
- Actual source-specific compilation of `FCPIndependentFullL2GaugeTransport.lean` reached *all five original axiom reports*; every report was free of `sorryAx` and depended exclusively on `propext`, `Classical.choice`, `Quot.sound`.
- **The only compiler error** was the strict unused-section-variables linter at `FCPIndependentFullL2GaugeTransport.lean:54:0`, on `fiberTransport_bosonPullback`:
  ```text
  error: automatically included section variable(s) unused
  in theorem FCP.IndependentFullL2GaugeTransport.fiberTransport_bosonPullback:
    [FiniteDimensional ℂ E]
  consider ... explicitly omit them:
    omit [FiniteDimensional ℂ E] in theorem ...
  ```
- Unlike Gate #4, `fiberTransport_bosonPullback` now compiled with permitted axioms. The terminal full-`L²` intertwiner also printed the three permitted axioms without `sorryAx`. **But this does not override the strict compile error:** `lake env lean -DwarningAsError=true` exited 1, source `.olean` and qualified M4C1 cache did not pass acceptance. Preserve the negative result rather than counting an unqualified theorem.

## Exact Gate #6 candidate

Add the *declaration-level* `omit` directive **only** before the original bosonic naturality theorem:

```lean
omit [FiniteDimensional ℂ E] in
theorem fiberTransport_bosonPullback
```

This follows Lean's explicit linter instruction and removes an unnecessary hypothesis from that theorem rather than disabling the linter. There are **no edits** to theorem statements, original source, M4B dependence, SU(2) convention, full-`L²` gauge definition, proof equations, or accepted theorems. The other four declarations remain unaffected.

- Research source `experiments/openai-math-su2-physical-domain/FCPIndependentFullL2GaugeTransport.lean`, new Git blob `9362512eb94f5a29e66fdab7ae996ae9ba890360`, exactly one new source line.
- Isolated strict workflow `.github/workflows/bfss-m4c1-independent-full-l2-gauge-strict-gate6.yml`, new Git blob `ca6e2f9e9ed6e259e286888331b3b88bbc79538c`.
- The workflow's sole push path is its own Gate #6 YAML. Restores accepted M4B qualified cache, confirms G4J and accepted .olean ancestry, compiles fresh source under `-DwarningAsError=true` with immutable Lean/Mathlib pins, audits namespace and all five expected declarations and axiom reports, rejects `sorryAx`, errors and unexpected warnings, saves `bfss-fcp-m4c1-independent-full-l2-gauge-v6-adc7f124-lean4341-d13f23b-Linux-X64` only upon full strict acceptance. It uploads first-causal diagnostics regardless of outcome.
- Only `FCP.IndependentFullL2GaugeTransport.independentFullL2Gauge_intertwining` counts as one prospective new theorem root. **274** remains authoritative until the entire Gate #6 runs successfully and cache saving is confirmed.

## Accumulated negative knowledge

1. Gate #1: requested G4J cache belonged to a different branch; M4B's own accepted cache actually already contained the exact G4J .olean.
2. Gate #2: `IndependentFullL2` abbreviation left an unresolved implicit fiber type; explicit `E` resolved it.
3. Gate #3: `coeFn_compLp` produced pointwise AE rather than `Filter.EventuallyEq` required by `comp_tendsto`; `coeFn_compLp'` resolved the interface.
4. Gate #4: `rw [hp]` left pure `Function.comp_apply` reduction; `congrArg A hp` and `simpa only [Function.comp_apply]` closed it.
5. Gate #5: all proofs' axiom reports are clean; `-DwarningAsError=true` correctly rejects a redundant automatic `FiniteDimensional ℂ E` section variable.
6. Gate #6 is **not preaccepted**; no conclusion until the pinned original source compiler and cache-save steps succeed.

### Scientific boundary

Strict acceptance would establish original-source-specific constant-fiber **continuous-linear** full-`L²` gauge intertwining, not yet bijective fiberwise `L²` unitary equivalence, physical fixed-subspace equivalence, invariant smooth-core equality, closed sixteen-charge domain/graph equivalence, normalized Hamiltonian identity, Spin(9), or a BFSS spectral result. No edits to canonical `main`, existing PR #25, issue #28 or pinned upstream.

**Governance:** one research-branch source, unique path-scoped CI workflow, and audit; no other workflows should trigger.
