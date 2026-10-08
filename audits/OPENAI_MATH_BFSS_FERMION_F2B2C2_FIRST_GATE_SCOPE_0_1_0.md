# BFSS fermions Stage F2-B2c2 — same-mode mixed Majorana CAR first gate scope 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC
**Status:** `F2B2C2_COMPILER_CANDIDATE__NO_KERNEL_ACCEPTANCE`
**Research branch:** `research/openai-math-su2-concrete-potential`
**Pinned OpenAI:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; **Lean:** `v4.34.1`.
**Accepted predecessor F2-B2c1:** Gate #51 run `37732986481`, job `113166112742`, source/workflow commit `c1da8c774e4aab98b9e1291261060a6445bc4b3c`, standard axioms only; permanent record in `audits/OPENAI_MATH_BFSS_FERMION_F2B2C1_GATE_51_FORMAL_ACCEPTANCE_0_1_0.md`.

## Target, no implicit upgrading

The source `experiments/openai-math-su2-concrete-potential/SU2FermionF2B2MixedDiagProbe.lean` contains:

```lean
theorem majorana01_car_self (i : Fin 24) :
    majorana0 i * majorana1 i + majorana1 i * majorana0 i =
      (0 : BFSSOp)
```

The operator space `BFSSOp` is definitionally the pinned `OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2`. This is the **equal-mode** mixed Majorana CAR only. The proof expresses the imaginary Majorana as a normalized `Complex.I • (creator i - annihilator i)`, uses accepted `creator_sq` and `annihilator_sq` to prove the unphased zero anticommutator, transports the scalar phase through operator composition, and handles the exact real normalization with typed `smul_add` and extensionality. No custom axioms.

**Gate acceptance:** A new exact-head GitHub Actions run must include compilation of the new file using Lean 4.34.1 with pinned OpenAI math. It must complete green, report `#print axioms majorana01_car_self` with `[propext, Classical.choice, Quot.sound]` or subset only, and no `sorryAx`.

**Still unproved after this candidate until later kernel acceptance:** full all-mode mixed theorem combining F2-B2c1 and c2, full 48-indexed `majoranaCandidate`/`thetaCandidate` `theta_CAR`, F3 irreducibility, and complete `AlgebraData 2`. No Hamiltonian, gauge/Spin(9), BFSS positivity, spectral conclusions, or FCP program K1–K10 change.

**Governance:** Research branch only, no changes to main, pinned OpenAI, independent reviewer scripts or upstream public channels. Stop after gate submission, do not inspect/poll the next gate until the owner reports GREEN or RED.
