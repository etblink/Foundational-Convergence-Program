# FCP/BFSS S4B27 — signed original gamma contraction over ordered Fock theta product (Gate115)

**Gate115 #1 and #2 RED; Gate115 #3 pinned-Mathlib exact coercion lemma candidate pending, not yet accepted.** Unique strictly accepted scoped S4 principal roots: **51** through independently verified Gate114 #4 ([run #40431852374](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40431852374); new theorem `FCP.BFSSSU2PhysicalDomainS4B26.originalGammaTheta_operator_product_distribution`; original source blob `1e414c3901fc3309ca29c9b8040f0387beb9f5e6`). Acceptance of S4B27 must not be inferred from a commit, a preflight green, a parent recompile, or this preregistration.

## Actual new theorem

[Candidate S4B27](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B27OriginalSignedGammaContractionOrderedThetaLiftProbe.lean), immutable Git blob `a699148fbe188526a97c5a4ac6a250994a8abd4d`, is one theorem:

`FCP.BFSSSU2PhysicalDomainS4B27.originalSourceVariation_signed_orderedTheta_lift`.

Its left side is a double sum over original spatial `k` and spinor `α` of actual original source `M.gamma k α β` times original `sourceMasslessComplexVariationCoefficient M x (EuclideanSpace.single (k,A) 1) α (δ,D)`, coerced to `ℂ` and applied as scalar multiplication to **the genuine complex continuous-linear Fock endomorphism** `M.theta β A * M.theta δ D` in the unchanged kinetic-before-variation operator order. The right side is the ordered theta product multiplied by the genuine source-signed scalar `-8 ∑ j,C (M.structureConstant C A D * x(j,C) * M.gamma j β δ)` coerced to `ℂ`.

Proof strategy is deliberately narrow: `simp only [map_sum, Finset.sum_smul]` for actual sum/scalar transport; then `congrArg` with **explicitly typed `Fermion N →L[ℂ] Fermion N`** operator applied to the accepted Gate113 `originalSourceVariationCoefficient_manuscript_signed`. The resulting statement consumes original S4B11/S4B25 mathematical ancestry and import-qualifies S4B26, but claims neither a full Fock operator reindexing nor an assembled manuscript `B(x)`.

## Strict gate

