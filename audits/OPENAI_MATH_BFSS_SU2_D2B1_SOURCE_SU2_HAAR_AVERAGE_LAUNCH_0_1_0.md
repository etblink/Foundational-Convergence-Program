# BFSS SU2 D2B1 — source SU(2) normalized Haar fermionic averaging launch 0.1.0

**Date:** 2026-10-09 Pacific. **Status:** `PROSPECTIVE_UNCOMPILED__REAL_SOURCE_HAAR_AVERAGING`. D2A was qualified by [Physical Domain Bridge #7](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38016746046); [accepted audit](./OPENAI_MATH_BFSS_SU2_PHYSICAL_DOMAIN_D2A_GATE_7_ACCEPTANCE_AND_D2B_HAAR_DENSITY_METHOD_0_1_0.md) gives complete axiom/source evidence.

## Why this is a legitimate D2B first theorem

Actual source BFSS gauge group `GaugeGroup 2` abbreviates `Matrix.specialUnitaryGroup (Fin 2) ℂ`. The **same exact type** is independently present in upstream Lean `OAI.Laughlin.Rotation.SourceSU2`. Upstream source:
- `lean/OAI/Analysis/Laughlin/Spin/TensorAction.lean:43`: `SourceSU2 := Matrix.specialUnitaryGroup (Fin 2) ℂ`.
- `lean/OAI/Analysis/Laughlin/Spin/Compact.lean:39–52`: finite-dimensional source SU2 is compact, with `CompactSpace SourceSU2`.
- `lean/OAI/Analysis/Laughlin/Spin/Haar.lean:10–23`: existing source-defined `sourceHaar : Measure SourceSU2`, `IsHaarMeasure`, `IsProbabilityMeasure` and `sourceHaar_univ`, via normalized Haar on the exact SU2 group.

Thus a *real pinned* matrix SU2 compact-group normalized Haar measure is available. This does not require inventing a new group, new gauge action, or hypothesis. It is **not** the separate scalar `M.gaugeAverage` over full U(N) matrices in BFSS patch-weight source.

## Exact D2B1 source objects, scope and declarations

Prospective leaf: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B1SourceHaarEquivariantAverageProbe.lean`.

Define for actual `M : AlgebraData 2`, `G : M.GaugeData`, source `f : SmoothCore 2`:
```text
A_G f (x) = ∫_{SU(2)} G.fermion g (f (G.boson g⁻¹ x)) d sourceHaar(g).
```
This is a *fermion-vector-valued Bochner integral* over exact source compact SU2; the source `G.boson` and `G.fermion` remain the same true `GaugeData` actions built in the FCP paired SU2 construction. The integration is `x`-pointwise, prior to any promise that it defines a smooth compactly supported section.

Four public checkpoint statements:
1. `sourceHaarIntegrand_continuous`: continuity in group `g` of the true fiber-valued integrand for fixed bosonic `x`, using source `G.boson_continuous/G.fermion_continuous`.
2. `sourceHaarIntegrand_integrable`: Bochner integrability over compact normalized source SU2 Haar.
3. `sourceHaarAverageRaw_equivariant`: `A_G f(G.boson h x) = G.fermion h (A_G f x)` using the true gauge actions, a left Haar substitution and a complex continuous linear map commuting with Bochner integration. No mock gauge action.
4. `sourceHaarAverageRaw_fixed`: `A_G f = f` pointwise for `f : G.invariantCore`, using exact source `G.invariantCore_equivariant` and Haar normalization.

The D2B1 candidate must NOT be called a proof until CI compiles all four statements with no `sorryAx` and only allowed axioms `propext`, `Classical.choice`, `Quot.sound`. All existing D1/D3A/D3B/D2A proofs and G4-K10A cache must remain immutable; freeze accepted source against Gate #7 tested commit `2c54db2171084eb804c2b775bd19b50028f21d76`.

## Exact outstanding D2B analytic tasks

Even if D2B1 succeeds, the following mathematical facts are **not established** by D2B1 alone:
- `x ↦ A_G f x` is `C_c^∞`: must prove all-order parametric differentiation in `x` under Haar and compact support of group orbit of `supp(f)`, then construct an exact `SmoothCore 2`.
- `A_G f` belongs to actual `G.invariantCore`: combine source D2B1 pointwise equivariance with the verified `SmoothCore` object and the L² pullback/fiber source relation.
- `\|A_G f\|₂ ≤ \|f\|₂` and `\|A_G f-ψ\|₂ ≤ \|f-ψ\|₂` for every `ψ ∈ G.physicalSpace`. Requires genuine finite-dimensional Bochner/Minkowski and Fubini arguments; no boundedness assumption permitted.
- `G.coreNormClosure = G.physicalSpace`: follow source `coreToL2_dense` with the projection/error inequality and accept the exact source equality only after kernel proof.

Do not silently infer any of these from raw pointwise equivariance. Do not introduce a new `GaugeData` field requiring averaging to work. Do not declare the manuscript's Hamiltonian identical without an additional physical form/operator representation theorem.

## Checkpoint environment

Dedicated existing `BFSS SU2 Physical Domain Bridge` workflow on `research/openai-math-su2-concrete-potential`; accepted original Math pin `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean 4.34.1. Recompile all accepted D1/D3A/D3B/D2A leaves, ensuring D2A is emitted as importable `.olean`. New candidate imports the existing upstream Laughlin SU2 normalized Haar source. If the upstream imported module is not precompiled, diagnose actual dependency build; no new mathematical hypothesis.

**No main merge, upstream PR, new eigenvalue theorem, global mass-gap claim, framework/empirical promotion, or change to T6 source-delta adjudication.**
