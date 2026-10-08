# BFSS fermions F3-B1 — Gate #61 formal acceptance 0.1.0

**Date:** 2026-10-08 UTC / 2026-10-07 Pacific  
**Disposition:** `PASS__F3B1_THETA_STABLE_MODE_OPERATORS_KERNEL_VERIFIED`

## Exact evidence

- FCP repository: `etblink/Foundational-Convergence-Program`.
- Research branch: `research/openai-math-su2-concrete-potential`.
- Accepted compiler candidate commit: `a213b41bbc994449efc952c02fa30fa8b5ee73b4`.
- New Lean source: `experiments/openai-math-su2-concrete-potential/SU2FermionF3B1OccupationProbe.lean`; blob `5f7c472a158095da14b6ba73baebaa45356dda31`.
- Workflow: `.github/workflows/openai-math-su2-concrete-potential.yml`; blob `cd55b5b9eb50f775788ad24e687b287c87daa0f9`.
- Pinned upstream: `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; pinned Lean: `leanprover/lean4:v4.34.1`.
- Gate #61: https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37741947954
- GitHub Actions run ID: `37741947954`; job ID: `113194444323`.
- Exact run `head_sha` matched accepted candidate, with completed `success`.
- Job and `Compile concrete SU2 color identity` step completed `success`; predecessor F1, F2, F3-A1 and F3-A2 compiled, followed by successful execution of `lake env lean SU2FermionF3B1OccupationProbe.lean`.

## Exact kernel axiom evidence

```text
'FCP.BFSSFermionF3B1.thetaInvariant_occupiedMode' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3B1.thetaInvariant_vacantMode' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx`, custom axiom, or Lean proof error was reported for the intended new theorems.

## Established

On the exact `OAI.BFSSQuantum.Fermion 2` Hilbert space, for any complex submodule stable under all `thetaCandidate` operators, all `occupiedMode i = creator i * annihilator i` and `vacantMode i = 1 - occupiedMode i` map elements of that submodule into itself. The proof rests directly on Gate #60 creator/annihilator invariance and submodule closure.

## Not yet established

Gate #61 does **not** prove that these operators are genuine occupation-basis projectors, their diagonal eigenvalue action, their commutation/idempotence, occupation-coordinate isolation, generation of basis vectors, or irreducibility. The original exact upstream `theta_irreducible` field remains unproved; full `AlgebraData 2`, gauge action, spectral/positivity claims, and broader String/M claims remain outside this gate. The FCP model-level T6 source-delta assessment and frozen K1–K10 assignments are unchanged.

## Next technical boundary

F3-B2 should establish genuine occupation-basis operator action, using the pinned upstream `OAI.ContinuumCoulomb.HubbardGlobal.number_basis` theorem and `fockOperator_coordinates`, then transport to the exact F1 `fockBFSSUnitary` basis without normalization or phase changes. Every source lemma must be checked for its actual type. A separate later result must show that products of occupation selectors isolate coordinates of arbitrary nonzero vectors, and then reach every basis vector via creators and annihilators.

Research branch only. No upstream changes or public PR/issue. No `sorry`, `admit`, custom axioms, or target weakening. After submitting any new compiler candidate, **do not poll/inspect that new workflow** before the owner reports GREEN or RED.

**Operating principle:** Protect the quality threshold, not the opportunity.
