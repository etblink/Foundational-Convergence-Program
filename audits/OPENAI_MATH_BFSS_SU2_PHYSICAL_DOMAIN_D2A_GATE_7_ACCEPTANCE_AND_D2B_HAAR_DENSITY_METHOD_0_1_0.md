# BFSS SU2 physical domain — D2A Gate #7 acceptance and D2B analytic density method 0.1.0

**Date:** 2026-10-09 Pacific (GitHub Actions 2026-10-10 UTC).  
**D2A disposition:** `PASS__SOURCE_GAUGE_RESTRICTED_CLOSED_GRAPH_IS_PHYSICAL_INPUT_AND_ALL_OUTPUTS`.  
**D2B:** `MATHEMATICAL_HAAR_AVERAGING_ARGUMENT_IDENTIFIED__LEAN_FORMALIZATION_NOT_STARTED`; no `G.coreNormClosure = G.physicalSpace` Lean theorem yet.

## 1. Exact Gate #7 acceptance

[BFSS SU2 Physical Domain Bridge #7](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38016746046), run ID `38016746046`, job `114108593123`, `SUCCESS`, tested exact commit `2c54db2171084eb804c2b775bd19b50028f21d76`. D2A Lean source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2AClosedPhysicalGraphProbe.lean`, blob `3171b68a1c81cdbd0a3075a46ef5c11f175f3306`.

The workflow checked accepted mathematical source lineage at OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean `4.34.1`; restored the exact G4-K10A accepted warm proof cache; froze prior D1, D3A, D3B source; successfully recompiled D1's five theorem axioms, D3A's two and D3B's five. All four D2A public declarations compiled with precisely `[propext, Classical.choice, Quot.sound]` and without `sorryAx` or compiler error. The job log printed `D2A_EXACT_FOUR_STANDARD_AXIOM_REPORTS_PASS`.

Four qualified propositions:
1. `sourceCoreNormClosure_le_physicalSpace`: the L²-norm closure of the source Gauss smooth core lies in the true source physical subspace. **No reverse density inclusion was asserted.**
2. `sourceClosedGaugeGraph_input_physical`: the input of every gauge-restricted closed source graph point is physically gauge invariant.
3. `sourceClosedGaugeGraph_output_physical`: *each* of the 16 output charge components of such a closed graph point is physically gauge invariant, using accepted D3B charge covariance and closedness of the physical subspace.
4. `sourceOriginalRestrictedClosedGraph_all_physical`: the original-source restricted closed graph also has physical input and all 16 physical outputs, by accepted D1 restricted graph identity.

These are genuine original-source mathematical domain statements. The gauge-restricted graph need not equal the unrestricted `M.fullClosedGraph`; the smooth physical core need not yet be shown L² dense in `G.physicalSpace`. No new spectral eigenvalue, Hamiltonian equality, BFSS gap, M-theory/empirical confirmation or FCP framework classification follows.

## 2. D2B exact remaining Lean target

For the concrete FCP paired `M : AlgebraData 2`, `G : M.GaugeData`:

```lean
pairedGaugeData.coreNormClosure = pairedGaugeData.physicalSpace
```

Prefer, if legitimately source-typable under existing `GaugeData` fields and compactness of `GaugeGroup N`, the more general theorem `∀ {N} (M : AlgebraData N) (G : M.GaugeData), G.coreNormClosure = G.physicalSpace`. The higher-level theorem must **not** assume density, invariant test-core averaging or an equivariant projector as a new field; those constructions are the proof obligations themselves.

Pinned source evidence:
- `BFSS/Core.lean`: `GaugeGroup N := Matrix.specialUnitaryGroup (Fin N) ℂ`, `Boson N` real Euclidean finite-dimensional, `Fermion N` finite-dimensional complex Hilbert, `FullL2 N`, `SmoothCore N`; `coreToL2_dense` already proved.
- `BFSS/GaugeCore.lean`: `G.boson` and `G.fermion` are continuous genuine group homomorphisms into real/complex linear isometries; `G.physicalSpace` is the **kernel-intersection** relation `G.bosonPullback g ψ = G.fiberAction g ψ` for all gauge elements.
- `BFSS/ClosedProfiles.lean`: `G.coreNormClosure` is the closure of the range of `coreToL2` **restricted to** `G.invariantCore`. Accepted D2A proves inclusion into `G.physicalSpace`.
- `BFSS/GaugeAverages.lean`: `M.gaugeAverage` is **scalar**, over full unitary color matrices, primarily for patch weights. It is **not** the vector-valued physical projection needed here; do not substitute it for the construction below.
- The source/Mathlib support smooth test functions, compact supports and Bochner integration; `Mathlib.Analysis.Calculus.ParametricIntegral` provides dominated differentiation-under-integral lemmas. None of these already proves the required vector-valued smooth compact-group averaging or source Hilbert-space density as a single bundled theorem.

## 3. Direct mathematical argument (not a Lean certificate)

Write `U_g=G.boson g`, `ρ_g=G.fermion g`. Each `U_g` is an orthogonal transformation of `ℝ^d`, each `ρ_g` is unitary on the finite-dimensional fermion fiber `F`. The group `K=SU(N)` is compact, with normalized Haar probability measure `dg`. Define the combined action on `L²(ℝ^d;F)` by

```text
(W_g ψ)(x) = ρ_g ψ(U_g⁻¹ x).
```

This is a unitary representation. **Its fixed space is exactly** the source `G.physicalSpace`, because `W_g ψ=ψ` is equivalent to `ψ(U_g x)=ρ_g ψ(x)`, which is `G.bosonPullback g ψ=G.fiberAction g ψ` as source L² classes.

For each `f ∈ C_c^∞(ℝ^d; F)`, set

```text
(Af)(x) = ∫_K ρ_g f(U_g⁻¹ x) dg.
```

Mathematical obligations, individually explicit:
1. **Well-defined:** joint continuity in `(g,x)` of the integrand (from source `GaugeData`), finite-dimensional Bochner integration over compact `K`, and normalized Haar.
2. **Gauge invariance:** `W_h(Af)=Af` for all `h`, by the group law and Haar left invariance. This shows `Af ∈ G.invariantCore` once smoothness and support are proved; no assumption of `Af` equivariance is permitted.
3. **Compact support:** for `supp(f) ⊆ C` compact, `supp(Af) ⊆ ⋃_{g∈K} U_g C`, a compact image of `K×C` under the continuous action. This is the entire bosonic support, not merely a set of gauge orbits with no compactness proof.
4. **Arbitrary smoothness:** for each finite derivative order `k`, differentiation in `x` passes under the group integral. The integrand's derivatives in `x` involve `ρ_g D^k f(U_g⁻¹ x)(U_g⁻¹)^{⊗k}`; jointly continuous and uniformly bounded on `K` times local compact spatial neighborhoods. Prove this under a correct dominated derivative integral theorem, then induct on `k`. Merely knowing the average is continuous is insufficient.
5. **Norm contraction:** `‖Af‖_{L²} ≤ ‖f‖_{L²}`, by Bochner/Minkowski inequality and the fact each `W_g` is a unitary operator on L². Show all needed measurability/Fubini/interchange steps.
6. **Physical error bound:** for `ψ∈G.physicalSpace` and any smooth compactly supported `f`, `‖Af-ψ‖₂ ≤ ‖f-ψ‖₂`, because `W_gψ=ψ` and the integral is normalized.
7. **Density:** by pinned `coreToL2_dense`, choose smooth compactly supported `f_n→ψ` in L²; then `Af_n∈G.invariantCore` and `Af_n→ψ` in L². Thus `ψ∈G.coreNormClosure`. Combine with accepted D2A inclusion to get equality.

This is the standard compact-unitary-group averaging proof specialized to the *actual* source representation. The mathematical reasoning gives a credible true proposition and explicit assumptions supplied by source `GaugeData`; a fully checked formal result still requires its exact derivative-under-integral, Haar, L² measure/pullback, compact support and integral-norm estimates. **Do not label this section 'Lean proved'.**

## 4. Formalization sequencing / stop line

Favor a **single substantial D2B averaging construction** rather than several ornamental green gates. Source-type it in a separate leaf `SU2BFSSPhysicalDomainD2BPhysicalSmoothCoreDensityProbe.lean`, importing original source `GaugeCore/ClosedProfiles` and accepted D2A where useful.

Implement in this order *within the same proof program*: (a) Haar probability on actual source `GaugeGroup`, (b) averaged test function as a genuine `SmoothCore` with compact support and derivative control, (c) exact `G.invariantCore` membership (no fake invariant core), (d) L² contraction/error, (e) reverse closure inclusion and final equality. A broader `AlgebraData N/GaugeData` theorem is justified only if all fields suffice without hidden smoothness assumptions in the group variable. For our integration differentiates in spatial `x` only, and source `G.boson/G.fermion` joint continuity appears sufficient.

**Do not** create a CI gate merely to repackage D2A or prove a tautological projector criterion whose crucial hypothesis is still an unexplained assumption. Open the next bridge gate only when the leaf actually discharges a meaningful part of the Haar-average smoothness/physical approximation construction, with explicit permitted axiom checks and a source freeze. If library support makes that infeasible within a bounded proof, record precisely which analytic lemma is missing and recognize a valid mathematical stopping point instead of manufacturing extra physics.

Original Color Gate/cache and qualified D1/D3A/D3B/D2A proofs remain frozen. No branch merge, upstream PR, new eigenvalue claim, BFSS physical-mass-gap claim, empirical assertion, or T6 source adjudication change.
