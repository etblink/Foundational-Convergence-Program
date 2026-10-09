# BFSS SU2 G4-K8E4 — exact source SmoothCore-to-L² bridge scope 0.1.0

**Status:** `AUTHORIZED_TO_RESEARCH__UNCOMPILED`. **Date:** 2026-10-09.
**Parent acceptance:** G4-K8E3 Gate #159 / commit `31849ff72d569d38a18988e62e371c6b6f3e256c` / run `38001288623`.

## Objective and exact uncertainty

The original `pairedAlgebraData.deformedCoreCharge h 0 α radialBumpSmoothCore` has been proved **nonzero pointwise as a smooth-core section** for every real h and genuine spin α. The next scientific question is whether the *same source-defined section* has nonzero `coreToL2` image (not a surrogate smooth section, nor a changed operator).

Prove the relevant `coreToL2` injectivity / trivial-kernel bridge from actual continuity and full support of the original Lebesgue bosonic volume measure, or from an exact pinned equivalent Mathlib lemma. Source smooth-core sections carry actual topology and underlying `Boson 2` types; do not import a made-up full-support axiom or any external physical assumption.

## Bounded proof sequence

1. Inspect original upstream `SmoothCore 2`, `FullL2`, `coreToL2`, bosonic volume, and embedding definitions, and locate the pinned Mathlib full-support/continuous-a.e. extensionality API. Document the exact hypotheses, rather than silently assuming injectivity.
2. Establish a bounded source-typed lemma: a continuous `SmoothCore 2` section whose `coreToL2` image is zero is the zero section (or the target-specific counterpart). Discharge measure-support and AE conditions with actual source constructions. Require kernel-only axioms and no `sorryAx`.
3. Apply this lemma to Gate #159's original `pairedAlgebraData.deformedCoreCharge 1 0 α radialBumpSmoothCore` for at least one (preferably every) actual `α : SpinIndex` to establish L² nonzero for the original interacting charge.
4. Only *after* (3) compiles, invoke previously accepted `physicalDeformedEnergy_pos_iff` to show `0 < physicalDeformedEnergy 1 0`. If source theorem permits, separately prove positivity of normalized trial Rayleigh quotient for this particular explicit physical state.
5. Print axiom dependencies of each new declaration. Accept only exact pinned Lean `4.34.1`, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Constraints and stop conditions

- No surrogate potential, Hamiltonian, gauge state, measure, spin labels, charge definitions or added physical assumptions.
- Do not unfold massive concrete source fields or smoothness certificates when an abstract interface can carry exact hypotheses.
- Do not conflate smooth-core nonzero, L² nonzero, strict positive trial energy, global spectral lower bound, ground-state existence or gap.
- If the full-support bridge cannot be justified from pinned sources, preserve that as an honest blocker. Do not promise the specific `h=1` strict positivity in advance.
- No main merge or upstream PR in this scope. CI-caching qualification is infrastructure only; cold reproduction must remain available.
