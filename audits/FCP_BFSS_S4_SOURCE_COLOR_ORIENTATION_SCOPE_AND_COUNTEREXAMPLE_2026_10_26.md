# BFSS S4 — source color orientation is an essential hypothesis in any epsilon specialization

**Dated:** 2026-10-26. **Status:** source-scope adversarial mathematical observation; **not** a newly Lean-qualified theorem, not a strict gate, not a claim against Gate110/Gate111. Project Lead decision record.

## Original source and precise scope

Frozen source: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `lean/OAI/MathematicalPhysics/BFSS/Core.lean` (`AlgebraData`, `bracket`, `structureConstant`) and `ColorMatrices.lean`.

`AlgebraData N` requires `color` to be a spanning orthonormal, traceless Hermitian basis; its fields do **not** fix an orientation on `ColorIndex 2`. Its definition is
```lean
structureConstant (A B C : ColorIndex N) : ℝ :=
  (Matrix.trace (M.color A *
    ((-Complex.I) • (M.color B * M.color C - M.color C * M.color B)))).re
```
The currently unaccepted Gate111 target wisely retains `M.structureConstant D A C` in both sides and does not assert `+sqrt(2)*epsilon` for generic `M`.

## Explicit obstruction to an unrestricted +epsilon identity

Choose the standard Pauli generators `color_a = sigma_a / sqrt(2)`, ordered so their usual commutators give `f_{abc}=+sqrt(2) epsilon_{abc}`. Create a second algebra presentation by replacing exactly one generator by its negative, with the remaining two unchanged; retain the same original `gamma` and `theta` fields. Such a signed orthogonal basis change preserves Hermiticity, trace zero, orthonormality, spanning, the gamma Clifford laws, and fermionic CAR/irreducibility.

For `s_a in {+1,-1}` with exactly one minus sign, the new structure constants satisfy
```text
f'_{abc} = s_a s_b s_c f_{abc}.
```
For all triples with distinct indices, `s_a s_b s_c = -1`, hence `f'_{abc}=-sqrt(2) epsilon_{abc}`; repeated-index constants vanish. Thus a claim `forall (M : AlgebraData 2), f_M=+sqrt(2)*epsilon` is false. This is an elementary orientation counterexample to an **overbroad prospective lemma**, not a counterexample to any accepted theorem or the actual source-specific oriented Pauli model.

## Consequent stop rule and next discriminating work

1. **Do not** submit an arbitrary-`M` Gate claiming fixed-sign epsilon structure constants. Either retain `f_{abc}` throughout (orientation covariant), or specialize explicitly to the qualified source Pauli/paired `AlgebraData 2` construction, verifying its generator order, orientation, bracket `-i[·,·]` convention, and `sqrt(2)` normalization.
2. Treat `ColorIndex 2=Fin 3` index order as a separate source check; reindex `f_{D A C}` and the manuscript `f_{abc}` with explicit permutation/sign accounting. Never silently infer an epsilon sign from orthonormality.
3. Separate scalar-coefficient identity from ordered `theta` products: source `theta_CAR`, exact operator order, and the `1/16` normalized sixteen-charge quadratic form remain independently accountable.
4. If Gate111 is accepted, count only its exact source-coefficient root. A manuscript `B(x)` typed operator identification requires the further concrete color-orientation, CAR, and source-operator bridges. No global Spin(9) reduction or spectral existence follows.

**Validation status:** source definitions inspected directly; the signed-basis argument is mathematical reasoning recorded for adverse testing, not yet formalized or accepted by the strict Lean pipeline. Scope is a universal-claim falsification boundary and suggested minimal future diagnostic, not a theorem ledger increment. Preserve the contrary candidate, if proposed, as negative knowledge.
