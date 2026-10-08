# BFSS fermion F2-B2c1 — Gate #51 formal acceptance 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC
**Disposition:** `PASS__F2B2C1_REAL_IMAGINARY_DISTINCT_MODE_CAR_KERNEL_VERIFIED`

## Exact source and compilation authority

- Research branch `research/openai-math-su2-concrete-potential`
- Qualified proof/workflow commit `c1da8c774e4aab98b9e1291261060a6445bc4b3c`
- Proof source `experiments/openai-math-su2-concrete-potential/SU2FermionF2B2MixedProbe.lean`, blob `3da7fc2293313a9db570f74e7ba6636f0719684c`
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `d394712e59864a4a764f2a0dd608bc043409013e`
- Pinned OpenAI upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`
- Lean `leanprover/lean4:v4.34.1`
- **Gate #51**, run `37732986481`, job `113166112742`, exact head commit, completed success and compile job success.
- https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37732986481
- The gate built upstream dependencies and recompiled F1, F2-A, F2-B1, F2-B2a and F2-B2b in dependency order before `lake env lean SU2FermionF2B2MixedProbe.lean`.

## Verbatim axiom evidence

```text
'FCP.BFSSFermionF2B2Mixed.majorana01_car_ne' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or custom axiom.

## Exactly proved

```lean
theorem majorana01_car_ne (i j : Fin 24) (hij : i ≠ j) :
    majorana0 i * majorana1 j + majorana1 j * majorana0 i =
      (0 : BFSSOp)
```

Here `BFSSOp` definitionally is `OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2`. The off-diagonal mixed CAR uses accepted F2-A zero-mode anticommutators, explicitly derived complex-phase preservation, expansion of the normalized Majorana sums, and typed scalar factorization.

The proof is **bounded to distinct modes**; it does not assume or prove the equal-mode mixed relation.

## Remaining obligations

- F2-B2c2: `{majorana0 i, majorana1 i} = 0` for each `i : Fin 24`.
- F2-B2c3: combine distinct and equal modes in the exact all-pairs mixed theorem.
- F2-B2d: fully indexed 48-generator `majoranaCandidate`/ `thetaCandidate` CAR matching pinned `OAI.BFSSQuantum.AlgebraData.theta_CAR` statement.
- F3: `theta_irreducible` on every invariant complex submodule.
- F4: complete `AlgebraData 2`, only after all fields have genuine proofs.

The real/real and imaginary/imaginary families are already accepted at Gates #49 and #50. Their existence plus the distinct-mode mixed lemma does **not** establish the all-pairs CAR yet. No Hamiltonian, gauge/Spin(9), physical spectrum, positivity, BFSS conjecture, or program-level FCP K1–K10 upgrade is implied.

## Governance

Only this FCP research branch was used. Preserve `main`, pinned upstream, source-first crosswalk, prior accepted proof sources, and independent reviewer scripts. No upstream issue or PR without owner authorization. Submit one new proof gate at a time and **do not poll/inspect the newly submitted gate until the owner reports GREEN/RED**.

**Operating principle:** Protect the quality threshold, not the opportunity.
