# S1V41 — genuine original Lipschitz48 GL homomorphism and determinant character — Gate #1 ACCEPTED

**Project Lead post-result disposition (October 19, 2026 PDT / October 20 UTC):** `S1V41_G1_7_ACTUAL_LIPSCHITZ48_GL_AND_DET_ROOTS_KERNEL_PASS__S1V40_CACHE_RESTORED__S1V41_CACHE_SAVED__GENERATOR_DETERMINANT_AND_SPIN_PARITY_OPEN`.

## Immutable accepted GitHub Actions evidence

- [S1V41 Genuine Lipschitz48 Real GL Hom Strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39358096226), job `118417523189`, finished **SUCCESS**. Exact workflow/source checkout commit `85b082860b157555d1a140498537e3927ecf1cc2`; S1V41 candidate commit `0b012e369e014de2e71daa2dd90fd73b666b6278`; exact new source blob `818408f1834ba7798b4129fc3a96cbada5a63089`.
- Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Exact sources S1V0 blob `22f3101b243a7b7857d9597b547322174d9281c8`, S1V30 blob `59d40c5c74cc4803a6a6096cfe5ea87c800bd7f9`, S1V37 blob `2d3d40134e4eaba80751c62a160d1803f22c828b`, S1V38 blob `27ed1e4933499c108ee614b4731a3479a318aa8b`, S1V39 blob `9a800e9e30f55cf41517dd9ac6098b3a497db607`, S1V40 blob `106286d7cc48e326368cfd53b03a48f5e2815260`. Original source/toolchain pins green, prerequisite checks nonempty.
- The accepted previous S1V40 cache was **restored**: `bfss-s1v40-isolated-source48-lipschitz-vector-action-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- New Lean source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V41GenuineLipschitz48RealGLHomProbe.lean` compiled to a nonempty `.olean`. All **seven** exact `#print axioms` reports showed **only** `[propext, Classical.choice, Quot.sound]`; no Lean error or `sorryAx`. CI emitted `S1V41_ACTUAL_LIPSCHITZ48_GL_HOM_AND_DET_7_ROOTS_KERNEL_PASS`.
- New cache was **saved**: `bfss-s1v41-isolated-source48-lipschitz-real-gl-hom-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Uploaded diagnosis artifact `bfss-s1v41-lipschitz-real-gl-39358096226`, ID `12235992645`.

## Seven precisely qualified source-genuine objects

All use the actual source real vector space `Fin 24 × Fin 2 → ℝ`, original `source48Quadratic`, and the **genuinely defined** pinned Mathlib `lipschitzGroup Q` subgroup of Clifford units:

1. `sourceLipschitz48VectorAction_one`: actual Lipschitz identity acts trivially on all source vectors.
2. `sourceLipschitz48VectorAction_mul`: actual Clifford Lipschitz multiplication agrees with real-vector action composition in the correct order, first the right element.
3. `sourceLipschitz48LinearEquiv`: each genuine Lipschitz element acts via an invertible real-linear equivalence, inverse the **actual inverse Lipschitz unit**, using S1V40's qualified additivity and scalar linearity.
4. `sourceLipschitz48LinearEquiv_one`: the group identity yields the real-linear identity.
5. `sourceLipschitz48LinearEquiv_mul`: group multiplication corresponds to the real-linear automorphism group's multiplication, not reversed IsometryEquiv trans order.
6. `sourceLipschitz48LinearEquivHom`: a source-genuine multiplicative hom `lipschitzGroup Q →* (Source48Vector ≃ₗ[ℝ] Source48Vector)`.
7. `sourceLipschitz48OriginalRealDetCharacter`: the **actual real determinant character** `lipschitzGroup Q →* ℝˣ`, built by composing `LinearEquiv.det` with the previous actual source hom.

This genuinely extends the algebraic construction beyond the existing Spin-only S1V35 representation; the extension is *proved* through Clifford action on the pinned actual Lipschitz subgroup, not assumed from the inclusion Spin ⊂ Lipschitz.

## Exact negative boundaries and next discriminating target

**Not yet proved:** the Lipschitz determinant has the anticipated value `-1` on every invertible genuine degree-one Clifford generator. S1V37–S1V39 already prove the exact original 48-real generator matrix, determinant `-1`, and its Clifford conjugation action. S1V41 supplies the actual GL hom; the next S1V42 task is to prove the **literal equality** of this GL action with `Matrix.toLin'` of S1V39's generator matrix, for generator elements of the pinned `lipschitzGroup Q`. Then transport the accepted S1V38 determinant using the pinned `LinearMap.det_toMatrix'` and `LinearMap.toMatrix'_toLin'` interfaces. Do not equate a freely chosen matrix to a true generator without that equality.

Subsequently prove parity on the genuine Lipschitz subgroup using pinned `Subgroup.closure_induction''`: generator involution flips sign, determinant -1; inverse and product cases must be checked separately; even Spin elements are involute-fixed by pinned `spinGroup.involute_eq`; comparison to the previously accepted S1V35/S1V36 Spin-only source action is required before claiming `∀ s : spinGroup Q, det ρ(s)=1`. No double-cover, SO projection, normalized continuous SU2→Spin lift, independent manuscript representation, physical closed-operator transport or BFSS spectral/mass-gap theorem follows from this gate.

Preserve accepted previous caches and causal reds. Do not modify canonical FCP `main`, immutable upstream `etblink/math` or promote draft PR #25. This audit is documentation-only and path-exempt from new CI.
