# BFSS SU2 Physical Domain — D1 Gate #2 Acceptance and D3 Research Ordering 0.1.0

**Date:** October 9, 2026 Pacific (GitHub Actions October 10 UTC).
**Status:** `D1_ACCEPTED__SOURCE_GAUGE_RESTRICTED_CLOSED_GRAPH_IDENTITY`; `D3_SOURCE_ANALYSIS_ONLY__NOT_COMPILED_OR_ACCEPTED`.
**Research branch:** `research/openai-math-su2-concrete-potential`.
**No new mathematical assumption, framework promotion, upstream source change or original proof-cache mutation.**

## I. Exact D1 evidence

[BFSS SU2 Physical Domain Bridge #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38014546454), run `38014546454`, job `114101816539`, completed `SUCCESS`. Tested commit `8db5b4909152b837b4e338b60f761083c6cf9c9f`, D1 source file `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD1RestrictedSourceGraphProbe.lean`, blob `c601d5888e24d0a9bc8f62f2bff368fc29299b5d`. Compiler Lean 4.34.1, original upstream OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The workflow restored the exact already warm-qualified `bfss-su2-accepted-g4k10a-v1-6eeb4293...` cache, passed accepted module object checks and compiled the *unchanged* D1 source. All **five** theorem `#print axioms` results were independently checked by the workflow against precisely `[propext, Classical.choice, Quot.sound]`. `D1_EXACT_FIVE_STANDARD_AXIOM_REPORTS_PASS` printed in the job log; no `sorryAx` or compiler errors. D1 Gate #1 was red **before compilation**, because Actions caches saved on sibling branches are not accessible; the exact D1 source blob in Gate #2 was byte-for-byte the same as the original candidate.

### Five qualified mathematical conclusions

1. `sourceGaugeRestrictedGraphMap_equal`: original `G.deformedModelGraphMap 1 0` equals the actual `coreToL2` plus original `M.chargeVector` map on `G.invariantCore`.
2. `sourceGaugeRestrictedClosedGraph_equal`: the source-defined topologically closed gauge-restricted graph `G.deformedModelGraph 1 0` equals the closure of that **original** restricted source supercharge graph.
3. `sourceGaugeRestrictedClosedDomain_iff`: the projected graph domains agree in the full ambient `FullL2 N`.
4. `sourceGaugeRestrictedCoreForm_equal`: source original and deformed supercharge quadratic forms agree on **each** `f : G.invariantCore`.
5. `sourceGaugeRestrictedGraph_le_full`: the actual gauge-restricted graph is included in the original *full*-space joint closed charge graph. Equality to the full graph is neither claimed nor inferred.

The D1 theorem statements are original-source-typed and unconditional for every source `M : AlgebraData N` and `G : M.GaugeData`, hence include the independently certified concrete paired SU2 `M,G`. They **do not** prove physical smooth-core L² density, that charge images are gauge invariant, or that any paper Hamiltonian operator domain is identified.

## II. Primary manuscript boundary

The [pinned October 5, 2026 manuscript TeX](https://github.com/openai/math/blob/adc7f1241b42e322a6451854ab7e4b4c146bf78a/preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex) (source blob `12c5fffb5f90b48856f60fb0e93c18e2490c5f1b`), lines 68–143, defines its physical Hilbert space as the SU2-invariant L² space, its form core as SU2-invariant compactly supported smooth sections, `Qα` as explicit differential-plus-CAR operators, `q=(1/16)∑‖Qαψ‖²`, and its self-adjoint Hamiltonian H as the operator associated with the **closure of the physical form**. The source D1 graph equality compares the two already defined *source* graph closures on the invariant core. Identifying the entire paper's physical H remains separate, with the exact concrete gauge representation, density and form/operator construction requiring correspondence proofs.

## III. Next substantive target — D3, ahead of D2

**Project-lead ranking:** D3 (charge gauge preservation) first; D2 (physical smooth-core L² density) second. The former has existing source covariance lemmas and a finite-dimensional contraction to discharge; the latter requires the much larger norm-bounded Bochner/Haar averaging and smooth-compact-support preservation argument.

Exact unproved D3 proposition:
```lean
∀ {N : ℕ} (M : AlgebraData N) (G : M.GaugeData)
  (α : SpinIndex) (f : G.invariantCore),
  coreToL2 (M.charge α f.val) ∈ G.physicalSpace
```
Equivalently show the pointwise identity `M.charge α f.val (G.boson g x) = G.fermion g (M.charge α f.val x)` for every gauge element and bosonic configuration. The pinned source provides:
- `GaugeCore.lean`: `G.invariantCore_equivariant` and `G.invariantCore_fderiv` (differentiation of the *genuine* invariant smooth sections).
- `CovariantFields.lean`: `G.kineticSkewLinear_covariant`, `G.principalSymbol_covariant`, `G.deformedPotentialMultiplier_covariant`.
- `DeformedCharge.lean`: `M.deformedCoreCharge_apply`, its genuine source first-order kinetic/field split.
- Accepted G4-K9D `sourceUnconditionalCoreCharge_equal`: replace source original Q with source deformed Q at 1,0 *without assuming* multiplier equality.

The nontrivial remaining identity is the orthogonal tensor contraction: writing `U = G.boson g`, source real-linear kinetic coefficient `K : Boson N →ₗ[ℝ] (Fermion N →L[ℝ] Fermion N)`, and Fréchet derivative `Df`, the kinetic term is `∑_p K(e_p)(Df(x)e_p)`. After transforming and using covariance, the corresponding sum involves `U e_p`; orthogonality gives an exact change-of-orthonormal-basis contraction. The proof must discharge
```text
Σ_p K(U e_p) (Df(x)(U e_p)) = Σ_p K(e_p) (Df(x)e_p)
```
using both real-linearity and the orthonormal matrix coefficient orthogonality, **not** treating unitarity of the gauge action as a tactic shortcut. Then promote continuous pointwise equality to `G.bosonPullback g (coreToL2 (Q f)) = G.fiberAction g (coreToL2 (Q f))` for each g, hence membership in `G.physicalSpace`.

This construction is **not compiled, does not have a new workflow, and is not a theorem yet**. First audit available Mathlib real Hilbert orthonormal-basis lemmas and pinned `MixedEnergy.firstOrder_apply` to avoid needless expansion. Reuse the accepted K10A cache and original source types in any later bounded D3 probe.

## IV. Remaining D2 and stopping conditions

D2 requires source-typed `G.coreNormClosure = G.physicalSpace` for the concrete SU2 pair (or a correct fully-hypothesized general version). The upstream `M.gaugeAverage` averages *real scalar patch functions*, not fermion-valued sections; it is NOT a proof of an L²-bounded physical Haar projection. Such a projection must preserve compact support and all smoothness orders, and yield density from `M.coreToL2_dense`.

D1 + D3 alone do not settle density. D1 + D2 alone do not identify charge maps into physical L². The 16-component source graph norm can be compared to the manuscript q form norm, but the associated self-adjoint Hamiltonian and exact Fock lift intertwiner are yet to be identified. No spectral eigenvalue result, gap, large-N theorem, experimental Matrix theory or change to T6 source adjudication follows from D1.

**Stop line:** Do not initiate an automatic D2 or D3 gate merely because D1 compiled; first verify a concrete usable source-level contraction proof strategy. No main merge, upstream PR, or new framework-level classification.
