# BFSS SU(2) Physical Domain — Gates #84–#88 Exact Closed-Form Completeness Acceptance 0.1.0

**Date:** 2026-10-10 (Pacific)  
**Classification:** Accepted research-branch pinned Lean/kernel proof; not canonical main, not upstream PR, not a spectral claim.

## 1. Source, pins, and acceptance

Research branch `research/openai-math-su2-concrete-potential` remains bound to `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, the frozen Gate #28/#47 cache proofs, and the D2B11–D2B22 original physical charge graph/true Hilbert adjoint/positive self-adjoint natural-domain adjoint-square/normalized exact original source energy chain.

- **Gate #84 GREEN**, Actions run `38060943895`, job `114238901053`, proof commit `e90ce50204700e091d4e973893820811d0a8e23e`. D2B23 file: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B23ExactFormGraphNormEquivalenceProbe.lean`. FOUR declarations with axiom sets contained in `[propext, Classical.choice, Quot.sound]`, no `sorryAx`. Marker: `D2B23_SOURCE_PHYSICAL_FORM_GRAPH_COMPLETE_NORM_EQUIV_PASS`.
- **Gate #86 GREEN**, Actions run `38061745424`, job `114241242309`, proof commit `870feca1199cfda6892ef7abec767fde58a159ad`. D2B24 file: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B24WeightedClosedFormGraphProbe.lean`. FOUR declarations, standard permitted axioms only; marker `D2B24_PHYSICAL_CLOSED_WEIGHTED_FORM_GRAPH_PASS`.
- **Gate #88 GREEN / latest**, Actions run `38062563927`, job `114243626297`, proof commit `46f0ab888785f15fad5bd238283a2c35b70c7ba4`. D2B25 file: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B25WeightedFormDomainExactnessProbe.lean`. FOUR declarations, only the same permitted axioms, no `sorryAx`. Marker: `D2B25_EXACT_SOURCE_WEIGHTED_FORM_DOMAIN_COMPLETE_PASS`.

All three accepted runs compiled the exact existing source-defined D2B predecessor chain and the frozen imported proof checks. The new statements do **not** use unproved axioms, `sorry`, admitted physics assumptions, or a new source operator.

## 2. Exact mathematical conclusion

Write `T := sourcePhysicalHilbertChargeColumn M G` on the genuine source `G.physicalSpace`. D2B22/Gate #83 proves that `q(u) = (1/16) ‖Tu‖²` on ALL of `Dom(T)` agrees with the original source closed charge energy under the canonical Hilbert-output equivalence; D2B14 proves that source energy restricts to the original `M.coreForm` on the invariant smooth core. D2B13 proves the original core graph is dense in the original **minimal closed** source charge graph, not in an unproved maximal differential realization.

**D2B23**:
- `CompleteSpace ((T).graph)`, from actual Hilbert graph closedness;
- define `F(u) := ‖u‖² + q(u)` and `G(u) := ‖u‖² + ‖Tu‖²`;
- the kernel checks nonnegativity of `F` and the sharp simple comparison `F(u) ≤ G(u) ≤ 16 F(u)`.

**D2B24**:
- explicitly define the weighted Hilbert source graph `W := {(u,y) in WithLp 2 | (u,4y) ∈ T.graph}`;
- `W` is closed and `CompleteSpace W` in the literal `WithLp 2 (G.physicalSpace × SourceChargeHilbertOutput)` Hilbert norm;
- each actual source-domain vector maps to `(u,(1/4)Tu)∈W`;
- its weighted Hilbert norm obeys EXACTLY `‖(u,(1/4)Tu)‖² = ‖u‖² + (1/16) ‖Tu‖² = F(u)`.

**D2B25**:
- every single `p ∈ W` comes from an original `u ∈ Dom(T)`, with literal equality of the weighted pair;
- the canonical `Dom(T) → W` map is **injective and surjective**;
- it preserves the same exact normalized form norm-square.

These facts supply an exact **complete Hilbert model** for the original normalized closed quadratic-form domain. There is no larger invented form-domain completion: all weighted graph states represent original source `Dom(T)` states, and the form norm agrees with the weighted Hilbert norm. The proof does NOT claim a pre-existing Lean `CompleteSpace` instance on the original subtype under a q-form norm, which is different from its default physical-Hilbert subtype norm; the complete representation is instead concrete, norm-preserving and bijective, enough to certify closedness mathematically. Do not conflate form completeness with operator-domain equality.

## 3. Failed attempts / negative knowledge

- **Gate #85 RED** at `703ada0af17f525df36be08a014f9a36dafdead8`: in D2B24, Lean could not infer the constant complex scalar type for the continuity of `(u,y) ↦ (u,4y)`. The Hilbert form norm identity and embedding already elaborated. Fix at #86: explicit typed continuous complex constant `hconst` and its scalar action `hscale`; no mathematical assumption changed.
- **Gate #87 RED** at `d3d02b4fb9f9c3010c4c41564e7504d309d2fca1`: the graph-membership witness returned equalities oriented `u = p.first` and `Tu = 4 p.second`; the surjectivity script needed their symmetric forms. Corrected at #88 by explicit `hfst.symm` and `hsnd.symm`. Injectivity and norm-square proofs already compiled.
- Failed versions are unaccepted; do not read their `sorryAx`-contaminated printed declarations as proofs. The correct theorem bodies and all requested axiom checks are green in #86 and #88.

## 4. Scientific boundary and next **actual** task

The following mathematical source claims are now ACCEPTED:
- `T` is the source-rebased closed, densely defined physical Hilbert charge column.
- `T†` is the genuine Hilbert adjoint; `A := T†T` is defined on the **natural** product domain, formally symmetric, positive, self-adjoint, densely defined, closed (Gates #70–#78).
- `q = (1/16)‖T·‖²` agrees exactly with the original source closed energy (Gate #83).
- The original source `q` has an exact closed-form Hilbert model with original domain (Gates #84, #86, #88).

**Next proof family — no more graph norm detours or source survey:** Define the full *polarized* source form `q(u,v) = (1/16) ⟪Tu,Tv⟫` on `Dom(T)`; prove that its associated-vector condition
`∃w∈G.physicalSpace, ∀v∈Dom(T), ⟪w,v⟫ = (1/16) ⟪Tu,Tv⟫`
is equivalent, using the true Hilbert adjoint and density, to `Tu ∈ Dom(T†)`, and prove that the unique representative is `w=(1/16)T†Tu`. Then identify the operator with `(1/16)A` on the **exact natural domain**, and prove this positive real scaling is genuinely self-adjoint in the pinned API. Finally discharge any literal independent manuscript SU(2)/Spin(48) gauge-model intertwiner before promoting the paper's spectral claims.

**Unproved:** A Lean `IsSelfAdjoint` theorem for the scalar-scaled `(1/16)A`, the entire weak-form associated-operator identity, the abstract manuscript gauge realization intertwiner, the positive-point-spectrum theorem on the actual source, any framework-level empirical/theory-selection claim. `FCP_K1_K10_T6_T2 = UNCHANGED`. `MAIN_MERGE = NO`; `UPSTREAM_PR = NO`; `NEW_PHYSICAL_SPECTRUM = NO`.

Sources have been exploited only where needed (pinned Mathlib/withLp and qualified source BFSS objects). Future proof work should focus on the associated Hamiltonian, not protocol ceremony.
