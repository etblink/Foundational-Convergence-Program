# BFSS fermions F3-B6 — Gate #72 formal acceptance 0.1.0

**Date:** 2026-10-08  
**Disposition:** `PASS__F3B6_THETA_STABLE_SELECTORS_NONZERO_COORDINATE_AND_KET_EXTRACTION_KERNEL_VERIFIED`

## Exact qualified identity

- Research branch `research/openai-math-su2-concrete-potential`.
- Candidate commit `4252253aac2e8ce9522d118cc45f2eb70f5afee0`.
- Source `experiments/openai-math-su2-concrete-potential/SU2FermionF3B6NonzeroKetProbe.lean`, blob `7065e9c7ab30c3be2c1fb0358e2912a0e716244b`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `3992c6d970c7dd2622f66d79afb25f9f02a42816`.
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `leanprover/lean4:v4.34.1`.
- Gate #72 successful run https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37756052439
- Run `37756052439` / job `113240747890`. Exact run HEAD, run/job success, compile-step success; log proves `lake env lean SU2FermionF3B6NonzeroKetProbe.lean` completes.

## Exact axiom reports

```text
'FCP.BFSSFermionF3B6.thetaInvariant_occupationSelector' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3B6.exists_nonzero_occupationCoeff' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3B6.thetaInvariant_contains_occupationKet' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or custom axioms. Deprecation warnings for `if_pos`/`if_neg` are nonblocking.

## Mathematical acceptance

For every theta-invariant `W : Submodule ℂ (OAI.BFSSQuantum.Fermion 2)`, F3-B6 proves all concrete full 24-mode occupation selectors preserve `W`; any nonzero exact BFSS vector has a nonzero genuine Fock coefficient; thus any theta-invariant `W` containing a nonzero vector contains some `occupationKet A`. The argument genuinely uses Gates #65 and #71 and divides by an explicitly nonzero coefficient.

This is an exact mathematical statement about the pinned 24-mode Fock-to-BFSS realization, not an abstract CAR axiom or a conditional claimed as universal without proof.

## Remaining obligations

F3-B7 should establish creator/annihilator action (and nonzero basis vector values) on the transported occupation basis, or another bounded basis reachability lemma. F3-C later needs all occupation kets obtainable from one ket under stable operations, full submodule span and `theta_irreducible`. F4 must still complete `AlgebraData 2` as required. No energy gap, spectral, positivity, full BFSS solution, universal String/M result, or FCP scientific-classification strengthening follows.

No writes to `main` or upstream, no weakening, no custom axioms, no `sorry` or `admit`. Submit one candidate and stop without polling its workflow until human GREEN/RED report.

**Working principle:** preserve exact evidence; discover what is true.
