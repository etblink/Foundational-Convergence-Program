# BFSS fermions F3-C2 — exact pinned upstream theta fields first gate scope 0.1.0

**Date:** 2026-10-08. **Status:** `F3C2_SUBMITTED_NOT_COMPILER_VERIFIED`.

## Formal authority and target

Research branch `research/openai-math-su2-concrete-potential`. Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1. Exact upstream BFSS `AlgebraData (N : ℕ)` from `lean/OAI/MathematicalPhysics/BFSS/Core.lean`, blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, lines 35–40, requires `theta`, `theta_selfAdjoint`, `theta_CAR`, `theta_irreducible` with explicit `SpinIndex`, `ColorIndex N`, `Fermion N` types.

Gate #77 was kernel-verified (run `37762018293`, job `113260483045`, source HEAD `32fd8be203d75a83c86a8f6834800580bf82b166`), axiom footprint only `[propext, Classical.choice, Quot.sound]` for `thetaInvariant_bot_or_top`. Previous F2 theorem `thetaCandidate_selfAdjoint` and F2-B2d2 theorem `thetaCandidate_CAR` were also separately kernel-verified.

## Bounded proof targets

Compile three standalone Lean declarations which exactly mirror (for `N=2` and `theta := FCP.BFSSFermionF2.thetaCandidate`) the `theta_selfAdjoint`, `theta_CAR`, and `theta_irreducible` fields of pinned `AlgebraData 2`.

- `thetaCandidate_upstream_selfAdjoint`: exact theta field signature.
- `thetaCandidate_upstream_CAR`: exact CAR scalar/sign/operator normalization.
- `thetaCandidate_upstream_irreducible`: exact zero-or-whole invariant-submodule declaration.

Prove all three directly from accepted F2, F2-B2d2, and F3-C1 results. Preserve original `Fermion 2` and `thetaCandidate` definitions, all 24 modes and 48 Majoranas. Print axioms for all three and demand standard-only `[propext, Classical.choice, Quot.sound]`. No custom axioms, `sorry`, `admit`, weakening or kernel budget increase.

## Scope limits

**These are field-level proofs, not a complete `AlgebraData 2` witness.** The color and gamma fields and their identities still require separately qualified construction/integration. No spectral gap, positivity, universal physics result, FCP classification changes, upstream or `main` writes. Submit one gate candidate and STOP until owner reports GREEN/RED.
