# BFSS S4B28 — original complex Fock remainder, full ordered theta finite-sum expansion

**Historical preregistration retained; Gate116 now strictly ACCEPTED — see terminal audit below.** Previous accepted principal S4 roots **52** through independently verified [Gate115 #3 run #40436827113](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40436827113), job `121967388281`, exact root `FCP.BFSSSU2PhysicalDomainS4B27.originalSourceVariation_signed_orderedTheta_lift`. The gate's strict source/axiom ledger and both earlier failed proof strategies are preserved under the S4B27 acceptance audit.

## Actual original operator root

[Candidate S4B28](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B28OriginalComplexFermionRemainderFullOrderedThetaExpansionProbe.lean), **candidate Git blob `c7fb36ecaca01203c0a1099b523c5ee8863550e4`**. Exactly one new principal theorem `FCP.BFSSSU2PhysicalDomainS4B28.originalComplexFermionContraction_full_orderedTheta_expansion`: the *actual source* `sourceMasslessComplexFermionContraction M x : Fermion N →L[ℂ] Fermion N` equals the full original `1/16` times sum over original spinor `α`, space-color pair `p`, gamma spinor `β` and fermion index `q`, each ordered genuine Majorana product `M.theta β p.2 * M.theta q.1 q.2` multiplied by its actual original source gamma entry and `sourceMasslessComplexVariationCoefficient M x (EuclideanSpace.single p 1) α q`. Keeps source global phase `-Complex.I`, `1/16`, all original summation indices and operator order. No new color/Pauli convention or CAR exchange.

Proof is explicitly compositional: accepted S4B11 `originalComplexFermionContraction_gammaTheta`; fixed original complex operator outer factor `1/16`; local two-fold `Finset.sum_congr` to original product; native `smul_mul_assoc` moves only scalar `-Complex.I` through genuine operator multiplication; then typed `congrArg` of accepted S4B26 `originalGammaTheta_operator_product_distribution`. The imported and freshly compiled S4B27 preserves accepted ancestry but no counted duplicate. This is a proof proposal until Lean checks its elaboration.

## Strict procedure and acceptance

[New Gate116 workflow](../.github/workflows/bfss-form-original-complex-remainder-ordered-theta-expansion-strict-gate116.yml) copied from the qualified Gate115 architecture, separately named, with true original frozen source etblink/math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, fixed Lean 4.34.1 / pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, validated original G4K9C cache provenance, both candidate Git/worktree SHA `c7fb36ecaca01203c0a1099b523c5ee8863550e4` guards, fresh original modules and accepted S4B3–S4B27 with explicit S4B27 axiom audit, fresh S4B28 `.olean`, and **exactly one** named root dependency subset of `propext`, `Classical.choice`, `Quot.sound`, without `sorryAx`, source warnings or Lean errors. One *strict terminal green* adds exactly one new unique S4 root **52 → 53**; any red is logged in this audit and adds **zero**. Do not treat acceptance of a parent, preflight, a reused cache, or a successful earlier Gate as acceptance.

## Stop boundary

This does **not yet contract the full indices** `k,α` inside the nested operator sum using the separate accepted S4B25/S4B27 source-signed scalar relation, nor identify source restricted-real `M.deformedFermionField 1 0 x` with the October 5 manuscript's (B(x)). These are distinct mathematical targets. Physical-domain graph equivalence and positive-normalizable-eigenstate existence likewise remain open. Canonical main and original `math` are untouched. No proof or spectrum claim beyond this exact root is permitted.


## Gate116 completed — 1/1 genuine source complex Fock root strictly ACCEPTED

Independently verified completed [GitHub Actions run #40438359402](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40438359402), job `121972433803`, `completed/success`, exact run HEAD `71d4e1396e2796eaa9a1587077ac67398d83840d`. The original job/Lean compiler log confirms frozen original etblink/math source, source SHA/proof immutability `GATE116_ORIGINAL_SOURCE_AND_PROOF_IMMUTABILITY_PASS`, pinned Lean 4.34.1 / Mathlib `GATE116_FROZEN_TOOLCHAIN_AND_MATHLIB_PASS`, genuine original source qualified G4K9C cache ancestry `GATE116_ACCEPTED_G4K9C_CACHE_PROVENANCE_PASS`, fresh original modules and accepted S4B3–S4B27 including `GATE116_ACCEPTED_S4B27_PARENT_FRESH_PASS 82280`, fresh S4B28 `.olean`, exact theorem name/axiom validation and no source warnings. Terminal compiler evidence:

```text
GATE116_CANDIDATE_SOURCE_WARNINGS []
GATE116_COMPILER_EXIT 0 AXIOM_REPORTS [('FCP.BFSSSU2PhysicalDomainS4B28.originalComplexFermionContraction_full_orderedTheta_expansion', {'Quot.sound', 'Classical.choice', 'propext'})]
GATE116_ORIGINAL_COMPLEX_REMAINDER_FULL_THETA_ONE_ROOT_STRICT_PASS
```

**Formally accept one new unique scoped S4 principal theorem root: 52 → 53.** The parent recompilation, source axioms and dependency inventory are qualified provenance, not additional newly accepted roots. The accepted original candidate source Git blob is `c7fb36ecaca01203c0a1099b523c5ee8863550e4`, locked in commit `71d4e1396e2796eaa9a1587077ac67398d83840d` with the gate workflow/audit. No unapproved axioms or `sorryAx`.

**Scientific result:** the exact original `sourceMasslessComplexFermionContraction M x` is identified with a complex-linear source Majorana operator finite sum retaining `(-Complex.I)` and `1/16`; the operator factors remain kinetic theta before source-variation theta. A full color/spinor gamma contraction is **not** established just by this result. It needs explicit finite product-index and sum-order transport so accepted Gate115 can contract spatial `k`/spinor `α` inside a sum with fixed `β,A,q`, followed by original real restriction and manuscript `B(x)` comparison. The positive normalizable eigenstate existence problem remains independent and open. Prior negative knowledge is preserved; do not equate compiled source identities to proof of the manuscript's spectral thesis.
