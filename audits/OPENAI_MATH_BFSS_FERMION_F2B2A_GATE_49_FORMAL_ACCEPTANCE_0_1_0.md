# BFSS fermion Stage F2-B2a — Gate #49 formal acceptance 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC
**Disposition:** `PASS__F2B2A_REAL_MAJORANA_ALL_MODE_CAR_KERNEL_VERIFIED`
**Source-first authority:** Lean 4.34.1 compiler plus axiom report at pinned code. This is a formal result, not a physics or FCP-level classification.

## Exact qualified lineage

- Repository: `etblink/Foundational-Convergence-Program`
- Research branch: `research/openai-math-su2-concrete-potential`
- Accepted source/workflow HEAD: `58d914c9fba383fca69a8442fb1bdcdbc4ae6f38`
- Source: `experiments/openai-math-su2-concrete-potential/SU2FermionF2B2Probe.lean`
- Exact source blob: `128ee450affa00167ceb38011f407349323ff0dd`
- Workflow: `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `56492e58300142b89b03dffe2c587bc473b6cc0d`
- Upstream: `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`
- Lean: `leanprover/lean4:v4.34.1`
- Run: [BFSS SU2 Concrete Color Gate #49](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37731534480), ID `37731534480`, job `113161516309`; exact run head matched accepted commit; run, job and compilation step all `completed/success`.
- F1 and F2-A imported as separate compiled `.olean` dependencies, then F2-B1 compiled to `.olean` at this exact gate, then `lake env lean SU2FermionF2B2Probe.lean` succeeded. No theorem statement weakened.

## Decisive Lean axiom report (verbatim)

```text
'FCP.BFSSFermionF2B2.majorana0_car_all' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or custom axiom. Accepted F1, F2-A, and F2-B1 theorem reports in this same run remain standard-axiom-only.

## Exact proven theorem

```lean
theorem majorana0_car_all (i j : Fin 24) :
    majorana0 i * majorana0 j + majorana0 j * majorana0 i =
      (if i = j then (1 : ℂ) else 0) • (1 : BFSSOp)
```

where `BFSSOp` definitionally abbreviates `OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2`.

For all 24² ordered mode pairs, including identical and distinct modes, the real Majorana components satisfy the exact delta-one anticommutation relation on the *actual pinned BFSS Fermion 2 type*. The diagonal case uses Gate #36's `majorana0_car`; off-diagonal case uses Gate #39's all-mode creation/annihilation CAR and a typed `smul_add` factorization.

## Failed compiler candidates

- Gate #47 RED: implicit zero-scaled identity operators and final scalar factorization both failed.
- Gate #48 RED: fixed the zero-operator witnesses; reverse rewrite `← smul_add` did not match the expression.
- Gate #49 GREEN: explicitly typed scalar `s : ℂ`, products `p q : BFSSOp`, used `(smul_add s p q).symm`, transported the already proved sum-zero fact via `congrArg`, and closed scalar zeros by operator extensionality.

Prior accepted Gate #46 F2-B1 remains authoritative: `audits/OPENAI_MATH_BFSS_FERMION_F2B1_GATE_46_FORMAL_ACCEPTANCE_0_1_0.md`.

## Boundaries and next subgates

F2-B2a proves **real/real pairs only**. It does **not** prove imaginary/imaginary pairs; real/imaginary mixed-mode pairs (including same mode); exact `majoranaCandidate` 48-label CAR; `thetaCandidate` full `OAI.BFSSQuantum.AlgebraData.theta_CAR`; or the required `theta_irreducible` invariant-submodule theorem. Full BFSS `AlgebraData 2`, gauge invariance, spectrum/positivity and universal theory claims remain unproved.

The next prudent subgate is F2-B2b (all-mode imaginary/imaginary CAR). Subsequent F2-B2c: real/imaginary mixed CAR, then F2-B2d: pair-index and exact theta transport. F3 separately requires irreducibility.

No program-level String/M, alternative-framework, or K1–K10 classification changes follow from this bridge result. The repository `SOURCE_REGISTER.md` and `audits/OPENAI_MATH_BFSS_FCP_SOURCE_FIRST_CROSSWALK_0_1_0.md` remain applicable.

## Governance

Stay on research branch only. Do not modify `main`, pinned upstream, reviewer scripts, or submit public upstream issues/PRs without owner authorization. For every new proof gate, submit exactly one candidate and stop without inspecting/polling the new workflow until the human owner reports GREEN or RED.

**Operating maxim:** Protect the quality threshold, not the opportunity.
