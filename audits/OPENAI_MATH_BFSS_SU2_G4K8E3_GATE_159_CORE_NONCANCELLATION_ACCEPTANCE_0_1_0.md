# BFSS SU2 G4-K8E3 — Gate #159 source smooth-core noncancellation acceptance 0.1.0

**Date:** 2026-10-09. **Disposition:** `PASS__SOURCE_MASSLESS_SMOOTH_CORE_NONCANCELLATION`.

## Independently verified pinned compiler evidence

- [BFSS SU2 Concrete Color Gate #159](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38001288623), run `38001288623`, job `114059708674`: **SUCCESS**. The run tested exactly `31849ff72d569d38a18988e62e371c6b6f3e256c`.
- Qualified HEAD tree `4bfd36338dd72d6907812fc0c3162602b1213c61`; parent `0ae3d3bf5947c22222d0ea5c83f50a4e92757313`.
- Exact candidate: `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K8E3CoreNoncancellationProbe.lean`, Git blob `819d6f26f43bdce221482feb0d48b2a62042665a`.
- Pinned Lean `4.34.1`, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Actual final command `lake env lean SU2BFSSG4K8E3CoreNoncancellationProbe.lean` exited successfully. Exactly four `#print axioms` reports identified the four declarations below, each with ONLY `[propext, Classical.choice, Quot.sound]`. No `sorryAx`, `sorry`, `admit`, new assumptions or compiler errors. Incidental dependency-local warnings did not affect kernel acceptance.

## Four accepted declarations

1. `abstractOddEvenSum_ne_zero` (private): for source-typed real smooth-core sections, a nonzero odd term cannot be cancelled identically by an even term. The mathematical proof is generic, and its prerequisites are explicit.
2. `physicalKineticFirstOrder_core_ne_zero`: the **actual** source first-order kinetic charge on `radialBumpSmoothCore` is nonzero as a `SmoothCore 2` section, transported backwards from the previously accepted source `coreToL2` nonvanishing.
3. `physicalInteractingCoreCharge_massless_ne_zero`: for **every** `h : ℝ` and **every** genuine `α : SpinIndex`, the original `pairedAlgebraData.deformedCoreCharge h 0 α radialBumpSmoothCore ≠ 0` as a source `SmoothCore 2` section.
4. `physicalInteractingCoreCharge_one_ne_zero`: the genuine `h=1,m=0` specialization of (3).

The proof specializes the independently qualified Gate #155 even source massless potential and Gate #157 odd source kinetic first-order to the actual pinned `MixedEnergy.firstOrder`, `MixedEnergy.field`, and `pairedAlgebraData.deformedCoreCharge`; it does not replace the original physical operator.

## Strictly unproved boundaries

A nonzero source `SmoothCore 2` value does not, merely by rewriting, show its `coreToL2` equivalence class is nonzero. This acceptance **does not** establish `coreToL2 (pairedAlgebraData.deformedCoreCharge 1 0 α radialBumpSmoothCore) ≠ 0`, strict positive `physicalDeformedEnergy 1 0`, positive normalized Rayleigh quotient at `h=1`, an energy spectral lower bound, eigenstate, vacuum, ground state, or a BFSS mass gap. In particular, this does not resolve any assertion about a global energy infimum.

## Next qualified scope

Open G4-K8E4 **only as a separate source-faithful continuity/full-support bridge**. Derive, with the pinned actual bosonic measure and types, nonzero `coreToL2` image for a nonzero continuous source smooth-core section; then apply to the accepted `h=1,m=0` charge and, only after successful compilation, to the exact positivity equivalence. Every new theorem must have its own axiom printout. Preserve the #159 theorem identity. CI caching experiments must keep an independent pinned cold compile available and cannot redefine a proof result.
