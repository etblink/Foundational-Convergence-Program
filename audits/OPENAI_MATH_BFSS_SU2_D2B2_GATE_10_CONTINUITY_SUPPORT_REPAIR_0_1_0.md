# BFSS SU2 D2B2 — Gate #10 continuity/support repair 0.1.0

**Date:** 2026-10-09 Pacific / 2026-10-10 UTC. **Disposition:** `GATE_10_RED__D2B2_NOT_QUALIFIED`. New candidate repair is `UNCOMPILED`, subject to the next pinned Actions gate.

## Exact inspected evidence

[BFSS SU2 Physical Domain Bridge #10](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38018301835), run ID `38018301835`, job `114113439884`, tested commit `3b322a7dc60f2cdd5d84dc8b02935e6b49a9b6f3`, prospective D2B2 blob `0bddbfc7af606877efa3b9128c6acf9a8098d1a4`. Original pinned dependency/source checks, exact G4-K10A cache, accepted D1/D3A/D3B/D2A/D2B1 modules and all prerequisite axiom checks succeeded.

- `sourceHaarIntegrand_jointContinuous` compiled with precisely `[propext, Classical.choice, Quot.sound]`.
- `sourceHaarAverageRaw_continuous` failed at line 48 with a type mismatch: the pinned Mathlib parametric integral theorem was elaborated with `PseudoMetricSpace.toUniformSpace.toTopologicalSpace` on the `PiLp` fermion bundle, whereas the original BFSS `Fermion 2` continuous target uses `PiLp.topologicalSpace` explicitly. These are the same intended norm/product topology but have distinct elaborated instance terms; the previous `simp only` did not normalize them. Repair candidate unfolds `PiLp.topologicalSpace` and `PiLp.uniformSpace` under `simpa`. This is a prospective normalization attempt, **not proof of equivalence until compiled**.
- `sourceHaarAverageRaw_hasCompactSupport` failed at line 84 because the optimizer normalized `G.boson g⁻¹` into `(G.boson g).symm` and `simp [sourceHaarAverageRaw, hvanish]` did not rewrite the integral to zero. An additional parse error at line 86 came from `exact (by ...) heq`. Repair candidate instead gives an explicit pointwise zero function equality by function extensionality, rewrites the integral's integrand to zero, and discharges the support contradiction by applying `Function.mem_support.mp hx` to the proven zero equality.
- Both previously failing public D2B2 theorem reports contained `sorryAx`; therefore **neither is qualified**. Their theorem statements and the exact supported `sourceHaarAverageRaw` object remain unchanged.

## Guardrails and next checkpoint

Only the new D2B2 leaf proof script and this audit have changed; the frozen qualified D1, D3A, D3B, D2A and D2B1 source files, pinned Lean/OpenAI Math/Mathlib source, and original accepted G4-K10A cache key are unchanged. The dedicated bridge workflow must compile all three exact D2B2 theorems with axiom subsets of `propext`, `Classical.choice`, `Quot.sound` and no `sorryAx`. Any new red gate must be diagnosed from the actual compiler output; do not add physical assumptions or alter the claim.

Even a green D2B2 will prove only joint continuity, continuity and compact support of the source Haar average. Infinite smoothness, the physical invariant SmoothCore construction, Haar norm contraction and actual `coreNormClosure = physicalSpace` are still open. No self-adjoint Hamiltonian/spectral or experimental BFSS promotion and no upstream PR/main merge.
