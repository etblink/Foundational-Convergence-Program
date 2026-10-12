# BFSS S3L cubic source composition — E2 negative knowledge and bounded test

**Research record, not evergreen guidance.** Maintained on `research/openai-math-su2-s3l-combined-rotation` under draft PR #25. Reverify active head and workflow state. This document is for exact historical diagnostics, not an instruction to promote unqualified theorems.

## Accepted evidence before E2

Exact pinned environment: Lean 4.34.1, `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Qualification requires nonempty .olean, exact theorem axiom subset `{propext, Classical.choice, Quot.sound}` and no sorryAx. K2D3 unconditional original literal cubic factor and E1A–D generic-to-original six-index transport are GREEN; these are distinct accepted source results, **not** original full cubic-charge covariance. K4 has original gammaTwo/structure constant sixfold coefficient identities; K6C has original free-spinor coefficient contraction. The physical composition remains unqualified.

## E2A #1–#3: increasingly precise failures

- [Original Cubic Sixfold Operator #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38199787332) RED at E2A: first errors missing `pairedAlgebraData.fermionAction` because G1A wasn't opened. A later whnf with unresolved identifiers is not diagnostic of a well-typed source theorem.
- [#2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38200465220) RED at E2A: G1A fixed, but `sourcePositionVariation` still unresolved because K1 namespace wasn't opened. Later recursion with unresolved identifiers again inconclusive.
- [#3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38201125995) RED at E2A: all original symbols resolved, 27 prerequisites GREEN, then `K2E2A_ACTUAL_SOURCE_OPERATOR_FAMILY` followed by `maximum recursion depth has been reached` at the final `exact sourceComm_originalSixfoldIndices_of` using the literal huge BFSS original-source operators. Its axiom output includes `sorryAx`; **E2A/E2B not accepted**. Repeating this presentation or raising limits reflexively is poor experimental design.

## E2C1 #1: naming alone not sufficient

[Cubic Named Operator Transport #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38201902643), HEAD `19d5ef6e52134fbf0006f7edb4cc3c8fab099d70`, RED at C1, *after* 27 green pinned and accepted K2D/E1 prerequisite stages. Original source definitions were named and typed, no missing symbols. Output: `K2E2C1_ENTER_NAMED_SIXFOLD_TRANSPORT`, then `SU2BFSSPhysicalDomainS3L5K2E2C1NamedCubicSourceFamilyTransportProbe.lean:85:8: error: (deterministic) timeout at whnf, maximum number of heartbeats (200000) has been reached`; failed declaration contains `sorryAx`. **C2 and C3 were never compiled.** Named `SourceEnd` wrappers cannot by themselves avoid expensive unfolding when E1D is matched to a named sixfold sum. **Do not repeat this named-sixfold strategy or claim the math disproved.**

## Bounded next discrimination: actual single-factor naming interface

New `E2D0` contains *only* the exact original source generator, ordered fermionAction-position-position factor and exact K2D3 response as separately compiled `SourceEnd` definitions, copied from C1. New `E2D1` checks the *single-factor* theorem with `exact pairedActualCombined_comm_cubicFactor` using qualified K2D3. No scalar weights or sum indices are elaborated in the proof. This distinguishes a local definitional bridge obstruction from specifically sixfold composition costs. It is **not** a retry of E2C1, and a green E2D1 alone does **not** discharge the old sixfold theorem.

**Stopping rule:** A red E2D1 at recursion/whnf means even local source-name matching is expensive; stop alias-equivalence permutations. A green E2D1 permits a separately justified change in *sum representation* (e.g. a single product index) only with a real proof connecting that representation to the K4 original source charge; no new axioms or hidden substitutions. Do not promote generic source transport to complete charge/Hamiltonian/spectral claims.

**Governance:** scoped research branch only, no main/upstream modification, original PR #25 base unchanged, historical failed E2 workflow manual-only. Route subsequent detailed CI evidence here or an adjacent experiment note; never into `FCP_PROJECT_LEAD_EVERGREEN_RESEARCH_GUIDANCE_0_1_0.md`.
