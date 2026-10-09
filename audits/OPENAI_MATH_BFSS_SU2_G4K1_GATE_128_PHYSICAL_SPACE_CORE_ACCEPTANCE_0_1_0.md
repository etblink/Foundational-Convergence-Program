# BFSS SU(2) Gate #128 — physical space/core qualification 0.1.0

**Date:** 2026-10-08 America/Los_Angeles; GitHub Actions evidence 2026-10-09 UTC.
**Disposition:** `PASS__CONCRETE_GAUSS_SPACE_CLOSED_AND_CORE_EQUIVARIANT`

## Verification

- Branch `research/openai-math-su2-concrete-potential`
- Qualified commit `c0b1ddfb671ae5f53ab28e29eb53086a75beb8de`.
- Source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K1PhysicalSpaceCoreProbe.lean`, blob `e3a0c4314c8b2309622ee021c12624eddc610006`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `d44149a67c7d184337366040bcdbdf51d0bfeff2`.
- [Actions Gate #128](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37890191040), run `37890191040`, job `113689140617`, SUCCESS at exact qualifying commit.
- Pinned Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Real `lake env lean SU2BFSSG4K1PhysicalSpaceCoreProbe.lean` finished successfully.
- `#print axioms` for `pairedPhysicalSpace`, `pairedPhysicalSpace_closed`, `pairedInvariantCore_equivariant`, `pairedInvariantCore_norm_gauge`: all exactly `[propext, Classical.choice, Quot.sound]` with no `sorryAx`.

## Meaning

Specializes already proved upstream `GaugeData.physicalSpace`, `physicalSpace_closed`, `invariantCore_equivariant`, and `invariantCore_norm_gauge` to the new exact G4-J `pairedGaugeData` for genuine BFSS SU(2), in `FullL2 2`. The physical submodule is closed; *sections that are already invariant-core members* are pointwise equivariant and norm-invariant along the actual gauge orbit.

**This does not show any nonzero smooth invariant-core member exists, nor does it show `physicalSpace ≠ ⊥`.** Zero is always a closed submodule. The upstream structure alone is not a nonzero physical-state witness. No Hamiltonian bound state, energy spectrum, physical dynamics, or empirical prediction is established.

## Scientific continuation

G4-K2A is the necessary source-bound algebraic part of an actual nonzero Gauss-state construction: prove the transported fermion Fock vacuum is nonzero and fixed under the literal G4-E group action, and any radial scalar coefficient times this vacuum satisfies pointwise equivariance for G2-A boson and G4-E fermion. Even if K2A is successful, nonzero L² membership remains open. Later select a continuous compactly supported radial `φ(‖x‖)` with `φ(0)=1`, prove actual `MemLp 2`, `toLp` nonzero using full support/continuity and measure theory, and prove `pairedGaugeData.physicalSpace` membership via the *exact* pullback/fiber equation for all gauges. A pointwise nonzero but nonnormalizable field cannot qualify.

No unapproved axioms, changes to main, upstream PRs, or premature claims.
