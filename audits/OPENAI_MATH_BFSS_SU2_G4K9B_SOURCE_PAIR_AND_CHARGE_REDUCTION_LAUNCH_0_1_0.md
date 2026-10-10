# BFSS SU2 G4-K9B source pair and charge reduction — launch 0.1.0

**Date:** 2026-10-09, Pacific. **Disposition:** `PROSPECTIVE_UNCOMPILED`.
**Parent qualified gate:** #163 (run 38008494296), commit `8498deb950886dc38a67bded64a1ea937bd19786`, proof blob `5e5f10f4c79f45f4b2bb4d6cdf1dbe71573616dd`.

## Purpose and binding FCP evidence

Continue the project’s exact source crosswalk, not a generic BFSS positivity claim. FCP already registers `SRC-FCP24-NONPERT-BFSS-1997` and `SRC-OPENAI-MATH-F270B-BFSS-2026`, with independent T6 source-delta adjudication. The latter gives infinitely many positive eigenvalues for its specifically defined SU(2) relative closed-form Hamiltonian but no gap theorem, all-N result, universal M-theory definition or empirical selection.

At the pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, source `charge`/`bracketMultiplier` use the full ordered i,j sum with `gammaTwo`; source `deformedCoreCharge 1 0`/`deformedPotentialMultiplier 1 0` use `i<j` and `pairGamma`. Gate #163 kernel-checked the sign and spin-index conventions of the deformed pair coefficient. The next unknown is equivalence between full and upper-triangular summations.

## Exact G4-K9B Lean candidates

1. `sourceCoordinateBracketUpperPair`: original color-bracket definitions coincide on an upper spatial pair.
2. `sourceGammaTwoUpperPair`: original gammaTwo equals pairGamma for i<j, from source Clifford relations.
3. `sourceMasslessCoefficient_eq_originalUpperTriangle`: accepted K9A coefficient in ORIGINAL color-bracket and gammaTwo source notation.
4. `sourceChargeDifference_eq_potentialDifference`: all-core original-vs-deformed charge discrepancy reduces exactly to potential multiplier discrepancy; kinetic contributions cancel.
5. `sourceCharge_eq_of_potentialAgreement`: explicitly **CONDITIONAL** charge equality on entire source SmoothCore N, assuming the ORIGINAL multiplier equality for every x.
6. `sourceCoreForm_eq_of_potentialAgreement`: explicitly **CONDITIONAL** source quadratic-form equality on arbitrary SmoothCore N, assuming that same original multiplier equality.

Only `[propext, Classical.choice, Quot.sound]` may occur in each printed axiom dependency. No `sorry`, unproved axiom, surrogate source, or alternative Hamiltonian. This candidate remains uncompiled until the next owner-reported Actions gate.

## Remaining unconditional proof target

```lean
∀ (M : AlgebraData N) (α : SpinIndex) (x : Boson N),
  M.deformedPotentialMultiplier 1 0 x α = M.bracketMultiplier α x
```
The necessary argument uses the accepted K9A coefficient, K9B pair rewriting, source `coordinateBracketAll_skew` plus skew `gammaTwo`, and a rigorous finite ordered-pair/upper-triangle reindexing. Do NOT treat the conditional hp premise as discharged. Once genuinely proven, derive unqualified charge equality and core form equality, then investigate the gauge-invariant closed-form Hamiltonian and exact paper operator domains. The full closed-graph vs quadratic-form domain and operator correspondence must be proved separately; no spectral or gap promotion is justified now.

## Constraints

Branch-only source candidate and qualified cached Lean prerequisites. Immutable accepted source K9A and all predecessors protected by exact SHA. No main merge, upstream change, historical rewrite, new axiom, physical-model modification, or next-gate peek before owner reports it.
