# S1V52L9B4 → native source Pauli adjoint: exact nine-coefficient bridge scoping

**Status:** Independent finite algebra check only; **NOT** a new Lean qualification. L9B4's separate strict Gate #1 [run #39516147833](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39516147833) must independently pass all three source Clifford conjugation roots before any acceptance claim. This document is an epistemic boundary and next-proof guide, not a CI verdict.

## Original source definitions, no substitutions

- Original BFSS native `GaugeGroup 2` at pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `OAI.MathematicalPhysics.BFSS.GaugeCore`, defines `M.adjointCoefficient g A B = (Matrix.trace (M.color B * (g * M.color A * g.conjTranspose))).re`; output color is B, input color is A.
- Source `FCP.BFSSSU2GaugeG1A.pairedAlgebraData.color A = FCP.BFSSSU2.normalizedPauli A`; `FCP.BFSSSU2.normalizedPauli A = (pauliScale : ℂ) • pauli A` and `pauliScale ^ 2 = 1/2`.
- The literal color basis is ordered `(σx,σy,σz)`, with `σx=[[0,1],[1,0]]`, `σy=[[0,-i],[i,0]]`, `σz=[[1,0],[0,-1]]`.
- Exact original native quaternion extraction `p=originalNativeQuaternionCoords g=(a,b,c,d)`. Strictly accepted `originalNativeQuaternion_matrix_reconstruction` gives the *original* SU2 matrix
  ```
  g = [[a+i*b, c+i*d],
       [-c+i*d, a-i*b]].
  ```
- Strictly accepted G3A `adjointColorMatrix g B A = pairedAlgebraData.adjointCoefficient g A B`. Check color order as B (row/output), A (column/input).

## Independently verified 3×3 real polynomial matrix

A symbolic expansion of `tr(σ_B * g * σ_A * gᴴ) / 2` in real a,b,c,d (with conjugation, `i²=-1`, no use of norm-one assumptions) gives:

```
R(p) = [
  [ a²-b²-c²+d²,  2ab+2cd,        -2ac+2bd ],
  [ -2ab+2cd,     a²-b²+c²-d²,     2ad+2bc ],
  [ 2ac+2bd,      -2ad+2bc,        a²+b²-c²-d² ]
].
```

This is the exact matrix of the original-source quaternion Clifford conjugation formulas STAGED in L9B4:

```
qα(p) * Eα0 * star(qα(p)) =
  R(p)[0,0]·Eα0 + R(p)[1,0]·Eα1 + R(p)[2,0]·Eα2
qα(p) * Eα1 * star(qα(p)) =
  R(p)[0,1]·Eα0 + R(p)[1,1]·Eα1 + R(p)[2,1]·Eα2
qα(p) * Eα2 * star(qα(p)) =
  R(p)[0,2]·Eα0 + R(p)[1,2]·Eα1 + R(p)[2,2]·Eα2
```

**This exact sign check is independent of Lean.** It is evidence to guide a targeted proof, not a substitute for a kernel-checked equality.

## Immediate next Lean proof decomposition (do not skip source identity)

1. Factor normalization *once*: derive from original source `pauliScale_sq` and `Matrix.trace_smul` the identity `trace(T_B * g * T_A * gᴴ).re = (1/2) * trace(σ_B * g * σ_A * gᴴ).re`. The original source `T_A` must be identified via `pairedAlgebraData_color` and `concreteAlgebraData_color`; do not assume a new basis.
2. Prove the nine explicit real scalar trace coefficients using the **literal** 2×2 `sourceQuaternionColorMatrix p` for arbitrary real p. Finite 2×2 expansion (`Fin.sum_univ_two`, `Complex.I_sq`, `ring`) is preferable to unfolding `source48Quadratic` or a large Fock operator.
3. Transport via strict-accepted `originalNativeQuaternion_matrix_reconstruction g` and C1 quaternion coordinates to `adjointColorMatrix g B A = R(p) B A`. No `g⁻¹`, transpose, `gᴴ` change, or implicit sign inversion without an independently established equality.
4. Combine the resulting exact source-color matrix theorem with the L9B4 local Clifford axis conjugation and accepted `originalNativeGaugeSpinHom_coe` for each block. Use L9A cross-block fixation and L8E ordered sixteen-block hom. Discharge the original paired label equality via S1V7 with its actual qualified source status verified before relying on it.
5. Only then prove the source S1V48 `sourceSpin48CoversActualGauge g (originalNativeSixteenSpinHom g)` predicate for arbitrary native SU2 g. This is STILL not a continuous lift, historical positive-i gauge-curve normalization, original Fock intertwiner, unbounded domain equality, or mass-gap theorem.

## Negative knowledge and status discipline

- A common sign pitfall is swapping `adjointCoefficient g A B` to `adjointColorMatrix g A B` (output/input reversal). The checked matrix above is rows B, columns A.
- Do not silently identify the odd imaginary `i` in Pauli matrices with Clifford pseudoscalar sign conventions. The sign agreement must be discharged in the finite calculation.
- Even a passed source Clifford L9B4 gate alone cannot certify that the formula equals the original BFSS color-adjoint action. The finite trace equality and source label transport remain separate.
- Canonical `main`, original pinned upstream, and draft PR #25 remain untouched by this scoping audit.
