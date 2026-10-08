# BFSS Stage F2-B1 — imaginary Majorana normalized self-CAR gate scope 0.1.0

**Research date:** 2026-10-07 Pacific
**Status:** `F2B1_COMPILER_CANDIDATE__NO_KERNEL_ACCEPTANCE_YET`
**Branch:** `research/openai-math-su2-concrete-potential`
**Accepted F2-A:** `454327191995081ce1551867e509cf80fd1069a5`; Gate #39, `37725249498`, job `113141828444`, completed success, standard axioms only.
**F2-B1 new source commit:** `6512f0a0982aa63cf9d00db3593234de90f2f03c`
**F2-B1 workflow candidate commit:** `fcd49c6b7bd5d3f3e81caa93d9ace3bf35021382`
**Pinned upstream:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1.

## Source-first basis

FCP source register, FCP-24 String/M research, OpenAI Family270B source-delta adjudication and the preserved finite Clifford scripts are independently catalogued in `audits/OPENAI_MATH_BFSS_FCP_SOURCE_FIRST_CROSSWALK_0_1_0.md`. They constrain source identity, BFSS physical interpretation and scientific reach but do not replace formal CAR proofs.

Pinned OAI Lean includes `OAI.Analysis.Laughlin.Operators.CAR`, `OAI.MathematicalPhysics.ContinuumCoulomb.ManyBody.FockNorm`, and an additional reviewed generic algebra source `OAI.Analysis.OInfinity.CARCombination` (CAR synthesis of complex linear combinations). The latter informs proof structure but is not imported into F2-B1; generic C*-algebra CAR infrastructure is not confused with the exact BFSS `Fermion 2 →L[ℂ] Fermion 2` target.

## Theorem / non-theorems

New file: `experiments/openai-math-su2-concrete-potential/SU2FermionF2BProbe.lean`.

Goal for all `i : Fin 24`:

```lean
theorem majorana1_car (i : Fin 24) :
    majorana1 i * majorana1 i + majorana1 i * majorana1 i =
      (1 : OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2)
```

This matches the `{theta,theta}=1` diagonal normalization exactly. The file applies the F1 normalization template to a complex-I rotated creator and its adjoint. The proof must rest on `creator_sq`, `creator_annihilator_car`, and `creator_adjoint` from the kernel-verified F1, then transport the phase without introducing new assumptions. It prints `#print axioms majorana1_car`.

**Acceptance:** Exact workflow/head commit `fcd49c6b7bd5d3f3e81caa93d9ace3bf35021382`, completed green; color/gamma/F1/F2-A plus F2-B1 compile against pinned OpenAI; `majorana1_car` has only standard `[propext, Classical.choice, Quot.sound]` or a subset, without `sorryAx`, `sorry`, `admit` or custom axioms.

**Not yet proven:** Cross-component `{majorana0 i,majorana1 j}=0`, off-diagonal same-component CAR for `i ≠ j`, full delta-indexed `thetaCandidate` CAR, irreducibility, gauge invariance, spectral positivity. The full F2 stage is not complete even if this B1 gate passes.

**Gate protocol:** Do not inspect the new workflow/run until the owner reports GREEN or RED. Never mistake a successful source-add run that predates the workflow edit for qualifying F2-B1 evidence. On red inspect exact commit/run/job; smallest proof repair only. Do not change FCP main or upstream math, create public issues or PRs.

**Operating maxim:** Protect the quality threshold, not the opportunity.
