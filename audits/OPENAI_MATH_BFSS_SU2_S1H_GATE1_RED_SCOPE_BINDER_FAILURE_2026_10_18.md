# S1H source representation uniqueness: Gate #1 first causal failure

**Date:** 2026-10-18 PDT. **Qualification:** S1H Gate #1 **RED**, not mathematical counterexample. Fixed candidate awaits strict Gate #2; do not accept until it finishes.

## Frozen evidence

[Source Gauge Representation Uniqueness #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39140625288) run `39140625288`, job `117714134380`, at frozen HEAD `a95d2352f10e4970b09de763b04a119cf3273859`, final conclusion `failure`. Candidate file `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1HSourceGaugeCovariantImplementerUniquenessProbe.lean` blob `ed02abec2b21daf7638f8b8c4c60cbc3702f3187`.

All upstream source-pinned steps, S1D/S1E/S1F and **eleven S1G exact character roots** compiled and passed their axiom audits. S1G marker `S1G_EXACT_SOURCE_SU2_CHARACTER_TRIVIALITY_11_ROOTS_KERNEL_PASS`. Strict S1H failed at its own new first proof.

## First Lean error and causal analysis

At lines 43,44,46,54,62: `error(lean.unknownIdentifier): Unknown identifier hV`, with a downstream unsolved goal
`relativeGaugeScalar V ⋯ g • fermionGaugeLinearEquiv g v = fermionGaugeLinearEquiv g v`.
`#print axioms` then contains `sorryAx` on each of the three failed S1H declarations. No false claim of qualification is permissible.

This is an **omitted section-variable parameter** problem. The original S1H `variable (hV : ∀ ...)` declared genuine 48-theta covariance, but the resulting equality propositions mention only `V`, not `hV`. Lean auto-omits unused section variables unless explicitly included; thus `hV` was missing within all proof scripts. This is not evidence that the covariant gauge representation equality is false, and it does **not** mean one can drop the hypothesis.

## Minimal candidate repair

Added `include hV` after the explicit section `variable` declaration and before the first S1H theorem, forcing the **unchanged source covariance premise** into all three proofs. No underlying source matrix, 48-theta action, scalar character, theorem result type, Lean tactic proof body, or mathematical convention changed.

Repaired file blob `f4c02e412e06d93841696dc9b36e926ee93c33bb`, source edit `08649492dcff896a68d77f16888adcc977c0186e`. Strict [S1H Gate #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39144318743) launched at source/workflow HEAD `81b052cc9c71e88fba8248ca54ba3b4f87dd3f43` with exact new S1H blob pin and the original accepted S1G/Euler closure. Workflow restored to manual-only afterward.

**Acceptance condition:** Gate #2 complete `success`, S1H importable compiled olean, exactly three declarations printed with only `propext`, `Classical.choice`, `Quot.sound`, and strict marker `S1H_ORIGINAL_SOURCE_SU2_GAUGE_REPRESENTATION_UNIQUENESS_3_ROOTS_KERNEL_PASS`. Until then, this is a pending candidate.

**Nonclaims:** No independent manuscript Cl(48) or Spin(48) module, no independent lift, no unitary manuscript-source module equivalence, no original paper supercharge-domain identification, and no physical spectral theorem is established by this repair. No merge into `main`; draft PR #25 remains under research.
