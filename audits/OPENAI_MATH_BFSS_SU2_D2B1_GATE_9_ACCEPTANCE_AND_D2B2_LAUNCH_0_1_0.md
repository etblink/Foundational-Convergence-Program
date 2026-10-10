# BFSS SU2 physical-domain D2B1 acceptance and D2B2 launch — 0.1.0

**Date:** October 9, 2026 Pacific (Actions executed October 10 UTC).
**D2B1:** `ACCEPTED__ORIGINAL_SOURCE_SU2_HAAR_FERMION_AVERAGE`.  
**D2B2:** `PROSPECTIVE_UNCOMPILED__CONTINUITY_AND_COMPACT_SUPPORT`.  
**Final D2B density:** **NOT ACCEPTED.**

## Verified Gate #9

[BFSS SU2 Physical Domain Bridge #9](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38017865590), run `38017865590`, job `114112065082`, `SUCCESS`, tested exact commit `4c03638ad2534f0e086a579f177e85ec3ff7962d`, pinned original OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` on Lean 4.34.1.

The accepted G4-K10A compiled cache was restored; certified D1, D3A, D3B, D2A sources recompiled with required axiom report guards. D2B1 exact `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B1SourceHaarEquivariantAverageProbe.lean` blob `4b52efd995771e736be67f39e3e62e13fd71718e` emitted all four expected names with **no `sorryAx`, no compiler errors** and standard axiom dependencies restricted to `propext`, `Classical.choice`, `Quot.sound`:
- `sourceHaarIntegrand_continuous`: continuity of actual SU2 fermion-valued Haar integrand in the gauge variable.
- `sourceHaarIntegrand_integrable`: its Bochner integrability for the exact upstream normalized SU2 Haar probability.
- `sourceHaarAverageRaw_equivariant`: the original SU2 Haar average of *arbitrary* genuine SmoothCore is pointwise gauge equivariant under source boson/fermion actions.
- `sourceHaarAverageRaw_fixed`: averaging fixes every genuine invariant smooth-core section.

Only the equivariance proof's two Lean syntax/orientation issues blocked #8. Gate #9 fixed them without adding hypotheses or replacing physical source definitions.

## New D2B2 concrete mathematical target

Leaf `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B2HaarAverageContinuitySupportProbe.lean` imports **the exact accepted D2B1 theorem module** and existing original source `SU2` compactness/Haar. This is not another trivial restatement of D2B1.

The exact new prospective lemmas:
1. `sourceHaarIntegrand_jointContinuous`: joint continuity on bosonic position times actual source SU2, using true `G.boson_continuous` and `G.fermion_continuous`.
2. `sourceHaarAverageRaw_continuous`: continuity in bosonic position after integration, via the pinned Mathlib `continuous_parametric_integral_of_continuous` over a compact SU2 Haar probability domain.
3. `sourceHaarAverageRaw_hasCompactSupport`: support contained in the source-gauge-saturated compact set `{G.boson(g,x) | g∈SU2, x∈tsupport f}`. Compactness follows from the true compact SU2, the original `f.hasCompactSupport`, and the genuine `G.boson_continuous`. Outside that set, each integrand is identically zero. The theorem includes NO assumption that the average is itself a source SmoothCore.

Full qualification requires the dedicated bridge CI to recompile unchanged D1/D3A/D3B/D2A/D2B1 in the genuine pinned sources, accept **exactly three D2B2 public axiom reports** each using only `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`, and no compiler errors. All previous accepted source files frozen against exact Gate #9 tested SHA `4c03638ad2534f0e086a579f177e85ec3ff7962d`. Neither the old Color Gate nor its proof-cache key is modified.

## Remaining D2B analysis after D2B2

- **All-order spatial smoothness:** Differentiate `A_G f(x) = ∫_g ρ_g f(U_g⁻¹x) dg` in bosonic x under Haar, prove `ContDiff ℝ ⊤` on finite-dimensional boson space using source smooth f, gauge isometry and uniform compact-group dominators. This cannot be inferred from continuity.
- **Original invariant smooth-core membership:** only after the previous fact, bundle `A_G f` as true `SmoothCore 2`, using accepted compact support and source pointwise gauge equivariance, then prove `A_G f ∈ G.invariantCore`.
- **L² contraction and approximation:** prove norm-bounded Haar average on L², identify its source physical fixed space, and combine with source `coreToL2_dense` to establish **actual source closure equality** `G.coreNormClosure = G.physicalSpace`. D2A only proves the forward inclusion.
- **Paper Hamiltonian:** after density, still needs form/graph closure and exact representation comparison; no new spectrum or physical/empirical conclusions are authorized by D2B2.

**Stop line:** no new hypotheses about smoothness, compact support or density; no main merge/upstream PR; no reclassification of FCP T6, T2 or K1–K10. If the genuine analytic density argument is formalization-intractable with pinned available library, record the exact missing lemma and stop deliberately rather than extending proof gates indefinitely.
