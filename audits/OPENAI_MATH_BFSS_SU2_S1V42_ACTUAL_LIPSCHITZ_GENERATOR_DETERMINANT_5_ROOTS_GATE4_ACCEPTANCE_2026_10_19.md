# S1V42 — original source Clifford generator in actual Lipschitz48 representation, determinant -1 — Gate #4 ACCEPTED

**Project Lead post-result disposition (October 19, 2026 PDT / October 20 UTC):** `S1V42_G4_FIVE_ACTUAL_SOURCE_LIPSCHITZ_GENERATOR_ROOTS_KERNEL_PASS__S1V41_CACHE_RESTORED__S1V42_CACHE_SAVED__TRUE_GENERATOR_CHARACTER_MINUS_ONE__LIPSCHITZ_PARITY_AND_SPIN_DET_PLUS_ONE_OPEN`.

## Immutable strict acceptance evidence

- [BFSS S1V42 Actual Lipschitz48 Generator Determinant Strict Gate #4](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39361029282), job `118427007766`, **SUCCESS**, pinned workflow commit `c04d268253cef4679346ebf6067d0c96d8b0484f`; final Lean proof source commit `5fa88e542a63d6c879d97d2b9eba118a8718f983` and Git blob `0c13c4928e463c5a81ccf812957e0f19b276fccd`.
- Original source **unchanged**: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; actual FCP source `Fin 24 × Fin 2 → ℝ` and `source48Quadratic`. Strict original source Git blob SHA preflight passed, including S1V0, S1V30, S1V37–S1V42 and the immutable upstream checkout.
- Exact previously qualified S1V41 cache restored **hit** `bfss-s1v41-isolated-source48-lipschitz-real-gl-hom-v1-adc7f124-lean4341-d13f23b-Linux-X64`; every required original qualified module's `.olean` checked nonempty.
- Lean source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V42ActualLipschitzGeneratorDeterminantProbe.lean` compiled to nonempty `.olean`. Exactly FIVE named `#print axioms` reports, each only `[propext, Classical.choice, Quot.sound]`; no Lean errors, unknown identifiers, `sorryAx`, or proof holes. Strict marker `S1V42_ACTUAL_LIPSCHITZ48_GENERATOR_DET_5_ROOTS_KERNEL_PASS`.
- NEW qualified compilation cache **saved successfully** as `bfss-s1v42-isolated-source48-actual-generator-det-v1-adc7f124-lean4341-d13f23b-Linux-X64`; logs preserved as artifact `bfss-s1v42-actual-generator-det-39361029282` (ID `12236923748`).

## Precisely qualified FIVE ORIGINAL source roots

All statements are inside `FCP.BFSSS1V42`, with `Q := source48Quadratic` and the TRUE `lipschitzGroup Q` of Clifford units:

1. `source48CliffordGeneratorUnit`: every original real 48-vector `a` with `Invertible (Q a)` defines a genuine invertible `CliffordAlgebra.ι Q a` unit via pinned `invertibleιOfInvertible`.
2. `source48CliffordGeneratorLipschitz`: that exact genuine unit belongs to Mathlib's actual `lipschitzGroup Q` by typed preimage membership and `Subgroup.subset_closure` (not a surrogate Pin group).
3. `source48ActualLipschitzGenerator_matrixAction`: the true Clifford-conjugation-derived original real-vector action from S1V40 on that genuine subgroup generator equals S1V39's **exact original 48×48 rank-one matrix action**, for ALL original real source vectors.
4. `source48ActualLipschitzGenerator_toLin'`: literal equality of the true S1V41 real-linear equivalence (coerced to a linear map) with `Matrix.toLin'` of the accepted source rank-one matrix; orientation and composition orders are not replaced.
5. `source48ActualLipschitzGenerator_det`: real coercion of the **genuine S1V41 Lipschitz determinant character** at that true degree-one unit is **`-1`**. Uses accepted S1V38 normalized original source determinant, S1V39 exact original matrix-action equality and pinned `LinearMap.det_toLin'`.

The actual original source generator character sign is now axiom-clean and strict-gate-qualified. It is **NOT** yet a universal equality for arbitrary Lipschitz elements, nor a proof of `∀ s : spinGroup Q, det ρ(s)=+1`.

## Preserved causal negative knowledge — THREE reds before strict green

- Gate #1 [run #39359176152](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39359176152) **RED**: directly elaborating subgroup-closure membership consumed 350000 deterministic Lean heartbeats and caused dependent unknown-identifier/`sorryAx`; [causal audit](OPENAI_MATH_BFSS_SU2_S1V42_GATE1_DIRECT_LIPSCHITZ_CLOSURE_ELABORATION_TIMEOUT_RED_2026_10_19.md).
- Gate #2 [run #39359883033](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39359883033) **RED**: fully typed Clifford unit/preimage/closure interface **fixed** the deterministic timeout; both constructor roots compiled with permitted axioms, but the S1V42 file omitted `open Matrix`, causing `*ᵥ` subscript notation errors in dependent declarations; [causal audit](OPENAI_MATH_BFSS_SU2_S1V42_GATE2_MATRIX_MULVEC_NOTATION_SCOPE_RED_2026_10_19.md).
- Gate #3 [run #39360498103](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39360498103) **RED at validator only**: all FIVE Lean declarations compiled with permitted axioms, no Lean errors or `sorryAx`; the CI Python parser `'([^']+)'` missed the legitimate theorem identifier ending in a prime, `source48ActualLipschitzGenerator_toLin'`, falsely seeing only four reports and withholding cache save; [causal audit](OPENAI_MATH_BFSS_SU2_S1V42_GATE3_AXIOM_PARSER_APOSTROPHE_RED_2026_10_19.md).
- Gate #4 **changes ONLY the validator capture regex**, preserves the already compiling Lean source and all five source theorem statements, confirms exactly five permitted axiom reports and saves a qualified `.olean` cache. Unlike the historical S1V34 doc-comment case, this strict red was a **validator parsing error**, not a Lean parser failure.

## Next Project Lead mathematical frontier — genuine parity, no speculation

The bounded next obligation is to extend the accepted generator identity through the actual `Subgroup.closure` defining `lipschitzGroup Q`. A promising strictly source-scoped invariant is the relationship between the original Clifford grade involution `CliffordAlgebra.involute` and the TRUE determinant character `sourceLipschitz48OriginalRealDetCharacter`; the pinned `involute_ι` flips degree-one generators and S1V42 proves their determinant is `-1`. Formalize generator, inverse, identity and multiplication cases by closure induction, preserving full scalar-unit and involution equality. For actual `spinGroup Q`, pinned `spinGroup.involute_eq` gives evenness; then prove determinant `+1` and compare source S1V35/S1V36 Spin-only action with the genuine S1V41 Lipschitz restriction before any SO48 claim.

Crucially, avoid assuming an even word-factorization without kernel proof, and do not equate an involution fixed point to determinant+1 without disproving the negative-sign alternative using an actual nonzero Clifford unit. A direct two-signed-case invariant and nonzero argument might be shorter than a general scalar-unit formula, but its correctness remains to be demonstrated in Lean.

Do NOT infer global continuous original SU(2)→Spin(48) lift, Spin double covering or correct kernel, independent manuscript Clifford/Hilbert intertwiner, physical closed-operator transport, BFSS spectral gap or mass gap. Canonical FCP scientific framework comparison and main branch remain separate.

## Repository preservation

Only isolated `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018` research branch was changed, with exact original `etblink/math` pins. No merge into canonical `main`, no upstream mutation, no draft PR #25 promotion; acceptance audit is documentation path-exempt from new CI.
