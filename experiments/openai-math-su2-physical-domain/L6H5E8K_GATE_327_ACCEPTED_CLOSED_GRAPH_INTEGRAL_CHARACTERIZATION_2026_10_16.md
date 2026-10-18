# H5E8K — original maximal source color Gauss closed-graph gate

**Date**: 2026-10-16. **Branch**:
`research/openai-math-su2-s3l-combined-rotation`.

## Strict acceptance of previous gate #327

[Original Source Spin Identity #327](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38921318682)
(job `117041667959`, commit `78f516dfb6d151c60a6b8b0ed2f54959c64e43c3`)
concluded success with the source
`L6H5E8J_ORIGINAL_COLOR_ORBIT_INTEGRAL_LIPSCHITZ_QUALIFIED`
marker. Both abstract nonexpansive integral Lipschitz and exact
BFSS-source integrated orbit estimate printed only the pinned axiom
allowlist `[propext, Classical.choice, Quot.sound]`, with no
`sorryAx`.

## Closure of the *exact* maximal infinitesimal graph — mathematical architecture

Use accepted H5E8H integral forward characterization and H5E8I
converse, so for `(v,w) : FullL2 2 × FullL2 2`,
`(v,w) ∈ graph A_c ↔ ∀t, ∫_0^t U_c(s)w ds = U_c(t)v-v`.

H5E8J establishes norm Lipschitz dependence of the integral on
`w`, bounded by `|t| · ‖w-z‖`, so the left side is continuous
for each fixed `t`; the right side is continuous in `v`
by the accepted actual source continuous-linear gauge action.
Thus each equality set in product Hilbert space is closed,
and their (possibly uncountable) intersection over all `t`
is closed. This proves graph closedness without sequential
`tendsto` elaboration or Fock expression expansion.

The dedicated H5E8K file formalizes:
(1) an abstract topological closedness lemma,
(2) exact source graph and integral characterization,
(3) concrete Lipschitz-to-continuous bridge,
(4) `IsClosed` of this exact source graph.
Strict CI green for **all five roots**, exact allowlist,
and `L6H5E8K_ORIGINAL_COLOR_GENERATOR_CLOSED_GRAPH_QUALIFIED`
are mandatory. Do not claim H5E8K acceptance before that.

Keep separate: a closed densely-defined **skew-symmetric** maximal
generator does not automatically establish essential skew-adjointness
of its SmoothCore restriction or BFSS spectral statements.
The original physical kernel inclusion remains one-way until a
separate Lie group invariance argument qualifies the converse.
