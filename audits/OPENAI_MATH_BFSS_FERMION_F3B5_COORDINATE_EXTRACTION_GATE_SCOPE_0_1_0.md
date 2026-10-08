# BFSS fermions F3-B5 — arbitrary-vector occupation-coordinate selector gate 0.1.0

**Date:** 2026-10-08 PDT  
**Status:** `F3B5_COMPILER_CANDIDATE__UNQUALIFIED`  
**Branch:** `research/openai-math-su2-concrete-potential`.

## Accepted input

Gate #65, run `37746252192`, job `113208327819`, successfully verified candidate `ed634c788a3cbedb39e5017192396d17d5801357`. Theorems `FCP.BFSSFermionF3B4.selectorSeq_occupationKet` and `occupationSelector_occupationKet` have exactly `[propext, Classical.choice, Quot.sound]`. The accepted source is `SU2FermionF3B4SelectorProbe.lean`, blob `6528da46419671b6fc2ea98b842d22315dab89fb`.

## Precise new target

For arbitrary `x : OAI.BFSSQuantum.Fermion 2`, use only the canonical transported finite Fock basis:

```lean
occupationCoeff x A :=
  (fockBasis 23).repr
    ((fockCoordinates 23).symm (fockBFSSUnitary.symm x)) A
```

Prove:
1. The real **full-vector expansion** `x = ∑ B, occupationCoeff x B • occupationKet B` using upstream `(fockBasis 23).sum_repr`, the exact `fockCoordinates 23` linear equivalence and the accepted `fockBFSSUnitary`.
2. The actual selector **arbitrary-vector identity** `occupationSelector A x = occupationCoeff x A • occupationKet A` from (1), the accepted Gate #65 action `occupationSelector_occupationKet`, and continuous-linear-map add/smul preservation.

This advances basis-vector selection to actual coordinate extraction; it does not assume basis completeness—the expansion must be derived from the pinned upstream bona fide exterior basis.

## Pinned source-first links

- FCP `SOURCE_REGISTER.md` and `audits/OPENAI_MATH_BFSS_FCP_SOURCE_FIRST_CROSSWALK_0_1_0.md`.
- `experiments/openai-math-su2-concrete-potential/SU2FermionFockProbe.lean`: `fockBFSSUnitary`, `occupationIndexEquiv`.
- `experiments/openai-math-su2-concrete-potential/SU2FermionF3B2BasisActionProbe.lean`: exact `occupationKet`.
- `experiments/openai-math-su2-concrete-potential/SU2FermionF3B4SelectorProbe.lean`: ordered 24-mode `occupationSelector` and its canonical ket action.
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`: `lean/OAI/MathematicalPhysics/ContinuumCoulomb/ManyBody/FockNorm.lean` lines 281–287 define `FockCoordinateSpace`, `fockCoordinates`, `fockCoordinates_apply`; it uses `(fockBasis Q).sum_repr` for full coordinate expansion. Lean toolchain `4.34.1`.

## Remaining distinct obligations

Need nonzero-coefficient existence, preservation of selector products by theta-invariant submodules, resulting inclusion of a nonzero occupation ket, reachability of all ket vectors under concrete creators/annihilators, and finally exact upstream `theta_irreducible`. These are not part of the B5 claim and must not be inferred from a green compilation alone.

## Formal hygiene

No `sorry`, `admit`, custom axioms, weakening of the statement, edits to FCP `main`, pinned upstream, or frozen T6/K1–K10 scientific classifications. New source imports B4 and emits `#print axioms` for both theorems; predecessor gates recompile. Submit one compiler candidate and **stop without inspecting its workflow** until the human owner reports GREEN or RED.
