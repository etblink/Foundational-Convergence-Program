# BFSS original S3L3B Gate29 #1 — strict RED, split_ifs binder/missing goals and residual zero function application

**Project Lead independently verified October 24 PDT / October 25 UTC 2026.** Strict Gate29 #1 RED; 0/3 qualified-source checkpoint; S3L3B not accepted.

## Primary immutable evidence

- [Run #40169239513](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40169239513), job `121096542030`, completed/failure, workflow/source research HEAD `5c609d5143729a353cd353c00a67d84cc72234e5`.
- Original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` and source Git provenance checks passed.
- Qualified Gate27 S3F cache MISS, accepted Gate23 S3E2 cache HIT; accepted original ancestry objects verified.
- Canonical R4A dependency walker confirmed 116 source modules, 40 originally absent `.olean`; selected exactly the three earliest missing S3L1/S3L3A/S3L3B.
- Exact canonical-vs-proof-only Git SHA and source-diff tests for S3L3A and S3L3B PASS. Canonical S3L3B original blob `19a7eb6a710fe6d4b531dc0eefba7ee27ed21dca`, proposed V7 proof-only candidate blob `2dcccf6c21fe1097b1484d48a288809e02265de7`, V7 walker blob `2f0008159398072bec9d6afab4ad44f154bb0ff4`.
- Actual Lean `-DwarningAsError=true` compiled S3L1 and S3L3A, each 1 principal theorem with only `propext, Classical.choice, Quot.sound`. These objects lived in the failed job's ephemeral runner. S3L3B encountered a compiler error; qualified child save SKIPPED.

## First strict Lean errors in candidate S3L3B

```text
S3L3BSourceOperatorHeisenbergProbe.lean:52:21: error: unused name: heq
S3L3BSourceOperatorHeisenbergProbe.lean:54:6: error: No goals to be solved
S3L3BSourceOperatorHeisenbergProbe.lean:66:21: error: unused name: heq
S3L3BSourceOperatorHeisenbergProbe.lean:67:17: Unknown identifier `heq`
S3L3BSourceOperatorHeisenbergProbe.lean:68:6: error: No goals to be solved
S3L3BSourceOperatorHeisenbergProbe.lean:57:2: error: unsolved goals
case neg
h : ¬(i, A) = (k, B)
hc : (if (k, B) = (i, A) then 1 else 0) = 0
ho : (if (i, A) = (k, B) then LinearMap.id else 0) = 0
⊢ 0 = 0 x
S3L3BSourceOperatorHeisenbergProbe.lean:71:6: error: This simp argument is unused: Pi.zero_apply
... depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
```

The old V7 proof nested `split_ifs with heq` inside four already case-determined typed auxiliary if equations, causing named-binder errors and unnecessary terminal tactics. The negative branch fails to close the definitionally equal zero terms. No proof root qualified. No contradiction to source commutator has been produced. Evidence ZIP: [artifact #12589458395](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40169239513/artifacts/12589458395), SHA256 `2166a042a617b4058e3bb8194681014b09bc008df70a190e359f3a6f9f253bd0`.

## Next strictly bounded falsifiable experiment

Use ONE `by_cases h` on `(i,A)=(k,B)`. Prove conditional-coefficient `hc` in each branch with an isolated simplifier fact (`simp [h.symm]` only in the true case, `simp [Ne.symm h]` only in false). Separately prove `ho` with `simp [h]`, then rewrite both into the original goal. No named `split_ifs`, no deprecated if_pos/if_neg, no mutually opposite equality simp, no recursion limits, no added axioms, and keep original mathematical declaration unchanged. In the false branch, use an explicit terminal `rfl` to close the surviving `0 = 0 x`.

This is a proposed PROOF-ENGINEERING experiment ONLY. Independently compile with actual pinned Lean; preserve first error if red, and strictly permit source checkpoint only when three original theorem roots all compiled, clean permitted axiom footprint and save qualified child `.olean` cache. No R4A/R4D/full sixteen-charge Spin9 covariance, closed physical Hamiltonian symmetry or positive normalizable BFSS eigenpair claims have been reached.
