# BFSS fermions F3-B4 — exact 24-mode basis-selector first gate 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC  
**Status:** `COMPILER_CANDIDATE__UNQUALIFIED`  
**Branch:** `research/openai-math-su2-concrete-potential`

## Qualified input

F3-B3 accepted at Gate #63 (run `37744177545`, job `113201626883`, source commit `dbb1d69f54ffd6efb75e9c22284b42ade9f1b3bf`). Theorem `occupiedMode_idempotent` and `occupiedMode_mul_comm` compile without `sorryAx` or custom axioms. Prior Gate #62 proves actual zero-one action on every `occupationKet A`, in exact BFSS Fermion 2.

## Bounded target

Define each one-mode selector `step A i` to be `occupiedMode i` if `i ∈ A`, otherwise `vacantMode i`. Define `occupationSelector A` by an **ordered finite product** of all 24 such operators (for example, primitive recursion over `(Finset.univ : Finset (Fin 24)).toList`) instead of illicit `Finset.prod` over noncommutative continuous operators.

For `A B : Finset (Fin 24)`, prove the genuine basis-vector identity

```lean
occupationSelector A (occupationKet B) =
  if A = B then occupationKet B else 0
```

using:
- exact previously accepted `occupiedMode_occupationKet`, `vacantMode_occupationKet` identities;
- finite operator composition and scalar linearity;
- finite set extensionality / existence of a differing mode when `A ≠ B`.

No projector basis identities may be assumed.

## Hard boundary

This proves exact *action on basis vectors*, but **not yet** action on an arbitrary vector; nor does it establish that `occupationKet` is a basis of the full BFSS space in Lean, coordinate recovery for nonzero vectors, submodule isolation or `theta_irreducible`. Those form separate F3-B5/B6/F3-C steps.

Exact pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1. No `sorry`, `admit`, theorem-target weakening, custom axioms, or upstream edits. FCP main and frozen scientific classifications unchanged. After one compiler candidate, do not poll or inspect that run before owner reports GREEN/RED.
