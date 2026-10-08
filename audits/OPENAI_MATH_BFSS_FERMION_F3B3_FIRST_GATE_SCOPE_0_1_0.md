# BFSS fermions F3-B3 — transported occupation-projector algebra first gate 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC  
**Status:** `F3B3_COMPILER_CANDIDATE__NO_KERNEL_ACCEPTANCE`  
**Branch:** `research/openai-math-su2-concrete-potential`.

## Accepted predecessor

F3-B2 at Gate #62 (run `37743214839`, job `113198535251`, source commit `73d626b29367c7b227c4ffc0dae9fc3efa01c0ee`) is independently kernel verified and formally recorded in `audits/OPENAI_MATH_BFSS_FERMION_F3B2_GATE_62_FORMAL_ACCEPTANCE_0_1_0.md`.

F3-B2 proved the exact `occupiedMode` / `vacantMode` action on all transported `occupationKet A` vectors. The operators are not merely speculative diagonal projectors, but arbitrary-vector projector algebra still requires independent proof.

## Bounded new obligations

Prove, for exact BFSS operators at all `i j : Fin 24`:

1. `occupiedMode i * occupiedMode i = occupiedMode i`.
2. `occupiedMode i * occupiedMode j = occupiedMode j * occupiedMode i`.

Use the actual `OAI.ContinuumCoulomb.HubbardGlobal.number_idempotent` and `number_commute` from pinned `lean/OAI/MathematicalPhysics/ContinuumCoulomb/ManyBody/HubbardGlobal.lean`, and the accepted F1 `fockOperator` / `onBFSS` multiplicative transport. The F3-B2 identity `occupiedMode_as_fockNumber` identifies the exact operators.

Neither theorem assumes irreducibility, full span of occupationKet, coordinate isolation, or product-projector identities. These remain future gates.

## Source/claim controls

Consult `SOURCE_REGISTER.md`, `audits/OPENAI_MATH_BFSS_FCP_SOURCE_FIRST_CROSSWALK_0_1_0.md`, and the accepted F3-A2/B1/B2 audits for the boundary between source context and formal proof. Upstream is pinned to `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`.

Qualification requires exact-HEAD GREEN successful compilation of the new file, and standard-only `#print axioms` results. No `sorry`, `admit`, custom axioms or theorem weakening. Preserve FCP `main`, pinned upstream, reviewer scripts, and accepted scientific classifications. Submit one candidate then stop; do not poll or inspect the new workflow until the owner reports GREEN/RED.
