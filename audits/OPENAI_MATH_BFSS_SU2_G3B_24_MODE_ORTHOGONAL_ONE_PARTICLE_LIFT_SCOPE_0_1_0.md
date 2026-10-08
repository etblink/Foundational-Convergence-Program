# BFSS SU(2) G3-B — actual 24-mode one-particle color representation 0.1.0

**Date:** 2026-10-08
**State:** `G3B_SUBMITTED_UNCOMPILED`

## Accepted authority

- [Gate #95](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37814322936), run `37814322936`, job `113438912608`, commit `ed5ae9d3b84c93f8a5de35c60ae198396cd48628`. Qualified `SU2BFSSG3AAdjointColorRepresentationProbe.lean` Git blob `c8bbd59782c3116fb514d6aa20d91c607a11c3e7`. Eight substantive declarations exactly `[propext, Classical.choice, Quot.sound]`.
- `FCP.BFSSSU2GaugeG3A.adjointColorMatrix : GaugeGroup 2 → Matrix (ColorIndex 2) (ColorIndex 2) ℝ`, rows=output color, columns=input color, with exact identity, multiplication and `R(g)ᵀ R(g)=1`.
- `FCP.BFSSSU2GaugeG1A.colorModeEquiv : (Fin 8 × ColorIndex 2) ≃ Fin 24`: exact accepted Fock mode labeling.
- Pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- In pinned mathlib `Mathlib/LinearAlgebra/Matrix/Kronecker.lean` Git blob `9442cbc727c333a0f299599ed667311f08681e41`, kernel-provided `Matrix.mul_kronecker_mul`, `Matrix.one_kronecker_one`.
- In pinned mathlib `Mathlib/LinearAlgebra/Matrix/Reindex.lean` blob `bd99760518a771e512224a60c2cf24073b88bd47`, `Matrix.reindexAlgEquiv` and its `map_one`/`map_mul` laws. This is source-verified but the new G3-B code remains **UNCOMPILED until CI passes**.

## Bounded mathematical objective

Form the true **24×24 real orthogonal matrix** on the exact accepted annihilator index `Fin 24`, by the tensor block lift of the actual SU(2) color action:
```lean
R24(g) :=
  (Matrix.reindexAlgEquiv ℝ ℝ colorModeEquiv)
    (Matrix.kronecker (1 : Matrix (Fin 8) (Fin 8) ℝ) (adjointColorMatrix g))
```
Prove:
1. Exact block identity: `R24(g) (colorModeEquiv(j,B)) (colorModeEquiv(k,A)) = if j=k then adjointColorMatrix g B A else 0`.
2. `R24(1)=1`.
3. `R24(g*h)=R24(g)*R24(h)`.
4. `(R24(g))ᵀ*R24(g)=1`.

These are genuine real one-particle representation laws (before scalar extension). They are required for the next complex one-particle unitary/exterior-algebra action. Do **not** silently equate the induced real group action with a completed unitary representation on the fermionic Hilbert space. No `GaugeData`, vacuum or Hamiltonian/spectral conclusions here.

## Frozen operational bounds

Use only the qualified G1/G2/G3-A declarations and pinned mathlib; no new axioms, `sorry`, `admit`, alternate source pins, changed FCP main or upstream, public PR/issues or CI resource changes. Print axiom footprints. Submit one compiler candidate on the research branch. **Stop without inspecting any newly triggered workflow until human owner reports GREEN/RED.**
