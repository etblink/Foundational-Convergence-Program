# BFSS SU2 G4-K9C — Gate #167 unknown simp identifier repair 0.1.0

**Date:** 2026-10-09 America/Los_Angeles. **Gate:** [#167](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38010322520), run `38010322520`, job `114088574630`. **Tested SHA:** `4d68b5c923994f4c750c24f6c16543641552195c`, tree `bc0eebb58fb454056e42f57078039505500d098e`, G4-K9C blob `29eaed303905693e718d1fd7c2fed7b5a93d161e`. **Outcome:** `RED__UNKNOWN_SIMP_IDENTIFIER`.

The ONLY Lean compiler error reported in the new G4-K9C candidate is line 88 `error(lean.unknownIdentifier): Unknown constant 'Finset.sum_univ'`. The complete five `#print axioms` outputs immediately following report exactly `[propext, Classical.choice, Quot.sound]`, without `sorryAx`. This indicates the exact-prerequisite proofs and G4-K9C theorem terms are otherwise elaborated by the compiler; however the gate failed and the result remains unqualified. All prior qualified proof-chain checks and pinned dependencies passed.

**Bounded repair:** remove the nonexistent `Finset.sum_univ` from the `simpa only` simplifier list; retain `Finset.subtype_univ`, `Finset.sum_filter`, and `Fintype.sum_prod_type`, the exact source-typed explicit function and existing Mathlib lemma `Finset.sum_subtype_eq_sum_filter`. This alters no mathematical assertion, source pin, admitted hypothesis, operator semantics, workflow guard or prior accepted module.

**Next:** compile revised G4-K9C and require all five axiom reports exactly `[propext, Classical.choice, Quot.sound]`, plus an entirely successful workflow. After acceptance, a separate source-typed proof must establish `AlgebraData.deformedPotentialMultiplier 1 0 x α = AlgebraData.bracketMultiplier α x`. Cross-model independent reasoning (e.g. Grok) is appropriate for that next substantive operator step, but must not be treated as an FCP compiler result or as proof of any spectral statement.

FCP source baseline preserved: `SRC-FCP24-NONPERT-BFSS-1997`, `SRC-OPENAI-MATH-F270B-BFSS-2026`, `FCP24-STRING-002`, and the 2026 independent T6 adjudication. No main merge, upstream PR, or empirical/mass-gap promotion. Do not inspect the next run until owner reports the color.
