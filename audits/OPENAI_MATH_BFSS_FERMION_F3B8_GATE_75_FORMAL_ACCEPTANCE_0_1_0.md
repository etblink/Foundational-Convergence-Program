# BFSS fermions F3-B8 — Gate #75 formal acceptance 0.1.0

**Date:** 2026-10-08. **Disposition:** `PASS__F3B8_EXACT_LOCAL_KET_INSERT_ERASE_STABILITY_KERNEL_VERIFIED`.

## Qualified source and compiler record

- Research branch: `research/openai-math-su2-concrete-potential`.
- Qualified source commit `4e6e80a8dfa29220666275e13ee27622706f88e1`.
- Source `experiments/openai-math-su2-concrete-potential/SU2FermionF3B8LocalReachabilityProbe.lean`, blob `0ee55f31b51e7fbe3074a4278a1addefb6f48a3c`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `82ef22026a40880dbf622436fd847c76bc7c1a5a`.
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1.
- Gate #75 https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37759429654
- Run `37759429654`, job `113251943811`: HEAD matches, completed success, `Compile concrete SU2 color identity` step success; log includes successful `lake env lean SU2FermionF3B8LocalReachabilityProbe.lean`.

## Exact axiom footprint

```text
'FCP.BFSSFermionF3B8.thetaInvariant_insert_occupationKet' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3B8.thetaInvariant_erase_occupationKet' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or custom axioms.

## Verified content

For any `W : Submodule ℂ (OAI.BFSSQuantum.Fermion 2)` stable under all exact theta candidates, membership of the actual 24-mode `occupationKet A` in `W` implies membership of the inserted occupation ket for any vacant mode and the erased occupation ket for any occupied mode. These are genuine transported `creator`/`annihilator` actions, using independently verified nonzero exterior permutation-sign coefficients and inverses. Gate #74 failed solely from missing `OAI.ContinuumCoulomb.HubbardGlobal` namespace; the Gate #75 repair opened it and did not change proof statements or mathematical definitions.

## Strict boundaries

Full finite reachability of arbitrary occupation configurations remains to be proved (F3-B9); then full submodule spanning, `theta_irreducible`, upstream `AlgebraData 2`, and any physical spectral/positivity claim remain outside this gate. FCP T6 and K1–K10 frozen scientific classifications are unchanged.

No `sorry`, `admit`, custom axioms, theorem weakening, FCP main write, or upstream modification. Continue on research branch and stop before inspecting each newly triggered workflow until owner reports GREEN/RED.
