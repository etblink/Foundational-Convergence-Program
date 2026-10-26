# BFSS S4B14 / Gate102 — original gammaTwo and color structure constant signed skew

2026-10-26 Project Lead. **Proposed, unaccepted** original Clifford/color sign bridge.

Accepted Gate101 [run #40378495529](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40378495529), strictly 2/2 source gamma/spatial multiplicity roots, scoped S4 **31**. Gate101 exact B13 parent blob `0a9e3092f962ad15acc914f4935b87ad59b874e4`. Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original `ColorLie.lean` blob `3c4bbd6b4a3ba21a0f05892e90665a8c2033640c`; exact Lean 4.34.1/Mathlib `d13f23b`. Candidate blob `b18fc39438fc98aea088bfd20f7ee950dfa1a45c`; strict YAML blob `c6f755a1e871372346ba5a63db8afa5f0a5bffef`. User's governing rule: preserve both failed and successful procedures as evidence, no proof overclaim.

**Original exact source**: `AlgebraData.gammaTwo i j = (1/2 : ℝ) • (M.gamma i * M.gamma j − M.gamma j * M.gamma i)`; `AlgebraData.structureConstant A B C = (Matrix.trace (M.color A * bracket (M.color B) (M.color C))).re`; `bracket X Y = (−Complex.I) • (X*Y − Y*X)`. The independently read original `ColorLie` declares `AlgebraData.bracket_neg_swap X Y : bracket X Y = −bracket Y X`.

Candidate roots:
1. `originalSourceGammaTwo_skew`: exact original `M.gammaTwo i j = − M.gammaTwo j i`, prove via linear-module arithmetic on definition.
2. `originalSourceStructureConstant_last_two_skew`: exact original `M.structureConstant A B C = − M.structureConstant A C B`, with **source bracket_neg_swap** and trace negation. Both use actual `AlgebraData N` without synthetic matrices, Gamma substitutes or scalar coercion cheats.

Gate102 original source immutable SHAs and G4K9C provenance, fresh original Core/MassiveCoercivity/ColorMatrices/MixedEnergy/DeformedCharge/GammaWords/ColorLie, fresh S4B3–S4B13 ancestor theorem modules including Gate101, exactly two candidate root names, only permitted `propext, Classical.choice, Quot.sound`, no `sorryAx`, fresh positive .olean and strict warnings-as-errors. Neither new root accepted until completed success, **scoped S4 remains 31**. This is an intermediary symmetry, *not yet* full gamma/color/two-fermion contraction to October manuscript `B(x)`, nor a physical Spin(9) invariant-domain or spectral-existence result. Canonical main and PR #25 unchanged.
