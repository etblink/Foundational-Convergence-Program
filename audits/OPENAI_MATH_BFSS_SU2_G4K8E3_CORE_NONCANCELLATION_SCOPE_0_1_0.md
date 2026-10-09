# BFSS SU2 G4-K8E3 — source interacting CORE noncancellation scope 0.1.0

**Status:** `UNCOMPILED_CANDIDATE`. Research branch only. **Date:** 2026-10-09.

## Prerequisites (compiled)
- Gate #147: every genuine source first-order kinetic charge image on the original smooth physical radial test state is nonzero in source `coreToL2`.
- Gate #155: original state and original massless potential smooth-core source fields are even at ALL real h, m=0.
- Gate #157: original first-order kinetic core fields are odd for each source spin α.

## Exact candidate claims
1. In an abstract real vector-valued `SmoothCore 2`, if k is odd, v is even, k≠0, then k+v≠0 (pointwise parity separation). Do not unfold source operators in abstract proof.
2. Source L² nonzero from Gate #147 implies original source kinetic smooth-core nonzero by the actual `coreToL2` linear map's `map_zero`.
3. Use the actual `pairedAlgebraData.deformedCoreCharge` source definition, not an alternative operator, to prove the complete interacting source charge on original `radialBumpSmoothCore` is nonzero AS A SMOOTH-CORE SECTION at m=0 for every h and α.
4. Specialize to h=1,m=0 for every α; print axioms for the four declarations.

## Explicit limitation and next target
`deformedCoreCharge h 0 α ψ ≠ 0` in SmoothCore does not *by itself* formally prove `coreToL2 (deformedCoreCharge h 0 α ψ) ≠ 0`. Transferring pointwise nonzero to nonzero L² requires the original continuous smooth-core embedding into L² to be injective for Lebesgue volume, or an equivalent supported lemma. That separate step is NOT part of this probe. Strict `physicalDeformedEnergy 1 0 > 0`, normalized trial quotient and spectral gap remain unproved.

Accept only pinned Lean 4.34.1/OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`/Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` compilation of exact source SHA with all printed axioms only `[propext, Classical.choice, Quot.sound]`, no `sorryAx`, no surrogate definitions, omitted hypotheses, or changed source. The candidate is NOT compiled locally. Stop after CAS branch push; do not inspect the next workflow before owner's color report.
