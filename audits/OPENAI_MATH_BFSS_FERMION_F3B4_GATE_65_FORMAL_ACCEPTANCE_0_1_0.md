# BFSS fermions F3-B4 — Gate #65 formal acceptance 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC  
**Disposition:** `PASS__F3B4_EXACT_24_MODE_OCCUPATION_SELECTOR_BASIS_ACTION_KERNEL_VERIFIED`

## Qualified source and run

- Repository: `etblink/Foundational-Convergence-Program`.
- Research branch: `research/openai-math-su2-concrete-potential`.
- Accepted compiler candidate HEAD: `ed634c788a3cbedb39e5017192396d17d5801357`.
- Source: `experiments/openai-math-su2-concrete-potential/SU2FermionF3B4SelectorProbe.lean`; exact blob `6528da46419671b6fc2ea98b842d22315dab89fb`.
- Workflow: `.github/workflows/openai-math-su2-concrete-potential.yml`; exact blob `18ec93d0788f89e72d348d47f423018de817081d`.
- Pinned upstream: `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean toolchain `leanprover/lean4:v4.34.1`.
- **Gate #65**, https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37746252192
- Run ID `37746252192`; job ID `113208327819`. Exact run `head_sha` matches source commit, and run, job, and compile step all completed `success`.
- Job logs verify `lake env lean SU2FermionF3B4SelectorProbe.lean` successfully compiled after predecessor modules.

## Exact kernel axiom reports

```text
'FCP.BFSSFermionF3B4.selectorSeq_occupationKet' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3B4.occupationSelector_occupationKet' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or custom axioms. A deprecation warning regarding `if_neg` is not a proof failure.

## Verified meaning

An explicitly ordered 24-mode finite product of the **actual transported** occupied/vacant mode operators is defined for each `A : Finset (Fin 24)`. For every `B : Finset (Fin 24)`, the theorem `occupationSelector_occupationKet` proves:

```lean
occupationSelector A (occupationKet B) =
  if A = B then occupationKet B else 0
```

No noncommutative `Finset.prod` assumption is needed: products are ordered. Gate #64 failed only because unrestricted scalar rewriting and an unsimplified `if True` tactic goal; the bounded Gate #65 repair did not change theorem statements or definitions.

## Scientific and formal boundary

Proved **only basis-vector action**, not the selector's arbitrary-vector expansion, basis-vector extraction from a nonzero invariant vector, generation of all occupation kets from one ket, `theta_irreducible`, complete `AlgebraData 2`, or BFSS spectral/positivity claims. FCP model-level T6 finding and K1–K10 remain unchanged.

## Next mathematical stage

F3-B5 should explicitly transport the actual Fock basis coordinate decomposition to the exact BFSS Hilbert type and prove an arbitrary-vector selector identity `occupationSelector A x = coefficient(A,x) • occupationKet A`, where the coefficient is the pinned upstream basis `repr` of the vector transported back through the F1 unitary and `fockCoordinates` equivalence.

Then establish nonzero-vector coordinate existence and submodule stability under each individual step and thus ordered selector products. These are distinct from generation of every ket and from final irreducibility.

All changes remain on research branch only. No `sorry`, `admit`, custom axioms, theorem weakening, upstream edits/PR/issues, FCP main changes, or frozen classification changes. After submitting any next compiler candidate, **do not poll or inspect that workflow until owner reports GREEN/RED**.

**Operating principle:** Let the mathematics decide; protect the verification threshold.
