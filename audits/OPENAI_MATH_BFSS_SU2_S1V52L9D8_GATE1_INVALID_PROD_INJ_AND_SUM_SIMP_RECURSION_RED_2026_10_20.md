# S1V52L9D8 Gate #1 — original Fock 48-real source-basis mulVec RED: invalid Prod lemma, indicator equality and recursive simp

**Independent verified classification:** `L9D8_GATE1_RED__ZERO_ROOTS__L9D7_QUALIFIED_FOCK_SOURCE_CACHE_HIT__ORIGINAL_DEPENDENCIES_COMPILED__PROOF_TACTIC_ERRORS_ONLY__197_CUMULATIVE`.

[GitHub Actions strict run #39538758339](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39538758339), job `119021414061`, completed FAILURE at workflow commit `7fce7f3b260b07093a32235dd9a7defc282c769e`, candidate exact source blob `631641a0abbc85693f825a296514db373f18aa2a`.

Source-original BFSS pin verification and original Pauli closure passed; qualified L9D7 cache HIT `bfss-s1v52l9d7-original-fock-majorana-block-entry-v1-adc7f124-lean4341-d13f23b-Linux-X64`. S1J original Majorana, L9D0 source-label, and all underlying source modules already qualified/reused. Lean reached `FCP.BFSSS1V52L9D8.originalSourceRealMajoranaMatrix_mulVec_sourceAxis`.

Compiler defects:
1. Line 62: `error(lean.unknownIdentifier): Unknown constant Prod.mk.inj_iff.mp`. Existing **source** `sourceBlockColorLabel_injective` already produces equality `(β,C) = (α,B)`; take `congrArg Prod.fst` and `congrArg Prod.snd` rather than inventing a `Prod.mk.inj_iff` projection.
2. Line 56: `unsolved goals` on exact finite coordinate indicator: `(if sourceBlockColorLabel β C = sourceBlockColorLabel α B then 1 else 0) = if α = β ∧ B = C then 1 else 0`. Rewrite the iff within the `if` rather than using full `simp` over the original index packing.
3. Line 70: `Tactic simp failed ... maximum recursion depth has been reached` on the final finite three-color sum. Limit normalization to explicit source coordinate indicators, branch on `β = α`, and reduce `Finset.sum` over the single matching color without recursively simplifying original Fock definitions. Line 65 also warned that `hlabel` was unused by the attempted `simp`.
4. The sole proposed L9D8 theorem printed `sorryAx`; **zero accepted roots**. No L9D8 qualified cache saved. Cumulative accepted stays **197**.

Repair direction: keep source statement and actual native `sourceRealMajoranaMatrix` immutable; use `Matrix.mulVec_single_one`, source injectivity and `Finset.sum_ite_eq'` or bounded simp for the exact 3-color sum, with explicit alpha-equality cases. Original Fock real/imag Majorana bit, `B` output/`A` input color indices, 16 source blocks, and original `GaugeGroup 2` unchanged. Never infer the staged L9D9 universal projection from this failed gate; it is separately unqualified. Canonical main, pinned upstream math and draft PR #25 unmodified.
