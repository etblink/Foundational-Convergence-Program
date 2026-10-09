# BFSS SU2 G4-K8E1 Gate #155 parity acceptance 0.1.0

**Date:** 2026-10-09. **Disposition:** `PASS__SOURCE_MASSLESS_INTERACTION_PARITY`.

## Independently verified provenance and compiler gate

- GitHub [BFSS SU2 Concrete Color Gate #155](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37990328613) completed SUCCESS, run `37990328613`, job `114022530263`, success.
- Exact qualified head: `abafed10947b9145c9558b4bd896aa0839876abd`. Parent: `5ce149af03e8856d9525ef27b1dbda7f365d3d1a`.
- Tree: `5b8ea79ca83e53647790529a0a7482fded5f90b6`.
- Source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K8E1MasslessPotentialParityProbe.lean` blob `12b85a0d3e6b09f6a166a5fa12ce693ec1e8415c`.
- Pinned Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- The actual workflow ran `lake env lean SU2BFSSG4K8E1MasslessPotentialParityProbe.lean` successfully. All FOUR public parity declarations printed axioms exactly `[propext, Classical.choice, Quot.sound]` with no `sorryAx`. One nonblocking unused-simp warning.

## Accepted exact claims

On the original, nonzero, smooth, true SU(2) physical Gauss-invariant `radialBumpSmoothCore` (same 24-orbital, 48-Majorana BFSS N=2 state), its parity is `ψ(-x)=ψ(x)`.

For EVERY real h and every source spin α at m=0, the original massless potential field `pairedAlgebraData.deformedRealField h 0 α` is even. This follows from the source `deformedRealField_polarized` and an opaque interface lemma that uses bilinearity of the actual `bracketBilinear`.

The source multiplication applied to our state, and the actual `MixedEnergy.field` smooth-core section, are both even at zero mass. NO alternative energy operator, potential, state or axiom was postulated.

## What is NOT accepted

- The source kinetic charge was not yet proved odd.
- No result establishes `physicalDeformedEnergy 1 0 > 0` specifically.
- Gate #149's alternative `E(1,0)>0 ∨ E(2,0)>0` remains separately accepted, and Gate #147's kinetic L² nonzero is separately accepted.
- There is no spectral bound, ground-state assertion, gap, global energy infimum, or full interacting BFSS spectral result.

## Next prospective stage

G4-K8E2 attempts to derive the anti-parity of the ACTUAL source kinetic first-order core section by differentiating the even physical state and using `MixedEnergy.delta_apply` and `firstOrder_apply`. Generic helper lemmas keep concrete operators opaque. Candidate is UNCOMPILED until the next Actions result. No branch merge, dependency change, or upstream effects.
