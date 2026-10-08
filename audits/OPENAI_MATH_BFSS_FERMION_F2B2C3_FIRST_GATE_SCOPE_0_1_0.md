# BFSS fermions F2-B2c3 — all-mode mixed Majorana CAR gate scope 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC
**Status:** `F2B2C3_COMPILER_CANDIDATE__NOT_ACCEPTED`
**Branch:** `research/openai-math-su2-concrete-potential`
**Pinned upstream:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `v4.34.1`.

Accepted predecessors: Gate #49 real/real all-mode CAR, Gate #50 imaginary/imaginary all-mode CAR, Gate #51 mixed distinct-mode CAR, Gate #54 mixed same-mode CAR (accepted commit `435ea5df036c36b2b168c2272090ada195fc4493`, run `37735038600`, job `113172545971`, standard axioms only). Gate #54 formal acceptance is recorded at `audits/OPENAI_MATH_BFSS_FERMION_F2B2C2_GATE_54_FORMAL_ACCEPTANCE_0_1_0.md`.

## Exactly scoped F2-B2c3 target

Source: `experiments/openai-math-su2-concrete-potential/SU2FermionF2B2MixedAllProbe.lean`.

```lean
theorem majorana01_car_all (i j : Fin 24) :
    majorana0 i * majorana1 j + majorana1 j * majorana0 i =
      (0 : BFSSOp)
```

The exact operator type is pinned `OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2`. Case distinction on `i = j` composes the independently kernel-proven `majorana01_car_self` and `majorana01_car_ne` theorems. This is a useful unconditionally quantified mixed CAR theorem, **not** a new spectral result.

**Qualification:** One completed green run at the new exact source+workflow HEAD, compiling the new file, with `#print axioms majorana01_car_all` reporting only `[propext, Classical.choice, Quot.sound]` (or subset) and no `sorryAx`.

**Not yet accepted:** exact 48-label `majoranaCandidate` pair CAR and `thetaCandidate` pullback to the exact upstream `OAI.BFSSQuantum.AlgebraData.theta_CAR` normalization. F3 `theta_irreducible`, full `AlgebraData 2`, gauge action, physical Hamiltonian and spectral claims remain further away. No upgrade of FCP program-level K1–K10.

**Control:** Research branch only; `main`, pinned OpenAI repo, independent reviewers, and public upstream issues/PRs unchanged. Do not inspect or poll new CI gate after submitting it until the owner reports its GREEN or RED status.
