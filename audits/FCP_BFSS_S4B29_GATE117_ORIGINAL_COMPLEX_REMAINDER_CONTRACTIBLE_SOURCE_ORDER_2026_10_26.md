# BFSS S4B29 — original complex Fock remainder contractible sum order (Gate117)

**Historical candidate preregistration; Gate117 subsequently strictly ACCEPTED — see terminal audit below.** Accepted S4 principal roots **53**, with Gate116 genuine full original -i/16 ordered-theta expansion independently accepted [run #40438359402](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40438359402), job 121972433803. The earlier Gate116 acceptance audit remains separate.

## Actual mathematical target

[Source S4B29](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B29OriginalFermionRemainderContractibleSumOrderProbe.lean) candidate immutable Git blob `cba42f85d74fd425ca26041eb3a232bee8f1059d`. The public theorem `FCP.BFSSSU2PhysicalDomainS4B29.originalComplexFermionContraction_contractible_source_order` reindexes the actual original complex Fock fermionic remainder `sourceMasslessComplexFermionContraction M x : Fermion N →L[ℂ] Fermion N` from source indices `α,p=(k,A),β,q` into **outer `A,β,q`; inner `k,α`**, preserving the true original `(-Complex.I)` phase, `1/16` normalization, `M.gamma` and original massless complex variation coefficient and the exact *kinetic theta-before-variation theta* product `M.theta β A * M.theta q.1 q.2`. The result does not yet apply the signed gamma contraction or assert the manuscript B(x).

Private, separately uncounted generic helpers prove the `Fintype.sum_prod_type'` product-coordinate decomposition and seven explicit `Finset.sum_comm` swaps, plus generic `Finset.smul_sum` redistribution under an opaque complex module. Public source theorem composes accepted S4B28 via typed `congrArg`; the original Fock CLM carrier is not unfolded or replaced by scalar proxies. The identities `Fintype.sum_prod_type'` and `Finset.sum_comm` were checked in pinned Mathlib / accepted source proof patterns, but this proposed Lean source is **not yet compiled**.

## Strict acceptance test

[Gate117 workflow](../.github/workflows/bfss-form-original-complex-remainder-contractible-source-order-strict-gate117.yml) is a distinct title/file and source-pinned derivative of Gate116. Fixed upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, qualified G4K9C original source cache, immutable proof ancestors, exact candidate git/tree SHA double-check `cba42f85d74fd425ca26041eb3a232bee8f1059d`, full fresh original source and accepted S4B3–S4B28 module recompilation, exact new `.olean` root and axiom subset only `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`, source warning or error. Parent S4B28 has its **own fresh theorem/axiom** check. A complete verified strict green earns exactly one unique new scoped S4 principal root **53 → 54**. Red earns none; preserve the first compiler error without accepting weakened or surrogate statements.

## Scientific boundary

This is a necessary full-operator reindexing for applying strictly accepted Gate115 signed source gamma contraction. A later gate must first bridge the real-coefficient complex cast and apply Gate115 to the actual inner spatial/spinor sum with fixed A,β,q, then assemble the signed `-i/16 × -8 = +i/2` bilinear source operator. Comparison with actual original real `M.deformedFermionField 1 0 x`, October 5 manuscript B(x) and positive normalizable eigenstate existence remain open. Original canonical main, frozen etblink/math and draft PR #25 unchanged.


## Gate117 strictly ACCEPTED — first green without proof repair

I independently verified [run #40439797607](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40439797607), job `121977138770`, exact HEAD `899e3ca3fca64c1193a49eeccef5fa6776b14208`, `completed/success`. The original job log confirms exact source/workflow/tree SHA checks, pinned frozen etblink/math and Mathlib/Lean 4.34.1, G4K9C original ancestry provenance, fresh original source modules and all accepted S4B3 through S4B28 parent proofs, and the fresh actual original Fock operator S4B29 `.olean`. Last parent `GATE117_ACCEPTED_S4B28_PARENT_FRESH_PASS 133312`; exact candidate compiler and allowed-axiom evidence:

```text
GATE117_CANDIDATE_SOURCE_WARNINGS []
GATE117_COMPILER_EXIT 0 AXIOM_REPORTS [('FCP.BFSSSU2PhysicalDomainS4B29.originalComplexFermionContraction_contractible_source_order', {'Classical.choice', 'Quot.sound', 'propext'})]
GATE117_ORIGINAL_COMPLEX_REMAINDER_CONTRACTIBLE_ONE_ROOT_STRICT_PASS
```

**Formally accept +1 unique scoped S4 principal theorem root: 53 → 54.** All previously accepted source/parent modules and the two generic private reindex helpers are not additional principal roots. The new theorem source Git blob is immutably `cba42f85d74fd425ca26041eb3a232bee8f1059d`. No `sorryAx`, candidate warnings, extra assumptions, or weakened source model.

**Scientific next step:** compose Gate117's full complex source Fock sum with Gate115's genuine signed spatial/spinor coefficient contraction, after carefully separating the source `FermionIndex N` pair into `(δ,D)` and matching the required real-to-complex product coefficient and fixed ordered theta bilinear. Preserve `(-i)/16` and `-8` sign until a formally typed cancellation yields `+i/2`; neither the full manuscript operator nor positive-eigenstate existence follows merely from Gate117.
