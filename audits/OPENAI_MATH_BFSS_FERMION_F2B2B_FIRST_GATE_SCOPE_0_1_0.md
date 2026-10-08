# BFSS fermions Stage F2-B2b — imaginary Majorana all-mode CAR first gate scope 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC
**Status:** `F2B2B_COMPILER_CANDIDATE__NO_KERNEL_ACCEPTANCE`
**Branch:** `research/openai-math-su2-concrete-potential`
**Pinned OpenAI source:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`
**Lean:** `leanprover/lean4:v4.34.1`

Accepted predecessors: F1 Gate #36, F2-A Gate #39, F2-B1 Gate #46 (run `37729612874`, job `113155522421`), F2-B2a Gate #49 (run `37731534480`, job `113161516309`). Gate #49 formally accepted commit `58d914c9fba383fca69a8442fb1bdcdbc4ae6f38` and audit `audits/OPENAI_MATH_BFSS_FERMION_F2B2A_GATE_49_FORMAL_ACCEPTANCE_0_1_0.md`.

## Precisely scoped proof target

New source `experiments/openai-math-su2-concrete-potential/SU2FermionF2B2ImagProbe.lean`, with:

```lean
theorem majorana1_car_all (i j : Fin 24) :
    majorana1 i * majorana1 j + majorana1 j * majorana1 i =
      (if i = j then (1 : ℂ) else 0) • (1 : BFSSOp)
```

`BFSSOp` is exactly `OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2`. The same-mode case invokes accepted `majorana1_car`; off-diagonal pairs are computed with `I` phase-rotated creators and `-I` phase-rotated annihilators, using existing all-mode CAR. The intermediate `phase_car_zero` is a proved lemma over the same exact operator algebra, not a new axiom or assumption. The final scalar normalization is inherited from F2-B1.

**Acceptance standard:** a new workflow run at the exact new source+workflow commit, job completed success, `lake env lean SU2FermionF2B2ImagProbe.lean` successful, and `#print axioms majorana1_car_all` lists exclusively `[propext, Classical.choice, Quot.sound]` or a subset, without `sorryAx`. A doc-only acceptance commit does not count as new proof evidence.

**Unproved:** all real/imaginary mixed pairs (including same mode), full 48-label `majoranaCandidate`/ `thetaCandidate` CAR with exact `AlgebraData.theta_CAR` normalization, F3 `theta_irreducible`, full `AlgebraData 2`, gauge and physical results. No String/M / K1–K10 classification upgrades.

**Governance:** Research branch only; do not alter FCP `main`, pinned upstream, or reviewer files. Await human report GREEN/RED before inspecting newly submitted gate. Refer to `SOURCE_REGISTER.md` and `audits/OPENAI_MATH_BFSS_FCP_SOURCE_FIRST_CROSSWALK_0_1_0.md`.
