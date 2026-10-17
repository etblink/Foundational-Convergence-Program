# S3L5J6 — source orbital reindex and accepted-cache consolidation 0.1.0

**ACCEPTED original-source result:** At fixed original color A and spinor γ, the orbital derivative component of the genuine BFSS kinetic response is reindexed with exactly the J1 spatial plane signs and the original `-Complex.I * gamma` weights. This result is not the final full free-spinor covariance theorem.

## Exact Lean qualification

- [Kinetic Coefficient #72](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38162198668) **GREEN**, exact source/workflow commit `812c4c79f67747647f6f1d28fe543f4ed0cd079e`.
- Qualified module `SU2BFSSPhysicalDomainS3L5J6SourceOrbitalFixedIndexReindexProbe.lean`.
- Qualified theorems:
  1. `FCP.BFSSSU2PhysicalDomainS3L5J6.sourceComp_orbitalDerivative_cases`
  2. `FCP.BFSSSU2PhysicalDomainS3L5J6.sourceKineticOrbitalPiece_asDerivativeCases`
  3. `FCP.BFSSSU2PhysicalDomainS3L5J6.sourceOrbitalFixedColorSpinor_reindex`
  4. `FCP.BFSSSU2PhysicalDomainS3L5J6.pairedOrbitalFixedColorSpinor_reindex`
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Compilation produced an importable `.olean`; the workflow matched all exact theorem names and `#print axioms`, allowed only `propext`, `Classical.choice`, `Quot.sound` and rejected `sorryAx`.

## What this mathematical step actually establishes

For source `M : AlgebraData 2`, any fixed genuine `A : ColorIndex 2`, `γ : SpinIndex`, distinct spatial directions i ≠ j and any complex coefficient family c(k), the qualified theorem proves

```
∑k c(k) • kineticOrbitalPiece M i j k A γ
 =
∑k (if k = i then c(j) else if k = j then -c(i) else 0)
     • kineticTerm M k A γ.
```

The definitions on both sides are the original source-defined `M.fermionAction` composed with the original `coordinateDerivative`, *not* a surrogate operator. The final J6 theorem instantiates `M = pairedAlgebraData` and `c(k) = kineticWeight pairedAlgebraData α k A γ`, retaining the true `-Complex.I * gamma` kinetic coefficient. It relies on qualified J1 source spatial reindexing. Full spatial/color/spinor contraction and `-J` action on `sourceKineticCharge pairedAlgebraData` still remain OPEN.

## The feedback from Gate #71

- [Kinetic Coefficient #71](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38161810094) was RED solely because the J6 composition-case proof left `i = j` unsimplified after `k = i`, despite `k ≠ j` in that branch. The J6 theorem was UNQUALIFIED in #71 (`sorryAx` from unsolved goal).
- Gate #72 added one locally derived fact `hij : i ≠ j`, proved from those two branch hypotheses, and compiled the ORIGINAL theorem unchanged. This is not a mathematical counterexample, additional hypothesis or increased compiler budget.

## Cache migration: accomplished and independently measured

- [Gate #70](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38161268038) **GREEN**: created the immutable merged cache from the SIX existing accepted S3L proof-object layers after re-running their source/axiom verification.
- [Gate #71](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38161810094) reached and passed the **first merged-cache hit** despite the unrelated J6 proof red. [Gate #72](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38162198668) **GREEN**, independently repeated that cache restore, source verification and axiom audit.
- Manifest `S3L_ACCEPTED_CACHE_QUALIFIED_SOURCES_0_1_0.txt` pins **26 modules** individually to their earlier GREEN qualification commits. The verifier checks `git hash-object` of each current source against `git rev-parse frozen:path`, the presence of every corresponding `.olean`, and the strict axiom footprint of **10 exact representative theorem roots** imported in pinned Lean. No blind cache trust.
- The SIX legacy cache restore/compile/verify/save paths are skipped on a valid merged cache hit. They remain preserved in the workflow and are available automatically on a merged cache miss. The ~3.55 GB pinned Lean/Mathlib build cache and ~53 MB SU(2) foundational cache were deliberately left independent.
- Comparison of identical source checkpoint intervals in job logs: Gate #69 (six small caches) required **88 seconds** from completed large dependency restore to qualified J5 theorem; Gate #71 (merged hit) required **26 seconds**. This is an observed **62-second reduction**, not a universal CI runtime guarantee. Remaining large-cache preparation remains unchanged.
- Cache source and proof provenance is unchanged; no accepted Lean theorem was edited to achieve the optimization.

## Immediate next mathematical target

Start S3L5J7: transport the J6 original orbital coefficient through the remaining color/spinor finite sums; combine with J4 fermionic response, J3 spinor reindexing and J2 complex `-i` gamma/J coefficient. Use separately named source terms, not whole-charge unfolding. Aim to establish `[L_{ij}+K_{ij}, Q^{kin}_α] = -∑_β J_{ij}[α,β] Q^{kin}_β` for the source-defined paired SU(2) model. This full kinetic identity is **NOT YET PROVED**.

The original cubic supercharge, complete Q, analytic domains, closed Hamiltonian rotational symmetry and positive-eigenvalue spectrum remain distinct OPEN obligations.

FCP `main` unchanged at `cf06212a57db0ceffad74bd78280a8a240856a17`, PR #25 still draft and stacked on S3K, PR #24 unmerged. No upstream PR was opened or merged.
