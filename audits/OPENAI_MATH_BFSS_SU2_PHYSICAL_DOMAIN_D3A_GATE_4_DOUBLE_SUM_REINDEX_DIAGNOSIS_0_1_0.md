# BFSS SU2 Physical Domain D3A — Gate #4 double-sum reindexing diagnosis 0.1.0

**Disposition:** D3A **NOT YET QUALIFIED**; compiler repair staged. October 9, 2026 Pacific.

## Gate evidence

[Physical Domain Bridge #4](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38015490029), run 38015490029, job 114104702045, tested source commit 7617faa7ab7c3eaa9cdf447ddfb95900697c4233. Original upstream pins and accepted proof cache restored successfully. Unchanged D1 compiled and passed its five source-typed axiom checks.

Prospective D3A emitted exactly one compiler error at line 60:49: the unfolded left-hand double sum had its kinetic and derivative indices reversed relative to the expected right-hand double sum. The basis expansion itself succeeded. Both D3A declaration axiom reports inherited `sorryAx`, so neither is qualified.

The underlying required mathematical step is commutation of finite sums and multiplication of real coefficient scalars. The remaining goal after distributivity was:

```lean
(∑ x, ∑ x_1, (c i x * c i x_1) • K (b x_1) (D (b x))) =
(∑ j, ∑ k, (c i j * c i k) • K (b j) (D (b k)))
```

## Exact repair staged

Candidate repair commit `fbb6306a2a3c49b26e94c5e91d01920fd1145708`, source blob `32b525602dd6c0266f8b78b2349fc62639e577c2`: after existing real linear map/finite sum distributivity, rewrite the *left* nested finite sums with `Finset.sum_comm`, then use two `Finset.sum_congr` steps followed by `mul_comm (c i k) (c i j)`. Remove unused `Finset.sum_smul` simp argument. This is a targeted proof script repair with no new assumption and no change to the mathematical propositions.

**Uncompiled pending the next dedicated CI gate.** Require both public D3A theorems to have only the three permitted baseline axioms `propext`, `Classical.choice`, `Quot.sound` and no `sorryAx`. Neither the accepted D1 sources nor pinned upstream proofs/cache keys were modified.

## Scientific stopping boundary

D3A is only the exact kinetic gauge-covariance bridge. Full supercharge physical-space preservation remains D3B, and invariant physical-core density remains D2. The October 2026 manuscript's Hamiltonian/operator identity and positive spectrum are not validated by this candidate. No main merge or upstream PR.
