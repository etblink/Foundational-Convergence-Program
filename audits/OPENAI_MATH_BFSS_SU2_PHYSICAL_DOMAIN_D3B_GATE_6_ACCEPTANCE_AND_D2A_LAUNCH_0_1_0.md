# BFSS SU2 physical-domain — D3B Gate #6 acceptance and D2A physical graph launch 0.1.0

**Pacific date:** 2026-10-09 (GitHub Actions UTC 2026-10-10).  
**D3 disposition:** `PASS__ORIGINAL_SOURCE_SUPERCHARGES_PRESERVE_GAUGE_INVARIANT_SMOOTH_CORE`.  
**D2A status:** `PROSPECTIVE_UNCOMPILED`; **D2 physical density remains unproved.**  
**Pins:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean `4.34.1`. No other source/dependency substitution.

## 1. Gate #6 exact acceptance evidence

- [BFSS SU2 Physical Domain Bridge #6](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38016254322), run ID `38016254322`, job ID `114107063587`, `SUCCESS`.
- Exact tested commit `9a10ca764e1ac69c4b4d681cd467ff9d898b71dc`, D3B source file `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD3BFullChargeGaugePreservationProbe.lean`, Git blob `1aedd8b251c8b04f02f9d71e35594a8cc482d79b`.
- Full accepted G4-K10A compiled cache restored with exact source-pinned key; source and accepted D1/D3A lineage guards succeeded. Unchanged D1 five axioms and D3A two axioms rechecked successfully in the same job.
- All five D3B theorem declarations compiled without Lean error, with precisely `[propext, Classical.choice, Quot.sound]` and **no `sorryAx`**. CI printed `D3B_EXACT_FIVE_STANDARD_AXIOM_REPORTS_PASS`.
- Names: `sourceDeformedCoreCharge_contracted`; `sourceDeformedCoreCharge_pointwiseGaugeCovariant`; `sourceOriginalCoreCharge_pointwiseGaugeCovariant`; `sourceOriginalCoreCharge_mem_physicalSpace`; `sourceOriginalCoreCharge_mem_invariantCore`.

## 2. Scientific content

For *every* source `M : AlgebraData N`, actual source `G : M.GaugeData`, all `α : SpinIndex` and all `f : G.invariantCore`, the **original** upstream-defined BFSS supercharge satisfies

```lean
M.charge α f.val ∈ G.invariantCore
```

This is verified against the true source `G.physicalSpace`, `G.invariantCore`, original supercharge and true `G.boson/G.fermion` actions, not a surrogate operator or assumed Gauss invariance. It is stronger than input/output invariance at a single test state. Kinetic orthogonal contraction (D3A), actual field covariance, exact original/deformed massless charge crosswalk (G4-K9D) and L² pullback/fiber equalities are all discharged by the compiled kernel chain.

No conclusion about `G.coreNormClosure = G.physicalSpace`, an associated self-adjoint Hamiltonian domain, physical spectral eigenvalues, existence of positive point spectrum in Lean, global gap, large-N physics or empirical BFSS validation follows from this alone. T6 confirmed, T2 not triggered; program-wide K1–K10 unchanged.

## 3. Why D2A is the bounded next mathematical checkpoint

D2's final goal is `G.coreNormClosure = G.physicalSpace` for the source concrete SU(2) `pairedGaugeData`, or a genuinely proved general compact `GaugeData` version. Crucially, `G.coreNormClosure` is **ordinary L² closure of the gauge-invariant smooth core**, whereas `G.deformedModelGraph` is a *joint charge graph-norm closure*. These are not interchangeable.

Before demanding the much harder density argument, D2A discharges a physically significant domain fact already reachable via accepted D3: not only do smooth-core original charges preserve physical invariance, but **every limit point in the source gauge-restricted closed joint charge graph has both a physical input and 16 physical charge outputs**. This follows from genuine smooth-core D3B covariance and the pre-existing source closedness `G.physicalSpace_closed`; it cannot be inferred from an arbitrary full-space charge graph.

D2A source candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2AClosedPhysicalGraphProbe.lean` attempts four declarations:

1. `sourceCoreNormClosure_le_physicalSpace`: `G.coreNormClosure ≤ G.physicalSpace`. Reverse density inclusion expressly open.
2. `sourceClosedGaugeGraph_input_physical`: every first-coordinate element of source `G.deformedModelGraph 1 0` is an actual physical L² state.
3. `sourceClosedGaugeGraph_output_physical`: for every such graph point and all sixteen α, each output `y α` is physical. New closed-graph consequence of D3B.
4. `sourceOriginalRestrictedClosedGraph_all_physical`: strengthen D1's original restricted closed graph with physical input and all physical outputs.

The D2A candidate uses the accepted D3B `sourceOriginalCoreCharge_mem_physicalSpace` on genuine `G.invariantCore`, original/deformed charge identity and the source `G.physicalSpace_closed`. No physical density, Hamiltonian operator, test density or gauge projector is assumed. Its claims are *prospective only until compiler and axiom checks pass*.

The new workflow still runs on **cache-owner branch** `research/openai-math-su2-concrete-potential`, preserves the exact G4-K10A cache, and freezes the already accepted D1/D3A/D3B source files against Gate #6 SHA `9a10ca76...`. It rebuilds D1/D3A/D3B as importable `.olean` objects before compiling D2A and requires exactly four permitted-axiom reports, no `sorryAx`. No new original Color Gate, main merge, or upstream PR.

## 4. D2B actual density: research route and stop rule

D2A **is not density**. After qualification, proceed to the *real* density mechanism. Two principled constructions:

- **Averaging:** construct a norm-bounded SU(2) gauge-equivariant projection `P` by Bochner/Haar averaging of `W_g ψ(x) = G.fermion g (ψ (G.boson g)⁻¹ x)`. For any invariant `ψ`, `P ψ = ψ`. Show the projection maps arbitrary smooth compactly supported test sections to gauge-invariant smooth compactly supported sections; compactness of the group preserves compact support but smoothness requires fully justified differentiation under the integral for all orders. Then combine with pinned source `coreToL2_dense`.
- **Equivariant regularization:** use radial spatial convolution/mollification commuting with orthogonal `G.boson`, then invariant radial cutoff. Establish `L²` convergence, smoothness, compact support and gauge covariance *for the exact fermionic action*. This potentially avoids re-creating a general vector-valued compact-group average but may require a sophisticated pinned Mathlib smoothing API.

Select whichever route has available source-qualified Lean library lemmas; never disguise the density target as an assumption. An explicit `G.coreNormClosure = G.physicalSpace` theorem is the acceptance criterion for D2B. Mathematical proof/physical identity should determine whether to continue formalization, not gate count.

No more D3 algebra gates; D2A is a finite analytic domain-closure step. D2B remains open until fully discharged.
