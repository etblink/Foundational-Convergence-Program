# S1V40 — genuine Lipschitz original 48-real vector action — Strict Gate #1 ACCEPTED

**Project Lead disposition (2026-10-19 PDT; CI 2026-10-20 UTC):** `S1V40_G1_4_SOURCE48_LIPSCHITZ_ROOTS_KERNEL_PASS__S1V39_CACHE_RESTORED__S1V40_CACHE_SAVED__LINEAR_ACTION_ACCEPTED__FULL_LIPSCHITZ_GROUP_HOM_AND_SPIN_ORIENTATION_OPEN`.

## Immutable GitHub Actions evidence

- [BFSS S1V40 Genuine Source48 Lipschitz Vector Action Strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39357406137) completed **SUCCESS**; job `118415285121`; exact workflow/source checkout commit `682b5f37f32eb2482f2a385dca767c5063d99f48`. Candidate authoring commit `e29aa9d6db1f4ddd591b00f31771381ca5fac9d3`.
- New source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V40ActualSource48LipschitzVectorActionProbe.lean`, exact original Git blob `106286d7cc48e326368cfd53b03a48f5e2815260`.
- Pinned original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; exact source blobs S1V0 `22f3101b243a7b7857d9597b547322174d9281c8`, S1V30 `59d40c5c74cc4803a6a6096cfe5ea87c800bd7f9`, S1V37 `2d3d40134e4eaba80751c62a160d1803f22c828b`, S1V38 `27ed1e4933499c108ee614b4731a3479a318aa8b`, S1V39 `9a800e9e30f55cf41517dd9ac6098b3a497db607`. Immutable pins passed.
- Previously accepted S1V39 cache **restored** `bfss-s1v39-isolated-source48-matrix-action-v1-adc7f124-lean4341-d13f23b-Linux-X64`; all seven named source prerequisites' `.olean` files tested nonempty.
- New S1V40 `.olean` compiled successfully; exactly four `#print axioms` reports and each contained **only** `[propext, Classical.choice, Quot.sound]`. No Lean errors, `sorryAx`, or unknown identifiers. Strict marker `S1V40_ACTUAL_SOURCE48_LIPSCHITZ_VECTOR_ACTION_4_ROOTS_KERNEL_PASS`.
- New reusable cache successfully **saved** `bfss-s1v40-isolated-source48-lipschitz-vector-action-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Diagnostic artifact `bfss-s1v40-lipschitz-vector-action-39357406137` uploaded, artifact ID `12236092049`.

## Exact new kernel-qualified scope

Here `Q := FCP.BFSSS1V0.source48Quadratic` and `Source48Vector := (Fin 24 × Fin 2 → ℝ)`. Crucially `x : lipschitzGroup Q` ranges over the **actual pinned Mathlib subgroup of Clifford units**, not a substitute abstract group.

1. `FCP.BFSSS1V40.sourceLipschitz48_conjugated_generator_unique`: every genuine Lipschitz conjugation of `ι Q v` is represented by a **unique real source vector**. Uses actual `lipschitzGroup.conjAct_smul_ι_mem_range_ι` and accepted S1V30 original Clifford generator injectivity.
2. `FCP.BFSSS1V40.sourceLipschitz48VectorAction_clifford`: the real-vector action defined by that unique existence agrees **exactly** with genuine Clifford conjugation.
3. `FCP.BFSSS1V40.sourceLipschitz48VectorAction_add`: source vector additivity of the actual action.
4. `FCP.BFSSS1V40.sourceLipschitz48VectorAction_smul`: real scalar linearity of the actual action.

The definition `sourceLipschitz48VectorAction` is a genuine source-bound constructor from proved uniqueness; it is **not** a separately assumed unit representation. No new source physics convention, abstract Clifford module or determinant parity is inserted.

## Strict scientific boundary / next discriminating gate

This accepted S1V40 proves an original-source real-*linear action* for each genuine Lipschitz unit, but it has **not yet** proved the group action's one/multiplication laws or packaged an invertible `lipschitzGroup Q →* (Source48Vector ≃ₗ[ℝ] Source48Vector)` hom. These are the bounded next S1V41 obligations, modeled after strictly accepted original Spin-only S1V32–S1V35 and using the *new* Lipschitz source action, not simply retyping the Spin hom.

After that actual group action exists, identify the accepted S1V39 rank-one matrix as its action of every invertible Clifford degree-one generator, compare determinants, and establish parity through pinned `Subgroup.closure_induction''` with full inverse/product cases. Only then can Spin evenness via `spinGroup.involute_eq` justify the desired universal determinant+1 claim. A true Spin→SO codomain, covering topology, normalized global original SU(2) lift, independent manuscript Hilbert/Clifford intertwiner, physical closed-operator bridge and BFSS positive spectral-gap theorem all remain **OPEN**.

No canonical `main` change, upstream `etblink/math` mutation, PR #25 promotion, or additional speculative CI is made by this acceptance audit. It is documentation on `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018`.
