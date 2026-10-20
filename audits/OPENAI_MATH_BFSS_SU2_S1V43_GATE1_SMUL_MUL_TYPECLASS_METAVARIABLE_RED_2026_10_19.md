# S1V43 Gate #1 RED — scalar-multiplication multiplication lemma needs explicit arguments

Disposition: `S1V43_G1_3_OF_4_ROOTS_COMPILE_ALLOWED_AXIO​MS__MULTIPLICATION_SMUL_COMM_METAVARIABLE_ELABORATION_RED__ONE_SORRYAX__NO_CACHE__UNQUALIFIED`.

## Exact evidence
- [S1V43 Gate #1 run #39362452995](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39362452995), job `118431494170`, failed during Lean compilation; pinned workflow commit `68ec83cb5130b5a43714d43dd4d3d17d3999bba9`; candidate commit `63d110dfa191e9dac3ecf195d04bb1a9a10ebe38`; Git blob `6dd6c5d64b7157844a81d9a16ba414b20412e3be`.
- Frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, strict source SHA preflight passed.
- Previously accepted S1V42 cache `bfss-s1v42-isolated-source48-actual-generator-det-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored successfully, all prerequisite `.olean` checks passed.
- Three of four exact roots reported ONLY `[propext, Classical.choice, Quot.sound]`: `source48LipschitzGradeDetParity`, `source48LipschitzGradeDetParity_one`, and `source48LipschitzGradeDetParity_generator`. Thus actual Clifford generator grade-involute and determinant sign are locally compatible. The source module and new cache remain **unaccepted**.
- First causal compiler failure at line 61:9 of multiplication proof:
```text
error: typeclass instance problem is stuck
  SMulCommClass ?m.89 ?m.101 ?m.101
```
The source invokes `(smul_mul_smul_comm _ _ _ _).symm`, leaving four arguments anonymous even though the original-source scalar field ℝ, both real determinant character values, and actual Clifford-algebra elements are known. The open typeclass metavariables prevent inference. `source48LipschitzGradeDetParity_mul` reported `sorryAx` after the failed tactic. The cache save was skipped. Artifact `bfss-s1v43-grade-det-parity-39362452995`, ID `12237538259`.
- No mathematical contradiction or sign/order failure was found in Gate #1.

## Discriminating repair
Do not increase heartbeats or rewrite the original theorem. Give **all four term arguments explicitly and fully type** the scalars and Clifford elements in `smul_mul_smul_comm`. Preserve the original exact source coordinate labels and `involute` action, with no new axiom, hypothesis, or alternate representation. Trigger one hash-pinned S1V43 Gate #2 to determine whether this resolves the first causal error; if another red appears, document its exact first compiler error. Never confuse a three-report partial compilation with a full strict green.

Next after accepting identity/generator/multiplication: verify inverse stability and full `Subgroup.closure_induction''` for the pinned actual Lipschitz group, then compare the Spin-restricted original source actions and evaluate determinant +1 using Clifford involute fixedness and nonzero genuine units. None of those universal conclusions follows automatically from this red gate.
