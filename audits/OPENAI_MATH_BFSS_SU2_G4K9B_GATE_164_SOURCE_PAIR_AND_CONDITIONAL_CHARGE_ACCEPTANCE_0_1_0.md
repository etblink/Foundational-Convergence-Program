# BFSS SU2 G4-K9B — Gate #164 acceptance 0.1.0

**Date:** 2026-10-09 (America/Los_Angeles). **Disposition:** `PASS__SOURCE_PAIR_AND_CONDITIONAL_CORE_REDUCTION`. **Classification:** `SOURCE_DERIVED`, with conditional claims explicitly marked `VALID_CONDITIONAL`.

## Exact verified compiler evidence

- [BFSS SU2 Concrete Color Gate #164](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38009127393), run `38009127393`, job `114084777230`: `SUCCESS`, tested exact commit `87e78a95ed7bbca790180fb120f11b08746f0ea4`, tree `3c89cfde791a36c42d3b21fb152e9c388babb738`.
- Source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K9BSourcePairAndChargeReductionProbe.lean`, source blob `3bc2712a1c56e86e9e996dcee3052409e23a2e73`.
- Pinned Lean `4.34.1`, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- 6/6 declarations compile and each `#print axioms` output is exactly `[propext, Classical.choice, Quot.sound]`. No `sorryAx` or compiler errors. Verified accepted G4-K8E3, G4-K8E4 and G4-K9A reruns and cache restoration also passed.

## Accepted source-defined claims

1. `sourceCoordinateBracketUpperPair` — real original color bracket values agree on genuine spatial-pair subtypes (`SOURCE_DERIVED`).
2. `sourceGammaTwoUpperPair` — original Clifford `gammaTwo` agrees with upper-pair `pairGamma` (`SOURCE_DERIVED`).
3. `sourceMasslessCoefficient_eq_originalUpperTriangle` — qualified deformed coefficient written in original color-bracket/gammaTwo notation (`SOURCE_DERIVED`).
4. `sourceChargeDifference_eq_potentialDifference` — all-core charge discrepancy is exactly the potential-multiplier discrepancy; kinetic parts genuinely cancel (`SOURCE_DERIVED`).
5. `sourceCharge_eq_of_potentialAgreement` — charge equality on all `SmoothCore N`, **IF** the original potential-multiplier equality holds for all bosonic x (`VALID_CONDITIONAL`).
6. `sourceCoreForm_eq_of_potentialAgreement` — original and deformed source quadratic forms agree on all smooth-core sections, **IF** the same potential-multiplier equality holds (`VALID_CONDITIONAL`).

The latter two declarations have an **unproved premise**. Kernel acceptance establishes a valid implication only; it does not establish its antecedent.

## Immediate research gap

**Prove the unconditional original source potential multiplier equality** `M.deformedPotentialMultiplier 1 0 x α = M.bracketMultiplier α x`. The residual arithmetic is the correct reduction of a full ordered `i,j` sum to original `i<j` upper pairs: original color bracket and `gammaTwo` are both antisymmetric, hence their product is symmetric, and diagonal contributions vanish. The next candidate should first establish a general finite sum reindexing identity and apply it to the exact source coefficient before expanding the massive concrete `theta` operator. Do not manufacture an extra physical assumption. Once discharged, instantiate the compiled conditional declarations, but **do not** identify closed-form Hamiltonian domains or claim a spectral theorem or mass gap without further proofs.

## Source and governance boundaries

FCP's `SRC-FCP24-NONPERT-BFSS-1997`, `SRC-OPENAI-MATH-F270B-BFSS-2026`, `FCP24-STRING-002` and the independent T6 adjudication remain the authoritative science baseline. No framework-wide, all-N spectral, empirical, or Reduced-NFC claim changes. No main merge, upstream PR, or source modification authorized.
