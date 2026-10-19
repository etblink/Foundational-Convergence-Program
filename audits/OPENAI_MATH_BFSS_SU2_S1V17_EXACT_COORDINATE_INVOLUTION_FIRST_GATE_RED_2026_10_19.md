# S1V17 first gate — exact source-coordinate flip RED and focused repair

**Date:** 2026-10-19 PDT.  
**Strict gate:** [#39266677938 RED](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39266677938), job `118107949369`.  
**Original source blob:** `3a55f40939aee9fd2d76e7d075ebd0f79942030e`, `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V17QuarterFlipLiteralCoordinateAndInvolutionProbe.lean`.  
**Disposition:** `UNQUALIFIED__PINNED_LEAN_ETA_AND_COORDINATE_ZERO_SIMPLIFICATION_ERRORS__NO_COUNTEREXAMPLE`.

All predecessor original-sized S1V0/V1/V4/V5/V6/V8/V9/V10/V11/V12/V14/V15/V16 source geometry and Spin48 proofs compiled cleanly on the exact Lean 4.34.1 / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` pin.

The first S1V17 compiler errors were:

1. Line 50 in `source48QuarterFlip_apply_label`: after `sourceBlockColorAxis_other p (α,A) hp`, the simplifier did not reduce `(α,A).1` and `(α,A).2` to `α,A` inside a Q-coordinate zero hypothesis. It left a disjunction `v(sourceBlockColorLabel p.1 2)=0 ∨ sourceBlockColorAxis p.1 2 (sourceBlockColorLabel α A)=0`. The second disjunct is true by S1V5's previously accepted `sourceBlockColorAxis_other`. Correct repair: first `simpa only [Prod.fst,Prod.snd]` to establish the exact coordinate-zero hypothesis `hz'`, then split by color 2 and simplify using `hz'`.
2. Line 83 in `source48QuarterFlip_apply`: `simpa only [sourceBlockColorLabel,Equiv.apply_symm_apply]` did not simplify a `sourceBlockColorEquiv ((sourceBlockColorEquiv.symm i).1,(sourceBlockColorEquiv.symm i).2)` expression to `i`; this is the same product η-expansion issue seen in S1V16. Correct repair: use an explicit `change` with `sourceBlockColorEquiv (sourceBlockColorEquiv.symm i)`, then `simpa only [Equiv.apply_symm_apply]`.

All three S1V17 roots were reported with `sorryAx` after failed elaboration, so none may be accepted from Gate #1. The exact mathematical statements are unchanged by the narrow repair, source Git blob `b85f396115326b5b323bbc92e0daa40b89645dea`. A single scoped [Gate #39267648356](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39267648356) has been launched. Accept only if all three roots are printed with permitted `[propext,Classical.choice,Quot.sound]`, a nonempty fresh `.olean`, and the complete gate green.

This is an **isolated** research-branch workflow; no active PR25 or main modifications. The typed original 48×48 gauge-matrix bridge, original G1A source import chain, and global continuous SU2→Spin48 lift remain OPEN.
