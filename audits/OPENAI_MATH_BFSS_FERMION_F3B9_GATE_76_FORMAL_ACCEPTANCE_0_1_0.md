# BFSS fermions F3-B9 — Gate #76 formal acceptance 0.1.0

**Date:** 2026-10-08  
**Disposition:** `PASS__F3B9_FULL_OCCUPATION_KET_REACHABILITY_KERNEL_VERIFIED`

## Exact qualified identity

- Research branch `research/openai-math-su2-concrete-potential`.
- Accepted proof candidate commit `0241cccf4cb0e4958ecdae1f774cfda568f37c19`.
- Source `experiments/openai-math-su2-concrete-potential/SU2FermionF3B9FiniteReachabilityProbe.lean`, exact Git blob `c5c996c2e7a98ab952900c44c3745efa00faa57b`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `a7483aebc36aa00ecef5f9d76011b0b25498066b`.
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1.
- Gate #76: https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37760755562
- GitHub Actions run `37760755562`, job `113256291486`. Verified run HEAD matches; run, job and `Compile concrete SU2 color identity` step report success. Log contains a completed `lake env lean SU2FermionF3B9FiniteReachabilityProbe.lean`.

## Exact kernel axiom reports

```text
'FCP.BFSSFermionF3B9.thetaInvariant_vacuum_of_occupationKet' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3B9.thetaInvariant_all_from_vacuum' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3B9.thetaInvariant_all_occupationKet_of_one' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or custom axioms.

## Exact mathematical result

In the genuine exact 24-mode Fock-to-BFSS representation, for any theta-invariant complex submodule `W`, membership of any transported occupation ket `occupationKet A` implies membership of every ket `occupationKet B`. This follows via the *already verified* signed single-mode insert/erase reachability theorems, finite induction to vacuum, and finite induction from vacuum to any target configuration. This gate does not assume irreducibility.

Combine with accepted F3-B6 Gate #72 to infer that any nonzero theta-invariant submodule contains every occupation ket. The implication `W = ⊤` using F3-B5 full finite basis expansion is a **future theorem**, not itself established by this gate.

## Next bounded gate

F3-C1 must kernel-check: (1) a theta-invariant submodule containing any nonzero vector is `⊤` because its entire actual finite occupation basis is inside `W`; optionally (2) the dichotomy `W = ⊥ ∨ W = ⊤`. Defer downstream upstream `theta_irreducible` and `AlgebraData 2` interface closure until definitions and exact requirements are audited. Avoid kernel enumeration blow-up by using `occupationExpansion` as already checked lemma and abstract `Submodule.sum_mem` / scalar closure.

No `sorry`, `admit`, custom axioms, weakening, increased resource limits, `main` or upstream edits. The human owner reports each gate GREEN/RED; **do not inspect newly submitted workflow ahead of that report**.

**Purpose:** discover what is true, not collect green checks.
