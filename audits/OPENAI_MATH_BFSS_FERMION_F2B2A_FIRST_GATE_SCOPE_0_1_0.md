# BFSS fermion Stage F2-B2a — real Majorana arbitrary-mode CAR first gate scope 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC
**Status:** `F2B2A_COMPILER_CANDIDATE__NO_KERNEL_ACCEPTANCE`
**Branch:** `research/openai-math-su2-concrete-potential`
**Accepted F2-B1:** `108db09b50d8df4c45686b7b7bfa72bfa731ec2b` at Gate #46, run `37729612874`, job `113155522421`; standard axioms only. Recorded in `audits/OPENAI_MATH_BFSS_FERMION_F2B1_GATE_46_FORMAL_ACCEPTANCE_0_1_0.md`.
**Pinned upstream:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1.

## First F2-B2 subgate — proof statement

New source `experiments/openai-math-su2-concrete-potential/SU2FermionF2B2Probe.lean`.

```lean
theorem majorana0_car_all (i j : Fin 24) :
    majorana0 i * majorana0 j + majorana0 j * majorana0 i =
      (if i = j then (1 : ℂ) else 0) • (1 : BFSSOp)
```

`BFSSOp` is an abbreviation for the **exact** `OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2`. This is the full real/real mode-pair CAR, including equality and off-diagonal modes, using no new axioms. The equality case is inherited from the accepted F1 `majorana0_car`, and the distinct-mode case expands both `creator` and `annihilator` sums into F2-A's arbitrary-mode CAR. The proof does not assume the desired Majorana CAR.

**Qualification:** a separately identified successful completed job at the exact source+workflow candidate HEAD; pinned Lean and upstream; F1/F2-A/F2-B1 recompile and the new `majorana0_car_all` axiom report has only `[propext, Classical.choice, Quot.sound]` or a subset, and no `sorryAx`. A green workflow that does not compile the new B2a source is insufficient.

**Explicit non-claims:** The imaginary/imaginary distinct-mode family, every real/imaginary mixed mode pair (including same mode), complete `Fin 24 × Fin 2` Majorana CAR, exact `thetaCandidate` / pinned `AlgebraData.theta_CAR`, and `theta_irreducible` remain open. Stage F2-B2 and full F2 **do not** complete by this subgate alone. No scientific classification or FCP program-level K1–K10 effect is implied.

**Source-first:** consult FCP's `SOURCE_REGISTER.md`, `audits/OPENAI_MATH_BFSS_FCP_SOURCE_FIRST_CROSSWALK_0_1_0.md`, and accepted F1/F2-A/F2-B1 gates. Reuse only exactly typed upstream/FCP CAR lemmas; pinned `OAI/MathematicalPhysics/BFSS/Core.lean` remains the final theta target.

**Operational restriction:** After the single new source+workflow commit, do not inspect/poll the newly triggered gate until the human owner reports GREEN or RED. Work on this research branch only. Do not change `main`, pinned OpenAI code, or reviewer scripts.
