# BFSS fermions F2-B2d1 — exact Fin24 × Fin2 Majorana CAR first gate scope 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC
**Status:** `F2B2D1_COMPILER_CANDIDATE__NO_KERNEL_ACCEPTANCE`
**Research branch:** `research/openai-math-su2-concrete-potential`
**Pinned source:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; **Lean:** `leanprover/lean4:v4.34.1`.

Accepted predecessors: real/real all-mode CAR Gate #49, imaginary/imaginary all-mode CAR Gate #50, mixed all-mode CAR Gate #55 (run `37735830932`, job `113174993628`, accepted proof HEAD `c7cc8adf409e47d1767d421205d1094a4de9dd2e`), all standard Lean axioms only. Gate #55 acceptance record at `audits/OPENAI_MATH_BFSS_FERMION_F2B2C3_GATE_55_FORMAL_ACCEPTANCE_0_1_0.md`.

## New source/theorem

File: `experiments/openai-math-su2-concrete-potential/SU2FermionF2B2IndexedProbe.lean`.

```lean
theorem majoranaCandidate_car (p q : Fin 24 × Fin 2) :
    majoranaCandidate p * majoranaCandidate q +
      majoranaCandidate q * majoranaCandidate p =
        (if p = q then (1 : ℂ) else 0) • (1 : BFSSOp)
```

Here `majoranaCandidate` is the **existing**, unmodified Gate #39 family: second component 0 means `majorana0`; component 1 means `majorana1`. `BFSSOp` is exactly the pinned `OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2`. This proof splits the two `Fin 2` components, applies the independently accepted real/real, imaginary/imaginary or mixed CAR, and discharges the pair-equality test via `Prod.ext` and finite-index arithmetic; no additional model-level assumptions.

**Qualification:** A separate completed green workflow at exact new source/workflow HEAD, including `lake env lean SU2FermionF2B2IndexedProbe.lean`, and `#print axioms majoranaCandidate_car` listing exclusively `[propext, Classical.choice, Quot.sound]` or subset, no `sorryAx`. New source remains unverified until this gate reports success.

**Explicit nonclaims:** Pullback through `thetaLabelEquiv` to establish the exact upstream `thetaCandidate` / `AlgebraData.theta_CAR` field, irreducibility for invariant complex submodules, a complete `AlgebraData 2`, any gauge/Spin(9) statement, spectral/positivity theorem, and program-level K1–K10 classifications remain unproved.

**Governance:** Research branch only; no changes to `main`, pinned OpenAI source, reviewers, or public upstream issues/PRs. Submit one candidate and **do not inspect or poll** its newly triggered gate until the owner reports GREEN or RED.
