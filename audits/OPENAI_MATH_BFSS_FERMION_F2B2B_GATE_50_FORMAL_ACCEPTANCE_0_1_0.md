# BFSS fermions F2-B2b — Gate #50 formal acceptance 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC
**Disposition:** `PASS__F2B2B_IMAGINARY_MAJORANA_ALL_MODE_CAR_KERNEL_VERIFIED`

## Exact reproducibility evidence

- FCP research branch: `research/openai-math-su2-concrete-potential`
- Accepted proof/workflow commit: `b873d99fb08cebea19058ee309f7979f1b13b6bc`
- New source `experiments/openai-math-su2-concrete-potential/SU2FermionF2B2ImagProbe.lean`, blob `c2b0f0dd651fd9c8786be475adf531aed1f2f6f4`
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `f613a8b1c0290b7b66470c35f75a71e55bcaa12f`
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`
- Lean toolchain exactly `leanprover/lean4:v4.34.1`
- **BFSS SU2 Concrete Color Gate #50**: https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37732302759
- Run ID `37732302759`, job `113163954830`, completed **success**; the final compilation step completed success and run head matched the accepted proof commit.
- Workflow recompiled pinned color, gamma, F1, F2-A, F2-B1, F2-B2a and new F2-B2b via `lake env lean SU2FermionF2B2ImagProbe.lean`.

## Decisive axiom evidence

Verbatim Lean output:

```text
'FCP.BFSSFermionF2B2Imag.majorana1_car_all' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx`, `sorry`, `admit`, or project-specific axiom in this theorem.

## Precisely proved statement

```lean
theorem majorana1_car_all (i j : Fin 24) :
    majorana1 i * majorana1 j + majorana1 j * majorana1 i =
      (if i = j then (1 : ℂ) else 0) • (1 : BFSSOp)
```

`BFSSOp` definitionally abbreviates the exact pinned `OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2`. The source uses the accepted F2-B1 normalized imaginary Majorana diagonal theorem and F2-A all-mode CAR; a scalar-phase zero-preservation lemma is derived, not assumed. This yields the imaginary/imaginary pairwise delta-one canonical anticommutation relation for **every pair of modes**, including distinct pairs.

Gate #49 already established the analogous real/real all-mode CAR. These are two *separate* kernel-accepted relations.

## Unproved claims and next step

**Still missing:** the real/imaginary **mixed** `{majorana0 i, majorana1 j} = 0` identity for all `i,j : Fin 24`, including same mode. Until this is proved, the full 48-Majorana delta-indexed family, `thetaCandidate` CAR, `AlgebraData.theta_CAR`, irreducibility, and `AlgebraData 2` are not established. No BFSS physical positivity, gauge/Spin(9), spectral result, universal theory claim, or FCP program K1–K10 change is justified.

Next recommended bounded gates: mixed off-diagonal pairs, mixed same-mode cancellation, full mixed all-mode closure, full 48-label `thetaCandidate` / upstream `theta_CAR`. F3 separately requires `theta_irreducible` for every invariant submodule.

FCP's source register and BFSS source-first crosswalk remain binding. Restrict work to this FCP research branch, leave `main` and the pinned OpenAI repository untouched, no upstream PR or issue without owner authorization. After submitting a new gate, do not inspect or poll its result until the owner reports GREEN/RED.

**Operating principle:** Protect the quality threshold, not the opportunity.
