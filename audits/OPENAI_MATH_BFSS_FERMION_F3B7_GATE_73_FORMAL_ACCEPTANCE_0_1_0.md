# BFSS fermions F3-B7 — Gate #73 formal acceptance 0.1.0

**Date:** 2026-10-08  
**Disposition:** `PASS__F3B7_EXACT_SIGNED_CREATION_ANNIHILATION_TRANSITIONS_KERNEL_VERIFIED`

## Exact qualification

- FCP branch `research/openai-math-su2-concrete-potential`, compiler candidate HEAD `1ecf52116eb5769f51fc5960a93b562a991b973f`.
- Source `experiments/openai-math-su2-concrete-potential/SU2FermionF3B7SignedModeProbe.lean`, blob `a73bfda89554c428a9714cc372a857f11eb7475b`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `c4af3f29853fe225e105ea5af80da16128cc0587`.
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1.
- GitHub Actions Gate **#73**, https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37757226966
- Run ID `37757226966`; job ID `113244648305`; HEAD, run, job and `Compile concrete SU2 color identity` step match and report completed success.
- Job log confirms `lake env lean SU2FermionF3B7SignedModeProbe.lean` success.

## Exact axiom reports

```text
'FCP.BFSSFermionF3B7.creator_occupationKet' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3B7.annihilator_occupationKet_of_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3B7.creationCoefficient_ne_zero_of_not_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3B7.annihilationCoefficient_ne_zero_of_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or custom axioms. Nonblocking warning: unused `hi` variable.

## Verified mathematical meaning

For the genuine 24-mode exterior Fock vectors transported into exact `OAI.BFSSQuantum.Fermion 2`, creator `i` maps `occupationKet A` to `creationCoefficient i A • occupationKet (insert i A)`. For `i ∈ A`, annihilator `i` maps `occupationKet A` to `creationCoefficient i (A.erase i) • occupationKet (A.erase i)`. The original nonzero exterior signs `±1` are retained. The gate additionally confirms the corresponding nonzero coefficients when creation inserts a previously vacant mode or annihilation removes an occupied mode.

## Strict limits

Neither single-mode submodule reachability, all-ket generation from one ket, `theta_irreducible`, completion of upstream `AlgebraData 2`, nor physical BFSS positivity, spectral gap or broad unification follows from this gate alone. FCP's T6/K1–K10 classification stays unchanged.

## Bounded next stage

F3-B8: use already kernel-verified theta-invariance of creators/annihilators, signed transported ket action and nonzero coefficients to show that *any theta-invariant submodule containing `occupationKet A` contains the ket after insertion of any unoccupied mode and erasure of any occupied mode*. This establishes verified local reachability. Induction generating arbitrary kets, top submodule and F3-C irreducibility remain separate obligations.

No `sorry`, `admit`, custom axioms, weakening, or writes to `main`/upstream. After submitting a candidate, do not inspect newly triggered workflow until owner reports GREEN/RED.