[Workflow Gate115](../.github/workflows/bfss-form-original-signed-gamma-ordered-theta-lift-strict-gate115.yml), atomic candidate/workflow commit [2f63c9a8](https://github.com/etblink/Foundational-Convergence-Program/commit/2f63c9a85a943e37ed9ad126096d7220a20696d6). [Run #40433827449](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40433827449) was **in progress at audit creation**. The workflow validates the original frozen etblink/math commit `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 / pinned Mathlib, all exact previously accepted S4B3–S4B26 source blobs and fresh parent compilations/axiom reports, qualified original G4K9C cache, both SHA pins for new candidate `a699148fbe188526a97c5a4ac6a250994a8abd4d`, exact one-root theorem report, candidate warning/error exclusion and absence of `sorryAx`; only `propext`, `Classical.choice`, and `Quot.sound` allowed.

**If** strict terminal verification is green, accept exactly **one** new unique scoped S4 root **51→52**. If red, preserve first causal failure, classify as infrastructure, workflow, parent, scalar/complex cast, sum rewrite, or source mathematical issue; do not add a root or loosen scope without proof. Earlier Gate114 reds (#1 sum transport, #3 implicit CLM rewrite motive, intermediate stale-SHA mismatch) are retained in the S4B26 audit, and this new gate intentionally avoids their fragile proof patterns.

## Scientific boundary

The accepted Gate114 theorem remains genuinely operator-valued, but Gate115 alone supplies only **one signed contracted coefficient lifted onto a fixed original ordered theta product**. A later separate theorem must connect this to the entirety of the original source `sourceMasslessComplexFermionContraction` with the correct `(-Complex.I)/16` factor, sum interchanges, real restriction to `M.deformedFermionField 1 0 x`, and the manuscript's matrix-valued `B(x)` definition. The later physical operator domain, quadratic form equivalence, and unproved positive normalizable eigenstate existence remain distinct. No change is made to canonical `main`, frozen upstream `math`, accepted source proof blobs, or PR #25.


## Gate115 #1 — independently verified strict RED

[Run #40433827449](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40433827449), job `121957645204`, frozen candidate HEAD `2f63c9a85a943e37ed9ad126096d7220a20696d6`, concluded **failure**. Source hashes, original source, YAML preflight, Lean 4.34.1 / pinned Mathlib, G4K9C original cache provenance, all original BFSS dependencies, and freshly compiled accepted S4B3–S4B26 passed. Last accepted parent `GATE115_ACCEPTED_S4B26_PARENT_FRESH_PASS 112592`. Candidate compiler exit 1, `GATE115_CANDIDATE_SOURCE_WARNINGS []`. Exact report:

```text
GATE115_COMPILER_EXIT 1 AXIOM_REPORTS [('FCP.BFSSSU2PhysicalDomainS4B27.originalSourceVariation_signed_orderedTheta_lift', {'propext', 'sorryAx', 'Classical.choice', 'Quot.sound'})]
GATE115_ORIGINAL_SIGNED_GAMMA_ORDERED_THETA_LIFT_STRICT_RED
SU2BFSSPhysicalDomainS4B27OriginalSignedGammaContractionOrderedThetaLiftProbe.lean:41:8: error: `simp` made no progress
Note: The target expression is not type-correct under the `implicit` transparency level ... function expected M.gamma k α
```

The failure is at the **first transport of a double real-to-complex coerced scalar sum through the actual Fock continuous-linear operator**. The accepted Gate113 real scalar contraction was not reached. This is a Lean normalization/elaboration obstacle under a PiLp CLM, not a mathematical contradiction or original-source defect; the result is **unaccepted**, accepted unique S4 roots remain **51**. Preserve this negative knowledge. The proposed fix is a private, generic `Fintype`-indexed complex-module lemma `doubleSum_realCast_smul`, with `Finset.sum_smul` and `map_sum` evaluated on an opaque module variable. Apply its result explicitly to the source `Fermion N →L[ℂ] Fermion N` and retain the existing typed `congrArg` applied to accepted Gate113. Neither the target root statement nor original physics source nor accepted ancestors change.

## Gate115 #2 — atomic source/CI proof attempt

New candidate Git blob `b3881e95d6a05ca0acd27ce63e2418119fac3be3`; previous red source `a699148fbe188526a97c5a4ac6a250994a8abd4d` immutable in run #40433827449. Candidate and two workflow SHA guards committed together in one Git tree to prevent intermediate stale-SHA run. Strict recompile and exact theorem axiom audit required; success **not yet claimed**. Scoped S4 root count **51** until verified terminal green.


## Gate115 #2 — source-exact parents green; generic helper cast rewrite RED

Independently verified terminal [run #40435545398](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40435545398), job `121963228004`, HEAD `274949931a715bef466d3887cdd0342c8add634f`: **failure**. Immutable mathematics, workflow preflight, pinned Lean 4.34.1 and Mathlib, G4K9C provenance, fresh original modules and accepted S4B3–S4B26 all passed (`GATE115_ACCEPTED_S4B26_PARENT_FRESH_PASS 112592`). Candidate `GATE115_CANDIDATE_SOURCE_WARNINGS []`, `GATE115_COMPILER_EXIT 1`; named root's axiom report contains `sorryAx`, so **0** new roots. Compiler first cause:

```text
SU2BFSSPhysicalDomainS4B27OriginalSignedGammaContractionOrderedThetaLiftProbe.lean:34:6: error: `simp` made no progress
```

The original Fock CLM proof was not reached: failure is wholly inside the new **generic helper** `doubleSum_realCast_smul` after a `congr 1`, where `simp only [map_sum]` does not recognize the real→complex coercion over nested sums. Directly inspected **pinned** mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, file `Mathlib/Basic/Complex/BigOperators.lean`, Git blob `8726b21970f99de2ad13ba4ec14f68ad00e463df`; the `@[simp, norm_cast]` theorem `Complex.ofReal_sum (s : Finset α) (f : α → ℝ)` explicitly states the finite-sum cast identity. This is a rewrite-pattern/proof-method failure, not evidence against the theorem. Do not classify #1 or #2 as accepted.

## Gate115 #3 — exact pinned coercion theorem recovery candidate

Replace only helper's unsuccessful `congr 1; simp only [map_sum]` with `simp only [Complex.ofReal_sum]`; preserve target theorem, the generic real/complex module lemma, all original source-defined operators and order, exact source SHA protection, and all previously accepted theorem roots. Proof-only new source Git blob `947fb0e81954a1e02f30a82fe72c1de26e90d0b5`; prior #2 blob `b3881e95d6a05ca0acd27ce63e2418119fac3be3` remains in its immutable CI run. Source, both strict workflow SHA guards, and audit are committed atomically. **Pending full strict CI**, so unique accepted scoped S4 roots remain **51**, target 52 only on an independently checked green.
