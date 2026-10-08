# BFSS SU(2) F5-G3 — Gate #86 formal acceptance 0.1.0

**Date:** 2026-10-08  
**Disposition:** `PASS__EACH_EXACT_CLIFFORD_POTENTIAL_MULTIPLIER_ZERO_ON_SINGLE_COLOR_KERNEL_VERIFIED`

## Immutable compiler evidence

- Branch: `research/openai-math-su2-concrete-potential`.
- Accepted source HEAD: `53c934b9aaf496ecfa9ebdd03906ca9b603786c7`.
- Proof source: `experiments/openai-math-su2-concrete-potential/SU2BFSSSingleColorMultiplierZeroProbe.lean`, blob `b67f47f1a5a08c242a3ff58c5b73b4950986c6c9`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `7b58a6baaf3c5bd1e6eec70eac243629fec819f3`.
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1.
- [Gate #86](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37772828330): run `37772828330`, job `113296338379`, exact matching head; run, job and compile step `completed/success`; successful `lake env lean SU2BFSSSingleColorMultiplierZeroProbe.lean`.

## Kernel axiom reports

```text
'FCP.BFSSSU2PotentialF5G3.concrete_multiplier_apply_zero_of_single_color' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2PotentialF5G3.concrete_multiplier_zero_of_single_color' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The reports are wrapped across lines in the job log; all three names are exact, with no `sorryAx` or custom axioms.

## Exact mathematical theorem

Under `hx : ∀ i : SpaceIndex, ∀ a : ColorIndex 2, a ≠ (0 : Fin 3) → x (i,a) = 0`, for every `α : SpinIndex` and every `z : Fermion 2`:
```lean
concreteAlgebraData.deformedPotentialMultiplier 1 0 x α z = 0
```
and, more strongly, as an equality of actual complex continuous linear operators:
```lean
concreteAlgebraData.deformedPotentialMultiplier 1 0 x α = 0
```

The proof correctly uses Gate #85's exact normalized `1/16` average of squared norm terms and `Finset.sum_eq_zero_iff_of_nonneg` to isolate each term, then uses extensionality. This is a conclusion for the **upstream Clifford-potential multiplier**, not the full bosonic/fermionic Hamiltonian or its entire supercharge, not a zero-spectrum or mass-gap statement.

## Scientific limits and closure of the elementary F5 sequence

Gate #82 verified a complete finite-dimensional `AlgebraData 2` witness; #83 verified exact potential wedge form and pointwise nonnegativity; #85 verified a single-color flat sector and the averaged potential identity; #86 now upgrades to individual multiplier operator vanishing. These facts are all within the same explicit pinned BFSS algebraic model.

Do **not** infer failure of the source manuscript's positive-eigenvalue theorem, confinement on high-weight symmetry sectors, or a statement about the fermionic linear `B(x)` term. The positive-eigenvalue theorem and gauge action are different, unformalized stages. FCP original T6 confirmed model-level strengthening, all K1–K10 change flags NO, continue unchanged. No upstream `openai/math`, FCP `main`, or public PR/issue mutations.

**Project Lead next-step decision:** Stop adding elementary single-color proofs simply to produce more green gates. Perform source-first GaugeData and physical-sector compatibility assessment, especially whether the chosen 48-index `thetaLabelEquiv` respects the manuscript's color-preserving complex annihilator pairing. This audit has no new CI gate until an exact meaningful target and resources are established.

**Operating principle:** discover what is true, not accumulate green checks.
