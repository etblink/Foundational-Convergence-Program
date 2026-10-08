# BFSS SU(2) F5-G2 — Gate #85 formal acceptance 0.1.0

**Date:** 2026-10-08  
**Disposition:** `PASS__CONCRETE_CLIFFORD_AVERAGE_AND_SINGLE_COLOR_FLAT_POTENTIAL_KERNEL_VERIFIED`

## Exact accepted source and compiler

- Research branch: `research/openai-math-su2-concrete-potential`.
- Qualified source commit: `4a5e1534bbe1c67b12ce17f0398bd68cc8432871`.
- Source `experiments/openai-math-su2-concrete-potential/SU2BFSSPotentialAverageFlatProbe.lean`, Git blob `c2e2c077c32ce725b2a3d93edf741d517f736dc2`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `f3f54bfd48384498340ec8bf7c14121c82b4acc9`.
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1.
- [Gate #85](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37771564834), run `37771564834`, job `113292158288`: matching head, run/job compile step successful, log shows successful `lake env lean SU2BFSSPotentialAverageFlatProbe.lean`.

## Exact kernel axiom footprint

```text
'FCP.BFSSSU2PotentialF5G2.concrete_potential_average_wedge' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2PotentialF5G2.concrete_potential_zero_of_single_color' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2PotentialF5G2.concrete_potential_average_zero_of_single_color' depends on axioms: [propext, Classical.choice, Quot.sound]
```

(The last two lines are wrapped in GitHub log but include exactly the same three axioms.) No `sorryAx`, new axioms or errors.

## Precisely verified mathematical result

For the accepted concrete `OAI.BFSSQuantum.AlgebraData 2`, the actual `AlgebraData.deformed_potential_average 1 0` upstream theorem instantiates with its exact coefficient `1/16` and Gate #83's concrete quartic SU(2) wedge-square formula, for every `x : Boson 2` and `z : Fermion 2`.

If all `x (i,a)` with `a ≠ (0 : Fin 3)` vanish (for every spatial coordinate `i`), then:
1. `concreteAlgebraData.deformedBosonicPotential 1 0 x = 0`; and
2. the `1/16` average over all 16 spin labels of squared norms `‖concreteAlgebraData.deformedPotentialMultiplier 1 0 x α z‖²` vanishes for every fermionic vector `z`.

Gate #84 failed on Lean's numeric type-class inference for `ColorIndex 2`. Gate #85's repair annotated exact `Fin 3` color labels without relaxing any hypothesis or conclusion.

## Scope boundaries and scientific significance

- The single-color condition is a mathematically genuine flat-sector criterion for the **classical massless quartic bosonic potential**. This gate has not proved existence of an unbounded flat sequence, global noncoercivity, the total Hamiltonian's positivity or the quantum spectrum.
- The upstream `deformedPotentialMultiplier` is **not interchangeable** with the fermionic linear Hamiltonian coupling `B(x)` of the manuscript. A separate lemma could derive vanishing of each individual multiplier from nonnegative summands; this would still not settle the quantum transverse oscillator/confinement estimates.
- FCP Family270B/T6 model-level strengthening is unchanged and K1–K10 flags stay NO. No FCP `main`, upstream `openai/math`, public PR or issue changes.
- Do not claim a positive spectral gap or infinitely many eigenstates from this finite algebra.

## Next bounded candidate

F5-G3 can use the exact accepted `1/16` averaged square identity and `Finset.sum_eq_zero_iff_of_nonneg` to prove **each individual** `deformedPotentialMultiplier 1 0 x α` vanishes as a continuous linear operator whenever the single-color hypothesis holds. This supplies a useful exact zero-locus fact and should be a single, bounded Lean gate. It does not prove or falsify the manuscript's quantum confinement theorem.

After that, prioritize source-first gauge/physical-representation and analytic review over generating further elementary color gates. Stop after sending each new compiler candidate until the human owner reports GREEN/RED.

**Project maxim:** protect the quality threshold, not the opportunity.
