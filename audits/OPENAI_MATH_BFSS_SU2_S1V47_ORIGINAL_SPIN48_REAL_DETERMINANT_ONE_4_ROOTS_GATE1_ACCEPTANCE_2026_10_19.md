# S1V47 — Original genuine Spin(48) orientation: ACTUAL real determinant character is +1 — Gate #1 ACCEPTED

**Project Lead result disposition (October 19 PDT / October 20 UTC 2026):**
`S1V47_G1_FOUR_ORIGINAL_SPIN48_DET_ONE_ROOTS_KERNEL_PASS__SOURCE48_CLIFFORD_NONTRIVIAL__REAL_SCALAR_UNITS_INJECTIVE__S1V46_CACHE_RESTORED__S1V47_CACHE_SAVED__SPIN48_ORIENTATION_CLOSED__GLOBAL_SU2_LIFT_AND_SPECTRUM_OPEN`.

## Independent primary CI verification
- [S1V47 Original Spin48 Real Determinant Orientation Strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39369102100), **SUCCESS**, original exact workflow/source commit `442101800f872ab09906997d48460c28abe94efd`, mathematical proof candidate commit `8f28e4a5ab5e09f298d0b52cf673ca586b9c7ca7`, original Lean source blob `10015d67ef402692a83e4e8a1ca172225cfaf575`.
- Actual accepted source: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V47ActualSpin48RealDetOrientationProbe.lean`, namespace `FCP.BFSSS1V47`.
- Exact immutable original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Original FCP source labels `Source48Vector = Fin 24 × Fin 2 → ℝ` and `source48Quadratic` kept unchanged. All hash and toolchain preflight checks passed.
- Accepted S1V46 cache restored **hit**: `bfss-s1v46-isolated-source48-spin-lipschitz-bridge-v1-adc7f124-lean4341-d13f23b-Linux-X64`, with exact nonempty original source `.olean` prerequisites verified, including S1V35, S1V36, and S1V40–S1V46.
- Exact strict compilation succeeded to nonempty source `.olean`; four declared roots' `#print axioms` reports ALL `[propext, Classical.choice, Quot.sound]`. No Lean `error:`, `sorryAx`, unknown identifier or proof hole; strict validator printed `S1V47_ORIGINAL_SPIN48_REAL_DET_ORIENTATION_4_ROOTS_KERNEL_PASS`. One nonfatal linter style warning suggests `let` in place of `letI`; no mathematical/proof effect.
- New strictly qualified compilation cache **saved**: `bfss-s1v47-isolated-source48-spin-det-one-v1-adc7f124-lean4341-d13f23b-Linux-X64`, diagnostic log artifact `bfss-s1v47-spin-orientation-39369102100`, ID `12241200319`.

## Exact four source-qualified roots
1. `FCP.BFSSS1V47.source48OriginalClifford_nontrivial`: the EXACT original finite 48-real source Clifford algebra is nontrivial, derived from kernel-accepted S1V30 injectivity of `CliffordAlgebra.ι source48Quadratic`. Does NOT assert nontriviality of Clifford algebras over arbitrary base rings.
2. `source48OriginalRealScalarUnits_injective`: the actual `ℝˣ →* (CliffordAlgebra Q)ˣ` scalar-unit embedding accepted in S1V44 is injective, using Mathlib's pinned field-to-nontrivial-algebra `FaithfulSMul.algebraMap_injective ℝ A` and `Units.map_injective`, with item 1's source-specific nontriviality. No false general scalar-faithfulness assumption is introduced.
3. `sourceSpin48ActualLipschitzDetCharacter_one`: for EVERY genuine `s : spinGroup source48Quadratic`, the genuine S1V41 real Lipschitz determinant character evaluated at the S1V46 literal true Spin-to-Lipschitz inclusion equals `1 : ℝˣ`. Proof uses S1V45's universal original `involute ↑x = δ_L(x) • ↑x`, S1V44's unit-parity equivalence, pinned `spinGroup.involute_eq` for genuine Spin evenness, then cancellation **inside actual Clifford units** followed by the separately proved source-specific scalar-unit injectivity.
4. `sourceSpin48OriginalRealDetCharacter_one`: the original S1V36 Spin-only REAL determinant character **itself** equals `1 : ℝˣ` on EVERY genuine source Spin element, by exact S1V46 character equality and item 3. This is stronger than an abstract Spin(48) orientation theorem: it is tied to the actual original `Fin 24 × Fin 2` Clifford-conjugation representation used in S1V29–S1V36.

In particular, accepted S1V33/S1V34 already prove the action preserves original real quadratic form Q; S1V47 adds the missing original-source real determinant +1. The projection's exact image as a particular SO group and any topological lifting theorem require separate qualified work.

## Provenance and lesson
The chain S1V36 (det character) → S1V37–S1V39 (source normalized generator matrix and det -1) → S1V40–S1V42 (actual original Lipschitz action, determinant character, real generator -1) → S1V43/S1V44 (grade/det parity identity, one, generator, product and inverse) → S1V45 (TRUE subgroup-closure universal parity) → S1V46 (actual Spin/Lipschitz action and determinant-character restriction) → **S1V47 original Spin determinant +1** now closes the original orientation proof.

This Gate #1 passed without intermediate red attempts; no unverifiable axiom or source modification was used. Preserve negative knowledge from prior S1V34/S1V37/S1V42/S1V43/S1V44/S1V45 reds for future successors: typed Clifford subgroup membership, correct witness equality direction, correct matrix namespace, legal prime theorem identifiers in CI regex, proof orientation, and explicitly typed scalar/Clifford arguments.

## Explicit remaining scientific boundaries
- **Still open**: construct and normalize the original-source *continuous global SU(2) → Spin(48)* lift, establish exact projection and kernel/parity identifications and topological covering where needed. S1V47 does not by itself construct that lift.
- **Still open**: independently defined manuscript complex irreducible Clifford representation and unitary intertwiner with original source Fock module, exact physical domain/operator transport, Spin(9) global conditions and BFSS spectral-positive gap questions.
- **Still separate**: canonical FCP scientific project `main` and the wider independent-framework empirical comparison methodology. A successful Lean proof of Spin orientation is NOT evidence of a physical BFSS spectral or mass gap.

## Isolation and documentation
The audit is committed exclusively to `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018`, with strict original source hashes intact; no proof workflow is triggered by an `audits/`-only change. Upstream etblink/math, canonical main and draft PR #25 are not changed or merged.
