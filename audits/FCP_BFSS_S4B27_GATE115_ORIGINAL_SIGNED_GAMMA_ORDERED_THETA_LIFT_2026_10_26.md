# FCP/BFSS S4B27 — signed original gamma contraction over ordered Fock theta product (Gate115)

**Status: new theorem candidate, strict CI pending.** Unique strictly accepted scoped S4 principal roots: **51** through independently verified Gate114 #4 ([run #40431852374](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40431852374); new theorem `FCP.BFSSSU2PhysicalDomainS4B26.originalGammaTheta_operator_product_distribution`; original source blob `1e414c3901fc3309ca29c9b8040f0387beb9f5e6`). Acceptance of S4B27 must not be inferred from a commit, a preflight green, a parent recompile, or this preregistration.

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
